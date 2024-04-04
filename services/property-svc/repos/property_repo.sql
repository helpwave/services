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

-- name: GetFieldTypeDataByPropertyID :one
SELECT field_type_datas.*
	FROM properties
	JOIN field_type_datas ON properties.field_type_data_id = field_type_datas.id
	WHERE properties.id = @id;

-- name: UpdateSelectData :exec
UPDATE select_datas
SET allow_freetext = @allow_freetext
WHERE id = @id;

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

-- name: DeleteSelectDataByPropertyID :exec
DELETE FROM select_datas
WHERE id IN (
	SELECT field_type_datas.select_data_id
	FROM field_type_datas
	JOIN properties ON properties.field_type_data_id = field_type_datas.id
	WHERE properties.id = @id
);

-- name: CreateSelectOption :exec
INSERT INTO select_options
	(id, name, description, is_custom, select_data_id)
VALUES ($1, $2, $3, $4, $5);

-- name: DeleteSelectOption :batchexec
DELETE FROM select_options WHERE id = @id;
