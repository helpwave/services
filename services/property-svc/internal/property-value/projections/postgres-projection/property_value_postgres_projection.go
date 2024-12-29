package postgresprojection

import (
	"context"
	"fmt"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"

	"property-svc/internal/property-value/aggregate"
	propertyValueEventsV1 "property-svc/internal/property-value/events/v1"
	"property-svc/internal/property-value/models"
	"property-svc/repos/property-repo"
	"property-svc/repos/property-value-repo"
)

type Projection struct {
	*custom.CustomProjection
	db                hwdb.DBTX
	propertyRepo      *propertyrepo.Queries
	propertyValueRepo *propertyvaluerepo.Queries
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
		propertyRepo:      propertyrepo.New(db),
		propertyValueRepo: propertyvaluerepo.New(db),
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(propertyValueEventsV1.PropertyValueCreated, p.onPropertyValueCreated)
	p.RegisterEventListener(propertyValueEventsV1.PropertyValueUpdated, p.onPropertyValueUpdated)
}

func (p *Projection) onPropertyValueCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload propertyValueEventsV1.PropertyValueCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	change := payload.Change

	propertyID, err := uuid.Parse(payload.PropertyID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	subjectID, err := uuid.Parse(payload.SubjectID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	// GetProperty for the fieldType
	property, err := hwdb.Optional(p.propertyRepo.GetPropertyById)(ctx, propertyID)
	if property == nil {
		return hwutil.PtrTo(esdb.NackActionRetry), PropertyNotFoundForValueError(propertyID)
	}
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	tx, rollback, err := hwdb.BeginTx(p.db, ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), fmt.Errorf("could not start tx: %w", err)
	}
	defer rollback()

	repo := p.propertyValueRepo.WithTx(tx)

	ack, err := createBasicPropertyValue(ctx, evt, repo, change, propertyID, evt.AggregateID, subjectID)
	if err != nil {
		return ack, fmt.Errorf("onPropertyValueCreated: could not createbasicPropertyValue: %w", err)
	}

	// for selects we are going to add options into the appropriate tables as well
	isSingleSelectChange := change.SingleSelectValue != nil
	isMultiSelectChange := change.MultiSelectValues != nil

	if isSingleSelectChange || isMultiSelectChange {
		var selectsToAdd []propertyvaluerepo.ConnectValueWithSelectOptionsParams

		if isSingleSelectChange {
			id, err := uuid.Parse(*change.SingleSelectValue)
			if err != nil {
				return hwutil.PtrTo(esdb.NackActionSkip), fmt.Errorf("option change is not a uuid: %w", err)
			}
			selectsToAdd = []propertyvaluerepo.ConnectValueWithSelectOptionsParams{
				{ValueID: evt.AggregateID, SelectOption: id},
			}
		} else { // isMultiSelectChange
			multiSelectChange := change.MultiSelectValues
			ids, err := hwutil.StringsToUUIDs(multiSelectChange.SelectValues)
			if err != nil {
				return hwutil.PtrTo(esdb.NackActionPark),
					fmt.Errorf("onPropertyValueCreated: at least one select option uuid could not be parsed: %w", err)
			}
			selectsToAdd = hwutil.Map(ids, func(id uuid.UUID) propertyvaluerepo.ConnectValueWithSelectOptionsParams {
				return propertyvaluerepo.ConnectValueWithSelectOptionsParams{
					ValueID:      evt.AggregateID,
					SelectOption: id,
				}
			})
		}

		err = hwdb.ExecBatch(repo.ConnectValueWithSelectOptions(ctx, selectsToAdd))
		if err != nil {
			return hwutil.PtrTo(esdb.NackActionPark),
				fmt.Errorf("onPropertyValueCreated: could not connect value with select options: %w", err)
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), fmt.Errorf("could not commit transaction: %w", err)
	}

	return nil, nil
}

