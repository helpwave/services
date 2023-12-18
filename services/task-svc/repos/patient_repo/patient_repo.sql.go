// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.22.0
// source: patient_repo.sql

package patient_repo

import (
	"context"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
)

const createPatient = `-- name: CreatePatient :one
INSERT INTO patients (organization_id, human_readable_identifier, notes)
	VALUES ($1, $2, $3)
	RETURNING id
`

type CreatePatientParams struct {
	OrganizationID          uuid.UUID
	HumanReadableIdentifier string
	Notes                   string
}

func (q *Queries) CreatePatient(ctx context.Context, arg CreatePatientParams) (uuid.UUID, error) {
	row := q.db.QueryRow(ctx, createPatient, arg.OrganizationID, arg.HumanReadableIdentifier, arg.Notes)
	var id uuid.UUID
	err := row.Scan(&id)
	return id, err
}

const deletePatient = `-- name: DeletePatient :exec
DELETE FROM patients WHERE id = $1
`

func (q *Queries) DeletePatient(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deletePatient, id)
	return err
}

const dischargePatient = `-- name: DischargePatient :exec
UPDATE patients
SET
	bed_id = NULL,
	is_discharged = 1
WHERE id = $1
`

func (q *Queries) DischargePatient(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, dischargePatient, id)
	return err
}

const existsPatientInOrganization = `-- name: ExistsPatientInOrganization :one
SELECT EXISTS (
    SELECT 1
    FROM patients
    WHERE id = $1
    AND organization_id = $2
) patient_exists
`

type ExistsPatientInOrganizationParams struct {
	ID             uuid.UUID
	OrganizationID uuid.UUID
}

func (q *Queries) ExistsPatientInOrganization(ctx context.Context, arg ExistsPatientInOrganizationParams) (bool, error) {
	row := q.db.QueryRow(ctx, existsPatientInOrganization, arg.ID, arg.OrganizationID)
	var patient_exists bool
	err := row.Scan(&patient_exists)
	return patient_exists, err
}

const getLastUpdatedPatientIDsForOrganization = `-- name: GetLastUpdatedPatientIDsForOrganization :many
SELECT id
	FROM patients
	WHERE organization_id = $1
	ORDER BY updated_at DESC
	LIMIT 4
`

