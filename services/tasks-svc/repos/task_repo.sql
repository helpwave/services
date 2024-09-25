-- name: CreateTask :exec
INSERT INTO tasks
	(id, name, patient_id, status, created_by, created_at, consistency)
VALUES ($1, $2, $3, $4, $5, $6, $7);

-- name: UpdateTask :exec
UPDATE tasks
SET name = coalesce(sqlc.narg('name'), name),
	description = coalesce(sqlc.narg('description'), description),
	status = coalesce(sqlc.narg('status'), status),
	public = coalesce(sqlc.narg('public'), public),
	created_by = coalesce(sqlc.narg('created_by'), created_by),
	due_at = coalesce(sqlc.narg('due_at'), due_at),
	consistency = @consistency
WHERE id = $1;

-- name: UpdateTaskAssignedUser :exec
UPDATE tasks
SET assigned_user_id = @assigned_user_id,
	consistency = @consistency
WHERE id = @id;

-- name: CreateSubtask :exec
WITH cet AS (
	UPDATE tasks
	SET consistency = @consistency
	WHERE id = @task_id
)
INSERT INTO subtasks
	(id, task_id, name, created_by, done)
VALUES (@id, @task_id, @name, @created_by, @done);

-- name: UpdateSubtask :exec
WITH cet AS (
	UPDATE tasks AS t
		SET consistency = @consistency
		WHERE t.id IN (
			SELECT task_id
			FROM subtasks AS st
			WHERE st.id = @id
		)
)
UPDATE subtasks AS st
SET name = coalesce(sqlc.narg('name'), name),
    done = coalesce(sqlc.narg('done'), done)
WHERE st.id = @id;

-- name: DeleteSubtask :exec
WITH cet AS (
	UPDATE tasks AS t
		SET consistency = @consistency
		WHERE t.id IN (
			SELECT task_id
			FROM subtasks AS st
			WHERE st.id = @id
		)
)
DELETE FROM subtasks AS st WHERE st.id = @id;

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
SET due_at = NULL,
	consistency = @consistency
WHERE id = @id;

-- name: DeleteTask :exec
DELETE FROM tasks WHERE id = $1;
