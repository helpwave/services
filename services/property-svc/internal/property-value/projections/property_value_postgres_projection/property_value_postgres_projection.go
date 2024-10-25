package property_value_postgres_projection

import (
	"context"
	"fmt"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"

	zlog "github.com/rs/zerolog/log"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"

	"property-svc/internal/property-value/aggregate"
	propertyValueEventsV1 "property-svc/internal/property-value/events/v1"
	"property-svc/internal/property-value/models"
	"property-svc/repos/property_repo"
	"property-svc/repos/property_value_repo"
)

type Projection struct {
	*custom.CustomProjection
	db                hwdb.DBTX
	propertyRepo      *property_repo.Queries
	propertyValueRepo *property_value_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string, db hwdb.DBTX) *Projection {
	subscriptionGroupName := serviceName + "-value-postgres-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.PropertyValueAggregateType + "-"},
		),
		db:                db,
		propertyRepo:      property_repo.New(db),
		propertyValueRepo: property_value_repo.New(db),
	}
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

	valueChange := payload.ValueChange

	propertyID, err := uuid.Parse(payload.PropertyID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	subjectID, err := uuid.Parse(payload.SubjectID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	// Start TX

	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return fmt.Errorf("could not start tx: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer rollback()

	repo := p.propertyValueRepo.WithTx(tx)

	// first create a new value, this will also immediately store the value
	// for basic types (e.g., text, number, bool, ...)
	err, ack := createBasicPropertyValue(ctx, evt, repo, valueChange, propertyID, evt.AggregateID, subjectID)
	if err != nil {
		return fmt.Errorf("onPropertyValueCreated: could not createbasicPropertyValue: %w", err), ack
	}

	// for selects we are going to add options into the appropriate tables as well
	isSingleSelectChange := valueChange.SingleSelectValue != nil
	isMultiSelectChange := valueChange.MultiSelectValues != nil

	if isSingleSelectChange || isMultiSelectChange {
		var selectsToAdd []property_value_repo.ConnectValueWithSelectOptionsParams

		if isSingleSelectChange {
			id, err := uuid.Parse(*valueChange.SingleSelectValue)
			if err != nil {
				return fmt.Errorf("option change is not a uuid: %w", err), hwutil.PtrTo(esdb.NackActionSkip)
			}
			selectsToAdd = []property_value_repo.ConnectValueWithSelectOptionsParams{
				{ValueID: evt.AggregateID, SelectOption: id},
			}
		} else { // isMultiSelectChange
			multiSelectChange := payload.ValueChange.MultiSelectValues
			ids, err := hwutil.StringsToUUIDs(multiSelectChange.SelectValues)
			if err != nil {
				return fmt.Errorf("onPropertyValueCreated: at least one select option uuid could not be parsed: %w", err),
					hwutil.PtrTo(esdb.NackActionPark)
			}
			selectsToAdd = hwutil.Map(ids, func(id uuid.UUID) property_value_repo.ConnectValueWithSelectOptionsParams {
				return property_value_repo.ConnectValueWithSelectOptionsParams{
					ValueID:      evt.AggregateID,
					SelectOption: id,
				}
			})
		}

		err = hwdb.ExecBatch(repo.ConnectValueWithSelectOptions(ctx, selectsToAdd))
		if err != nil {
			return fmt.Errorf("onPropertyValueCreated: could not connect value with select options: %w", err),
				hwutil.PtrTo(esdb.NackActionPark)
		}
	}

	// Commit
	if err := tx.Commit(ctx); err != nil {
		return fmt.Errorf("could not commit transaction: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

// createBasicPropertyValue is meant to be called only in onPropertyValueCreated
func createBasicPropertyValue(
	ctx context.Context,
	evt hwes.Event,
	repo *property_value_repo.Queries,
	valueChange models.TypedValueChange,
	propertyID,
	aggregateID,
	subjectID uuid.UUID,
) (error, *esdb.NackAction) {
	createPropertyValueParams := property_value_repo.CreateBasicPropertyValueParams{
		ID:          aggregateID,
		PropertyID:  propertyID,
		SubjectID:   subjectID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	}

	_ = valueChange.SetBasicValues(&createPropertyValueParams)
	// do nothing, if nothing was set, we will create the property anyway,
	// we are going to add options to it later in the handler

	// create value
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

	valueChange := payload.ValueChange

	if valueChange.ValueRemoved {
		// Delete PropertyValue
		err := p.propertyValueRepo.DeletePropertyValue(ctx, evt.AggregateID)
		if err := hwdb.Error(ctx, err); err != nil {
			return err, hwutil.PtrTo(esdb.NackActionRetry)
		}
		return nil, nil
	}

	isSingleSelectUpdate := valueChange.SingleSelectValue != nil
	isMultiSelectUpdate := valueChange.MultiSelectValues != nil

	if isSingleSelectUpdate || isMultiSelectUpdate {
		return updateSelectPropertyValue(ctx, p.db, evt, valueChange)
	}

	return updateBasicPropertyValue(ctx, evt, p.propertyValueRepo, valueChange)
}

func updateSelectPropertyValue(
	ctx context.Context,
	db hwdb.DBTX,
	evt hwes.Event,
	valueChange models.TypedValueChange,
) (error, *esdb.NackAction) {
	aggregateID := evt.AggregateID

	tx, rollback, err := hwdb.BeginTx(db, ctx)
	if err != nil {
		return fmt.Errorf("could not start tx: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
	}
	defer rollback()

	propertyValueRepo := property_value_repo.New(tx)

	var toAdd []uuid.UUID
	if valueChange.SingleSelectValue != nil {
		parsedID, err := uuid.Parse(*valueChange.SingleSelectValue)
		if err != nil {
			return err, hwutil.PtrTo(esdb.NackActionPark)
		}

		toAdd = []uuid.UUID{parsedID}

		// delete any other connection
		err = propertyValueRepo.DisconnectValueFromAllSelectOptions(ctx, aggregateID)
		if err != nil {
			return fmt.Errorf("onPropertyValueUpdated: could not disconnectvalue from all options: %w", err),
				hwutil.PtrTo(esdb.NackActionRetry)
		}
	} else if valueChange.MultiSelectValues != nil {
		val := *valueChange.MultiSelectValues

		toAdd, err = hwutil.StringsToUUIDs(val.SelectValues)
		if err != nil {
			return fmt.Errorf("onPropertyValueUpdated: could not parse SelectValues: %w", err),
				hwutil.PtrTo(esdb.NackActionPark)
		}

		// delete requested options
		if len(val.RemoveSelectValues) != 0 {
			arr, err := hwutil.MapWithErr(val.RemoveSelectValues,
				func(s string) (property_value_repo.DisconnectValueFromSelectOptionsParams, error) {
					id, err := uuid.Parse(s)
					if err != nil {
						return property_value_repo.DisconnectValueFromSelectOptionsParams{}, err
					}
					return property_value_repo.DisconnectValueFromSelectOptionsParams{
						ValueID:      aggregateID,
						SelectOption: id,
					}, nil
				})
			if err != nil {
				return fmt.Errorf("onPropertyValueUpdated: could not parse RemoveSelectValues: %w", err),
					hwutil.PtrTo(esdb.NackActionPark)
			}
			if err := hwdb.ExecBatch(propertyValueRepo.DisconnectValueFromSelectOptions(ctx, arr)); err != nil {
				return fmt.Errorf("onPropertyValueUpdated: could not disconnect desired options: %w", err),
					hwutil.PtrTo(esdb.NackActionRetry)
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
		return fmt.Errorf("onPropertyValueUpdated: could not connect select options: %w", err),
			hwutil.PtrTo(esdb.NackActionRetry)
	}

	// update consistency
	err = propertyValueRepo.UpdatePropertyValueByID(ctx, property_value_repo.UpdatePropertyValueByIDParams{
		ID:          evt.AggregateID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return fmt.Errorf("onPropertyValueUpdated: could not update consistency of value: %w", err),
			hwutil.PtrTo(esdb.NackActionRetry)
	}

	if err := tx.Commit(ctx); err != nil {
		return fmt.Errorf("onPropertyValueUpdated: could not commit tx: %w", err),
			hwutil.PtrTo(esdb.NackActionRetry)
	}
	return nil, nil
}

// updateBasicPropertyValue is meant to be called in onPropertyValueUpdated
func updateBasicPropertyValue(
	ctx context.Context,
	evt hwes.Event,
	repo *property_value_repo.Queries,
	valueChange models.TypedValueChange,
) (error, *esdb.NackAction) {
	aggregateID := evt.AggregateID

	updatePropertyValueParams := property_value_repo.UpdatePropertyValueByIDParams{
		ID:          aggregateID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	}

	if done := valueChange.SetBasicValues(&updatePropertyValueParams); !done {
		return fmt.Errorf("updateBasicPropertyValue: could not set setBasicFromChange: %v", valueChange),
			hwutil.PtrTo(esdb.NackActionPark)
	}

	err := repo.UpdatePropertyValueByID(ctx, updatePropertyValueParams)
	if err := hwdb.Error(ctx, err); err != nil {
		return fmt.Errorf("updateBasicPropertyValue: could not update property value in pq: %w", err),
			hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
