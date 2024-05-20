package models

import (
	"context"
	"hwdb"
	"hwutil"
	"property-svc/repos/task_views_repo"

	"github.com/google/uuid"
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

func (m TaskPropertyMatchers) ToMap() map[string]interface{} {
	mp := make(map[string]interface{})
	if m.WardID.Valid {
		mp["WardId"] = m.WardID.UUID.String()
	} else {
		mp["WardId"] = nil
	}
	if m.TaskID.Valid {
		mp["TaskId"] = m.TaskID.UUID.String()
	} else {
		mp["TaskId"] = nil
	}
	return mp
}

func TaskPropertyMatchersFromMap(m interface{}) (TaskPropertyMatchers, bool) {
	mp, ok := m.(map[string]interface{})
	if !ok {
		// not even a map
		return TaskPropertyMatchers{}, false
	}

	matcher := TaskPropertyMatchers{}

	if wardIdRaw, ok := mp["WardId"].(string); ok {
		parsed, err := hwutil.ParseNullUUID(&wardIdRaw)
		if err != nil {
			return TaskPropertyMatchers{}, false
		}
		matcher.WardID = parsed
	} else {
		matcher.WardID = uuid.NullUUID{Valid: false}
	}
	if taskIdRaw, ok := mp["TaskId"].(string); ok {
		parsed, err := hwutil.ParseNullUUID(&taskIdRaw)
		if err != nil {
			return TaskPropertyMatchers{}, false
		}
		matcher.TaskID = parsed
	} else {
		matcher.TaskID = uuid.NullUUID{Valid: false}
	}

	return matcher, true
}
