package postgresprojection

import (
	"context"
	"errors"
	pb "gen/services/property_svc/v1"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"

	"property-svc/internal/property/util"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	zlog "github.com/rs/zerolog/log"

	"property-svc/internal/property/aggregate"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/internal/property/models"
	"property-svc/repos/property-repo"
)

type Projection struct {
	*custom.CustomProjection
	db           hwdb.DBTX
	propertyRepo *propertyrepo.Queries
}

func NewProjection(es *esdb.Client, serviceName string, db hwdb.DBTX) *Projection {
	subscriptionGroupName := serviceName + "-postgres-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.PropertyAggregateType + "-"},
		),
		db:           db,
		propertyRepo: propertyrepo.New(db),
	}
	p.initEventListeners()

	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(
		propertyEventsV1.PropertyCreated, p.onPropertyCreated)
	p.RegisterEventListener(
		propertyEventsV1.PropertyDescriptionUpdated, p.onPropertyDescriptionUpdated)
	p.RegisterEventListener(
		propertyEventsV1.PropertySetIDUpdated, p.onPropertySetIDUpdated)
	p.RegisterEventListener(
		propertyEventsV1.PropertySubjectTypeUpdated, p.onSubjectTypeUpdated)
	p.RegisterEventListener(
		propertyEventsV1.PropertyNameUpdated, p.onNameUpdated)
	p.RegisterEventListener(
		propertyEventsV1.PropertyArchived, p.onPropertyArchived)
	p.RegisterEventListener(
		propertyEventsV1.PropertyRetrieved, p.onPropertyRetrieved)
	p.RegisterEventListener(
		propertyEventsV1.PropertyFieldTypeDataCreated, p.onPropertyFieldTypeDataCreated)
	p.RegisterEventListener(
		propertyEventsV1.PropertyFieldTypeDataAllowFreetextUpdated, p.onAllowFreetextUpdated)
	p.RegisterEventListener(
		propertyEventsV1.PropertyFieldTypeDataSelectOptionsRemoved,
		p.onFieldTypeDataSelectOptionsRemoved)
	p.RegisterEventListener(
		propertyEventsV1.PropertyFieldTypeDataSelectOptionsUpserted,
		p.onFieldTypeDataSelectOptionsUpserted)
}

