package property_value_postgres_projection

import (
	"context"
	"fmt"
	pb "gen/proto/services/property_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
	"github.com/jackc/pgx/v5/pgxpool"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	propertyValueEventsV1 "property-svc/internal/property-value/events/v1"
	"property-svc/repos/property_repo"
	"property-svc/repos/property_value_repo"
	"time"
)

type Projection struct {
	*custom.CustomProjection
	db                *pgxpool.Pool
	propertyRepo      *property_repo.Queries
	propertyValueRepo *property_value_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-value-postgres-projection", serviceName)
	p := &Projection{
		CustomProjection:  custom.NewCustomProjection(es, subscriptionGroupName),
		db:                hwdb.GetDB(),
		propertyRepo:      property_repo.New(hwdb.GetDB()),
		propertyValueRepo: property_value_repo.New(hwdb.GetDB())}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(propertyValueEventsV1.PropertyValueCreated, p.onPropertyValueCreated)
	p.RegisterEventListener(propertyValueEventsV1.PropertyValueUpdated, p.onPropertyValueUpdated)
}

func (p *Projection) onPropertyValueCreated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyValueEventsV1.PropertyValueCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionPark
	}

	propertyID, err := uuid.Parse(payload.PropertyID)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	subjectID, err := uuid.Parse(payload.SubjectID)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	// GetProperty for the fieldType
	property, err := hwdb.Optional(p.propertyRepo.GetPropertyById)(ctx, propertyID)
	if property == nil {
		return fmt.Errorf("property with id %s not found for propertyValue", payload.PropertyID), esdb.NackActionPark
	}
	if err := hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
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
				log.Error().Msg("could not assert number.")
				return nil, esdb.NackActionPark
			}
			createPropertyValueParams.NumberValue = &val
		case fieldType == pb.FieldType_FIELD_TYPE_CHECKBOX:
			val, ok := payload.Value.(bool)
			if !ok {
				log.Error().Msg("could not assert bool.")
				return nil, esdb.NackActionPark
			}
			createPropertyValueParams.BoolValue = &val
		case fieldType == pb.FieldType_FIELD_TYPE_DATE:
			// TBD: Is this the right timezone?
			val, err := hwutil.AssertDate(payload.Value, time.UTC)
			if err != nil {
				log.Error().Err(err)
				return nil, esdb.NackActionPark
			}
			createPropertyValueParams.DateValue = hwdb.TimeToDate(*val)
		case fieldType == pb.FieldType_FIELD_TYPE_DATE_TIME:
			val, err := hwutil.AssertTimestampToTime(payload.Value)
			if err != nil {
				log.Error().Err(err)
				return nil, esdb.NackActionPark
			}
			createPropertyValueParams.DateTimeValue = hwdb.TimeToTimestamp(*val)
		case fieldType == pb.FieldType_FIELD_TYPE_SELECT:
			val, ok := payload.Value.(string)
			if !ok {
				log.Error().Msg("could not assert string.")
				return nil, esdb.NackActionPark
			}
			id, err := hwutil.ParseNullUUID(&val)
			if err != nil {
				log.Error().Err(err)
				return nil, esdb.NackActionPark
			}
			createPropertyValueParams.SelectValue = id
		}
	}

	err = p.propertyValueRepo.CreatePropertyValue(ctx, createPropertyValueParams)
	if err := hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (p *Projection) onPropertyValueUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyValueEventsV1.PropertyValueUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionPark
	}

	if payload.Value == nil {

	}

	// Get Property for FieldType
	propertyValue, err := hwdb.Optional(p.propertyValueRepo.GetPropertyValueByID)(ctx, evt.AggregateID)
	if propertyValue == nil {
		return fmt.Errorf("propertyValue with id %s not found", evt.AggregateID), esdb.NackActionRetry
	}
	if err := hwdb.Error(ctx, err); err != nil {
		return nil, esdb.NackActionRetry
	}

	property, err := hwdb.Optional(p.propertyRepo.GetPropertyById)(ctx, propertyValue.PropertyID)
	if property == nil {
		return fmt.Errorf("property with id %s not found for propertyValue", propertyValue.PropertyID.String()), esdb.NackActionPark
	}
	if err := hwdb.Error(ctx, err); err != nil {
		return nil, esdb.NackActionRetry
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
				log.Error().Msg("could not assert number.")
				return nil, esdb.NackActionPark
			}
			updatePropertyValueParams.NumberValue = &val
		case fieldType == pb.FieldType_FIELD_TYPE_CHECKBOX:
			val, ok := payload.Value.(bool)
			if !ok {
				log.Error().Msg("could not assert bool.")
				return nil, esdb.NackActionPark
			}
			updatePropertyValueParams.BoolValue = &val
		case fieldType == pb.FieldType_FIELD_TYPE_DATE:
			val, err := hwutil.AssertDate(payload.Value, time.UTC)
			if err != nil {
				log.Error().Err(err)
				return nil, esdb.NackActionPark
			}
			updatePropertyValueParams.DateValue = hwdb.TimeToDate(*val)
		case fieldType == pb.FieldType_FIELD_TYPE_DATE_TIME:
			val, err := hwutil.AssertTimestampToTime(payload.Value)
			if err != nil {
				log.Error().Err(err)
				return nil, esdb.NackActionPark
			}
			updatePropertyValueParams.DateTimeValue = hwdb.TimeToTimestamp(*val)
		case fieldType == pb.FieldType_FIELD_TYPE_SELECT:
			val, ok := payload.Value.(string)
			if !ok {
				log.Error().Msg("could not assert string.")
				return nil, esdb.NackActionPark
			}
			parsedID, err := hwutil.ParseNullUUID(&val)
			if err != nil {
				log.Error().Err(err)
				return err, esdb.NackActionPark
			}
			updatePropertyValueParams.SelectValue = parsedID
		}
	} else {
		// Unset all values
		updatePropertyValueParams = property_value_repo.UpdatePropertyValueByIDParams{
			ID:            evt.AggregateID,
			TextValue:     nil,
			NumberValue:   nil,
			BoolValue:     nil,
			SelectValue:   uuid.NullUUID{UUID: uuid.Nil, Valid: false},
			DateValue:     pgtype.Date{Valid: false},
			DateTimeValue: pgtype.Timestamp{Valid: false},
		}
	}

	err = p.propertyValueRepo.UpdatePropertyValueByID(ctx, updatePropertyValueParams)
	if err := hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}
