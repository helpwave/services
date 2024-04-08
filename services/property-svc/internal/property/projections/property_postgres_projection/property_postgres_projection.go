package property_postgres_projection

import (
	"context"
	"errors"
	"fmt"
	pb "gen/proto/services/property_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/internal/property/models"
	"property-svc/repos/property_repo"
)

type Projection struct {
	*custom.CustomProjection
	db           *pgxpool.Pool
	propertyRepo *property_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-postgres-projection", serviceName)
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(es, subscriptionGroupName),
		db:               hwdb.GetDB(),
		propertyRepo:     property_repo.New(hwdb.GetDB())}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(propertyEventsV1.PropertyCreated, p.onPropertyCreated)
	p.RegisterEventListener(propertyEventsV1.PropertyDescriptionUpdated, p.onPropertyDescriptionUpdated)
	p.RegisterEventListener(propertyEventsV1.PropertySetIDUpdated, p.onPropertySetIDUpdated)
	p.RegisterEventListener(propertyEventsV1.PropertySubjectTypeUpdated, p.onSubjectTypeUpdated)
	p.RegisterEventListener(propertyEventsV1.PropertyFieldTypeUpdated, p.onFieldTypeUpdated)
	p.RegisterEventListener(propertyEventsV1.PropertyNameUpdated, p.onNameUpdated)
	p.RegisterEventListener(propertyEventsV1.PropertyArchived, p.onPropertyArchived)
	p.RegisterEventListener(propertyEventsV1.PropertyRetrieved, p.onPropertyRetrieved)
	p.RegisterEventListener(propertyEventsV1.PropertyFieldTypeDataCreated, p.onPropertyFieldTypeDataCreated)
	p.RegisterEventListener(propertyEventsV1.PropertyFieldTypeDataAllowFreetextUpdated, p.onAllowFreetextUpdated)
	p.RegisterEventListener(propertyEventsV1.PropertyFieldTypeDataSelectOptionsRemoved, p.onFieldTypeDataSelectOptionsRemoved)
	p.RegisterEventListener(propertyEventsV1.PropertyFieldTypeDataSelectOptionsUpserted, p.onFieldTypeDataSelectOptionsUpserted)
}

