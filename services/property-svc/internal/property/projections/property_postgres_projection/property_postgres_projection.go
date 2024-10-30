package property_postgres_projection

import (
	"context"
	"errors"
	"fmt"
	pbTechnicalEventsV1 "gen/libs/technical_events/property_svc/v1"
	pb "gen/services/property_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
	"property-svc/repos/property_repo"
)

type Projection struct {
	*custom.CustomProjection
	db           hwdb.DBTX
	propertyRepo *property_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string, db hwdb.DBTX) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-postgres-projection", serviceName)
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(es, subscriptionGroupName, &[]string{fmt.Sprintf("%s-", aggregate.PropertyAggregateType)}),
		db:               db,
		propertyRepo:     property_repo.New(db),
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyCreatedEvent{}, nil), p.onPropertyCreated)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyDescriptionUpdatedEvent{}, nil), p.onPropertyDescriptionUpdated)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertySetIDUpdatedEvent{}, nil), p.onPropertySetIDUpdated)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertySubjectTypeUpdatedEvent{}, nil), p.onSubjectTypeUpdated)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyNameUpdatedEvent{}, nil), p.onNameUpdated)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyArchivedEvent{}, nil), p.onPropertyArchived)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyRetrievedEvent{}, nil), p.onPropertyRetrieved)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent{}, nil), p.onPropertyFieldTypeDataCreated)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyFieldTypeDataAllowFreetextUpdatedEvent{}, nil), p.onAllowFreetextUpdated)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsRemovedEvent{}, nil), p.onFieldTypeDataSelectOptionsRemoved)
	p.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsUpsertedEvent{}, nil), p.onFieldTypeDataSelectOptionsUpserted)
}

