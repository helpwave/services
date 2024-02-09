-- name: CreateTaskTemplate :one
INSERT INTO task_templates
	(name, description, organization_id, created_by, ward_id) VALUES ($1, $2, $3, $4, $5)
    RETURNING id;

-- name: AppendSubTasks :copyfrom
INSERT INTO task_template_subtasks (name, task_template_id) VALUES ($1, $2);

-- name: CreateSubTask :one
INSERT INTO task_template_subtasks (name, task_template_id) VALUES ($1, $2) RETURNING id;

-- name: GetAllTaskTemplatesWithSubTasks :many
SELECT
	sqlc.embed(task_templates),
	task_template_subtasks.id as sub_task_id,
	task_template_subtasks.name as sub_task_name
FROM
	task_templates
LEFT JOIN
	task_template_subtasks
ON
	task_template_subtasks.task_template_id = task_templates.id
WHERE
	(task_templates.organization_id = sqlc.narg('organization_id') OR sqlc.narg('organization_id') IS NULL)
AND (task_templates.ward_id = sqlc.narg('ward_id') OR sqlc.narg('ward_id') IS NULL)
AND (task_templates.created_by = sqlc.narg('creator_id') OR sqlc.narg('creator_id') IS NULL);

-- name: UpdateTaskTemplate :exec
UPDATE task_templates
SET	name = coalesce(sqlc.narg('name'), name),
	description = coalesce(sqlc.narg('description'), description)
WHERE id = @id;

-- name: UpdateSubtask :exec
UPDATE task_template_subtasks
SET	name = coalesce(sqlc.narg('name'), name)
WHERE id = @id;


-- name: DeleteSubtask :one
DELETE FROM task_template_subtasks WHERE id = @id RETURNING *;

-- name: DeleteTaskTemplate :exec
DELETE FROM task_templates WHERE id = @id;
