-- name: CreateTask :one
INSERT INTO tasks
	(name, description, status, patient_id, public, organization_id, created_by, due_at)
VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
RETURNING id;
