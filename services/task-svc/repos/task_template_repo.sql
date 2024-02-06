-- name: CreateTaskTemplate :one
INSERT INTO task_templates
	(name, description, organization_id, created_by, ward_id) VALUES ($1, $2, $3, $4, $5)
    RETURNING id;

-- name: AppendSubTasks :copyfrom
INSERT INTO task_template_subtasks (name, task_template_id) VALUES ($1, $2);

-- name: CreateSubTask :one
INSERT INTO task_template_subtasks (name, task_template_id) VALUES ($1, $2) RETURNING id;
