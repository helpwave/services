-- name: CreateBed :one
INSERT INTO beds (room_id, name) VALUES (@room_id, @name) RETURNING *;

-- name: GetBedById :one
SELECT * FROM beds
WHERE id = $1
LIMIT 1;

-- name: GetBedWithRoomByPatient :one
SELECT
	beds.id as bed_id,
	beds.name as bed_name,
	beds.consistency as bed_consistency,
	rooms.id as room_id,
	rooms.name as room_name,
	rooms.ward_id as ward_id,
	rooms.consistency as room_consistency
FROM patients
		 JOIN beds ON patients.bed_id = beds.id
		 JOIN rooms ON beds.room_id = rooms.id
WHERE patients.id = @patient_id
LIMIT 1;

-- name: GetBeds :many
SELECT * FROM beds
WHERE (room_id = sqlc.narg('room_id') OR sqlc.narg('room_id') IS NULL)
ORDER BY name ASC;

-- name: UpdateBed :one
UPDATE beds
SET
	name = coalesce(sqlc.narg('name'), name),
	room_id = coalesce(sqlc.narg('room_id'), room_id),
	consistency = consistency + 1
WHERE id = @id
RETURNING consistency;

-- name: DeleteBed :exec
DELETE FROM beds WHERE id = $1;

-- name: ExistsBed :one
SELECT EXISTS (
	SELECT 1
	FROM beds
	WHERE id = $1
) bed_exists;

-- name: GetBedAndRoomByBedId :one
SELECT
	sqlc.embed(beds),
	sqlc.embed(rooms)
	FROM beds
	JOIN rooms on beds.room_id = rooms.id
	WHERE beds.id = $1;
