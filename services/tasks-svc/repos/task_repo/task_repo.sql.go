// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0
// source: task_repo.sql

package task_repo

import (
	"context"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
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
	(id, name, patient_id, status, created_by, created_at)
VALUES ($1, $2, $3, $4, $5, $6)
`

type CreateTaskParams struct {
	ID        uuid.UUID
	Name      string
	PatientID uuid.UUID
	Status    int32
	CreatedBy uuid.UUID
	CreatedAt pgtype.Timestamp
}

func (q *Queries) CreateTask(ctx context.Context, arg CreateTaskParams) error {
	_, err := q.db.Exec(ctx, createTask,
		arg.ID,
		arg.Name,
		arg.PatientID,
		arg.Status,
		arg.CreatedBy,
		arg.CreatedAt,
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

const getTasksWithPatientByAssignee = `-- name: GetTasksWithPatientByAssignee :many
SELECT
	tasks.id, tasks.name, tasks.description, tasks.status, tasks.assigned_user_id, tasks.patient_id, tasks.public, tasks.created_by, tasks.due_at, tasks.created_at, tasks.consistency,
	patients.id, patients.human_readable_identifier, patients.notes, patients.bed_id, patients.created_at, patients.updated_at, patients.is_discharged, patients.consistency,
	subtasks.id as subtask_id,
	subtasks.name as subtask_name,
	subtasks.done as subtask_done,
	subtasks.created_by as subtask_created_by,
	subtasks.consistency as subtask_consistency
FROM patients
		 JOIN tasks ON tasks.patient_id = patients.id
		 LEFT JOIN subtasks ON subtasks.task_id = tasks.id
WHERE tasks.assigned_user_id = $1
`

type GetTasksWithPatientByAssigneeRow struct {
	Task               Task
	Patient            Patient
	SubtaskID          uuid.NullUUID
	SubtaskName        *string
	SubtaskDone        *bool
	SubtaskCreatedBy   uuid.NullUUID
	SubtaskConsistency *int64
}

func (q *Queries) GetTasksWithPatientByAssignee(ctx context.Context, assignedUserID uuid.NullUUID) ([]GetTasksWithPatientByAssigneeRow, error) {
	rows, err := q.db.Query(ctx, getTasksWithPatientByAssignee, assignedUserID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetTasksWithPatientByAssigneeRow{}
	for rows.Next() {
		var i GetTasksWithPatientByAssigneeRow
		if err := rows.Scan(
			&i.Task.ID,
			&i.Task.Name,
			&i.Task.Description,
			&i.Task.Status,
			&i.Task.AssignedUserID,
			&i.Task.PatientID,
			&i.Task.Public,
			&i.Task.CreatedBy,
			&i.Task.DueAt,
			&i.Task.CreatedAt,
			&i.Task.Consistency,
			&i.Patient.ID,
			&i.Patient.HumanReadableIdentifier,
			&i.Patient.Notes,
			&i.Patient.BedID,
			&i.Patient.CreatedAt,
			&i.Patient.UpdatedAt,
			&i.Patient.IsDischarged,
			&i.Patient.Consistency,
			&i.SubtaskID,
			&i.SubtaskName,
			&i.SubtaskDone,
			&i.SubtaskCreatedBy,
			&i.SubtaskConsistency,
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

const getTasksWithSubtasksByPatient = `-- name: GetTasksWithSubtasksByPatient :many
SELECT
	tasks.id, tasks.name, tasks.description, tasks.status, tasks.assigned_user_id, tasks.patient_id, tasks.public, tasks.created_by, tasks.due_at, tasks.created_at, tasks.consistency,
	subtasks.id as subtask_id,
	subtasks.name as subtask_name,
	subtasks.done as subtask_done,
	subtasks.created_by as subtask_created_by,
	subtasks.consistency as subtask_consistency
FROM tasks
JOIN patients ON patients.id = tasks.patient_id
LEFT JOIN subtasks ON subtasks.task_id = tasks.id
WHERE tasks.patient_id = $1
`

type GetTasksWithSubtasksByPatientRow struct {
	Task               Task
	SubtaskID          uuid.NullUUID
	SubtaskName        *string
	SubtaskDone        *bool
	SubtaskCreatedBy   uuid.NullUUID
	SubtaskConsistency *int64
}

func (q *Queries) GetTasksWithSubtasksByPatient(ctx context.Context, patientID uuid.UUID) ([]GetTasksWithSubtasksByPatientRow, error) {
	rows, err := q.db.Query(ctx, getTasksWithSubtasksByPatient, patientID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetTasksWithSubtasksByPatientRow{}
	for rows.Next() {
		var i GetTasksWithSubtasksByPatientRow
		if err := rows.Scan(
			&i.Task.ID,
			&i.Task.Name,
			&i.Task.Description,
			&i.Task.Status,
			&i.Task.AssignedUserID,
			&i.Task.PatientID,
			&i.Task.Public,
			&i.Task.CreatedBy,
			&i.Task.DueAt,
			&i.Task.CreatedAt,
			&i.Task.Consistency,
			&i.SubtaskID,
			&i.SubtaskName,
			&i.SubtaskDone,
			&i.SubtaskCreatedBy,
			&i.SubtaskConsistency,
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
	public = coalesce($5, public),
	created_by = coalesce($6, created_by),
	due_at = coalesce($7, due_at)
WHERE id = $1
`

type UpdateTaskParams struct {
	ID          uuid.UUID
	Name        *string
	Description *string
	Status      *int32
	Public      *bool
	CreatedBy   uuid.NullUUID
	DueAt       pgtype.Timestamp
}

func (q *Queries) UpdateTask(ctx context.Context, arg UpdateTaskParams) error {
	_, err := q.db.Exec(ctx, updateTask,
		arg.ID,
		arg.Name,
		arg.Description,
		arg.Status,
		arg.Public,
		arg.CreatedBy,
		arg.DueAt,
	)
	return err
}

const updateTaskAssignedUser = `-- name: UpdateTaskAssignedUser :exec
UPDATE tasks
SET assigned_user_id = $1
WHERE id = $2
`

type UpdateTaskAssignedUserParams struct {
	AssignedUserID uuid.NullUUID
	ID             uuid.UUID
}

func (q *Queries) UpdateTaskAssignedUser(ctx context.Context, arg UpdateTaskAssignedUserParams) error {
	_, err := q.db.Exec(ctx, updateTaskAssignedUser, arg.AssignedUserID, arg.ID)
	return err
}
