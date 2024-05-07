package v1

import (
	"context"
	"encoding/json"
	"errors"
	"github.com/fatih/structs"
	"github.com/google/uuid"
	"github.com/mitchellh/mapstructure"
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

func (m *PropertyRuleCreatedEvent) ToJSON() ([]byte, error) {
	inter := structs.Map(m.PropertyViewRule)
	inter["matchers"] = m.PropertyViewRule.Matchers.ToMap()
	return json.Marshal(inter)
}

func (m *PropertyRuleCreatedEvent) FromJSON(data []byte) error {

	// FIXME: this does not work

	var inter map[string]interface{}
	if err := json.Unmarshal(data, &inter); err != nil {
		return err
	}

	// parse everything except matchers
	var rule models.PropertyViewRule
	if err := json.Unmarshal(data, &rule); err != nil {
		return err
	}

	var taskMatchers models.TaskPropertyMatchers
	err := mapstructure.Decode(inter["matchers"], &taskMatchers)
	if err == nil {
		rule.Matchers = taskMatchers
		m.PropertyViewRule = rule
		return nil
	}
	// add other matchers once we have more

	return errors.New("could not find matcher in event")
}

func NewPropertyRuleCreatedEvent(ctx context.Context, a hwes.Aggregate, rule models.PropertyViewRule) (hwes.Event, error) {
	payload := PropertyRuleCreatedEvent{
		rule,
	}
	return hwes.NewEvent(a, PropertyRuleCreated, hwes.WithData(&payload), hwes.WithContext(ctx))
}

type PropertyRuleListsUpdatedEvent struct {
	RuleId                      uuid.UUID
	AppendToAlwaysInclude       []uuid.UUID
	RemoveFromAlwaysInclude     []uuid.UUID
	AppendToDontAlwaysInclude   []uuid.UUID
	RemoveFromDontAlwaysInclude []uuid.UUID
}

func NewPropertyRuleListsUpdatedEvent(ctx context.Context, a hwes.Aggregate, ruleId uuid.UUID, appendToAlwaysInclude, removeFromAlwaysInclude, appendToDontAlwaysInclude, removeFromDontAlwaysInclude []uuid.UUID) (hwes.Event, error) {
	payload := PropertyRuleListsUpdatedEvent{
		RuleId:                      ruleId,
		AppendToAlwaysInclude:       appendToAlwaysInclude,
		RemoveFromAlwaysInclude:     removeFromAlwaysInclude,
		AppendToDontAlwaysInclude:   appendToDontAlwaysInclude,
		RemoveFromDontAlwaysInclude: removeFromDontAlwaysInclude,
	}
	return hwes.NewEvent(a, PropertyRuleListsUpdated, hwes.WithData(&payload), hwes.WithContext(ctx))
}
