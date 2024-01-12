// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.22.0
// source: room_repo.sql

package room_repo

import (
	"context"

	"github.com/google/uuid"
)

const createRoom = `-- name: CreateRoom :one
INSERT INTO rooms (name, organization_id, ward_id) VALUES ($1, $2, $3) RETURNING id
`

type CreateRoomParams struct {
	Name           string
	OrganizationID uuid.UUID
	WardID         uuid.UUID
}

func (q *Queries) CreateRoom(ctx context.Context, arg CreateRoomParams) (uuid.UUID, error) {
	row := q.db.QueryRow(ctx, createRoom, arg.Name, arg.OrganizationID, arg.WardID)
	var id uuid.UUID
	err := row.Scan(&id)
	return id, err
}

const deleteRoom = `-- name: DeleteRoom :exec
DELETE FROM rooms WHERE id = $1
`

func (q *Queries) DeleteRoom(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deleteRoom, id)
	return err
}

const getRoomWithBedsById = `-- name: GetRoomWithBedsById :many
SELECT
	rooms.id, rooms.name, rooms.organization_id, rooms.ward_id,
	beds.id as bed_id,
	beds.name as bed_name
	FROM rooms
	LEFT JOIN beds ON beds.room_id = rooms.id
	WHERE rooms.id = $1
	ORDER BY beds.name ASC
`

type GetRoomWithBedsByIdRow struct {
	Room    Room
	BedID   uuid.NullUUID
	BedName *string
}

