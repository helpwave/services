-- name: CreateBed :one
INSERT INTO beds (room_id, organization_id, name) VALUES (@room_id, @organization_id, @name) RETURNING *;

-- name: GetBedByIdForOrganization :one
SELECT * FROM beds
	WHERE id = $1
	AND organization_id = $2
	LIMIT 1;

-- name: GetBedsForOrganization :many
SELECT * FROM beds
	WHERE organization_id = $1
	ORDER BY name ASC;

-- name: GetBedsByRoomForOrganization :many
SELECT * FROM beds
	WHERE organization_id = $1 AND room_id = $2
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
