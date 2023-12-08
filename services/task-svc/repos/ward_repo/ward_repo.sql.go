// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.22.0
// source: ward_repo.sql

package ward_repo

import (
	"context"

	"github.com/google/uuid"
)

const createWard = `-- name: CreateWard :one
INSERT INTO wards (name, organization_id) VALUES ($1, $2) RETURNING id
`

type CreateWardParams struct {
	Name           string
	OrganizationID uuid.UUID
}

func (q *Queries) CreateWard(ctx context.Context, arg CreateWardParams) (uuid.UUID, error) {
	row := q.db.QueryRow(ctx, createWard, arg.Name, arg.OrganizationID)
	var id uuid.UUID
	err := row.Scan(&id)
	return id, err
}

const deleteWard = `-- name: DeleteWard :exec
DELETE FROM wards WHERE id = $1
`

func (q *Queries) DeleteWard(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deleteWard, id)
	return err
}

const existsWard = `-- name: ExistsWard :one
SELECT EXISTS (
    SELECT 1
    FROM wards
    WHERE id = $1
    AND organization_id = $2
) ward_exists
`

type ExistsWardParams struct {
	ID             uuid.UUID
	OrganizationID uuid.UUID
}

func (q *Queries) ExistsWard(ctx context.Context, arg ExistsWardParams) (bool, error) {
	row := q.db.QueryRow(ctx, existsWard, arg.ID, arg.OrganizationID)
	var ward_exists bool
	err := row.Scan(&ward_exists)
	return ward_exists, err
}

const getWardById = `-- name: GetWardById :one
SELECT id, name, organization_id FROM wards
WHERE organization_id = $1
AND id = $2
LIMIT 1
`

type GetWardByIdParams struct {
	OrganizationID uuid.UUID
	WardID         uuid.UUID
}

func (q *Queries) GetWardById(ctx context.Context, arg GetWardByIdParams) (Ward, error) {
	row := q.db.QueryRow(ctx, getWardById, arg.OrganizationID, arg.WardID)
	var i Ward
	err := row.Scan(&i.ID, &i.Name, &i.OrganizationID)
	return i, err
}

const getWardByIdWithRoomsBedsAndTaskTemplates = `-- name: GetWardByIdWithRoomsBedsAndTaskTemplates :many
SELECT
	wards.id as ward_id,
	wards.name as ward_name,
	rooms.id as room_id,
	rooms.name as room_name,
	beds.id as bed_id,
	beds.name as bed_name,
	task_templates.id as task_template_id,
	task_templates.name as task_template_name,
	task_template_subtasks.id as task_template_subtask_id,
	task_template_subtasks.name as task_template_subtask_name
FROM wards
	LEFT JOIN rooms ON rooms.ward_id = wards.id
	LEFT JOIN beds ON beds.room_id = rooms.id
	LEFT JOIN task_templates ON task_templates.ward_id = wards.id
	LEFT JOIN task_template_subtasks ON task_template_subtasks.task_template_id = task_templates.id
WHERE wards.organization_id = $1
AND wards.id = $2
`

type GetWardByIdWithRoomsBedsAndTaskTemplatesParams struct {
	OrganizationID uuid.UUID
	WardID         uuid.UUID
}

type GetWardByIdWithRoomsBedsAndTaskTemplatesRow struct {
	WardID                  uuid.UUID
	WardName                string
	RoomID                  uuid.NullUUID
	RoomName                *string
	BedID                   uuid.NullUUID
	BedName                 *string
	TaskTemplateID          uuid.NullUUID
	TaskTemplateName        *string
	TaskTemplateSubtaskID   uuid.NullUUID
	TaskTemplateSubtaskName *string
}

func (q *Queries) GetWardByIdWithRoomsBedsAndTaskTemplates(ctx context.Context, arg GetWardByIdWithRoomsBedsAndTaskTemplatesParams) ([]GetWardByIdWithRoomsBedsAndTaskTemplatesRow, error) {
	rows, err := q.db.Query(ctx, getWardByIdWithRoomsBedsAndTaskTemplates, arg.OrganizationID, arg.WardID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetWardByIdWithRoomsBedsAndTaskTemplatesRow{}
	for rows.Next() {
		var i GetWardByIdWithRoomsBedsAndTaskTemplatesRow
		if err := rows.Scan(
			&i.WardID,
			&i.WardName,
			&i.RoomID,
			&i.RoomName,
			&i.BedID,
			&i.BedName,
			&i.TaskTemplateID,
			&i.TaskTemplateName,
			&i.TaskTemplateSubtaskID,
			&i.TaskTemplateSubtaskName,
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

const getWards = `-- name: GetWards :many
SELECT id, name, organization_id FROM wards
WHERE organization_id = $1
`

func (q *Queries) GetWards(ctx context.Context, organizationID uuid.UUID) ([]Ward, error) {
	rows, err := q.db.Query(ctx, getWards, organizationID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []Ward{}
	for rows.Next() {
		var i Ward
		if err := rows.Scan(&i.ID, &i.Name, &i.OrganizationID); err != nil {
			return nil, err
		}
		items = append(items, i)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}

const getWardsWithCounts = `-- name: GetWardsWithCounts :many
SELECT
	wards.id, wards.name, wards.organization_id,
	COUNT(DISTINCT beds.id) AS bed_count,
	COUNT(DISTINCT CASE WHEN tasks.status = $1 THEN tasks.id ELSE NULL END) AS todo_count,
	COUNT(DISTINCT CASE WHEN tasks.status = $2 THEN tasks.id ELSE NULL END) AS in_progress_count,
	COUNT(DISTINCT CASE WHEN tasks.status = $3 THEN tasks.id ELSE NULL END) AS done_count
FROM wards
	LEFT JOIN rooms ON rooms.ward_id = wards.id
	LEFT JOIN beds ON beds.room_id = rooms.id
	LEFT JOIN patients ON patients.bed_id = beds.id
	LEFT JOIN tasks ON tasks.patient_id = patients.id
WHERE wards.organization_id = $4
AND (wards.id = ANY($5::uuid[]) OR $5 IS NULL)
GROUP BY wards.id
`

type GetWardsWithCountsParams struct {
	StatusTodo       int32
	StatusInProgress int32
	StatusDone       int32
	OrganizationID   uuid.UUID
	WardIds          []uuid.UUID
}

type GetWardsWithCountsRow struct {
	Ward            Ward
	BedCount        int64
	TodoCount       int64
	InProgressCount int64
	DoneCount       int64
}

func (q *Queries) GetWardsWithCounts(ctx context.Context, arg GetWardsWithCountsParams) ([]GetWardsWithCountsRow, error) {
	rows, err := q.db.Query(ctx, getWardsWithCounts,
		arg.StatusTodo,
		arg.StatusInProgress,
		arg.StatusDone,
		arg.OrganizationID,
		arg.WardIds,
	)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetWardsWithCountsRow{}
	for rows.Next() {
		var i GetWardsWithCountsRow
		if err := rows.Scan(
			&i.Ward.ID,
			&i.Ward.Name,
			&i.Ward.OrganizationID,
			&i.BedCount,
			&i.TodoCount,
			&i.InProgressCount,
			&i.DoneCount,
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

const updateWard = `-- name: UpdateWard :exec
UPDATE wards
SET	name = coalesce($1, name)
WHERE id = $2
`

type UpdateWardParams struct {
	Name *string
	ID   uuid.UUID
}

func (q *Queries) UpdateWard(ctx context.Context, arg UpdateWardParams) error {
	_, err := q.db.Exec(ctx, updateWard, arg.Name, arg.ID)
	return err
}
