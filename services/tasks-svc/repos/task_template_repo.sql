-- name: CreateTaskTemplate :one
INSERT INTO task_templates
	(name, description, created_by, ward_id) VALUES ($1, $2, $3, $4)
    RETURNING id, consistency;

-- name: GetTaskTemplateWithSubtasksByID :many
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
WHERE task_templates.id = @id;

-- name: AppendSubTasks :copyfrom
INSERT INTO task_template_subtasks (name, task_template_id) VALUES ($1, $2);

-- name: CreateSubTask :one
WITH inserted_subtask AS (
	INSERT INTO task_template_subtasks (name, task_template_id)
		VALUES (@name, @task_template_id)
		RETURNING id
)
UPDATE task_templates
SET consistency = consistency + 1
WHERE task_templates.id = @task_template_id
RETURNING (SELECT id FROM inserted_subtask), consistency;

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
	(task_templates.ward_id = sqlc.narg('ward_id') OR sqlc.narg('ward_id') IS NULL)
AND (task_templates.ward_id IS NULL OR NOT @private_only::bool)
AND (task_templates.created_by = sqlc.narg('creator_id') OR sqlc.narg('creator_id') IS NULL);

-- name: UpdateTaskTemplate :one
UPDATE task_templates
SET	name = coalesce(sqlc.narg('name'), name),
	description = coalesce(sqlc.narg('description'), description),
	consistency = consistency + 1
WHERE id = @id
RETURNING consistency;

-- name: UpdateSubtask :one
UPDATE task_template_subtasks ttst
SET	name = coalesce(sqlc.narg('name'), name)
WHERE ttst.id = @id
RETURNING (
	SELECT tt.id
	FROM task_templates tt
	WHERE tt.id = ttst.task_template_id
);

-- name: DeleteSubtask :one
DELETE FROM task_template_subtasks WHERE id = @id RETURNING *;

-- name: DeleteTaskTemplate :exec
DELETE FROM task_templates WHERE id = @id;
