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

-- name: GetTaskWithSubTasksAndPatientName :many
SELECT
	sqlc.embed(tasks),
	subtasks.id as subtask_id,
	subtasks.done as subtask_done,
	subtasks.name as subtask_name,
	subtasks.created_by as subtask_created_by,
	patients.human_readable_identifier as patient_name
FROM tasks
JOIN patients ON patients.id = tasks.patient_id
LEFT JOIN subtasks ON subtasks.task_id = tasks.id
WHERE tasks.id = $1
ORDER BY subtasks.creation_date ASC;

-- name: UpdateTask :exec
UPDATE tasks
SET	name = coalesce(sqlc.narg('name'), name),
	description = coalesce(sqlc.narg('description'), description),
	due_at = coalesce(sqlc.narg('due_at'), due_at),
	public = coalesce(sqlc.narg('public'), public),
	status = coalesce(sqlc.narg('status'), status)
WHERE id = @id;

-- name: UpdateTaskUser :exec
UPDATE tasks
SET assigned_user_id = @assigned_user_id
WHERE id = @id;

-- name: UpdateSubTask :exec
UPDATE subtasks
SET	name = coalesce(sqlc.narg('name'), name),
	done = coalesce(sqlc.narg('done'), done)
WHERE id = @id;

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
