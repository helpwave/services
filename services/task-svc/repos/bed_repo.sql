-- name: CreateBed :one
INSERT INTO beds (room_id, organization_id, name) VALUES (@room_id, @organization_id, @name) RETURNING *;

-- name: GetBedByIdForOrganization :one
SELECT * FROM beds
	WHERE id = $1
	AND organization_id = $2
	LIMIT 1;

-- name: GetBedWithRoomByPatientForOrganization :one
SELECT
	beds.id as bed_id, beds.name as bed_name,
	rooms.id as room_id, rooms.name as room_name, rooms.ward_id as ward_id
	FROM patients
	JOIN beds ON patients.bed_id = beds.id
	JOIN rooms ON beds.room_id = rooms.id
	WHERE patients.id = @patient_id
	LIMIT 1;

-- name: GetBedsForOrganization :many
SELECT * FROM beds
	WHERE organization_id = @organization_id
	AND (room_id = sqlc.narg('room_id') OR sqlc.narg('room_id') IS NULL)
	ORDER BY name ASC;

-- name: UpdateBed :exec
UPDATE beds
SET
	name = coalesce(sqlc.narg('name'), name),
	room_id = coalesce(sqlc.narg('room_id'), room_id)
WHERE id = @id;

-- name: DeleteBed :exec
DELETE FROM beds WHERE id = $1;

-- name: ExistsBedInOrganization :one
SELECT EXISTS (
    SELECT 1
    FROM beds
    WHERE id = $1
    AND organization_id = $2
) bed_exists;
