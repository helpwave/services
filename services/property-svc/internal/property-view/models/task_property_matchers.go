package models

import (
	"context"
	"errors"
	"hwdb"
	"hwutil"
	"property-svc/repos/task_views_repo"

	"github.com/google/uuid"
)

const TaskPropertyMatcherType = "task_property_matcher"

// TaskPropertyMatchers implements PropertyMatchers
type TaskPropertyMatchers struct {
	WardID *uuid.UUID `json:"ward_id,omitempty"`
	TaskID *uuid.UUID `json:"task_id,omitempty"`
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

func (m TaskPropertyMatchers) GetType() string {
	return TaskPropertyMatcherType
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
	if m.TaskID == nil {
		return uuid.UUID{}, errors.New("TaskPropertyMatchers GetSubjectId: TaskID not valid")
	}
	return *m.TaskID, nil
}

func (m TaskPropertyMatchers) ToMap() map[string]interface{} {
	mp := make(map[string]interface{})
	if m.WardID != nil {
		mp["WardId"] = m.WardID.String()
	} else {
		mp["WardId"] = nil
	}
	if m.TaskID != nil {
		mp["TaskId"] = m.TaskID.String()
	} else {
		mp["TaskId"] = nil
	}

	mp["PropertyMatcherType"] = m.GetType()

	return mp
}

func TaskPropertyMatchersFromMap(m map[string]interface{}) (TaskPropertyMatchers, bool) {
	propertyMatcherType, ok := m["PropertyMatcherType"]
	if !ok || propertyMatcherType != TaskPropertyMatcherType {
		return TaskPropertyMatchers{}, false
	}

	matcher := TaskPropertyMatchers{}

	if wardIdRaw, ok := m["WardId"].(string); ok {
		parsed, err := uuid.Parse(wardIdRaw)
		if err != nil {
			return TaskPropertyMatchers{}, false
		}
		matcher.WardID = &parsed
	}
	if taskIdRaw, ok := m["TaskId"].(string); ok {
		parsed, err := uuid.Parse(taskIdRaw)
		if err != nil {
			return TaskPropertyMatchers{}, false
		}
		matcher.TaskID = &parsed
	}

	return matcher, true
}