// createBasicPropertyValue is meant to be called only in onPropertyValueCreated
func createBasicPropertyValue(
	ctx context.Context,
	evt hwes.Event,
	repo *propertyvaluerepo.Queries,
	valueChange models.TypedValueChange,
	propertyID,
	aggregateID,
	subjectID uuid.UUID,
) (*esdb.NackAction, error) {
	createPropertyValueParams := propertyvaluerepo.CreateBasicPropertyValueParams{
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
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

type PropertyValueNotFoundError uuid.UUID

func (e PropertyValueNotFoundError) Error() string {
	return fmt.Sprintf("propertyValue with id %s not found", uuid.UUID(e).String())
}

type PropertyNotFoundForValueError uuid.UUID

func (e PropertyNotFoundForValueError) Error() string {
	return fmt.Sprintf("property with id %s not found for propertyValue", uuid.UUID(e).String())
}

func (p *Projection) onPropertyValueUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload propertyValueEventsV1.PropertyValueUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	change := payload.Change

	if change.ValueRemoved {
		// Delete PropertyValue
		err := p.propertyValueRepo.DeletePropertyValue(ctx, evt.AggregateID)
		if err := hwdb.Error(ctx, err); err != nil {
			return hwutil.PtrTo(esdb.NackActionRetry), err
		}
		return nil, nil
	}

	isSingleSelectUpdate := change.SingleSelectValue != nil
	isMultiSelectUpdate := change.MultiSelectValues != nil

	if isSingleSelectUpdate || isMultiSelectUpdate {
		return updateSelectPropertyValue(ctx, p.db, evt, change)
	}

	return updateBasicPropertyValue(ctx, evt, p.propertyValueRepo, change)
}

func updateSelectPropertyValue(
	ctx context.Context,
	db hwdb.DBTX,
	evt hwes.Event,
	valueChange models.TypedValueChange,
) (*esdb.NackAction, error) {
	aggregateID := evt.AggregateID

	tx, rollback, err := hwdb.BeginTx(db, ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), fmt.Errorf("could not start tx: %w", err)
	}
	defer rollback()

	propertyValueRepo := propertyvaluerepo.New(tx)

	var toAdd []uuid.UUID
	if valueChange.SingleSelectValue != nil {
		parsedID, err := uuid.Parse(*valueChange.SingleSelectValue)
		if err != nil {
			return hwutil.PtrTo(esdb.NackActionPark), err
		}

		toAdd = []uuid.UUID{parsedID}

		// delete any other connection
		err = propertyValueRepo.DisconnectValueFromAllSelectOptions(ctx, aggregateID)
		if err != nil {
			return hwutil.PtrTo(esdb.NackActionRetry),
				fmt.Errorf("onPropertyValueUpdated: could not disconnectvalue from all options: %w", err)
		}
	} else if valueChange.MultiSelectValues != nil {
		val := *valueChange.MultiSelectValues

		toAdd, err = hwutil.StringsToUUIDs(val.SelectValues)
		if err != nil {
			return hwutil.PtrTo(esdb.NackActionPark),
				fmt.Errorf("onPropertyValueUpdated: could not parse SelectValues: %w", err)
		}

		// delete requested options
		if len(val.RemoveSelectValues) != 0 {
			arr, err := hwutil.MapWithErr(val.RemoveSelectValues,
				func(s string) (propertyvaluerepo.DisconnectValueFromSelectOptionsParams, error) {
					id, err := uuid.Parse(s)
					if err != nil {
						return propertyvaluerepo.DisconnectValueFromSelectOptionsParams{}, err
					}
					return propertyvaluerepo.DisconnectValueFromSelectOptionsParams{
						ValueID:      aggregateID,
						SelectOption: id,
					}, nil
				})
			if err != nil {
				return hwutil.PtrTo(esdb.NackActionPark),
					fmt.Errorf("onPropertyValueUpdated: could not parse RemoveSelectValues: %w", err)
			}
			if err := hwdb.ExecBatch(propertyValueRepo.DisconnectValueFromSelectOptions(ctx, arr)); err != nil {
				return hwutil.PtrTo(esdb.NackActionRetry),
					fmt.Errorf("onPropertyValueUpdated: could not disconnect desired options: %w", err)
			}
		}
	}

	// add new connection
	args := hwutil.Map(toAdd, func(id uuid.UUID) propertyvaluerepo.ConnectValueWithSelectOptionsParams {
		return propertyvaluerepo.ConnectValueWithSelectOptionsParams{
			ValueID:      evt.AggregateID,
			SelectOption: id,
		}
	})
	if err := hwdb.ExecBatch(propertyValueRepo.ConnectValueWithSelectOptions(ctx, args)); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry),
			fmt.Errorf("onPropertyValueUpdated: could not connect select options: %w", err)
	}

	// update consistency
	err = propertyValueRepo.UpdatePropertyValueByID(ctx, propertyvaluerepo.UpdatePropertyValueByIDParams{
		ID:          evt.AggregateID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry),
			fmt.Errorf("onPropertyValueUpdated: could not update consistency of value: %w", err)
	}

	if err := tx.Commit(ctx); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry),
			fmt.Errorf("onPropertyValueUpdated: could not commit tx: %w", err)
	}
	return nil, nil
}

// updateBasicPropertyValue is meant to be called in onPropertyValueUpdated
func updateBasicPropertyValue(
	ctx context.Context,
	evt hwes.Event,
	repo *propertyvaluerepo.Queries,
	valueChange models.TypedValueChange,
) (*esdb.NackAction, error) {
	aggregateID := evt.AggregateID

	updatePropertyValueParams := propertyvaluerepo.UpdatePropertyValueByIDParams{
		ID:          aggregateID,
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	}

	if err := valueChange.SetBasicValues(&updatePropertyValueParams); err != nil {
		return hwutil.PtrTo(esdb.NackActionPark),
			fmt.Errorf("updateBasicPropertyValue: could not set setBasicFromChange: %w", err)
	}

	err := repo.UpdatePropertyValueByID(ctx, updatePropertyValueParams)
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry),
			fmt.Errorf("updateBasicPropertyValue: could not update property value in pq: %w", err)
	}

	return nil, nil
}
