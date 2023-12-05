-- name: CreateWard :one
INSERT INTO rooms (name, organization_id) VALUES ($1, $2) RETURNING id;
