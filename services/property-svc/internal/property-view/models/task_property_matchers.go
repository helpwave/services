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
	WardID uuid.NullUUID `json:"ward_id,omitempty"`
	TaskID uuid.NullUUID `json:"task_id,omitempty"`
}

func (m TaskPropertyMatchers) FindExactRuleID(ctx context.Context) (*uuid.UUID, error) {
	taskViews := task_views_repo.New(hwdb.GetDB())
	return hwdb.Optional(taskViews.GetTaskRuleIdUsingExactMatchers)(ctx,
		task_views_repo.GetTaskRuleIdUsingExactMatchersParams{
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

func (m TaskPropertyMatchers) GetSubjectID() (uuid.UUID, error) {
	if !m.TaskID.Valid {
		return uuid.UUID{}, errors.New("TaskPropertyMatchers GetSubjectID: TaskID not valid")
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

	mp["PropertyMatcherType"] = m.GetType()

	return mp
}

func (m TaskPropertyMatchers) IsPropertyAlwaysIncluded(ctx context.Context, propertyID uuid.UUID) (bool, error) {
	repo := task_views_repo.New(hwdb.GetDB())
	query := hwdb.Optional(repo.IsTaskPropertyAlwaysIncluded)
	alwaysInclude, err := query(ctx, task_views_repo.IsTaskPropertyAlwaysIncludedParams{
		PropertyID: propertyID,
		WardID:     m.WardID,
		TaskID:     m.TaskID,
	})
	err = hwdb.Error(ctx, err)
	if alwaysInclude == nil || *alwaysInclude == nil {
		return false, err
	}
	return **alwaysInclude, err
}

func TaskPropertyMatchersFromMap(m map[string]interface{}) (TaskPropertyMatchers, bool) {
	propertyMatcherType, ok := m["PropertyMatcherType"]
	if !ok || propertyMatcherType != TaskPropertyMatcherType {
		return TaskPropertyMatchers{}, false
	}

	matcher := TaskPropertyMatchers{}

	if wardIDRaw, ok := m["WardId"].(string); ok {
		parsed, err := hwutil.ParseNullUUID(&wardIDRaw)
		if err != nil {
			return TaskPropertyMatchers{}, false
		}
		matcher.WardID = parsed
	} else {
		matcher.WardID = uuid.NullUUID{Valid: false}
	}
	if taskIDRaw, ok := m["TaskId"].(string); ok {
		parsed, err := hwutil.ParseNullUUID(&taskIDRaw)
		if err != nil {
			return TaskPropertyMatchers{}, false
		}
		matcher.TaskID = parsed
	} else {
		matcher.TaskID = uuid.NullUUID{Valid: false}
	}

	return matcher, true
}
