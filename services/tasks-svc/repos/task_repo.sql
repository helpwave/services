-- name: CreateTask :exec
INSERT INTO tasks
	(id, name, patient_id, status, created_by, created_at)
VALUES ($1, $2, $3, $4, $5, $6);

-- name: UpdateTask :exec
UPDATE tasks
SET name = coalesce(sqlc.narg('name'), name),
	description = coalesce(sqlc.narg('description'), description),
	status = coalesce(sqlc.narg('status'), status),
	public = coalesce(sqlc.narg('public'), public),
	created_by = coalesce(sqlc.narg('created_by'), created_by),
	due_at = coalesce(sqlc.narg('due_at'), due_at)
WHERE id = $1;

-- name: UpdateTaskAssignedUser :exec
UPDATE tasks
SET assigned_user_id = @assigned_user_id
WHERE id = @id;

-- name: CreateSubtask :exec
INSERT INTO subtasks
	(id, task_id, name, created_by, done)
VALUES ($1, $2, $3, $4, $5);

-- name: UpdateSubtask :exec
UPDATE subtasks
SET name = coalesce(sqlc.narg('name'), name),
    done = coalesce(sqlc.narg('done'), done)
WHERE id = $1;

-- name: DeleteSubtask :exec
DELETE FROM subtasks WHERE id = $1;

-- name: GetTasksWithSubtasksByPatient :many
SELECT
	sqlc.embed(tasks),
	subtasks.id as subtask_id,
	subtasks.name as subtask_name,
	subtasks.done as subtask_done,
	subtasks.created_by as subtask_created_by
FROM tasks
JOIN patients ON patients.id = tasks.patient_id
LEFT JOIN subtasks ON subtasks.task_id = tasks.id
WHERE tasks.patient_id = $1;

-- name: GetTasksWithPatientByAssignee :many
SELECT
	sqlc.embed(tasks),
	sqlc.embed(patients),
	subtasks.id as subtask_id,
	subtasks.name as subtask_name,
	subtasks.done as subtask_done,
	subtasks.created_by as subtask_created_by
FROM patients
		 JOIN tasks ON tasks.patient_id = patients.id
		 LEFT JOIN subtasks ON subtasks.task_id = tasks.id
WHERE tasks.assigned_user_id = $1;

-- name: GetTaskWithPatientById :many
SELECT
	sqlc.embed(tasks),
	sqlc.embed(patients),
	subtasks.id as subtask_id,
	subtasks.name as subtask_name,
	subtasks.done as subtask_done,
	subtasks.created_by as subtask_created_by
FROM tasks
	JOIN patients ON tasks.patient_id = patients.id
	LEFT JOIN subtasks ON subtasks.task_id = tasks.id
WHERE tasks.id = $1;

-- name: RemoveTaskDueAt :exec
UPDATE tasks
SET due_at = NULL
WHERE id = $1;

-- name: DeleteTask :exec
DELETE FROM tasks WHERE id = $1;
