-- name: CreatePatientRule :exec
INSERT INTO patient_property_view_rules (rule_id, ward_id, patient_id)
VALUES (@rule_id, sqlc.narg('ward_id'), sqlc.narg('patient_id'));

-- name: GetPatientRuleIdUsingExactMatchers :one
SELECT
	rules.rule_id as rule_id
	FROM patient_property_view_rules as rules
	WHERE
		(rules.ward_id = sqlc.narg('ward_id') OR (rules.ward_id IS NULL AND sqlc.narg('ward_id') IS NULL))
		AND ((rules.patient_id = sqlc.narg('patient_id')) OR (rules.patient_id IS NULL AND sqlc.narg('patient_id') IS NULL));

-- name: GetPatientPropertiesUsingMatchers :many
SELECT
	list_items.property_id,
	list_items.dont_always_include,
	calc_rule_specificity(rules.patient_id IS NOT NULL, rules.ward_id IS NOT NULL) as specificity
FROM patient_property_view_rules as rules
JOIN property_view_filter_always_include_items as list_items ON list_items.rule_id = rules.rule_id
WHERE
	(rules.ward_id = @ward_id OR rules.ward_id IS NULL)
AND (rules.patient_id = @patient_id OR rules.patient_id IS NULL)
ORDER BY specificity;
