-- name: CreateWard :one
INSERT INTO rooms (name, organization_id) VALUES ($1, $2) RETURNING id;

-- name: GetWardById :one
SELECT * FROM wards
WHERE organization_id = @organization_id
AND id = @ward_id LIMIT 1;

-- name: GetWardByIdWithRoomsBedsAndTaskTemplates :many
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
WHERE wards.organization_id = @organization_id
AND wards.id = @ward_id;

-- name: ExistsWard :one
SELECT EXISTS (
    SELECT 1
    FROM wards
    WHERE id = $1
    AND organization_id = $2
) ward_exists;

-- name: DeleteWard :exec
DELETE FROM wards WHERE id = @id;
