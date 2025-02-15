// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0
// source: task_views_repo.sql

package taskviewsrepo

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

const getTaskPropertiesUsingMatchers = `-- name: GetTaskPropertiesUsingMatchers :many
SELECT
	list_items.property_id,
	list_items.dont_always_include,
	calc_rule_specificity(rules.task_id IS NOT NULL, rules.ward_id IS NOT NULL) as specificity
FROM task_property_view_rules as rules
JOIN property_view_filter_always_include_items as list_items ON list_items.rule_id = rules.rule_id
WHERE
	(rules.ward_id = $1 OR rules.ward_id IS NULL)
AND (rules.task_id = $2 OR rules.task_id IS NULL)
ORDER BY specificity
`

type GetTaskPropertiesUsingMatchersParams struct {
	WardID uuid.NullUUID
	TaskID uuid.NullUUID
}

type GetTaskPropertiesUsingMatchersRow struct {
	PropertyID        uuid.UUID
	DontAlwaysInclude bool
	Specificity       int32
}

func (q *Queries) GetTaskPropertiesUsingMatchers(ctx context.Context, arg GetTaskPropertiesUsingMatchersParams) ([]GetTaskPropertiesUsingMatchersRow, error) {
	rows, err := q.db.Query(ctx, getTaskPropertiesUsingMatchers, arg.WardID, arg.TaskID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetTaskPropertiesUsingMatchersRow{}
	for rows.Next() {
		var i GetTaskPropertiesUsingMatchersRow
		if err := rows.Scan(&i.PropertyID, &i.DontAlwaysInclude, &i.Specificity); err != nil {
			return nil, err
		}
		items = append(items, i)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}

const getTaskRuleIdUsingExactMatchers = `-- name: GetTaskRuleIdUsingExactMatchers :one


SELECT
	rules.rule_id as rule_id
	FROM task_property_view_rules as rules
	WHERE
		(rules.ward_id = $1 OR (rules.ward_id IS NULL AND $1 IS NULL))
		AND ((rules.task_id = $2) OR (rules.task_id IS NULL AND $2 IS NULL))
`

type GetTaskRuleIdUsingExactMatchersParams struct {
	WardID uuid.NullUUID
	TaskID uuid.NullUUID
}

// NOTE: views_repo.CreateRule MUST be invoked with the same id in the same transaction!!
func (q *Queries) GetTaskRuleIdUsingExactMatchers(ctx context.Context, arg GetTaskRuleIdUsingExactMatchersParams) (uuid.UUID, error) {
	row := q.db.QueryRow(ctx, getTaskRuleIdUsingExactMatchers, arg.WardID, arg.TaskID)
	var rule_id uuid.UUID
	err := row.Scan(&rule_id)
	return rule_id, err
}

const isTaskPropertyAlwaysIncluded = `-- name: IsTaskPropertyAlwaysIncluded :one
SELECT
	NOT list_items.dont_always_include
FROM task_property_view_rules as rules
JOIN property_view_filter_always_include_items as list_items ON list_items.rule_id = rules.rule_id
WHERE
	list_items.property_id = $1
	AND (rules.ward_id = $2 OR rules.ward_id IS NULL)
	AND (rules.task_id = $3 OR rules.task_id IS NULL)
ORDER BY
	calc_rule_specificity(rules.task_id IS NOT NULL, rules.ward_id IS NOT NULL) DESC
LIMIT 1
`

type IsTaskPropertyAlwaysIncludedParams struct {
	PropertyID uuid.UUID
	WardID     uuid.NullUUID
	TaskID     uuid.NullUUID
}

func (q *Queries) IsTaskPropertyAlwaysIncluded(ctx context.Context, arg IsTaskPropertyAlwaysIncludedParams) (*bool, error) {
	row := q.db.QueryRow(ctx, isTaskPropertyAlwaysIncluded, arg.PropertyID, arg.WardID, arg.TaskID)
	var column_1 *bool
	err := row.Scan(&column_1)
	return column_1, err
}
