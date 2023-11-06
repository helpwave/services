-- name: CreateBed :one
INSERT INTO beds (room_id, organization_id, name) VALUES ($1, $2, $3) RETURNING *;

-- name: GetBedById :one
SELECT * FROM beds WHERE id = $1 LIMIT 1;
