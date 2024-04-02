-- name: CreateProperty :exec
INSERT INTO properties
	(id, subject_type, field_type, name, description, is_archived, field_type_data_id)
VALUES ($1, $2, $3, $4, $5, $6, $7);

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

-- name: CreateFieldTypeData :one
INSERT INTO field_type_datas DEFAULT VALUES RETURNING id;

-- name: UpdateFieldTypeDataSelectDataIDByPropertyID :exec
UPDATE field_type_datas
SET select_data_id = @select_data_id
FROM properties
WHERE field_type_datas.id = properties.field_type_data_id
AND properties.id = @id;

-- name: CreateSelectData :exec
INSERT INTO select_datas
	(id, allow_freetext)
VALUES ($1, $2);

-- name: CreateSelectOption :exec
INSERT INTO select_options
	(id, name, description, is_custom, select_data_id)
VALUES ($1, $2, $3, $4, $5);
