-- name: CreateProperty :exec
INSERT INTO properties
	(id, subject_type, field_type, name, description, is_archived)
VALUES ($1, $2, $3, $4, $5, $6);

-- name: GetPropertyById :one
SELECT * FROM properties WHERE id = $1;

-- name: GetPropertyBySubjectType :many
SELECT * FROM properties WHERE subject_type = $1;

-- name: UpdateProperty :exec
UPDATE properties
SET subject_type = coalesce(sqlc.narg('subject_type'), subject_type),
	field_type = coalesce(sqlc.narg('field_type'), field_type),
	name = coalesce(sqlc.narg('name'), name),
	description = coalesce(sqlc.narg('description'), description),
	is_archived = coalesce(sqlc.narg('is_archived'), is_archived)
WHERE id = $1;

-- name: UpdatePropertySetID :exec
UPDATE properties
SET set_id = @set_id
WHERE id = @id;
