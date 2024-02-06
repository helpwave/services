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
	(task_templates.organization_id = sqlc.narg('organization_id') OR sqlc.narg('organization_id') = NULL)
AND (task_templates.ward_id = sqlc.narg('ward_id') OR sqlc.narg('ward_id') = NULL);
