-- name: CreateProperty :exec
INSERT INTO properties
	(id, subject_type, field_type, name, description, is_archived)
VALUES ($1, $2, $3, $4, $5, $6);

-- name: GetPropertyById :one
SELECT * FROM properties WHERE id = $1;

-- name: GetPropertyBySubjectType :many
SELECT * FROM properties WHERE subject_type = $1;

-- name: UpdateIsArchived :exec
UPDATE properties
SET is_archived = @is_archived
WHERE id = @id;
