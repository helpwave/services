package models

import (
	"context"
	"errors"
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

type queryTaskPropertiesRow struct {
	task_views_repo.GetTaskPropertiesUsingMatchersRow
}

func (r queryTaskPropertiesRow) GetPropertyID() uuid.UUID {
	return r.PropertyID
}

func (r queryTaskPropertiesRow) GetDontAlwaysInclude() bool {
	return r.DontAlwaysInclude
}

func (r queryTaskPropertiesRow) GetSpecificity() int32 {
	return r.Specificity
}

func (m TaskPropertyMatchers) QueryProperties(ctx context.Context) ([]PropertiesQueryRow, error) {
	taskViews := task_views_repo.New(hwdb.GetDB())

	rows, err := taskViews.GetTaskPropertiesUsingMatchers(ctx, task_views_repo.GetTaskPropertiesUsingMatchersParams{
		WardID: m.WardID,
		TaskID: m.TaskID,
	})

	cast := func(row task_views_repo.GetTaskPropertiesUsingMatchersRow) PropertiesQueryRow {
		return queryTaskPropertiesRow{row}
	}

	return hwutil.Map(rows, cast), err
}

func (m TaskPropertyMatchers) GetSubjectId() (uuid.UUID, error) {
	if !m.TaskID.Valid {
		return uuid.UUID{}, errors.New("TaskPropertyMatchers GetSubjectId: TaskID not valid")
	}
	return m.TaskID.UUID, nil
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
