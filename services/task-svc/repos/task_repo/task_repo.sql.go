// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.22.0
// source: task_repo.sql

package task_repo

import (
	"context"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
)

const createSubTask = `-- name: CreateSubTask :one
INSERT INTO subtasks
	(task_id, name, done, created_by)
VALUES ($1, $2, $3, $4)
RETURNING id
`

type CreateSubTaskParams struct {
	TaskID    uuid.UUID
	Name      string
	Done      bool
	CreatedBy uuid.UUID
}

func (q *Queries) CreateSubTask(ctx context.Context, arg CreateSubTaskParams) (uuid.UUID, error) {
	row := q.db.QueryRow(ctx, createSubTask,
		arg.TaskID,
		arg.Name,
		arg.Done,
		arg.CreatedBy,
	)
	var id uuid.UUID
	err := row.Scan(&id)
	return id, err
}

const createTask = `-- name: CreateTask :one
INSERT INTO tasks
	(name, description, status, patient_id, public, organization_id, created_by, due_at)
VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
RETURNING id
`

type CreateTaskParams struct {
	Name           string
	Description    string
	Status         int32
	PatientID      uuid.UUID
	Public         bool
	OrganizationID uuid.UUID
	CreatedBy      uuid.UUID
	DueAt          pgtype.Timestamp
}

func (q *Queries) CreateTask(ctx context.Context, arg CreateTaskParams) (uuid.UUID, error) {
	row := q.db.QueryRow(ctx, createTask,
		arg.Name,
		arg.Description,
		arg.Status,
		arg.PatientID,
		arg.Public,
		arg.OrganizationID,
		arg.CreatedBy,
		arg.DueAt,
	)
	var id uuid.UUID
	err := row.Scan(&id)
	return id, err
}

const deleteSubTask = `-- name: DeleteSubTask :exec
DELETE FROM subtasks WHERE id = $1
`

func (q *Queries) DeleteSubTask(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deleteSubTask, id)
	return err
}

const deleteTask = `-- name: DeleteTask :exec
DELETE FROM tasks WHERE id = $1
`

func (q *Queries) DeleteTask(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deleteTask, id)
	return err
}

const existsTask = `-- name: ExistsTask :one
SELECT EXISTS (
    SELECT 1
    FROM tasks
    WHERE id = $1
    AND organization_id = $2
) task_exists
`

type ExistsTaskParams struct {
	ID             uuid.UUID
	OrganizationID uuid.UUID
}

func (q *Queries) ExistsTask(ctx context.Context, arg ExistsTaskParams) (bool, error) {
	row := q.db.QueryRow(ctx, existsTask, arg.ID, arg.OrganizationID)
	var task_exists bool
	err := row.Scan(&task_exists)
	return task_exists, err
}
