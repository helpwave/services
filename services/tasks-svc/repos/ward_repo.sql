-- name: CreateWard :one
INSERT INTO wards (name) VALUES ($1) RETURNING id, consistency;

-- name: GetWardById :one
SELECT * FROM wards
WHERE id = @ward_id;

-- name: GetWards :many
SELECT * FROM wards;

-- name: GetWardsWithCounts :many
SELECT
	sqlc.embed(wards),
	COUNT(DISTINCT beds.id) AS bed_count,
	COUNT(DISTINCT CASE WHEN tasks.status = @status_todo THEN tasks.id ELSE NULL END) AS todo_count,
	COUNT(DISTINCT CASE WHEN tasks.status = @status_in_progress THEN tasks.id ELSE NULL END) AS in_progress_count,
	COUNT(DISTINCT CASE WHEN tasks.status = @status_done THEN tasks.id ELSE NULL END) AS done_count
FROM wards
		 LEFT JOIN rooms ON rooms.ward_id = wards.id
		 LEFT JOIN beds ON beds.room_id = rooms.id
		 LEFT JOIN patients ON patients.bed_id = beds.id
		 LEFT JOIN tasks ON tasks.patient_id = patients.id
WHERE (wards.id = ANY(@ward_ids::uuid[]) OR @ward_ids IS NULL)
GROUP BY wards.id;


-- name: GetWardByIdWithRoomsBedsAndTaskTemplates :many
SELECT
	wards.id as ward_id,
	wards.name as ward_name,
	wards.consistency as ward_consistency,
	rooms.id as room_id,
	rooms.name as room_name,
	rooms.consistency as room_consistency,
	beds.id as bed_id,
	beds.name as bed_name,
	beds.consistency as bed_consistency,
	task_templates.id as task_template_id,
	task_templates.name as task_template_name,
	task_templates.consistency as task_template_consistency,
	task_template_subtasks.id as task_template_subtask_id,
	task_template_subtasks.name as task_template_subtask_name
FROM wards
		 LEFT JOIN rooms ON rooms.ward_id = wards.id
		 LEFT JOIN beds ON beds.room_id = rooms.id
		 LEFT JOIN task_templates ON task_templates.ward_id = wards.id
		 LEFT JOIN task_template_subtasks ON task_template_subtasks.task_template_id = task_templates.id
WHERE wards.id = @ward_id;

-- name: ExistsWard :one
SELECT EXISTS (
	SELECT 1
	FROM wards
	WHERE id = $1
) ward_exists;

-- name: UpdateWard :one
UPDATE wards
SET	name = coalesce(sqlc.narg('name'), name),
	consistency = consistency + 1
WHERE id = @id
RETURNING consistency;


-- name: DeleteWard :exec
DELETE FROM wards WHERE id = @id;
