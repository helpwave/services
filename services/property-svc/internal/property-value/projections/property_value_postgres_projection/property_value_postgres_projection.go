package property_value_postgres_projection

import (
	"context"
	"fmt"
	pb "gen/services/property_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	"property-svc/internal/property-value/aggregate"
	propertyValueEventsV1 "property-svc/internal/property-value/events/v1"
	"property-svc/repos/property_repo"
	"property-svc/repos/property_value_repo"
	"time"
)

type Projection struct {
	*custom.CustomProjection
	db                hwdb.DBTX
	propertyRepo      *property_repo.Queries
	propertyValueRepo *property_value_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string, db hwdb.DBTX) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-value-postgres-projection", serviceName)
	p := &Projection{
		CustomProjection:  custom.NewCustomProjection(es, subscriptionGroupName, &[]string{fmt.Sprintf("%s-", aggregate.PropertyValueAggregateType)}),
		db:                db,
		propertyRepo:      property_repo.New(db),
		propertyValueRepo: property_value_repo.New(db)}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(propertyValueEventsV1.PropertyValueCreated, p.onPropertyValueCreated)
	p.RegisterEventListener(propertyValueEventsV1.PropertyValueUpdated, p.onPropertyValueUpdated)
}

func (p *Projection) onPropertyValueCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyValueEventsV1.PropertyValueCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	propertyID, err := uuid.Parse(payload.PropertyID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	subjectID, err := uuid.Parse(payload.SubjectID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	// GetProperty for the fieldType
	property, err := hwdb.Optional(p.propertyRepo.GetPropertyById)(ctx, propertyID)
	if property == nil {
		return fmt.Errorf("property with id %s not found for propertyValue", payload.PropertyID), hwutil.PtrTo(esdb.NackActionRetry)
	}
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	fieldType := (pb.FieldType)(property.FieldType)

	createPropertyValueParams := property_value_repo.CreatePropertyValueParams{
		ID:         evt.AggregateID,
		PropertyID: propertyID,
		SubjectID:  subjectID,
	}

	if payload.Value != nil {
		switch {
		case fieldType == pb.FieldType_FIELD_TYPE_TEXT:
			createPropertyValueParams.TextValue = hwutil.PtrTo(fmt.Sprintf("%v", payload.Value))
		case fieldType == pb.FieldType_FIELD_TYPE_NUMBER:
			val, ok := payload.Value.(float64)
			if !ok {
				return fmt.Errorf("could not assert number"), hwutil.PtrTo(esdb.NackActionPark)
			}
			createPropertyValueParams.NumberValue = &val
		case fieldType == pb.FieldType_FIELD_TYPE_CHECKBOX:
			val, ok := payload.Value.(bool)
			if !ok {
				return fmt.Errorf("could not assert bool"), hwutil.PtrTo(esdb.NackActionPark)
			}
			createPropertyValueParams.BoolValue = &val
		case fieldType == pb.FieldType_FIELD_TYPE_DATE:
			val, err := hwutil.AssertDate(payload.Value, time.UTC)
			if err != nil {
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}
			createPropertyValueParams.DateValue = hwdb.TimeToDate(*val)
		case fieldType == pb.FieldType_FIELD_TYPE_DATE_TIME:
			val, err := hwutil.AssertTimestampToTime(payload.Value)
			if err != nil {
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}
			createPropertyValueParams.DateTimeValue = hwdb.TimeToTimestamp(*val)
		case fieldType == pb.FieldType_FIELD_TYPE_SELECT:
			val, ok := payload.Value.(string)
			if !ok {
				return fmt.Errorf("could not assert string"), hwutil.PtrTo(esdb.NackActionPark)
			}
			id, err := hwutil.ParseNullUUID(&val)
			if err != nil {
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}
			createPropertyValueParams.SelectValue = id
		}
	}

	err = p.propertyValueRepo.CreatePropertyValue(ctx, createPropertyValueParams)
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (p *Projection) onPropertyValueUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyValueEventsV1.PropertyValueUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	// Get Property for FieldType
	propertyValue, err := hwdb.Optional(p.propertyValueRepo.GetPropertyValueByID)(ctx, evt.AggregateID)
	if propertyValue == nil {
		return fmt.Errorf("propertyValue with id %s not found", evt.AggregateID), hwutil.PtrTo(esdb.NackActionRetry)
	}
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	property, err := hwdb.Optional(p.propertyRepo.GetPropertyById)(ctx, propertyValue.PropertyID)
	if property == nil {
		return fmt.Errorf("property with id %s not found for propertyValue", propertyValue.PropertyID.String()), hwutil.PtrTo(esdb.NackActionRetry)
	}
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	fieldType := (pb.FieldType)(property.FieldType)

	updatePropertyValueParams := property_value_repo.UpdatePropertyValueByIDParams{
		ID: evt.AggregateID,
	}

	if payload.Value != nil {
		switch {
		case fieldType == pb.FieldType_FIELD_TYPE_TEXT:
			updatePropertyValueParams.TextValue = hwutil.PtrTo(fmt.Sprintf("%v", payload.Value))
		case fieldType == pb.FieldType_FIELD_TYPE_NUMBER:
			val, ok := payload.Value.(float64)
			if !ok {
				return fmt.Errorf("could not assert number"), hwutil.PtrTo(esdb.NackActionPark)
			}
			updatePropertyValueParams.NumberValue = &val
		case fieldType == pb.FieldType_FIELD_TYPE_CHECKBOX:
			val, ok := payload.Value.(bool)
			if !ok {
				return fmt.Errorf("could not assert bool"), hwutil.PtrTo(esdb.NackActionPark)
			}
			updatePropertyValueParams.BoolValue = &val
		case fieldType == pb.FieldType_FIELD_TYPE_DATE:
			val, err := hwutil.AssertDate(payload.Value, time.UTC)
			if err != nil {
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}
			updatePropertyValueParams.DateValue = hwdb.TimeToDate(*val)
		case fieldType == pb.FieldType_FIELD_TYPE_DATE_TIME:
			val, err := hwutil.AssertTimestampToTime(payload.Value)
			if err != nil {
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}
			updatePropertyValueParams.DateTimeValue = hwdb.TimeToTimestamp(*val)
		case fieldType == pb.FieldType_FIELD_TYPE_SELECT:
			val, ok := payload.Value.(string)
			if !ok {
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}
			parsedID, err := hwutil.ParseNullUUID(&val)
			if err != nil {
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}
			updatePropertyValueParams.SelectValue = parsedID
		}
	} else {
		// Delete PropertyValue
		err := p.propertyValueRepo.DeletePropertyValue(ctx, evt.AggregateID)
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
	}

	err = p.propertyValueRepo.UpdatePropertyValueByID(ctx, updatePropertyValueParams)
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