func (p *Projection) onPropertyCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload pbTechnicalEventsV1.PropertyCreatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	// Create Property
	propertyID, err := uuid.Parse(payload.GetId())
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	value, found := pb.SubjectType_value[payload.GetSubjectType().String()]
	if !found {
		return fmt.Errorf("subject_type %s invalid", payload.GetSubjectType()), hwutil.PtrTo(esdb.NackActionPark)
	}
	subjectType := (pb.SubjectType)(value)

	value, found = pb.FieldType_value[payload.GetFieldType().String()]
	if !found {
		return fmt.Errorf("field_type %s invalid", payload.GetFieldType()), hwutil.PtrTo(esdb.NackActionPark)
	}
	fieldType := (pb.FieldType)(value)

	err = p.propertyRepo.CreateProperty(ctx, property_repo.CreatePropertyParams{
		ID:          propertyID,
		SubjectType: int32(subjectType),
		FieldType:   int32(fieldType),
		Name:        payload.GetName(),
		Consistency: int64(evt.GetVersion()),
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onPropertyDescriptionUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload pbTechnicalEventsV1.PropertyDescriptionUpdatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		Description: &payload.Description,
		Consistency: int64(evt.GetVersion()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onPropertySetIDUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload pbTechnicalEventsV1.PropertySetIDUpdatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	setID := uuid.NullUUID{UUID: uuid.Nil, Valid: false}
	if payload.GetSetId() != "" {
		if parsedID, err := hwutil.ParseNullUUID(&payload.SetId); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionPark)
		} else {
			setID = parsedID
		}
	}

	err := p.propertyRepo.UpdatePropertySetID(ctx, property_repo.UpdatePropertySetIDParams{
		ID:          evt.AggregateID,
		SetID:       setID,
		Consistency: int64(evt.GetVersion()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onSubjectTypeUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload pbTechnicalEventsV1.PropertySubjectTypeUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	value, found := pb.SubjectType_value[payload.GetSubjectType()]
	if !found {
		return fmt.Errorf("invalid fieldType: %s", payload.GetSubjectType()), hwutil.PtrTo(esdb.NackActionPark)
	}
	subjectType := (pb.SubjectType)(value)

	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		SubjectType: hwutil.PtrTo(int32(subjectType)),
		Consistency: int64(evt.GetVersion()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onNameUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload pbTechnicalEventsV1.PropertyNameUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		Name:        &payload.Name,
		Consistency: int64(evt.GetVersion()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onPropertyArchived(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:          evt.GetAggregateID(),
		IsArchived:  hwutil.PtrTo(true),
		Consistency: int64(evt.GetVersion()),
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onPropertyRetrieved(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:          evt.GetAggregateID(),
		IsArchived:  hwutil.PtrTo(false),
		Consistency: int64(evt.GetVersion()),
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onPropertyFieldTypeDataCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)
	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer rollback()
	propertyRepo := p.propertyRepo.WithTx(tx)

	var payload pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	if payload.GetFieldTypeData().GetSelectData() != nil {
		selectDataID, err := propertyRepo.CreateSelectData(ctx, payload.GetFieldTypeData().GetSelectData().GetAllowFreetext())
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
		for _, option := range payload.GetFieldTypeData().GetSelectData().GetSelectOptions() {
			optionId := uuid.MustParse(option.GetId())
			err := propertyRepo.CreateSelectOption(ctx, property_repo.CreateSelectOptionParams{
				ID:           optionId,
				Name:         option.Name,
				Description:  option.Description,
				IsCustom:     option.IsCustom,
				SelectDataID: selectDataID,
			})
			if err := hwdb.Error(ctx, err); err != nil {
				return err, hwutil.PtrTo(esdb.NackActionRetry)
			}
		}

		// Update Property SelectDataId
		err = propertyRepo.UpdatePropertySelectDataID(ctx, property_repo.UpdatePropertySelectDataIDParams{
			ID:           evt.AggregateID,
			SelectDataID: uuid.NullUUID{UUID: selectDataID, Valid: true},
			Consistency:  int64(evt.GetVersion()),
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onAllowFreetextUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)
	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer rollback()
	propertyRepo := p.propertyRepo.WithTx(tx)

	var payload pbTechnicalEventsV1.PropertyFieldTypeDataAllowFreetextUpdatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	property, err := propertyRepo.GetPropertyById(ctx, evt.AggregateID)
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	if property.SelectDataID.Valid {
		err := propertyRepo.UpdateSelectData(ctx, property_repo.UpdateSelectDataParams{
			ID:            property.SelectDataID.UUID,
			AllowFreetext: payload.GetNewAllowFreetext(),
			Consistency:   int64(evt.GetVersion()),
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
	} else if property.FieldType == int32(pb.FieldType_FIELD_TYPE_SELECT) || property.FieldType == int32(pb.FieldType_FIELD_TYPE_MULTI_SELECT) {
		// if the property was created with field_type_select but selectData wasn't created initially we have to do it here
		sdID, err := propertyRepo.CreateSelectData(ctx, payload.GetNewAllowFreetext())
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
		err = propertyRepo.UpdatePropertySelectDataID(ctx, property_repo.UpdatePropertySelectDataIDParams{
			ID:           evt.AggregateID,
			SelectDataID: uuid.NullUUID{UUID: sdID, Valid: true},
			Consistency:  int64(evt.GetVersion()),
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onFieldTypeDataSelectOptionsUpserted(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)
	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer rollback()
	propertyRepo := p.propertyRepo.WithTx(tx)

	var payload pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsUpsertedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	property, err := propertyRepo.GetPropertyById(ctx, evt.AggregateID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	var selectDataID uuid.UUID
	if !property.SelectDataID.Valid {
		// Create SelectData and reference from property
		sdID, err := propertyRepo.CreateSelectData(ctx, false)
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
		err = propertyRepo.UpdatePropertySelectDataID(ctx, property_repo.UpdatePropertySelectDataIDParams{
			ID:           evt.AggregateID,
			SelectDataID: uuid.NullUUID{UUID: sdID, Valid: true},
			Consistency:  int64(evt.GetVersion()),
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
		selectDataID = sdID
	} else {
		selectDataID = property.SelectDataID.UUID
	}

	selectOptions := make(map[uuid.UUID]models.UpdateSelectOption)
	existsSelectOptions := make(map[uuid.UUID]bool) // Map indicates if selectOption already exists
	for _, option := range payload.GetUpsertedSelectOptions() {
		optionId := uuid.MustParse(option.Id)
		selectOptions[optionId] = models.UpdateSelectOption{
			ID:          optionId,
			Name:        option.Name,
			Description: option.Description,
			IsCustom:    option.IsCustom,
		}
		existsSelectOptions[optionId] = false
	}

	selectOptionsID := hwutil.Map(payload.GetUpsertedSelectOptions(), func(opt *pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption) uuid.UUID {
		return uuid.MustParse(opt.Id)
	})

	// Check for existing SelectOptions
	var existsBatchErr error
	existsBatch := propertyRepo.GetSelectOptionsBatch(ctx, selectOptionsID)
	existsBatch.QueryRow(func(idx int, row property_repo.SelectOption, err error) {
		if err != nil && !errors.Is(err, pgx.ErrNoRows) {
			existsBatchErr = err
			return
		}
		if row.ID != uuid.Nil {
			existsSelectOptions[row.ID] = true
		}
	})

	if existsBatchErr != nil {
		return existsBatchErr, hwutil.PtrTo(esdb.NackActionRetry)
	}
	if err := existsBatch.Close(); err != nil {
		log.Err(err).Msg("failed while closing existsBatch.")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	var existingSelectOptions []property_repo.UpdateSelectOptionsBatchParams
	var newSelectOptions []property_repo.InsertSelectOptionsBatchParams
	for idx, exists := range existsSelectOptions {
		selOpt := selectOptions[idx]
		if exists {
			existingSelectOptions = append(existingSelectOptions, property_repo.UpdateSelectOptionsBatchParams{
				ID:          selOpt.ID,
				Name:        selOpt.Name,
				Description: selOpt.Description,
				IsCustom:    selOpt.IsCustom,
			})
		} else {
			if selOpt.Name == nil {
				log.Error().Msg("selectOption name has to be set on create")
				// existsSelectOptions gets modified by a database result. Thats why we are retrying here.
				return nil, hwutil.PtrTo(esdb.NackActionRetry)
			}
			newSelectOptions = append(newSelectOptions, property_repo.InsertSelectOptionsBatchParams{
				ID:           selOpt.ID,
				Name:         *selOpt.Name,
				Description:  selOpt.Description,
				IsCustom:     selOpt.IsCustom,
				SelectDataID: selectDataID,
			})
		}
	}

	// Update
	batchUpdate := propertyRepo.UpdateSelectOptionsBatch(ctx, existingSelectOptions)
	var batchUpdateErr error
	batchUpdate.Exec(func(idx int, err error) {
		if err != nil {
			batchUpdateErr = err
			return
		}
	})
	if batchUpdateErr != nil {
		return batchUpdateErr, hwutil.PtrTo(esdb.NackActionRetry)
	}
	if err := batchUpdate.Close(); err != nil {
		log.Err(err).Msg("failed while closing updateBatch.")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	// Insert
	batchInsert := propertyRepo.InsertSelectOptionsBatch(ctx, newSelectOptions)
	var batchInsertErr error
	batchInsert.Exec(func(idx int, err error) {
		if err != nil {
			batchInsertErr = err
			return
		}
	})
	if batchInsertErr != nil {
		return batchInsertErr, hwutil.PtrTo(esdb.NackActionRetry)
	}
	if err := batchInsert.Close(); err != nil {
		log.Err(err).Msg("failed while closing insertBatch.")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	// update property consistency
	err = propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		Consistency: int64(evt.GetVersion()),
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	if err := tx.Commit(ctx); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onFieldTypeDataSelectOptionsRemoved(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)
	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer rollback()
	propertyRepo := p.propertyRepo.WithTx(tx)

	var payload pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsRemovedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	parsedIDs := hwutil.FlatMap(payload.GetRemovedSelectOptions(), func(s string) *uuid.UUID {
		parsed, err := uuid.Parse(s)
		if err != nil {
			log.Warn().Str("uuid", s).Msg("invalid uuid in removedSelectOptions.")
			return nil
		}
		return &parsed
	})

	batch := propertyRepo.DeleteSelectOptions(ctx, parsedIDs)
	var batchErr error
	batch.Exec(func(idx int, err error) {
		if err != nil {
			batchErr = err
			return
		}
	})
	if batchErr != nil {
		log.Error().Err(batchErr).Msg("batch execution failed.")
		return batchErr, hwutil.PtrTo(esdb.NackActionRetry)
	}

	if err := batch.Close(); err != nil {
		log.Err(err).Msg("failed while closing batch.")
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	// update property consistency
	err = propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		Consistency: int64(evt.GetVersion()),
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	if err := tx.Commit(ctx); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
