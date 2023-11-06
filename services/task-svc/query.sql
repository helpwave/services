-- name: CreateBed :one
INSERT INTO beds (room_id, organization_id, name) VALUES ($1, $2, $3) RETURNING *;

-- name: GetBedById :one
SELECT * FROM beds WHERE id = $1 LIMIT 1;

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