func (p *Projection) onPropertyCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertyCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")

		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	// Create Property
	propertyID, err := uuid.Parse(payload.ID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	subjectType, err := util.ParseSubjectType(payload.SubjectType)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	fieldType, err := util.ParseFieldType(payload.FieldType)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	// create query
	err = p.propertyRepo.CreateProperty(ctx, propertyrepo.CreatePropertyParams{
		ID:          propertyID,
		SubjectType: int32(subjectType),
		FieldType:   int32(fieldType),
		Name:        payload.Name,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onPropertyDescriptionUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertyDescriptionUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err := p.propertyRepo.UpdateProperty(ctx, propertyrepo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		Description: &payload.Description,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onPropertySetIDUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertySetIDUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	setID := uuid.NullUUID{UUID: uuid.Nil, Valid: false}
	if payload.SetID != "" {
		if parsedID, err := hwutil.ParseNullUUID(&payload.SetID); err != nil {
			return hwutil.PtrTo(esdb.NackActionPark), err
		} else {
			setID = parsedID
		}
	}

	err := p.propertyRepo.UpdatePropertySetID(ctx, propertyrepo.UpdatePropertySetIDParams{
		ID:          evt.AggregateID,
		SetID:       setID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onSubjectTypeUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertySubjectTypeUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	subjectType, err := util.ParseSubjectType(payload.SubjectType)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err = p.propertyRepo.UpdateProperty(ctx, propertyrepo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		SubjectType: hwutil.PtrTo(int32(subjectType)),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onNameUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertyNameUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err := p.propertyRepo.UpdateProperty(ctx, propertyrepo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		Name:        &payload.Name,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onPropertyArchived(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.propertyRepo.UpdateProperty(ctx, propertyrepo.UpdatePropertyParams{
		ID:          evt.GetAggregateID(),
		IsArchived:  hwutil.PtrTo(true),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onPropertyRetrieved(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.propertyRepo.UpdateProperty(ctx, propertyrepo.UpdatePropertyParams{
		ID:          evt.GetAggregateID(),
		IsArchived:  hwutil.PtrTo(false),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onPropertyFieldTypeDataCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)
	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	defer rollback()
	propertyRepo := p.propertyRepo.WithTx(tx)

	var payload propertyEventsV1.FieldTypeDataCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	if payload.FieldTypeData.SelectData != nil {
		selectDataID, err := propertyRepo.CreateSelectData(ctx, payload.FieldTypeData.SelectData.AllowFreetext)
		if err := hwdb.Error(ctx, err); err != nil {
			return hwutil.PtrTo(esdb.NackActionRetry), err
		}
		for _, option := range payload.FieldTypeData.SelectData.SelectOptions {
			err := propertyRepo.CreateSelectOption(ctx, propertyrepo.CreateSelectOptionParams{
				ID:           option.ID,
				Name:         option.Name,
				Description:  option.Description,
				IsCustom:     option.IsCustom,
				SelectDataID: selectDataID,
			})
			if err := hwdb.Error(ctx, err); err != nil {
				return hwutil.PtrTo(esdb.NackActionRetry), err
			}
		}

		// Update Property SelectDataId
		err = propertyRepo.UpdatePropertySelectDataID(ctx, propertyrepo.UpdatePropertySelectDataIDParams{
			ID:           evt.AggregateID,
			SelectDataID: uuid.NullUUID{UUID: selectDataID, Valid: true},
			Consistency:  int64(evt.GetVersion()), //nolint:gosec
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return hwutil.PtrTo(esdb.NackActionRetry), err
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onAllowFreetextUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)
	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	defer rollback()
	propertyRepo := p.propertyRepo.WithTx(tx)

	var payload propertyEventsV1.FieldTypeDataAllowFreetextUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	property, err := propertyRepo.GetPropertyById(ctx, evt.AggregateID)
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	if property.SelectDataID.Valid {
		err := propertyRepo.UpdateSelectData(ctx, propertyrepo.UpdateSelectDataParams{
			ID:            property.SelectDataID.UUID,
			AllowFreetext: payload.NewAllowFreetext,
			Consistency:   int64(evt.GetVersion()), //nolint:gosec
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return hwutil.PtrTo(esdb.NackActionRetry), err
		}
	} else if property.FieldType == int32(pb.FieldType_FIELD_TYPE_SELECT) ||
		property.FieldType == int32(pb.FieldType_FIELD_TYPE_MULTI_SELECT) {
		// if the property was created with field_type_select but selectData wasn't created initially we have to do it here
		sdID, err := propertyRepo.CreateSelectData(ctx, payload.NewAllowFreetext)
		if err := hwdb.Error(ctx, err); err != nil {
			return hwutil.PtrTo(esdb.NackActionRetry), err
		}
		err = propertyRepo.UpdatePropertySelectDataID(ctx, propertyrepo.UpdatePropertySelectDataIDParams{
			ID:           evt.AggregateID,
			SelectDataID: uuid.NullUUID{UUID: sdID, Valid: true},
			Consistency:  int64(evt.GetVersion()), //nolint:gosec
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return hwutil.PtrTo(esdb.NackActionRetry), err
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onFieldTypeDataSelectOptionsUpserted(
	ctx context.Context,
	evt hwes.Event,
) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)
	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	defer rollback()
	propertyRepo := p.propertyRepo.WithTx(tx)

	var payload propertyEventsV1.FieldTypeDataSelectOptionsUpsertedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	property, err := propertyRepo.GetPropertyById(ctx, evt.AggregateID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	var selectDataID uuid.UUID
	if !property.SelectDataID.Valid {
		// Create SelectData and reference from property
		sdID, err := propertyRepo.CreateSelectData(ctx, false)
		if err := hwdb.Error(ctx, err); err != nil {
			return hwutil.PtrTo(esdb.NackActionRetry), err
		}
		err = propertyRepo.UpdatePropertySelectDataID(ctx, propertyrepo.UpdatePropertySelectDataIDParams{
			ID:           evt.AggregateID,
			SelectDataID: uuid.NullUUID{UUID: sdID, Valid: true},
			Consistency:  int64(evt.GetVersion()), //nolint:gosec
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return hwutil.PtrTo(esdb.NackActionRetry), err
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
	existsBatch.QueryRow(func(idx int, row propertyrepo.SelectOption, err error) {
		if err != nil && !errors.Is(err, pgx.ErrNoRows) {
			existsBatchErr = err
			return
		}
		if row.ID != uuid.Nil {
			existsSelectOptions[row.ID] = true
		}
	})

	if existsBatchErr != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), existsBatchErr
	}
	if err := existsBatch.Close(); err != nil {
		log.Err(err).Msg("failed while closing existsBatch.")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	var existingSelectOptions []propertyrepo.UpdateSelectOptionsBatchParams
	var newSelectOptions []propertyrepo.InsertSelectOptionsBatchParams
	for idx, exists := range existsSelectOptions {
		selOpt := selectOptions[idx]
		if exists {
			existingSelectOptions = append(existingSelectOptions, propertyrepo.UpdateSelectOptionsBatchParams{
				ID:          selOpt.ID,
				Name:        selOpt.Name,
				Description: selOpt.Description,
				IsCustom:    selOpt.IsCustom,
			})
		} else {
			if selOpt.Name == nil {
				log.Error().Msg("selectOption name has to be set on create")
				// existsSelectOptions gets modified by a database result. That's why we are retrying here.
				return hwutil.PtrTo(esdb.NackActionRetry), nil
			}
			newSelectOptions = append(newSelectOptions, propertyrepo.InsertSelectOptionsBatchParams{
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
		return hwutil.PtrTo(esdb.NackActionRetry), batchUpdateErr
	}
	if err := batchUpdate.Close(); err != nil {
		log.Err(err).Msg("failed while closing updateBatch.")
		return hwutil.PtrTo(esdb.NackActionRetry), err
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
		return hwutil.PtrTo(esdb.NackActionRetry), batchInsertErr
	}
	if err := batchInsert.Close(); err != nil {
		log.Err(err).Msg("failed while closing insertBatch.")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	// update property consistency
	err = propertyRepo.UpdateProperty(ctx, propertyrepo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	if err := tx.Commit(ctx); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onFieldTypeDataSelectOptionsRemoved(
	ctx context.Context,
	evt hwes.Event,
) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)
	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	defer rollback()
	propertyRepo := p.propertyRepo.WithTx(tx)

	var payload propertyEventsV1.FieldTypeDataSelectOptionsRemovedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
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
		return hwutil.PtrTo(esdb.NackActionRetry), batchErr
	}

	if err := batch.Close(); err != nil {
		log.Err(err).Msg("failed while closing batch.")
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	// update property consistency
	err = propertyRepo.UpdateProperty(ctx, propertyrepo.UpdatePropertyParams{
		ID:          evt.AggregateID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	if err := tx.Commit(ctx); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}
