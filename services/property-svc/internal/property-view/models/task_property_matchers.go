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

func (m TaskPropertyMatchers) FindExactRuleId(ctx context.Context) (*uuid.UUID, error) {
	taskViews := task_views_repo.New(hwdb.GetDB())
	return hwdb.Optional(taskViews.GetTaskRuleIdUsingExactMatchers)(ctx, task_views_repo.GetTaskRuleIdUsingExactMatchersParams{
		WardID: m.WardID,
		TaskID: m.TaskID,
	})
}
