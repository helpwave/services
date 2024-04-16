// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.26.0
// source: task_views_repo.sql

package task_views_repo

import (
	"context"

	"github.com/google/uuid"
)

const createTaskRule = `-- name: CreateTaskRule :exec
INSERT INTO task_property_view_rules (rule_id, ward_id, task_id)
VALUES ($1, $2, $3)
`

type CreateTaskRuleParams struct {
	RuleID uuid.UUID
	WardID uuid.NullUUID
	TaskID uuid.NullUUID
}

func (q *Queries) CreateTaskRule(ctx context.Context, arg CreateTaskRuleParams) error {
	_, err := q.db.Exec(ctx, createTaskRule, arg.RuleID, arg.WardID, arg.TaskID)
	return err
}

const getTaskRuleUsingExactMatchers = `-- name: GetTaskRuleUsingExactMatchers :many


SELECT
	rules.rule_id as rule_id,
	items.property_id,
	items.dont_always_include,
	calc_rule_specificity($1 IS NOT NULL, $2 IS NOT NULL) as specificity
	FROM task_property_view_rules as rules
	LEFT JOIN property_view_filter_always_include_items as items
		ON items.rule_id = rules.rule_id
	WHERE
		rules.ward_id = $1
		AND rules.task_id = $2
`

type GetTaskRuleUsingExactMatchersParams struct {
	WardID interface{}
	TaskID interface{}
}

type GetTaskRuleUsingExactMatchersRow struct {
	RuleID            uuid.UUID
	PropertyID        uuid.NullUUID
	DontAlwaysInclude *bool
	Specificity       int32
}

// NOTE: views_repo.CreateRule MUST be invoked with the same id in the same transaction!!
func (q *Queries) GetTaskRuleUsingExactMatchers(ctx context.Context, arg GetTaskRuleUsingExactMatchersParams) ([]GetTaskRuleUsingExactMatchersRow, error) {
	rows, err := q.db.Query(ctx, getTaskRuleUsingExactMatchers, arg.WardID, arg.TaskID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetTaskRuleUsingExactMatchersRow{}
	for rows.Next() {
		var i GetTaskRuleUsingExactMatchersRow
		if err := rows.Scan(
			&i.RuleID,
			&i.PropertyID,
			&i.DontAlwaysInclude,
			&i.Specificity,
		); err != nil {
			return nil, err
		}
		items = append(items, i)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}
