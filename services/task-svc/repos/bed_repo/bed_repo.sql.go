// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0
// source: bed_repo.sql

package bed_repo

import (
	"context"

	"github.com/google/uuid"
)

const createBed = `-- name: CreateBed :one
INSERT INTO beds (room_id, organization_id, name) VALUES ($1, $2, $3) RETURNING id, room_id, organization_id, name
`

type CreateBedParams struct {
	RoomID         uuid.UUID
	OrganizationID uuid.UUID
	Name           string
}

func (q *Queries) CreateBed(ctx context.Context, arg CreateBedParams) (Bed, error) {
	row := q.db.QueryRow(ctx, createBed, arg.RoomID, arg.OrganizationID, arg.Name)
	var i Bed
	err := row.Scan(
		&i.ID,
		&i.RoomID,
		&i.OrganizationID,
		&i.Name,
	)
	return i, err
}

const deleteBed = `-- name: DeleteBed :exec
DELETE FROM beds WHERE id = $1
`

func (q *Queries) DeleteBed(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deleteBed, id)
	return err
}

const existsBedInOrganization = `-- name: ExistsBedInOrganization :one
SELECT EXISTS (
    SELECT 1
    FROM beds
    WHERE id = $1
    AND organization_id = $2
) bed_exists
`

type ExistsBedInOrganizationParams struct {
	ID             uuid.UUID
	OrganizationID uuid.UUID
}

func (q *Queries) ExistsBedInOrganization(ctx context.Context, arg ExistsBedInOrganizationParams) (bool, error) {
	row := q.db.QueryRow(ctx, existsBedInOrganization, arg.ID, arg.OrganizationID)
	var bed_exists bool
	err := row.Scan(&bed_exists)
	return bed_exists, err
}

const getBedByIdForOrganization = `-- name: GetBedByIdForOrganization :one
SELECT id, room_id, organization_id, name FROM beds
	WHERE id = $1
	AND organization_id = $2
	LIMIT 1
`

type GetBedByIdForOrganizationParams struct {
	ID             uuid.UUID
	OrganizationID uuid.UUID
}

func (q *Queries) GetBedByIdForOrganization(ctx context.Context, arg GetBedByIdForOrganizationParams) (Bed, error) {
	row := q.db.QueryRow(ctx, getBedByIdForOrganization, arg.ID, arg.OrganizationID)
	var i Bed
	err := row.Scan(
		&i.ID,
		&i.RoomID,
		&i.OrganizationID,
		&i.Name,
	)
	return i, err
}

const getBedWithRoomByPatientForOrganization = `-- name: GetBedWithRoomByPatientForOrganization :one
SELECT
	beds.id as bed_id, beds.name as bed_name,
	rooms.id as room_id, rooms.name as room_name, rooms.ward_id as ward_id
	FROM patients
	JOIN beds ON patients.bed_id = beds.id
	JOIN rooms ON beds.room_id = rooms.id
	WHERE patients.id = $1
	LIMIT 1
`

type GetBedWithRoomByPatientForOrganizationRow struct {
	BedID    uuid.UUID
	BedName  string
	RoomID   uuid.UUID
	RoomName string
	WardID   uuid.UUID
}

func (q *Queries) GetBedWithRoomByPatientForOrganization(ctx context.Context, patientID uuid.UUID) (GetBedWithRoomByPatientForOrganizationRow, error) {
	row := q.db.QueryRow(ctx, getBedWithRoomByPatientForOrganization, patientID)
	var i GetBedWithRoomByPatientForOrganizationRow
	err := row.Scan(
		&i.BedID,
		&i.BedName,
		&i.RoomID,
		&i.RoomName,
		&i.WardID,
	)
	return i, err
}

const getBedsForOrganization = `-- name: GetBedsForOrganization :many
SELECT id, room_id, organization_id, name FROM beds
	WHERE organization_id = $1
	AND (room_id = $2 OR $2 IS NULL)
	ORDER BY name ASC
`

type GetBedsForOrganizationParams struct {
	OrganizationID uuid.UUID
	RoomID         *uuid.UUID
}

func (q *Queries) GetBedsForOrganization(ctx context.Context, arg GetBedsForOrganizationParams) ([]Bed, error) {
	rows, err := q.db.Query(ctx, getBedsForOrganization, arg.OrganizationID, arg.RoomID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []Bed{}
	for rows.Next() {
		var i Bed
		if err := rows.Scan(
			&i.ID,
			&i.RoomID,
			&i.OrganizationID,
			&i.Name,
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

const updateBed = `-- name: UpdateBed :exec
UPDATE beds
SET
	name = coalesce($1, name),
	room_id = coalesce($2, room_id)
WHERE id = $3
`

type UpdateBedParams struct {
	Name   *string
	RoomID *uuid.UUID
	ID     uuid.UUID
}

func (q *Queries) UpdateBed(ctx context.Context, arg UpdateBedParams) error {
	_, err := q.db.Exec(ctx, updateBed, arg.Name, arg.RoomID, arg.ID)
	return err
}
