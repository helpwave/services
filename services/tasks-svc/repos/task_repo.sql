-- name: CreateTask :exec
INSERT INTO tasks
	(id, name, patient_id, status, created_by)
VALUES ($1, $2, $3, $4, $5);

-- name: UpdateTask :exec
UPDATE tasks
SET name = coalesce(sqlc.narg('name'), name),
	description = coalesce(sqlc.narg('description'), description),
	status = coalesce(sqlc.narg('status'), status),
	patient_id = coalesce(sqlc.narg('patient_id'), patient_id),
	public = coalesce(sqlc.narg('public'), public),
	created_by = coalesce(sqlc.narg('created_by'), created_by),
	assigned_user_id = coalesce(sqlc.narg('assigned_user_id'), assigned_user_id),
	due_at = coalesce(sqlc.narg('due_at'), due_at)
WHERE id = $1;

-- name: CreateSubtask :exec
INSERT INTO subtasks
	(id, task_id, name, created_by)
VALUES ($1, $2, $3, $4);

-- name: UpdateSubtask :exec
UPDATE subtasks
SET name = coalesce(sqlc.narg('name'), name),
    done = coalesce(sqlc.narg('done'), done)
WHERE id = $1;

-- name: DeleteSubtask :exec
DELETE FROM subtasks WHERE id = $1;
