package v1

import (
	"context"
	"encoding/json"
	"errors"
	"hwes"
	"hwutil"
	"property-svc/internal/property-view/models"

	"github.com/fatih/structs"
	"github.com/google/uuid"
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
	inter["Matchers"] = m.PropertyViewRule.Matchers.ToMap()
	return json.Marshal(inter)
}

func (m *PropertyRuleCreatedEvent) FromJSON(data []byte) error {
	var inter map[string]interface{}
	if err := json.Unmarshal(data, &inter); err != nil {
		return err
	}

	ruleIDRaw, ok := inter["RuleID"].(string)
	if !ok {
		return errors.New("rule_id is not a string")
	}

	ruleID, err := uuid.Parse(ruleIDRaw)
	if err != nil {
		return err
	}

	alwaysInclude, ok := hwutil.InterfaceAsStringSlice(inter["AlwaysInclude"])
	if !ok {
		return errors.New("AlwaysInclude is not a string[]")
	}

	alwaysIncludeUUIDs, err := hwutil.StringsToUUIDs(alwaysInclude)
	if err != nil {
		return err
	}

	dontAlwaysInclude, ok := hwutil.InterfaceAsStringSlice(inter["DontAlwaysInclude"])
	if !ok {
		return errors.New("DontAlwaysInclude is not a string[]")
	}

	dontAlwaysIncludeUUIDs, err := hwutil.StringsToUUIDs(dontAlwaysInclude)
	if err != nil {
		return err
	}

	rule := models.PropertyViewRule{
		RuleID:            ruleID,
		Matchers:          nil, // will be set below
		AlwaysInclude:     alwaysIncludeUUIDs,
		DontAlwaysInclude: dontAlwaysIncludeUUIDs,
	}

	matchers, ok := inter["Matchers"].(map[string]interface{})
	if !ok {
		return errors.New("Could not assert matchers to a map")
	}

	if taskMatchers, ok := models.TaskPropertyMatchersFromMap(matchers); ok {
		rule.Matchers = taskMatchers
		m.PropertyViewRule = rule
		return nil
	} else if patientMatchers, ok := models.PatientPropertyMatchersFromMap(matchers); ok {
		rule.Matchers = patientMatchers
		m.PropertyViewRule = rule
		return nil
	}

	return errors.New("could not find matcher in event")
}

func NewPropertyRuleCreatedEvent(
	ctx context.Context,
	a hwes.Aggregate,
	rule models.PropertyViewRule,
) (hwes.Event, error) {
	payload := PropertyRuleCreatedEvent{
		rule,
	}
	return hwes.NewEvent(a, PropertyRuleCreated, hwes.WithData(&payload), hwes.WithContext(ctx))
}

type PropertyRuleListsUpdatedEvent struct {
	RuleID                      uuid.UUID
	AppendToAlwaysInclude       []uuid.UUID
	RemoveFromAlwaysInclude     []uuid.UUID
	AppendToDontAlwaysInclude   []uuid.UUID
	RemoveFromDontAlwaysInclude []uuid.UUID
}

func NewPropertyRuleListsUpdatedEvent(ctx context.Context,
	a hwes.Aggregate,
	ruleID uuid.UUID,
	appendToAlwaysInclude,
	removeFromAlwaysInclude,
	appendToDontAlwaysInclude,
	removeFromDontAlwaysInclude []uuid.UUID,
) (hwes.Event, error) {
	payload := PropertyRuleListsUpdatedEvent{
		RuleID:                      ruleID,
		AppendToAlwaysInclude:       appendToAlwaysInclude,
		RemoveFromAlwaysInclude:     removeFromAlwaysInclude,
		AppendToDontAlwaysInclude:   appendToDontAlwaysInclude,
		RemoveFromDontAlwaysInclude: removeFromDontAlwaysInclude,
	}
	return hwes.NewEvent(a, PropertyRuleListsUpdated, hwes.WithData(&payload), hwes.WithContext(ctx))
}
