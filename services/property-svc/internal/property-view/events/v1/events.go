package v1

import (
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-view/models"
)

const (
	PropertyRuleCreated       = "PROPERTY_RULE_CREATED_v1"
	PropertyRuleListsAppended = "PROPERTY_RULE_LISTS_APPENDED_v1"
)

type PropertyRuleCreatedEvent struct {
	models.PropertyViewRule
}

func NewPropertyRuleCreatedEvent(a hwes.Aggregate, rule models.PropertyViewRule) (hwes.Event, error) {
	payload := PropertyRuleCreatedEvent{
		rule,
	}
	return hwes.NewEvent(a, PropertyRuleCreated, hwes.WithData(payload))
}

type PropertyRuleListsAppendedEvent struct {
	AlwaysInclude     []uuid.UUID
	DontAlwaysInclude []uuid.UUID
}

func NewPropertyRuleListsAppendedEvent(a hwes.Aggregate, alwaysInclude []uuid.UUID, dontAlwaysInclude []uuid.UUID) (hwes.Event, error) {
	payload := PropertyRuleListsAppendedEvent{
		AlwaysInclude:     alwaysInclude,
		DontAlwaysInclude: dontAlwaysInclude,
	}
	return hwes.NewEvent(a, PropertyRuleListsAppended, hwes.WithData(payload))
}
