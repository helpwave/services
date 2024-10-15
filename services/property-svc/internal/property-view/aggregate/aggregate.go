package aggregate

import (
	"context"
	"errors"
	"github.com/google/uuid"
	"hwes"
	"hwutil"
	propertyViewEventsV1 "property-svc/internal/property-view/events/v1"
	"property-svc/internal/property-view/models"
)

const PropertyViewRuleAggregateType = "property_view_rule"

type PropertyViewRuleAggregate struct {
	*hwes.AggregateBase
	PropertyViewRule *models.PropertyViewRule
}

func NewPropertyViewRuleAggregate(id uuid.UUID) *PropertyViewRuleAggregate {
	aggregate := &PropertyViewRuleAggregate{
		AggregateBase:    hwes.NewAggregateBase(PropertyViewRuleAggregateType, id),
		PropertyViewRule: &models.PropertyViewRule{RuleID: id},
	}
	aggregate.initEventListeners()
	return aggregate
}

func LoadPropertyViewRuleAggregate(
	ctx context.Context,
	as hwes.AggregateStore,
	id uuid.UUID,
) (*PropertyViewRuleAggregate, error) {
	propertyView := NewPropertyViewRuleAggregate(id)
	if err := as.Load(ctx, propertyView); err != nil {
		return nil, err
	}
	return propertyView, nil
}

func (a *PropertyViewRuleAggregate) initEventListeners() {
	a.RegisterEventListener(propertyViewEventsV1.PropertyRuleCreated, a.onPropertyRuleCreated)
	a.RegisterEventListener(propertyViewEventsV1.PropertyRuleListsUpdated, a.onPropertyRuleListsUpdated)
}

func (a *PropertyViewRuleAggregate) onPropertyRuleCreated(event hwes.Event) error {
	var payload propertyViewEventsV1.PropertyRuleCreatedEvent
	if err := event.GetJsonData(&payload); err != nil {
		return err
	}

	// json unmarshaller sets uuid.Nil for missing uuids
	// if they are set, they have to be valid
	if payload.RuleID == uuid.Nil {
		return errors.New("RuleID missing")
	}
	if a.GetID() != payload.RuleID {
		return errors.New("RuleID not AggregateID")
	}
	a.PropertyViewRule = &payload.PropertyViewRule
	return nil
}

func (a *PropertyViewRuleAggregate) onPropertyRuleListsUpdated(event hwes.Event) error {
	var payload propertyViewEventsV1.PropertyRuleListsUpdatedEvent
	if err := event.GetJsonData(&payload); err != nil {
		return err
	}

	mergedInclude := hwutil.MergeSlices(payload.AppendToAlwaysInclude, a.PropertyViewRule.AlwaysInclude)
	mergedDontInclude, dontIncludeSet := hwutil.MergeSlicesWithSet(
		payload.AppendToDontAlwaysInclude,
		a.PropertyViewRule.DontAlwaysInclude,
	)

	removeFromAlwaysInclude := hwutil.SliceToSet(payload.RemoveFromAlwaysInclude)
	removeFromDontAlwaysInclude := hwutil.SliceToSet(payload.RemoveFromDontAlwaysInclude)

	a.PropertyViewRule.AlwaysInclude = hwutil.Filter(mergedInclude, func(id uuid.UUID) bool {
		// the intent of being in the "don't list" is stronger
		// if an id is in both lists, it gets removed from the "always list"
		_, inDontInclude := dontIncludeSet[id]
		_, inRemove := removeFromAlwaysInclude[id]
		_, inRemoveFromDont := removeFromDontAlwaysInclude[id]

		return !inRemove && (!inDontInclude || inRemoveFromDont)
	})
	a.PropertyViewRule.DontAlwaysInclude = hwutil.Filter(mergedDontInclude, func(id uuid.UUID) bool {
		_, inRemove := removeFromDontAlwaysInclude[id]
		return inRemove
	})

	return nil
}
