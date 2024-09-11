-- name: CreateBasicPropertyValue :exec
INSERT INTO property_values
	(id, property_id, subject_id, text_value, number_value, bool_value, date_value, date_time_value)
VALUES (
        @id,
        @property_id,
        @subject_id,
        sqlc.narg('text_value'),
        sqlc.narg('number_value'),
        sqlc.narg('bool_value'),
        sqlc.narg('date_value'),
        sqlc.narg('date_time_value')
);

-- name: ConnectValueWithSelectOptions :batchexec
INSERT INTO multi_select_values (value_id, select_option) VALUES (@value_id, @select_option) ON CONFLICT DO NOTHING;

-- name: DisconnectValueFromSelectOptions :batchexec
DELETE FROM multi_select_values WHERE value_id = $1 AND select_option = $2;

-- name: DisconnectValueFromAllSelectOptions :exec
DELETE FROM multi_select_values WHERE value_id = $1;

-- name: GetPropertyValueBySubjectIDAndPropertyID :one
SELECT id
FROM property_values
WHERE (subject_id = @subject_id AND property_id = @property_id) OR id = @id;

-- name: UpdatePropertyValueByID :exec
UPDATE property_values
SET text_value = sqlc.narg('text_value'),
	number_value = sqlc.narg('number_value'),
	bool_value = sqlc.narg('bool_value'),
	date_value = sqlc.narg('date_value'),
	date_time_value = sqlc.narg('date_time_value')
WHERE id = $1;

-- name: GetPropertyValueByID :one
SELECT * FROM property_values WHERE id = $1;

-- name: GetPropertyValuesWithPropertyBySubjectID :many
SELECT
	property_values.id as property_value_id,
	property_values.text_value,
	property_values.bool_value,
	property_values.number_value,
	property_values.date_time_value,
	property_values.date_value,
	properties.id as property_id,
	properties.name as property_name,
	properties.is_archived as property_is_archived,
	properties.field_type as field_type
FROM property_values
	JOIN properties ON property_values.property_id = properties.id
WHERE subject_id = $1;

-- name: GetRelevantPropertyViews :many
SELECT
	sqlc.embed(properties),
	values.id as value_id,
	values.text_value,
	values.bool_value,
	values.number_value,
	values.date_time_value,
	values.date_value,
	so.id as select_option_id,
	so.name as select_option_name,
	so.description as select_option_description
FROM properties
	LEFT JOIN property_values as values ON values.property_id = properties.id
	LEFT JOIN multi_select_values as msv ON msv.value_id = values.id
	LEFT JOIN select_options as so ON so.id = msv.select_option
WHERE
	properties.is_archived = false
	AND (
		values.subject_id = @subject_id -- implies existence of value
		OR properties.id = ANY(@always_include :: uuid[])
	);

-- name: DeletePropertyValue :exec
DELETE FROM property_values WHERE id = $1;
