package property_value_postgres_projection

import (
	"context"
	"fmt"
	pb "gen/services/property_svc/v1"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	"property-svc/internal/property-value/aggregate"
	propertyValueEventsV1 "property-svc/internal/property-value/events/v1"
	"property-svc/internal/property-value/models"
	"property-svc/repos/property_repo"
	"property-svc/repos/property_value_repo"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
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

	if payload.Value == nil {
		return fmt.Errorf("onPropertyValueCreated: payload is empty"), hwutil.PtrTo(esdb.NackActionPark)
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

	tx, err := p.db.Begin(ctx)
	if err != nil {
		return fmt.Errorf("could not start tx: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer func() {
		_ = tx.Rollback(ctx)
	}()

	err, ack := createBasicPropertyValue(ctx, p.propertyValueRepo.WithTx(tx), payload, propertyID, evt.AggregateID, subjectID, fieldType)
	if err != nil {
		return fmt.Errorf("onPropertyValueCreated: could not createbasicPropertyValue: %w", err), ack
	}

	if fieldType == pb.FieldType_FIELD_TYPE_SELECT || fieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT {
		var selectsToAdd []property_value_repo.ConnectValueWithSelectOptionsParams

		if fieldType == pb.FieldType_FIELD_TYPE_SELECT {
			val, ok := payload.Value.(string)
			if !ok {
				return fmt.Errorf("could not assert string"), hwutil.PtrTo(esdb.NackActionPark)
			}
			id, err := uuid.Parse(val)
			if err != nil {
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}
			selectsToAdd = []property_value_repo.ConnectValueWithSelectOptionsParams{{ValueID: evt.AggregateID, SelectOption: id}}
		} else {
			// FieldType_FIELD_TYPE_MULTI_SELECT
			val, ok := payload.Value.([]string)
			if !ok {
				return fmt.Errorf("could not assert []string"), hwutil.PtrTo(esdb.NackActionPark)
			}
			ids, err := hwutil.StringsToUUIDs(val)
			if err != nil {
				return fmt.Errorf("onPropertyValueCreated: at least one select option uuid could not be parsed: %w", err), hwutil.PtrTo(esdb.NackActionPark)
			}
			selectsToAdd = hwutil.Map(ids, func(id uuid.UUID) property_value_repo.ConnectValueWithSelectOptionsParams {
				return property_value_repo.ConnectValueWithSelectOptionsParams{
					ValueID:      evt.AggregateID,
					SelectOption: id,
				}
			})
		}

		err = hwdb.ExecBatch(p.propertyValueRepo.ConnectValueWithSelectOptions(ctx, selectsToAdd))
		if err != nil {
			return fmt.Errorf("onPropertyValueCreated: could not connect value with select options: %w", err), hwutil.PtrTo(esdb.NackActionPark)
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return fmt.Errorf("could not commit transaction: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

// createBasicPropertyValue is meant to be called only in onPropertyValueCreated
func createBasicPropertyValue(ctx context.Context, repo *property_value_repo.Queries, payload propertyValueEventsV1.PropertyValueCreatedEvent, propertyID, aggregateID, subjectID uuid.UUID, fieldType pb.FieldType) (error, *esdb.NackAction) {
	createPropertyValueParams := property_value_repo.CreateBasicPropertyValueParams{
		ID:         aggregateID,
		PropertyID: propertyID,
		SubjectID:  subjectID,
	}

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
		val, err := hwutil.AssertTimestampToTime(payload.Value)
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
	}

	err := repo.CreateBasicPropertyValue(ctx, createPropertyValueParams)
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

	if payload.Value == nil {
		// Delete PropertyValue
		err := p.propertyValueRepo.DeletePropertyValue(ctx, evt.AggregateID)
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
	} else if fieldType == pb.FieldType_FIELD_TYPE_SELECT || fieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT {
		tx, err := p.db.Begin(ctx)
		if err != nil {
			return fmt.Errorf("could not start tx: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
		}
		defer func() {
			_ = tx.Rollback(ctx)
		}()

		propertyValueRepo := p.propertyValueRepo.WithTx(tx)

		var toAdd []uuid.UUID
		if fieldType == pb.FieldType_FIELD_TYPE_SELECT {
			val, ok := payload.Value.(string)
			if !ok {
				err = fmt.Errorf("onPropertyValueUpdated: could not get select value: type is %T, expected string", payload.Value)
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}
			parsedID, err := uuid.Parse(val)
			if err != nil {
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}

			toAdd = []uuid.UUID{parsedID}

			// delete any other connection
			err = propertyValueRepo.DisconnectValueFromAllSelectOptions(ctx, evt.AggregateID)
			if err != nil {
				return fmt.Errorf("onPropertyValueUpdated: could not disconnectvalue from all options: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
			}
		} else {
			val, ok := payload.Value.(models.MultiSelectChange)
			if !ok {
				err = fmt.Errorf("onPropertyValueUpdated: could not get select value: type is %T, expected models.MultiSelectChange", payload.Value)
				return err, hwutil.PtrTo(esdb.NackActionPark)
			}

			toAdd, err = hwutil.StringsToUUIDs(val.SelectValues)
			if err != nil {
				return fmt.Errorf("onPropertyValueUpdated: could not parse SelectValues: %w", err), hwutil.PtrTo(esdb.NackActionPark)
			}

			// delete requested options
			if len(val.RemoveSelectValues) != 0 {
				arr, err := hwutil.MapWithErr(val.RemoveSelectValues, func(s string) (property_value_repo.DisconnectValueFromSelectOptionsParams, error) {
					id, err := uuid.Parse(s)
					if err != nil {
						return property_value_repo.DisconnectValueFromSelectOptionsParams{}, err
					}
					return property_value_repo.DisconnectValueFromSelectOptionsParams{
						ValueID:      evt.AggregateID,
						SelectOption: id,
					}, nil
				})
				if err != nil {
					return fmt.Errorf("onPropertyValueUpdated: could not parse RemoveSelectValues: %w", err), hwutil.PtrTo(esdb.NackActionPark)
				}
				if err := hwdb.ExecBatch(propertyValueRepo.DisconnectValueFromSelectOptions(ctx, arr)); err != nil {
					return fmt.Errorf("onPropertyValueUpdated: could not disconnect desired options: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
				}
			}

		}

		// add new connection
		args := hwutil.Map(toAdd, func(id uuid.UUID) property_value_repo.ConnectValueWithSelectOptionsParams {
			return property_value_repo.ConnectValueWithSelectOptionsParams{
				ValueID:      evt.AggregateID,
				SelectOption: id,
			}
		})
		if err := hwdb.ExecBatch(propertyValueRepo.ConnectValueWithSelectOptions(ctx, args)); err != nil {
			return fmt.Errorf("onPropertyValueUpdated: could not connect select options: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
		}

		if err := tx.Commit(ctx); err != nil {
			return fmt.Errorf("onPropertyValueUpdated: could not commit tx: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
		}
	} else {
		return updateBasicPropertyValue(ctx, p.propertyValueRepo, fieldType, evt.AggregateID, payload)
	}

	return nil, nil
}

// updateBasicPropertyValue is meant to be called in onPropertyValueUpdated
func updateBasicPropertyValue(ctx context.Context, repo *property_value_repo.Queries, fieldType pb.FieldType, aggregateID uuid.UUID, payload propertyValueEventsV1.PropertyValueUpdatedEvent) (error, *esdb.NackAction) {
	updatePropertyValueParams := property_value_repo.UpdatePropertyValueByIDParams{
		ID: aggregateID,
	}

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
		val, err := hwutil.AssertTimestampToTime(payload.Value)
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
	default:
		return fmt.Errorf("updateBasicPropertyValue called with fieldType %s", fieldType.String()), hwutil.PtrTo(esdb.NackActionPark)
	}

	err := repo.UpdatePropertyValueByID(ctx, updatePropertyValueParams)
	if err := hwdb.Error(ctx, err); err != nil {
		return fmt.Errorf("updateBasicPropertyValue: could not update property value in pq: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
