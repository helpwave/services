-- name: CreateProperty :exec
INSERT INTO properties
	(id, subject_type, field_type, name)
VALUES ($1, $2, $3, $4);

-- name: GetProperties :many
SELECT * FROM properties;
