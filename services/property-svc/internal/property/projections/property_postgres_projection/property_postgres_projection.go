package property_postgres_projection

import (
	"context"
	"fmt"
	pb "gen/proto/services/property_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/repos/property_repo"
)

type Projection struct {
	*custom.CustomProjection
	propertyRepo *property_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-postgres-projection", serviceName)
	p := &Projection{custom.NewCustomProjection(es, subscriptionGroupName), property_repo.New(hwdb.GetDB())}
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
}

func (p *Projection) onPropertyCreated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)
	db := hwdb.GetDB()

	tx, err := db.Begin(ctx)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	defer func() {
		// TODO: log Rollback errors
		_ = tx.Rollback(ctx)
	}()

	propertyRepo := property_repo.New(db).WithTx(tx)

	var payload propertyEventsV1.PropertyCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	// Create FieldTypeData
	fieldTypeDataID, err := propertyRepo.CreateFieldTypeData(ctx)
	if err := hwdb.Error(ctx, err); err != nil {
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

	err = propertyRepo.CreateProperty(ctx, property_repo.CreatePropertyParams{
		ID:              propertyID,
		SubjectType:     int32(subjectType),
		FieldType:       int32(fieldType),
		Name:            payload.Name,
		Description:     "",
		IsArchived:      false,
		FieldTypeDataID: fieldTypeDataID,
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	if err := tx.Commit(ctx); err != nil {
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
	if len(payload.SetID) > 0 {
		parsedID, err := hwutil.ParseNullUUID(&payload.SetID)
		if err != nil {
			return err, esdb.NackActionRetry
		}
		setID = parsedID
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
		SubjectType: hwutil.PtrTo(int32(subjectType)),
		ID:          evt.AggregateID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onFieldTypeUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertyFieldTypeUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	value, found := pb.FieldType_value[payload.FieldType]
	if !found {
		return fmt.Errorf("invalid fieldType: %s", payload.FieldType), esdb.NackActionRetry
	}
	fieldType := (pb.SubjectType)(value)

	err := p.propertyRepo.UpdateProperty(ctx, property_repo.UpdatePropertyParams{
		FieldType: hwutil.PtrTo(int32(fieldType)),
		ID:        evt.AggregateID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
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
	db := hwdb.GetDB()

	tx, err := db.Begin(ctx)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	defer func() {
		// TODO: log Rollback errors
		_ = tx.Rollback(ctx)
	}()

	var payload propertyEventsV1.FieldTypeDataCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	propertyRepo := property_repo.New(db).WithTx(tx)
	if payload.FieldTypeData.SelectData != nil {
		selectDataID := uuid.New()
		err := propertyRepo.CreateSelectData(ctx, property_repo.CreateSelectDataParams{
			ID:            selectDataID,
			AllowFreetext: payload.FieldTypeData.SelectData.AllowFreetext,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
		for _, option := range payload.FieldTypeData.SelectData.SelectOptions {
			err := propertyRepo.CreateSelectOption(ctx, property_repo.CreateSelectOptionParams{
				ID:           option.ID,
				Name:         option.Name,
				Description:  *option.Description, // TODO
				IsCustom:     option.IsCustom,
				SelectDataID: selectDataID,
			})
			if err := hwdb.Error(ctx, err); err != nil {
				return err, esdb.NackActionRetry
			}
		}

		// Update FieldTypeData
		err = propertyRepo.UpdateFieldTypeDataSelectDataIDByPropertyID(ctx, property_repo.UpdateFieldTypeDataSelectDataIDByPropertyIDParams{ID: evt.AggregateID, SelectDataID: uuid.NullUUID{UUID: selectDataID, Valid: true}})
		if err := hwdb.Error(ctx, err); err != nil {
			return err, esdb.NackActionRetry
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}
