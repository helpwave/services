// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0
// source: task_template_repo.sql

package task_template_repo

import (
	"context"

	"github.com/google/uuid"
)

type AppendSubTasksParams struct {
	Name           string
	TaskTemplateID uuid.UUID
}

const createSubTask = `-- name: CreateSubTask :one
INSERT INTO task_template_subtasks (name, task_template_id) VALUES ($1, $2) RETURNING id
`

type CreateSubTaskParams struct {
	Name           string
	TaskTemplateID uuid.UUID
}

func (q *Queries) CreateSubTask(ctx context.Context, arg CreateSubTaskParams) (uuid.UUID, error) {
	row := q.db.QueryRow(ctx, createSubTask, arg.Name, arg.TaskTemplateID)
	var id uuid.UUID
	err := row.Scan(&id)
	return id, err
}

const createTaskTemplate = `-- name: CreateTaskTemplate :one
INSERT INTO task_templates
	(name, description, created_by, ward_id) VALUES ($1, $2, $3, $4)
    RETURNING id
`

type CreateTaskTemplateParams struct {
	Name        string
	Description string
	CreatedBy   uuid.UUID
	WardID      uuid.NullUUID
}

func (q *Queries) CreateTaskTemplate(ctx context.Context, arg CreateTaskTemplateParams) (uuid.UUID, error) {
	row := q.db.QueryRow(ctx, createTaskTemplate,
		arg.Name,
		arg.Description,
		arg.CreatedBy,
		arg.WardID,
	)
	var id uuid.UUID
	err := row.Scan(&id)
	return id, err
}

const deleteSubtask = `-- name: DeleteSubtask :one
DELETE FROM task_template_subtasks WHERE id = $1 RETURNING id, task_template_id, name
`

func (q *Queries) DeleteSubtask(ctx context.Context, id uuid.UUID) (TaskTemplateSubtask, error) {
	row := q.db.QueryRow(ctx, deleteSubtask, id)
	var i TaskTemplateSubtask
	err := row.Scan(&i.ID, &i.TaskTemplateID, &i.Name)
	return i, err
}

const deleteTaskTemplate = `-- name: DeleteTaskTemplate :exec
DELETE FROM task_templates WHERE id = $1
`

func (q *Queries) DeleteTaskTemplate(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deleteTaskTemplate, id)
	return err
}

const getAllTaskTemplatesWithSubTasks = `-- name: GetAllTaskTemplatesWithSubTasks :many
SELECT
	task_templates.id, task_templates.name, task_templates.description, task_templates.ward_id, task_templates.created_by,
	task_template_subtasks.id as sub_task_id,
	task_template_subtasks.name as sub_task_name
FROM
	task_templates
LEFT JOIN
	task_template_subtasks
ON
	task_template_subtasks.task_template_id = task_templates.id
WHERE
	(task_templates.ward_id = $1 OR $1 IS NULL)
AND (task_templates.ward_id IS NULL OR NOT $2::bool)
AND (task_templates.created_by = $3 OR $3 IS NULL)
`

type GetAllTaskTemplatesWithSubTasksParams struct {
	WardID      uuid.NullUUID
	PrivateOnly bool
	CreatorID   uuid.NullUUID
}

type GetAllTaskTemplatesWithSubTasksRow struct {
	TaskTemplate TaskTemplate
	SubTaskID    uuid.NullUUID
	SubTaskName  *string
}

func (q *Queries) GetAllTaskTemplatesWithSubTasks(ctx context.Context, arg GetAllTaskTemplatesWithSubTasksParams) ([]GetAllTaskTemplatesWithSubTasksRow, error) {
	rows, err := q.db.Query(ctx, getAllTaskTemplatesWithSubTasks, arg.WardID, arg.PrivateOnly, arg.CreatorID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetAllTaskTemplatesWithSubTasksRow{}
	for rows.Next() {
		var i GetAllTaskTemplatesWithSubTasksRow
		if err := rows.Scan(
			&i.TaskTemplate.ID,
			&i.TaskTemplate.Name,
			&i.TaskTemplate.Description,
			&i.TaskTemplate.WardID,
			&i.TaskTemplate.CreatedBy,
			&i.SubTaskID,
			&i.SubTaskName,
		); err != nil {
			return nil, err
		}
		items = append(items, i)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}

const updateSubtask = `-- name: UpdateSubtask :exec
UPDATE task_template_subtasks
SET	name = coalesce($1, name)
WHERE id = $2
`

type UpdateSubtaskParams struct {
	Name *string
	ID   uuid.UUID
}

func (q *Queries) UpdateSubtask(ctx context.Context, arg UpdateSubtaskParams) error {
	_, err := q.db.Exec(ctx, updateSubtask, arg.Name, arg.ID)
	return err
}

const updateTaskTemplate = `-- name: UpdateTaskTemplate :exec
UPDATE task_templates
SET	name = coalesce($1, name),
	description = coalesce($2, description)
WHERE id = $3
`

type UpdateTaskTemplateParams struct {
	Name        *string
	Description *string
	ID          uuid.UUID
}

func (q *Queries) UpdateTaskTemplate(ctx context.Context, arg UpdateTaskTemplateParams) error {
	_, err := q.db.Exec(ctx, updateTaskTemplate, arg.Name, arg.Description, arg.ID)
	return err
}
