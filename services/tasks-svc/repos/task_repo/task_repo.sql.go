// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.25.0
// source: task_repo.sql

package task_repo

import (
	"context"

	"github.com/google/uuid"
)

const createSubtask = `-- name: CreateSubtask :exec
INSERT INTO subtasks
	(id, task_id, name, created_by)
VALUES ($1, $2, $3, $4)
`

type CreateSubtaskParams struct {
	ID        uuid.UUID
	TaskID    uuid.UUID
	Name      string
	CreatedBy uuid.UUID
}

func (q *Queries) CreateSubtask(ctx context.Context, arg CreateSubtaskParams) error {
	_, err := q.db.Exec(ctx, createSubtask,
		arg.ID,
		arg.TaskID,
		arg.Name,
		arg.CreatedBy,
	)
	return err
}

const createTask = `-- name: CreateTask :exec
INSERT INTO tasks
	(id, name, patient_id, status, organization_id)
VALUES ($1, $2, $3, $4, $5)
`

type CreateTaskParams struct {
	ID             uuid.UUID
	Name           string
	PatientID      uuid.UUID
	Status         int32
	OrganizationID uuid.UUID
}

func (q *Queries) CreateTask(ctx context.Context, arg CreateTaskParams) error {
	_, err := q.db.Exec(ctx, createTask,
		arg.ID,
		arg.Name,
		arg.PatientID,
		arg.Status,
		arg.OrganizationID,
	)
	return err
}

const deleteSubtask = `-- name: DeleteSubtask :exec
DELETE FROM subtasks WHERE id = $1
`

func (q *Queries) DeleteSubtask(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deleteSubtask, id)
	return err
}

const updateSubtask = `-- name: UpdateSubtask :exec
UPDATE subtasks
SET name = coalesce($2, name),
    done = coalesce($3, done)
WHERE id = $1
`

type UpdateSubtaskParams struct {
	ID   uuid.UUID
	Name *string
	Done *bool
}

func (q *Queries) UpdateSubtask(ctx context.Context, arg UpdateSubtaskParams) error {
	_, err := q.db.Exec(ctx, updateSubtask, arg.ID, arg.Name, arg.Done)
	return err
}

const updateTask = `-- name: UpdateTask :exec
UPDATE tasks
SET name = coalesce($2, name),
	description = coalesce($3, description),
	status = coalesce($4, status),
	patient_id = coalesce($5, patient_id),
	public = coalesce($6, public),
	organization_id = coalesce($7, organization_id),
	created_by = coalesce($8, created_by),
	assigned_user_id = coalesce($9, assigned_user_id)
WHERE id = $1
`

type UpdateTaskParams struct {
	ID             uuid.UUID
	Name           *string
	Description    *string
	Status         *int32
	PatientID      uuid.NullUUID
	Public         *bool
	OrganizationID uuid.NullUUID
	CreatedBy      uuid.NullUUID
	AssignedUserID uuid.NullUUID
}

func (q *Queries) UpdateTask(ctx context.Context, arg UpdateTaskParams) error {
	_, err := q.db.Exec(ctx, updateTask,
		arg.ID,
		arg.Name,
		arg.Description,
		arg.Status,
		arg.PatientID,
		arg.Public,
		arg.OrganizationID,
		arg.CreatedBy,
		arg.AssignedUserID,
	)
	return err
}