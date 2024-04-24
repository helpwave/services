package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-view/models"
)

const (
	PropertyRuleCreated      = "PROPERTY_RULE_CREATED_v1"
	PropertyRuleListsUpdated = "PROPERTY_RULE_LISTS_UPDATED_v1"
)

type PropertyRuleCreatedEvent struct {
	models.PropertyViewRule
}

func NewPropertyRuleCreatedEvent(ctx context.Context, a hwes.Aggregate, rule models.PropertyViewRule) (hwes.Event, error) {
	payload := PropertyRuleCreatedEvent{
		rule,
	}
	return hwes.NewEvent(a, PropertyRuleCreated, hwes.WithData(payload), hwes.WithContext(ctx))
}

type PropertyRuleListsUpdatedEvent struct {
	AppendToAlwaysInclude       []uuid.UUID
	RemoveFromAlwaysInclude     []uuid.UUID
	AppendToDontAlwaysInclude   []uuid.UUID
	RemoveFromDontAlwaysInclude []uuid.UUID
}

func NewPropertyRuleListsUpdatedEvent(ctx context.Context, a hwes.Aggregate, appendToAlwaysInclude, removeFromAlwaysInclude, appendToDontAlwaysInclude, removeFromDontAlwaysInclude []uuid.UUID) (hwes.Event, error) {
	payload := PropertyRuleListsUpdatedEvent{
		AppendToAlwaysInclude:       appendToAlwaysInclude,
		RemoveFromAlwaysInclude:     removeFromAlwaysInclude,
		AppendToDontAlwaysInclude:   appendToDontAlwaysInclude,
		RemoveFromDontAlwaysInclude: removeFromDontAlwaysInclude,
	}
	return hwes.NewEvent(a, PropertyRuleListsUpdated, hwes.WithData(payload), hwes.WithContext(ctx))
}
