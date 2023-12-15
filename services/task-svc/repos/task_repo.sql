-- name: CreateTask :one
INSERT INTO tasks
	(name, description, status, patient_id, public, organization_id, created_by, due_at)
VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
RETURNING id;

-- name: CreateSubTask :one
INSERT INTO subtasks
	(task_id, name, done, created_by)
VALUES ($1, $2, $3, $4)
RETURNING id;

-- name: ExistsTask :one
SELECT EXISTS (
    SELECT 1
    FROM tasks
    WHERE id = $1
    AND organization_id = $2
) task_exists;

-- name: DeleteSubTask :exec
DELETE FROM subtasks WHERE id = @id;

-- name: DeleteTask :exec
DELETE FROM tasks WHERE id = @id;
