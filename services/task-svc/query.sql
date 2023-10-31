-- name: CreateBed :one
INSERT INTO beds (room_id, organization_id, name) VALUES ($1, $2, $3) RETURNING *;
