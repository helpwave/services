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
INSERT INTO rooms (name, organization_id) VALUES ($1, $2) RETURNING id
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
