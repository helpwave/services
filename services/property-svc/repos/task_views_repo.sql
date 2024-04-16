-- name: CreateTaskRule :exec
INSERT INTO task_property_view_rules (rule_id, ward_id, task_id)
VALUES (@rule_id, sqlc.narg('ward_id'), sqlc.narg('task_id')); -- NOTE: views_repo.CreateRule MUST be invoked with the same id in the same transaction!!


-- name: GetTaskRuleUsingExactMatchers :many
SELECT
	rules.rule_id as rule_id,
	items.property_id,
	items.dont_always_include,
	calc_rule_specificity(sqlc.narg('ward_id') IS NOT NULL, sqlc.narg('task_id') IS NOT NULL) as specificity
	FROM task_property_view_rules as rules
	LEFT JOIN property_view_filter_always_include_items as items
		ON items.rule_id = rules.rule_id
	WHERE
		rules.ward_id = sqlc.narg('ward_id')
		AND rules.task_id = sqlc.narg('task_id');
