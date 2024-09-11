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


-- name: GetTaskPropertiesUsingMatchers :many
SELECT
	list_items.property_id,
	list_items.dont_always_include,
	calc_rule_specificity(rules.task_id IS NOT NULL, rules.ward_id IS NOT NULL) as specificity
FROM task_property_view_rules as rules
JOIN property_view_filter_always_include_items as list_items ON list_items.rule_id = rules.rule_id
WHERE
	(rules.ward_id = @ward_id OR rules.ward_id IS NULL)
AND (rules.task_id = @task_id OR rules.task_id IS NULL)
ORDER BY specificity;

-- name: IsTaskPropertyAlwaysIncluded :one
SELECT
	CASE
		-- No result exists or dont_always_include is TRUE, return false
		WHEN result.property_id IS NULL OR result.dont_always_include = TRUE THEN FALSE
		-- Otherwise, return true
		ELSE TRUE
		END as should_include
FROM (
	 SELECT
		 list_items.property_id,
		 list_items.dont_always_include
	 FROM task_property_view_rules as rules
			  JOIN property_view_filter_always_include_items as list_items ON list_items.rule_id = rules.rule_id
	 WHERE
		 list_items.property_id = @property_id
	   AND (rules.ward_id = @ward_id OR rules.ward_id IS NULL)
	   AND (rules.task_id = @task_id OR rules.task_id IS NULL)
	 ORDER BY
		 calc_rule_specificity(rules.task_id IS NOT NULL, rules.ward_id IS NOT NULL) DESC
	 LIMIT 1
 ) as result;