func (p *Projection) onPropertyCreated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertyCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	// Create Property
	propertyID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	value, found := pb.SubjectType_value[payload.SubjectType]
	if !found {
		return fmt.Errorf("subject_type %s invalid", payload.SubjectType), esdb.NackActionRetry
	}
	subjectType := (pb.SubjectType)(value)

	value, found = pb.FieldType_value[payload.FieldType]
	if !found {
		return fmt.Errorf("field_type %s invalid", payload.FieldType), esdb.NackActionRetry
	}
	fieldType := (pb.FieldType)(value)

	err = p.propertyRepo.CreateProperty(ctx, property_repo.CreatePropertyParams{
		ID:          propertyID,
		SubjectType: int32(subjectType),
		FieldType:   int32(fieldType),
		Name:        payload.Name,
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onPropertyDescriptionUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertyDescriptionUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		Description: &payload.Description,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onPropertySetIDUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertySetIDUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	setID := uuid.NullUUID{UUID: uuid.Nil, Valid: false}
	if payload.SetID != "" {
		if parsedID, err := hwutil.ParseNullUUID(&payload.SetID); err != nil {
			return err, esdb.NackActionRetry
		} else {
			setID = parsedID
		}
	}

	err := p.propertyRepo.UpdatePropertySetID(ctx, property_repo.UpdatePropertySetIDParams{
		ID:    evt.AggregateID,
		SetID: setID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onSubjectTypeUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertySubjectTypeUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	value, found := pb.SubjectType_value[payload.SubjectType]
	if !found {
		return fmt.Errorf("invalid fieldType: %s", payload.SubjectType), esdb.NackActionRetry
	}
	subjectType := (pb.SubjectType)(value)

	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		SubjectType: hwutil.PtrTo(int32(subjectType)),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onFieldTypeUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)
	tx, err := p.db.Begin(ctx)
	if err != nil {
		return err, esdb.NackActionRetry
	}
	propertyRepo := p.propertyRepo.WithTx(tx)

	defer func() {
		err := tx.Rollback(ctx)
		if !errors.Is(err, pgx.ErrTxClosed) {
			log.Error().Err(err).Msg("rollback failed.")
		}
	}()

	var payload propertyEventsV1.PropertyFieldTypeUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	value, found := pb.FieldType_value[payload.FieldType]
	if !found {
		return fmt.Errorf("invalid fieldType: %s", payload.FieldType), esdb.NackActionRetry
	}
	fieldType := (pb.FieldType)(value)

	err = propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		FieldType: hwutil.PtrTo(int32(fieldType)),
		ID:        evt.AggregateID,
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	property, err := propertyRepo.GetPropertyById(ctx, evt.AggregateID)
	if err = hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	if fieldType != pb.FieldType_FIELD_TYPE_SELECT {
		err = propertyRepo.DeleteSelectDataByPropertyID(ctx, evt.AggregateID)
		if err = hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
	} else {
		// Create
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
		if !property.SelectDataID.Valid {
			sdID, err := propertyRepo.CreateSelectData(ctx, false)
			if err := hwdb.Error(ctx, err); err != nil {
				return err, esdb.NackActionRetry
			}
			err = propertyRepo.UpdatePropertySelectDataID(ctx, property_repo.UpdatePropertySelectDataIDParams{
				ID:           evt.AggregateID,
				SelectDataID: uuid.NullUUID{UUID: sdID, Valid: true},
			})
			if err := hwdb.Error(ctx, err); err != nil {
				return err, esdb.NackActionRetry
			}
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onNameUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertyNameUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:   evt.AggregateID,
		Name: &payload.Name,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onPropertyArchived(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:         evt.GetAggregateID(),
		IsArchived: hwutil.PtrTo(true),
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onPropertyRetrieved(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		ID:         evt.GetAggregateID(),
		IsArchived: hwutil.PtrTo(false),
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onPropertyFieldTypeDataCreated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)
	tx, err := p.db.Begin(ctx)
	if err != nil {
		return err, esdb.NackActionRetry
	}
	propertyRepo := p.propertyRepo.WithTx(tx)

	defer func() {
		err := tx.Rollback(ctx)
		if !errors.Is(err, pgx.ErrTxClosed) {
			log.Error().Err(err).Msg("rollback failed.")
		}
	}()

	var payload propertyEventsV1.FieldTypeDataCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	if payload.FieldTypeData.SelectData != nil {
		selectDataID, err := propertyRepo.CreateSelectData(ctx, payload.FieldTypeData.SelectData.AllowFreetext)
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
		for _, option := range payload.FieldTypeData.SelectData.SelectOptions {
			err := propertyRepo.CreateSelectOption(ctx, property_repo.CreateSelectOptionParams{
				ID:           option.ID,
				Name:         option.Name,
				Description:  option.Description,
				IsCustom:     option.IsCustom,
				SelectDataID: selectDataID,
			})
			if err := hwdb.Error(ctx, err); err != nil {
				return err, esdb.NackActionRetry
			}
		}

		// Update Property SelectDataId
		err = propertyRepo.UpdatePropertySelectDataID(ctx, property_repo.UpdatePropertySelectDataIDParams{
			ID:           evt.AggregateID,
			SelectDataID: uuid.NullUUID{UUID: selectDataID, Valid: true},
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onAllowFreetextUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)
	tx, err := p.db.Begin(ctx)
	if err != nil {
		return err, esdb.NackActionRetry
	}
	propertyRepo := p.propertyRepo.WithTx(tx)

	defer func() {
		err := tx.Rollback(ctx)
		if !errors.Is(err, pgx.ErrTxClosed) {
			log.Error().Err(err).Msg("rollback failed.")
		}
	}()

	var payload propertyEventsV1.FieldTypeDataAllowFreetextUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	property, err := propertyRepo.GetPropertyById(ctx, evt.AggregateID)
	if err := hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	if property.SelectDataID.Valid {
		err := propertyRepo.UpdateSelectData(ctx, property_repo.UpdateSelectDataParams{
			ID:            property.SelectDataID.UUID,
			AllowFreetext: payload.NewAllowFreetext,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
	} else if property.FieldType == int32(pb.FieldType_FIELD_TYPE_SELECT) {
		// if the property was created with field_type_select but selectData wasn't created initially we have to do it here
		sdID, err := propertyRepo.CreateSelectData(ctx, payload.NewAllowFreetext)
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
		err = propertyRepo.UpdatePropertySelectDataID(ctx, property_repo.UpdatePropertySelectDataIDParams{
			ID:           evt.AggregateID,
			SelectDataID: uuid.NullUUID{UUID: sdID, Valid: true},
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onFieldTypeDataSelectOptionsUpserted(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)
	tx, err := p.db.Begin(ctx)
	if err != nil {
		return err, esdb.NackActionRetry
	}
	propertyRepo := p.propertyRepo.WithTx(tx)

	defer func() {
		err := tx.Rollback(ctx)
		if !errors.Is(err, pgx.ErrTxClosed) {
			log.Error().Err(err).Msg("rollback failed.")
		}
	}()

	var payload propertyEventsV1.FieldTypeDataSelectOptionsUpsertedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	property, err := propertyRepo.GetPropertyById(ctx, evt.AggregateID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	var selectDataID uuid.UUID
	if !property.SelectDataID.Valid {
		// Create SelectData and reference from property
		sdID, err := propertyRepo.CreateSelectData(ctx, false)
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
		err = propertyRepo.UpdatePropertySelectDataID(ctx, property_repo.UpdatePropertySelectDataIDParams{
			ID:           evt.AggregateID,
			SelectDataID: uuid.NullUUID{UUID: sdID, Valid: true},
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
		selectDataID = sdID
	} else {
		selectDataID = property.SelectDataID.UUID
	}

	selectOptions := make(map[uuid.UUID]models.UpdateSelectOption)
	existsSelectOptions := make(map[uuid.UUID]bool) // Map indicates if selectOption already exists
	for _, option := range payload.UpsertedSelectOptions {
		selectOptions[option.ID] = option
		existsSelectOptions[option.ID] = false
	}

	selectOptionsID := hwutil.Map(payload.UpsertedSelectOptions, func(opt models.UpdateSelectOption) uuid.UUID {
		return opt.ID
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
		return existsBatchErr, esdb.NackActionRetry
	}
	if err := existsBatch.Close(); err != nil {
		log.Err(err).Msg("failed while closing existsBatch.")
		return err, esdb.NackActionRetry
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
				return nil, esdb.NackActionRetry
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
		return batchUpdateErr, esdb.NackActionRetry
	}
	if err := batchUpdate.Close(); err != nil {
		log.Err(err).Msg("failed while closing updateBatch.")
		return err, esdb.NackActionRetry
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
		return batchInsertErr, esdb.NackActionRetry
	}
	if err := batchInsert.Close(); err != nil {
		log.Err(err).Msg("failed while closing insertBatch.")
		return err, esdb.NackActionRetry
	}

	if err := tx.Commit(ctx); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onFieldTypeDataSelectOptionsRemoved(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)
	tx, err := p.db.Begin(ctx)
	if err != nil {
		return err, esdb.NackActionRetry
	}
	propertyRepo := p.propertyRepo.WithTx(tx)

	defer func() {
		err := tx.Rollback(ctx)
		if !errors.Is(err, pgx.ErrTxClosed) {
			log.Error().Err(err).Msg("rollback failed.")
		}
	}()

	var payload propertyEventsV1.FieldTypeDataSelectOptionsRemovedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	parsedIDs := hwutil.FlatMap(payload.RemovedSelectOptions, func(s string) *uuid.UUID {
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
		return batchErr, esdb.NackActionRetry
	}

	if err := batch.Close(); err != nil {
		log.Err(err).Msg("failed while closing batch.")
		return err, esdb.NackActionRetry
	}

	if err := tx.Commit(ctx); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}
