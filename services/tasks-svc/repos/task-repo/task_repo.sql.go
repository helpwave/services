// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0
// source: task_repo.sql

package taskrepo

import (
	"context"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
)

const createSubtask = `-- name: CreateSubtask :exec
WITH cet AS (
	UPDATE tasks
	SET consistency = $6
	WHERE id = $2
)
INSERT INTO subtasks
	(id, task_id, name, created_by, done)
VALUES ($1, $2, $3, $4, $5)
`

type CreateSubtaskParams struct {
	ID          uuid.UUID
	TaskID      uuid.UUID
	Name        string
	CreatedBy   uuid.UUID
	Done        bool
	Consistency int64
}

func (q *Queries) CreateSubtask(ctx context.Context, arg CreateSubtaskParams) error {
	_, err := q.db.Exec(ctx, createSubtask,
		arg.ID,
		arg.TaskID,
		arg.Name,
		arg.CreatedBy,
		arg.Done,
		arg.Consistency,
	)
	return err
}

const createTask = `-- name: CreateTask :exec
INSERT INTO tasks
	(id, name, patient_id, status, created_by, created_at, consistency)
VALUES ($1, $2, $3, $4, $5, $6, $7)
`

type CreateTaskParams struct {
	ID          uuid.UUID
	Name        string
	PatientID   uuid.UUID
	Status      int32
	CreatedBy   uuid.UUID
	CreatedAt   pgtype.Timestamp
	Consistency int64
}

func (q *Queries) CreateTask(ctx context.Context, arg CreateTaskParams) error {
	_, err := q.db.Exec(ctx, createTask,
		arg.ID,
		arg.Name,
		arg.PatientID,
		arg.Status,
		arg.CreatedBy,
		arg.CreatedAt,
		arg.Consistency,
	)
	return err
}

const deleteSubtask = `-- name: DeleteSubtask :exec
WITH cet AS (
	UPDATE tasks AS t
		SET consistency = $2
		WHERE t.id IN (
			SELECT task_id
			FROM subtasks AS st
			WHERE st.id = $1
		)
)
DELETE FROM subtasks AS st WHERE st.id = $1
`

type DeleteSubtaskParams struct {
	ID          uuid.UUID
	Consistency int64
}

func (q *Queries) DeleteSubtask(ctx context.Context, arg DeleteSubtaskParams) error {
	_, err := q.db.Exec(ctx, deleteSubtask, arg.ID, arg.Consistency)
	return err
}

const deleteTask = `-- name: DeleteTask :exec
DELETE FROM tasks WHERE id = $1
`

func (q *Queries) DeleteTask(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deleteTask, id)
	return err
}

const getTaskWithPatientById = `-- name: GetTaskWithPatientById :many
SELECT
	tasks.id, tasks.name, tasks.description, tasks.status, tasks.assigned_user_id, tasks.patient_id, tasks.public, tasks.created_by, tasks.due_at, tasks.created_at, tasks.consistency,
	patients.id, patients.human_readable_identifier, patients.notes, patients.bed_id, patients.created_at, patients.updated_at, patients.is_discharged, patients.consistency, patients.organization_id,
	subtasks.id as subtask_id,
	subtasks.name as subtask_name,
	subtasks.done as subtask_done,
	subtasks.created_by as subtask_created_by
FROM tasks
	JOIN patients ON tasks.patient_id = patients.id
	LEFT JOIN subtasks ON subtasks.task_id = tasks.id
WHERE tasks.id = $1
`

type GetTaskWithPatientByIdRow struct {
	Task             Task
	Patient          Patient
	SubtaskID        uuid.NullUUID
	SubtaskName      *string
	SubtaskDone      *bool
	SubtaskCreatedBy uuid.NullUUID
}

