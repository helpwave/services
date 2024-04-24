-- name: CreatePropertyValue :exec
INSERT INTO property_values
	(id, property_id, subject_id, text_value, number_value, bool_value, date_value, date_time_value, select_value)
VALUES (
        @id,
        @property_id,
        @subject_id,
        sqlc.narg('text_value'),
        sqlc.narg('number_value'),
        sqlc.narg('bool_value'),
        sqlc.narg('date_value'),
        sqlc.narg('date_time_value'),
        sqlc.narg('select_value')
);

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
	date_time_value = sqlc.narg('date_time_value'),
	select_value = sqlc.narg('select_value')
WHERE id = $1;

-- name: GetPropertyValueByID :one
SELECT * FROM property_values WHERE id = $1;

-- name: GetPropertyValuesWithPropertyBySubjectID :many
SELECT
	sqlc.embed(properties),
	sqlc.embed(property_values)
FROM property_values
	LEFT JOIN properties ON property_values.property_id = properties.id
WHERE subject_id = $1;
