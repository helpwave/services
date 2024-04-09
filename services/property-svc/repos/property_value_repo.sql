-- name: CreatePropertyValue :exec
INSERT INTO property_values
	(id, property_id, subject_id, text_value, number_value, bool_value, date_value, date_time_value, select_value)
VALUES (
        @id,
        @property_id,
        @subject_id,
        coalesce(sqlc.narg('text_value'), NULL),
        coalesce(sqlc.narg('number_value'), NULL),
        coalesce(sqlc.narg('bool_value'), NULL),
        coalesce(sqlc.narg('date_value'), NULL),
        coalesce(sqlc.narg('date_time_value'), NULL),
        coalesce(sqlc.narg('select_value'), NULL)
);

-- name: ExistsPropertyValue :one
SELECT EXISTS (
	SELECT 1
	FROM property_values
	WHERE subject_id = $1 AND property_id = $2
) as value_already_exists;
