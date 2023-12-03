-- name: CreateRoom :one
INSERT INTO rooms (name, organization_id, ward_id) VALUES ($1, $2, $3) RETURNING id;

-- name: GetRoomWithBedsById :many
SELECT
	sqlc.embed(rooms),
	beds.id as bed_id,
	beds.name as bed_name
	FROM rooms
	LEFT JOIN beds ON beds.room_id = rooms.id
	WHERE rooms.id = @room_id
	ORDER BY beds.name ASC;

-- name: GetRoomsWithBedsForOrganization :many
SELECT
	sqlc.embed(rooms),
	beds.id as bed_id,
	beds.name as bed_name
	FROM rooms
	LEFT JOIN beds ON beds.room_id = rooms.id
	WHERE rooms.organization_id = @organization_id
	ORDER BY rooms.id ASC, beds.name ASC;


-- name: GetRoomsWithBedsForWardInOrganization :many
SELECT
	sqlc.embed(rooms),
	beds.id as bed_id,
	beds.name as bed_name
	FROM rooms
	LEFT JOIN beds ON beds.room_id = rooms.id
	WHERE rooms.organization_id = @organization_id
	AND rooms.ward_id = @ward_id
	ORDER BY rooms.id ASC, beds.name ASC;

-- name: GetRoomsWithBedsWithPatientsByWard :many
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
	WHERE rooms.ward_id = @ward_id
	ORDER BY rooms.id ASC, beds.name ASC;

-- name: GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganization :many
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
	AND rooms.organization_id = @organization_id
	ORDER BY rooms.id ASC, beds.name ASC;

-- name: UpdateRoom :exec
UPDATE rooms
SET	name = coalesce(sqlc.narg('name'), name)
WHERE id = @id;

-- name: DeleteRoom :exec
DELETE FROM rooms WHERE id = @id;
