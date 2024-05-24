-- name: CreateTaskRule :exec
INSERT INTO task_property_view_rules (rule_id, ward_id, task_id)
VALUES (@rule_id, sqlc.narg('ward_id'), sqlc.narg('task_id')); -- NOTE: views_repo.CreateRule MUST be invoked with the same id in the same transaction!!


-- name: GetTaskRuleIdUsingExactMatchers :one
SELECT
	rules.rule_id as rule_id
	FROM task_property_view_rules as rules
	WHERE
		(rules.ward_id = sqlc.narg('ward_id') OR (rules.ward_id IS NULL AND sqlc.narg('ward_id') IS NULL))
		AND ((rules.task_id = sqlc.narg('task_id')) OR (rules.task_id IS NULL AND sqlc.narg('task_id') IS NULL));
