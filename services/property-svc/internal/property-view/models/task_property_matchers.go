package models

import (
	"context"
	"github.com/google/uuid"
	"hwdb"
	"property-svc/repos/task_views_repo"
)

// TaskPropertyMatchers implements PropertyMatchers
type TaskPropertyMatchers struct {
	WardID uuid.NullUUID `json:"ward_id,omitempty"`
	TaskID uuid.NullUUID `json:"task_id,omitempty"`
}

func (m TaskPropertyMatchers) QueryRule(ctx context.Context) (*PropertyViewRule, error) {
	taskViews := task_views_repo.New(hwdb.GetDB())
	ruleRows, err := taskViews.GetTaskRuleUsingExactMatchers(ctx, task_views_repo.GetTaskRuleUsingExactMatchersParams{
		WardID: m.WardID,
		TaskID: m.TaskID,
	})
	// bail, if error or no rule
	if err != nil || len(ruleRows) == 0 {
		return nil, err
	}

	alwaysInclude := make([]uuid.UUID, 0, len(ruleRows))
	dontAlwaysInclude := make([]uuid.UUID, 0, len(ruleRows)) // obv. we over-allocate, probably faster this way though

	for _, row := range ruleRows {
		if !row.PropertyID.Valid || row.DontAlwaysInclude == nil {
			// first can happen (when both lists are empty), the other should be implied (but I don't want to risk a crash :))
			continue
		}
		if *row.DontAlwaysInclude {
			dontAlwaysInclude = append(dontAlwaysInclude, row.PropertyID.UUID)
		} else {
			alwaysInclude = append(alwaysInclude, row.PropertyID.UUID)
		}
	}

	rule := PropertyViewRule{
		RuleId:            ruleRows[0].RuleID,
		Specificity:       ruleRows[0].Specificity,
		matchers:          m,
		AlwaysInclude:     alwaysInclude,
		DontAlwaysInclude: dontAlwaysInclude,
	}

	return &rule, nil
}
