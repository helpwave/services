-- name: CreateRoom :one
INSERT INTO rooms (name, ward_id) VALUES ($1, $2) RETURNING id, consistency;

-- name: GetRoomWithBedsById :many
SELECT
	sqlc.embed(rooms),
	beds.id as bed_id,
	beds.name as bed_name,
	beds.consistency as bed_consistency
FROM rooms
		 LEFT JOIN beds ON beds.room_id = rooms.id
WHERE rooms.id = @room_id
ORDER BY beds.name ASC;

-- name: GetRoomsWithBeds :many
SELECT
	sqlc.embed(rooms),
	beds.id as bed_id,
	beds.name as bed_name,
	beds.consistency as bed_consistency
FROM rooms
		 LEFT JOIN beds ON beds.room_id = rooms.id
WHERE (rooms.ward_id = sqlc.narg('ward_id') OR sqlc.narg('ward_id') IS NULL)
ORDER BY rooms.id ASC, beds.name ASC;

-- name: GetRoomsWithBedsWithPatientsByWard :many
SELECT
	rooms.id as room_id,
	rooms.name as room_name,
	rooms.consistency as room_consistency,
	beds.id as bed_id,
	beds.name as bed_name,
	beds.consistency as bed_consistency,
	patients.id as patient_id,
	patients.human_readable_identifier as patient_human_readable_identifier,
	patients.consistency as patient_consistency
FROM rooms
		 LEFT JOIN beds ON beds.room_id = rooms.id
		 LEFT JOIN patients ON patients.bed_id = beds.id
WHERE rooms.ward_id = @ward_id
ORDER BY rooms.id ASC, beds.name ASC;

-- name: GetRoomsWithBedsAndPatientsAndTasksCountByWard :many
SELECT
	rooms.id as room_id,
	rooms.name as room_name,
	rooms.consistency as room_consistency,
	beds.id as bed_id,
	beds.name as bed_name,
	beds.consistency as bed_consistency,
	patients.id as patient_id,
	patients.human_readable_identifier as patient_human_readable_identifier,
	patients.consistency as patient_consistency,
	(
		SELECT COUNT(id)
		FROM tasks
		WHERE tasks.patient_id = patients.id
		  AND tasks.status = @todo_status
	) as todo_tasks_count,
	(
		SELECT COUNT(id)
		FROM tasks
		WHERE tasks.patient_id = patients.id
		  AND tasks.status = @in_progress_status
	) as in_progress_tasks_count,
	(
		SELECT COUNT(id)
		FROM tasks
		WHERE tasks.patient_id = patients.id
		  AND tasks.status = @done_status
	) as done_tasks_count
FROM rooms
		 LEFT JOIN beds ON beds.room_id = rooms.id
		 LEFT JOIN patients ON patients.bed_id = beds.id
WHERE rooms.ward_id = @ward_id
ORDER BY rooms.id ASC, beds.name ASC;

-- name: UpdateRoom :one
UPDATE rooms
SET	name = coalesce(sqlc.narg('name'), name),
	consistency = consistency + 1
WHERE id = @id
RETURNING consistency;

-- name: DeleteRoom :exec
DELETE FROM rooms WHERE id = @id;
