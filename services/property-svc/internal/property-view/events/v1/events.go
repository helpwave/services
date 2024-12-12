package v1

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"hwes"
	"hwutil"
	"hwutil/errs"

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

var ErrNoMatcherFound = errors.New("could not find matcher in event")

func (m *PropertyRuleCreatedEvent) FromJSON(data []byte) error {
	var inter map[string]interface{}
	if err := json.Unmarshal(data, &inter); err != nil {
		return err
	}

	//
	// RuleID
	//

	ruleIDfieldName := "RuleID"
	ruleIDRaw, ok := inter[ruleIDfieldName].(string)
	if !ok {
		return fmt.Errorf("PropertyRuleCreatedEvent.FromJSON: %w", errs.NewInvalidMapFieldError(ruleIDfieldName,
			errs.NewCastError("string", inter[ruleIDfieldName])))
	}

	ruleID, err := uuid.Parse(ruleIDRaw)
	if err != nil {
		return fmt.Errorf("PropertyRuleCreatedEvent.FromJSON: %w",
			errs.NewInvalidMapFieldError(ruleIDfieldName, err))
	}

	//
	// AlwaysInclude
	//

	alwaysIncludeFieldName := "AlwaysInclude"
	alwaysInclude, ok := hwutil.InterfaceAsStringSlice(inter[alwaysIncludeFieldName])
	if !ok {
		return fmt.Errorf("PropertyRuleCreatedEvent.FromJSON: %w",
			errs.NewInvalidMapFieldError(alwaysIncludeFieldName,
				errs.NewCastError("string[]", inter[alwaysIncludeFieldName])))
	}

	alwaysIncludeUUIDs, err := hwutil.StringsToUUIDs(alwaysInclude)
	if err != nil {
		return fmt.Errorf("PropertyRuleCreatedEvent.FromJSON: %w",
			errs.NewInvalidMapFieldError(alwaysIncludeFieldName, err))
	}

	//
	// DontAlwaysInclude
	//

	dontAlwaysIncludeFieldName := "DontAlwaysInclude"
	dontAlwaysInclude, ok := hwutil.InterfaceAsStringSlice(inter[dontAlwaysIncludeFieldName])
	if !ok {
		return fmt.Errorf("PropertyRuleCreatedEvent.FromJSON: %w",
			errs.NewInvalidMapFieldError(dontAlwaysIncludeFieldName,
				errs.NewCastError("string[]", inter[dontAlwaysIncludeFieldName])))
	}

	dontAlwaysIncludeUUIDs, err := hwutil.StringsToUUIDs(dontAlwaysInclude)
	if err != nil {
		return fmt.Errorf("PropertyRuleCreatedEvent.FromJSON: %w",
			errs.NewInvalidMapFieldError(dontAlwaysIncludeFieldName, err))
	}

	rule := models.PropertyViewRule{
		RuleID:            ruleID,
		Matchers:          nil, // will be set below
		AlwaysInclude:     alwaysIncludeUUIDs,
		DontAlwaysInclude: dontAlwaysIncludeUUIDs,
	}

	//
	// Matchers
	//

	matchersFieldName := "Matchers"
	matchers, ok := inter[matchersFieldName].(map[string]interface{})
	if !ok {
		return fmt.Errorf("PropertyRuleCreatedEvent.FromJSON: %w",
			errs.NewInvalidMapFieldError(matchersFieldName,
				errs.NewCastError("map[string]interface{}", inter[matchersFieldName])))
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

	return ErrNoMatcherFound
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
