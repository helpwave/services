package aggregate

import (
	"context"
	"github.com/google/uuid"
	"hwes"
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
		PropertyViewRule: &models.PropertyViewRule{RuleId: id},
	}
	aggregate.initEventListeners()
	return aggregate
}

func LoadPropertyViewAggregate(ctx context.Context, as hwes.AggregateStore, id uuid.UUID) (*PropertyViewRuleAggregate, error) {
	propertyView := NewPropertyViewRuleAggregate(id)
	if err := as.Load(ctx, propertyView); err != nil {
		return nil, err
	}
	return propertyView, nil
}

func (a *PropertyViewRuleAggregate) initEventListeners() {
	// TODO: implement
}

// TODO: Event handlers