func (q *Queries) GetLastUpdatedPatientIDsForOrganization(ctx context.Context, organizationID uuid.UUID) ([]uuid.UUID, error) {
	rows, err := q.db.Query(ctx, getLastUpdatedPatientIDsForOrganization, organizationID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []uuid.UUID{}
	for rows.Next() {
		var id uuid.UUID
		if err := rows.Scan(&id); err != nil {
			return nil, err
		}
		items = append(items, id)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}

const getPatientByBed = `-- name: GetPatientByBed :one
SELECT patients.id, patients.human_readable_identifier, patients.organization_id, patients.notes, patients.bed_id, patients.is_discharged, patients.created_at, patients.updated_at
	FROM patients
	WHERE bed_id = $1
	LIMIT 1
`

func (q *Queries) GetPatientByBed(ctx context.Context, bedID uuid.NullUUID) (Patient, error) {
	row := q.db.QueryRow(ctx, getPatientByBed, bedID)
	var i Patient
	err := row.Scan(
		&i.ID,
		&i.HumanReadableIdentifier,
		&i.OrganizationID,
		&i.Notes,
		&i.BedID,
		&i.IsDischarged,
		&i.CreatedAt,
		&i.UpdatedAt,
	)
	return i, err
}

const getPatientWithBedAndRoom = `-- name: GetPatientWithBedAndRoom :one
SELECT
	patients.id, patients.human_readable_identifier, patients.organization_id, patients.notes, patients.bed_id, patients.is_discharged, patients.created_at, patients.updated_at,
	beds.name as bed_name,
	rooms.id as room_id, rooms.name as room_name, rooms.ward_id as ward_id
	FROM patients
	LEFT JOIN beds ON patients.bed_id = beds.id
	LEFT JOIN rooms ON beds.room_id = rooms.id
	WHERE patients.id = $1
	LIMIT 1
`

type GetPatientWithBedAndRoomRow struct {
	ID                      uuid.UUID
	HumanReadableIdentifier string
	OrganizationID          uuid.UUID
	Notes                   string
	BedID                   uuid.NullUUID
	IsDischarged            int32
	CreatedAt               pgtype.Timestamp
	UpdatedAt               pgtype.Timestamp
	BedName                 *string
	RoomID                  uuid.NullUUID
	RoomName                *string
	WardID                  uuid.NullUUID
}

func (q *Queries) GetPatientWithBedAndRoom(ctx context.Context, patientID uuid.UUID) (GetPatientWithBedAndRoomRow, error) {
	row := q.db.QueryRow(ctx, getPatientWithBedAndRoom, patientID)
	var i GetPatientWithBedAndRoomRow
	err := row.Scan(
		&i.ID,
		&i.HumanReadableIdentifier,
		&i.OrganizationID,
		&i.Notes,
		&i.BedID,
		&i.IsDischarged,
		&i.CreatedAt,
		&i.UpdatedAt,
		&i.BedName,
		&i.RoomID,
		&i.RoomName,
		&i.WardID,
	)
	return i, err
}

const getPatientsByWardForOrganization = `-- name: GetPatientsByWardForOrganization :many
SELECT
	patients.id, patients.human_readable_identifier, patients.organization_id, patients.notes, patients.bed_id, patients.is_discharged, patients.created_at, patients.updated_at
	FROM patients
	JOIN beds ON patients.bed_id = beds.id
	JOIN rooms ON beds.room_id = rooms.id
	WHERE rooms.ward_id = $1
	AND rooms.organization_id = $2
`

type GetPatientsByWardForOrganizationParams struct {
	WardID         uuid.UUID
	OrganizationID uuid.UUID
}

func (q *Queries) GetPatientsByWardForOrganization(ctx context.Context, arg GetPatientsByWardForOrganizationParams) ([]Patient, error) {
	rows, err := q.db.Query(ctx, getPatientsByWardForOrganization, arg.WardID, arg.OrganizationID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []Patient{}
	for rows.Next() {
		var i Patient
		if err := rows.Scan(
			&i.ID,
			&i.HumanReadableIdentifier,
			&i.OrganizationID,
			&i.Notes,
			&i.BedID,
			&i.IsDischarged,
			&i.CreatedAt,
			&i.UpdatedAt,
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

const getPatientsWithBedAndRoom = `-- name: GetPatientsWithBedAndRoom :many
SELECT
	patients.id, patients.human_readable_identifier, patients.organization_id, patients.notes, patients.bed_id, patients.is_discharged, patients.created_at, patients.updated_at,
	beds.name as bed_name,
	rooms.id as room_id, rooms.name as room_name, rooms.ward_id as ward_id
	FROM patients
	LEFT JOIN beds ON patients.bed_id = beds.id
	LEFT JOIN rooms ON beds.room_id = rooms.id
	WHERE patients.id = ANY($1::uuid[])
	ORDER BY patients.updated_at DESC
`

type GetPatientsWithBedAndRoomRow struct {
	ID                      uuid.UUID
	HumanReadableIdentifier string
	OrganizationID          uuid.UUID
	Notes                   string
	BedID                   uuid.NullUUID
	IsDischarged            int32
	CreatedAt               pgtype.Timestamp
	UpdatedAt               pgtype.Timestamp
	BedName                 *string
	RoomID                  uuid.NullUUID
	RoomName                *string
	WardID                  uuid.NullUUID
}

func (q *Queries) GetPatientsWithBedAndRoom(ctx context.Context, patientIds []uuid.UUID) ([]GetPatientsWithBedAndRoomRow, error) {
	rows, err := q.db.Query(ctx, getPatientsWithBedAndRoom, patientIds)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetPatientsWithBedAndRoomRow{}
	for rows.Next() {
		var i GetPatientsWithBedAndRoomRow
		if err := rows.Scan(
			&i.ID,
			&i.HumanReadableIdentifier,
			&i.OrganizationID,
			&i.Notes,
			&i.BedID,
			&i.IsDischarged,
			&i.CreatedAt,
			&i.UpdatedAt,
			&i.BedName,
			&i.RoomID,
			&i.RoomName,
			&i.WardID,
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

const getPatientsWithTasksBedAndRoomForOrganization = `-- name: GetPatientsWithTasksBedAndRoomForOrganization :many
SELECT
	patients.id, patients.human_readable_identifier, patients.organization_id, patients.notes, patients.bed_id, patients.is_discharged, patients.created_at, patients.updated_at,
	tasks.id as task_id,
	tasks.name as task_name,
	tasks.description as task_description,
	tasks.status as task_status,
	tasks.assigned_user_id as task_assigned_user_id,
	tasks.public as task_public,
	subtasks.id as subtask_id,
	subtasks.name as subtask_name,
	subtasks.done as subtask_done,
	beds.id as bed_id,
	beds.name as bed_name,
	rooms.id as room_id,
	rooms.name as room_name,
	rooms.ward_id as ward_id
	FROM patients
	LEFT JOIN tasks ON tasks.patient_id = patients.id
	LEFT JOIN subtasks ON subtasks.task_id = tasks.id
	LEFT JOIN beds ON beds.id = patients.bed_id
	LEFT JOIN rooms ON rooms.id = beds.room_id
	WHERE patients.organization_id = $1
`

type GetPatientsWithTasksBedAndRoomForOrganizationRow struct {
	Patient            Patient
	TaskID             uuid.NullUUID
	TaskName           *string
	TaskDescription    *string
	TaskStatus         *int32
	TaskAssignedUserID uuid.NullUUID
	TaskPublic         *bool
	SubtaskID          uuid.NullUUID
	SubtaskName        *string
	SubtaskDone        *bool
	BedID              uuid.NullUUID
	BedName            *string
	RoomID             uuid.NullUUID
	RoomName           *string
	WardID             uuid.NullUUID
}

func (q *Queries) GetPatientsWithTasksBedAndRoomForOrganization(ctx context.Context, organizationID uuid.UUID) ([]GetPatientsWithTasksBedAndRoomForOrganizationRow, error) {
	rows, err := q.db.Query(ctx, getPatientsWithTasksBedAndRoomForOrganization, organizationID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetPatientsWithTasksBedAndRoomForOrganizationRow{}
	for rows.Next() {
		var i GetPatientsWithTasksBedAndRoomForOrganizationRow
		if err := rows.Scan(
			&i.Patient.ID,
			&i.Patient.HumanReadableIdentifier,
			&i.Patient.OrganizationID,
			&i.Patient.Notes,
			&i.Patient.BedID,
			&i.Patient.IsDischarged,
			&i.Patient.CreatedAt,
			&i.Patient.UpdatedAt,
			&i.TaskID,
			&i.TaskName,
			&i.TaskDescription,
			&i.TaskStatus,
			&i.TaskAssignedUserID,
			&i.TaskPublic,
			&i.SubtaskID,
			&i.SubtaskName,
			&i.SubtaskDone,
			&i.BedID,
			&i.BedName,
			&i.RoomID,
			&i.RoomName,
			&i.WardID,
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

const readmitPatient = `-- name: ReadmitPatient :exec
UPDATE patients
SET	is_discharged = 0
WHERE id = $1
`

func (q *Queries) ReadmitPatient(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, readmitPatient, id)
	return err
}

const unassignBedFromPatient = `-- name: UnassignBedFromPatient :exec
UPDATE patients	SET	bed_id = NULL WHERE id = $1
`

func (q *Queries) UnassignBedFromPatient(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, unassignBedFromPatient, id)
	return err
}

const updatePatient = `-- name: UpdatePatient :exec
UPDATE patients
SET
	human_readable_identifier = coalesce($1, human_readable_identifier),
	notes = coalesce($2, notes),
	bed_id = coalesce($3, bed_id)
WHERE id = $4
`

type UpdatePatientParams struct {
	HumanReadableIdentifier *string
	Notes                   *string
	BedID                   uuid.NullUUID
	ID                      uuid.UUID
}

func (q *Queries) UpdatePatient(ctx context.Context, arg UpdatePatientParams) error {
	_, err := q.db.Exec(ctx, updatePatient,
		arg.HumanReadableIdentifier,
		arg.Notes,
		arg.BedID,
		arg.ID,
	)
	return err
}
