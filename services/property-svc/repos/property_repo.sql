-- name: CreateProperty :exec
INSERT INTO properties
	(id, subject_type, field_type, name, field_type_data_id)
VALUES ($1, $2, $3, $4, $5);

-- name: GetPropertyById :one
SELECT * FROM properties WHERE id = $1;

-- name: GetPropertiesWithSelectDataAndOptionsBySubjectTypeOrID :many
SELECT
	sqlc.embed(properties),
	select_options.id as select_option_id,
	select_options.name as select_option_name,
	select_options.description as select_option_description,
	select_options.is_custom as select_option_is_custom,
	select_datas.id as select_datas_id,
	select_datas.allow_freetext as select_datas_allow_freetext
	FROM properties
	LEFT JOIN field_type_datas ON properties.field_type_data_id = field_type_datas.id
	LEFT JOIN select_datas ON field_type_datas.select_data_id = select_datas.id
	LEFT JOIN select_options ON select_options.select_data_id = select_datas.id
 	WHERE subject_type = sqlc.narg('subject_type') OR properties.id = sqlc.narg('id');

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

-- name: UpdateFieldTypeDataSelectDataID :exec
UPDATE field_type_datas
SET select_data_id = @select_data_id
WHERE id = $1;

-- name: UpdateFieldTypeDataSelectDataIDByPropertyID :exec
UPDATE field_type_datas
SET select_data_id = @select_data_id
FROM properties
WHERE field_type_datas.id = properties.field_type_data_id
AND properties.id = @id;

-- name: CreateSelectData :one
INSERT INTO select_datas
	(allow_freetext)
VALUES ($1)
RETURNING id;

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
VALUES (@id, @name, coalesce(sqlc.narg('description'), ''), @is_custom, @select_data_id);

-- name: DeleteSelectOptions :batchexec
DELETE FROM select_options WHERE id = @id;

-- name: GetSelectOptionsBatch :batchone
SELECT *
FROM select_options
WHERE id = @id;

-- name: InsertSelectOptionsBatch :batchexec
INSERT INTO select_options
      (id, name, description, is_custom, select_data_id)
VALUES (
    @id,
    @name,
    coalesce(sqlc.narg('description'), ''),
    coalesce(sqlc.narg('is_custom'), false),
    @select_data_id
);

-- name: UpdateSelectOptionsBatch :batchexec
UPDATE select_options
SET is_custom = coalesce(sqlc.narg('is_custom'), is_custom),
    name = coalesce(sqlc.narg('name'), name),
    description = coalesce(sqlc.narg('description'), description)
WHERE id = @id;
