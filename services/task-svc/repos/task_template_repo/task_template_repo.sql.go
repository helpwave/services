// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.22.0
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
	(name, description, organization_id, created_by, ward_id) VALUES ($1, $2, $3, $4, $5)
    RETURNING id
`

type CreateTaskTemplateParams struct {
	Name           string
	Description    string
	OrganizationID uuid.UUID
	CreatedBy      uuid.UUID
	WardID         uuid.NullUUID
}

func (q *Queries) CreateTaskTemplate(ctx context.Context, arg CreateTaskTemplateParams) (uuid.UUID, error) {
	row := q.db.QueryRow(ctx, createTaskTemplate,
		arg.Name,
		arg.Description,
		arg.OrganizationID,
		arg.CreatedBy,
		arg.WardID,
	)
	var id uuid.UUID
	err := row.Scan(&id)
	return id, err
}

const getAllTaskTemplatesWithSubTasks = `-- name: GetAllTaskTemplatesWithSubTasks :many
SELECT
	task_templates.id, task_templates.name, task_templates.description, task_templates.ward_id, task_templates.created_by, task_templates.organization_id,
	task_template_subtasks.id as sub_task_id,
	task_template_subtasks.name as sub_task_name
FROM
	task_templates
LEFT JOIN
	task_template_subtasks
ON
	task_template_subtasks.task_template_id = task_templates.id
WHERE
	(task_templates.organization_id = $1 OR $1 = NULL)
AND (task_templates.ward_id = $2 OR $2 = NULL)
AND (task_templates.created_by = $3 OR $3 = NULL)
`

type GetAllTaskTemplatesWithSubTasksParams struct {
	OrganizationID uuid.NullUUID
	WardID         uuid.NullUUID
	CreatorID      uuid.NullUUID
}

type GetAllTaskTemplatesWithSubTasksRow struct {
	TaskTemplate TaskTemplate
	SubTaskID    uuid.NullUUID
	SubTaskName  *string
}

func (q *Queries) GetAllTaskTemplatesWithSubTasks(ctx context.Context, arg GetAllTaskTemplatesWithSubTasksParams) ([]GetAllTaskTemplatesWithSubTasksRow, error) {
	rows, err := q.db.Query(ctx, getAllTaskTemplatesWithSubTasks, arg.OrganizationID, arg.WardID, arg.CreatorID)
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
			&i.TaskTemplate.OrganizationID,
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