func (q *Queries) GetRoomWithBedsById(ctx context.Context, roomID uuid.UUID) ([]GetRoomWithBedsByIdRow, error) {
	rows, err := q.db.Query(ctx, getRoomWithBedsById, roomID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetRoomWithBedsByIdRow{}
	for rows.Next() {
		var i GetRoomWithBedsByIdRow
		if err := rows.Scan(
			&i.Room.ID,
			&i.Room.Name,
			&i.Room.OrganizationID,
			&i.Room.WardID,
			&i.BedID,
			&i.BedName,
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

const getRoomsWithBedsAndPatientsAndTasksCountByWardForOrganization = `-- name: GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganization :many
SELECT
	rooms.id as room_id,
	rooms.name as room_name,
	beds.id as bed_id,
	beds.name as bed_name,
	patients.id as patient_id,
	patients.human_readable_identifier as patient_human_readable_identifier,
	(
		SELECT COUNT(id)
		FROM tasks
		WHERE tasks.patient_id = patients.id
		AND tasks.status = $1
	) as todo_tasks_count,
	(
		SELECT COUNT(id)
		FROM tasks
		WHERE tasks.patient_id = patients.id
		AND tasks.status = $2
	) as in_progress_tasks_count,
	(
		SELECT COUNT(id)
		FROM tasks
		WHERE tasks.patient_id = patients.id
		AND tasks.status = $3
	) as done_tasks_count
	FROM rooms
	LEFT JOIN beds ON beds.room_id = rooms.id
	LEFT JOIN patients ON patients.bed_id = beds.id
	WHERE rooms.ward_id = $4
	AND rooms.organization_id = $5
	ORDER BY rooms.id ASC, beds.name ASC
`

type GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationParams struct {
	TodoStatus       int32
	InProgressStatus int32
	DoneStatus       int32
	WardID           uuid.UUID
	OrganizationID   uuid.UUID
}

type GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationRow struct {
	RoomID                         uuid.UUID
	RoomName                       string
	BedID                          uuid.NullUUID
	BedName                        *string
	PatientID                      uuid.NullUUID
	PatientHumanReadableIdentifier *string
	TodoTasksCount                 int64
	InProgressTasksCount           int64
	DoneTasksCount                 int64
}

func (q *Queries) GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganization(ctx context.Context, arg GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationParams) ([]GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationRow, error) {
	rows, err := q.db.Query(ctx, getRoomsWithBedsAndPatientsAndTasksCountByWardForOrganization,
		arg.TodoStatus,
		arg.InProgressStatus,
		arg.DoneStatus,
		arg.WardID,
		arg.OrganizationID,
	)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationRow{}
	for rows.Next() {
		var i GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationRow
		if err := rows.Scan(
			&i.RoomID,
			&i.RoomName,
			&i.BedID,
			&i.BedName,
			&i.PatientID,
			&i.PatientHumanReadableIdentifier,
			&i.TodoTasksCount,
			&i.InProgressTasksCount,
			&i.DoneTasksCount,
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

const getRoomsWithBedsForOrganization = `-- name: GetRoomsWithBedsForOrganization :many
SELECT
	rooms.id, rooms.name, rooms.organization_id, rooms.ward_id,
	beds.id as bed_id,
	beds.name as bed_name
	FROM rooms
	LEFT JOIN beds ON beds.room_id = rooms.id
	WHERE rooms.organization_id = $1
	AND (rooms.ward_id = $2 OR $2 IS NULL)
	ORDER BY rooms.id ASC, beds.name ASC
`

type GetRoomsWithBedsForOrganizationParams struct {
	OrganizationID uuid.UUID
	WardID         uuid.NullUUID
}

type GetRoomsWithBedsForOrganizationRow struct {
	Room    Room
	BedID   uuid.NullUUID
	BedName *string
}

func (q *Queries) GetRoomsWithBedsForOrganization(ctx context.Context, arg GetRoomsWithBedsForOrganizationParams) ([]GetRoomsWithBedsForOrganizationRow, error) {
	rows, err := q.db.Query(ctx, getRoomsWithBedsForOrganization, arg.OrganizationID, arg.WardID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetRoomsWithBedsForOrganizationRow{}
	for rows.Next() {
		var i GetRoomsWithBedsForOrganizationRow
		if err := rows.Scan(
			&i.Room.ID,
			&i.Room.Name,
			&i.Room.OrganizationID,
			&i.Room.WardID,
			&i.BedID,
			&i.BedName,
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

const getRoomsWithBedsWithPatientsByWard = `-- name: GetRoomsWithBedsWithPatientsByWard :many
SELECT
	rooms.id as room_id,
	rooms.name as room_name,
	beds.id as bed_id,
	beds.name as bed_name,
	patients.id as patient_id,
	patients.human_readable_identifier as patient_human_readable_identifier
	FROM rooms
	LEFT JOIN beds ON beds.room_id = rooms.id
	LEFT JOIN patients ON patients.bed_id = beds.id
	WHERE rooms.ward_id = $1
	ORDER BY rooms.id ASC, beds.name ASC
`

type GetRoomsWithBedsWithPatientsByWardRow struct {
	RoomID                         uuid.UUID
	RoomName                       string
	BedID                          uuid.NullUUID
	BedName                        *string
	PatientID                      uuid.NullUUID
	PatientHumanReadableIdentifier *string
}

func (q *Queries) GetRoomsWithBedsWithPatientsByWard(ctx context.Context, wardID uuid.UUID) ([]GetRoomsWithBedsWithPatientsByWardRow, error) {
	rows, err := q.db.Query(ctx, getRoomsWithBedsWithPatientsByWard, wardID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetRoomsWithBedsWithPatientsByWardRow{}
	for rows.Next() {
		var i GetRoomsWithBedsWithPatientsByWardRow
		if err := rows.Scan(
			&i.RoomID,
			&i.RoomName,
			&i.BedID,
			&i.BedName,
			&i.PatientID,
			&i.PatientHumanReadableIdentifier,
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

const updateRoom = `-- name: UpdateRoom :exec
UPDATE rooms
SET	name = coalesce($1, name)
WHERE id = $2
`

type UpdateRoomParams struct {
	Name *string
	ID   uuid.UUID
}

func (q *Queries) UpdateRoom(ctx context.Context, arg UpdateRoomParams) error {
	_, err := q.db.Exec(ctx, updateRoom, arg.Name, arg.ID)
	return err
}