func (q *Queries) GetTaskWithPatientById(ctx context.Context, id uuid.UUID) ([]GetTaskWithPatientByIdRow, error) {
	rows, err := q.db.Query(ctx, getTaskWithPatientById, id)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetTaskWithPatientByIdRow{}
	for rows.Next() {
		var i GetTaskWithPatientByIdRow
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
			&i.Patient.OrganizationID,
			&i.SubtaskID,
			&i.SubtaskName,
			&i.SubtaskDone,
			&i.SubtaskCreatedBy,
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

const getTasksWithPatientByAssignee = `-- name: GetTasksWithPatientByAssignee :many
SELECT
	tasks.id, tasks.name, tasks.description, tasks.status, tasks.assigned_user_id, tasks.patient_id, tasks.public, tasks.created_by, tasks.due_at, tasks.created_at, tasks.consistency,
	patients.id, patients.human_readable_identifier, patients.notes, patients.bed_id, patients.created_at, patients.updated_at, patients.is_discharged, patients.consistency, patients.organization_id,
	subtasks.id as subtask_id,
	subtasks.name as subtask_name,
	subtasks.done as subtask_done,
	subtasks.created_by as subtask_created_by
FROM patients
		 JOIN tasks ON tasks.patient_id = patients.id
		 LEFT JOIN subtasks ON subtasks.task_id = tasks.id
WHERE tasks.assigned_user_id = $1
`

type GetTasksWithPatientByAssigneeRow struct {
	Task             Task
	Patient          Patient
	SubtaskID        uuid.NullUUID
	SubtaskName      *string
	SubtaskDone      *bool
	SubtaskCreatedBy uuid.NullUUID
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
			&i.Patient.OrganizationID,
			&i.SubtaskID,
			&i.SubtaskName,
			&i.SubtaskDone,
			&i.SubtaskCreatedBy,
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
	subtasks.created_by as subtask_created_by
FROM tasks
JOIN patients ON patients.id = tasks.patient_id
LEFT JOIN subtasks ON subtasks.task_id = tasks.id
WHERE tasks.patient_id = $1
`

type GetTasksWithSubtasksByPatientRow struct {
	Task             Task
	SubtaskID        uuid.NullUUID
	SubtaskName      *string
	SubtaskDone      *bool
	SubtaskCreatedBy uuid.NullUUID
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

const removeTaskDueAt = `-- name: RemoveTaskDueAt :exec
UPDATE tasks
SET due_at = NULL,
	consistency = $1
WHERE id = $2
`

type RemoveTaskDueAtParams struct {
	Consistency int64
	ID          uuid.UUID
}

func (q *Queries) RemoveTaskDueAt(ctx context.Context, arg RemoveTaskDueAtParams) error {
	_, err := q.db.Exec(ctx, removeTaskDueAt, arg.Consistency, arg.ID)
	return err
}

const updateSubtask = `-- name: UpdateSubtask :exec
WITH cet AS (
	UPDATE tasks AS t
		SET consistency = $4
		WHERE t.id IN (
			SELECT task_id
			FROM subtasks AS st
			WHERE st.id = $3
		)
)
UPDATE subtasks AS st
SET name = coalesce($1, name),
    done = coalesce($2, done)
WHERE st.id = $3
`

type UpdateSubtaskParams struct {
	Name        *string
	Done        *bool
	ID          uuid.UUID
	Consistency int64
}

func (q *Queries) UpdateSubtask(ctx context.Context, arg UpdateSubtaskParams) error {
	_, err := q.db.Exec(ctx, updateSubtask,
		arg.Name,
		arg.Done,
		arg.ID,
		arg.Consistency,
	)
	return err
}

const updateTask = `-- name: UpdateTask :exec
UPDATE tasks
SET name = coalesce($2, name),
	description = coalesce($3, description),
	status = coalesce($4, status),
	public = coalesce($5, public),
	created_by = coalesce($6, created_by),
	due_at = coalesce($7, due_at),
	consistency = $8
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
	Consistency int64
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
		arg.Consistency,
	)
	return err
}

const updateTaskAssignedUser = `-- name: UpdateTaskAssignedUser :exec
UPDATE tasks
SET assigned_user_id = $1,
	consistency = $2
WHERE id = $3
`

type UpdateTaskAssignedUserParams struct {
	AssignedUserID uuid.NullUUID
	Consistency    int64
	ID             uuid.UUID
}

func (q *Queries) UpdateTaskAssignedUser(ctx context.Context, arg UpdateTaskAssignedUserParams) error {
	_, err := q.db.Exec(ctx, updateTaskAssignedUser, arg.AssignedUserID, arg.Consistency, arg.ID)
	return err
}
