-- name: CreatePatient :exec
INSERT INTO patients
	(id, human_readable_identifier, notes, created_at, updated_at, consistency)
VALUES ($1, $2, $3, $4, $5, $6);

-- name: UpdatePatient :exec
UPDATE patients
SET human_readable_identifier = coalesce(sqlc.narg('human_readable_identfier'), human_readable_identifier),
    notes = coalesce(sqlc.narg('notes'), notes),
    updated_at = coalesce(sqlc.narg('updated_at'), updated_at),
    is_discharged = coalesce(sqlc.narg('is_discharged'), is_discharged),
	consistency = @consistency
WHERE id = $1;

-- name: UpdatePatientBedId :exec
UPDATE patients
SET bed_id = @bed_id,
    updated_at = @updated_at,
	consistency = @consistency
WHERE id = @id;

-- name: GetPatientByBed :one
SELECT patients.*
FROM patients
WHERE bed_id = @bed_id
	LIMIT 1;

-- name: GetPatientsByWard :many
SELECT
	patients.*
FROM patients
		 JOIN beds ON patients.bed_id = beds.id
		 JOIN rooms ON beds.room_id = rooms.id
WHERE rooms.ward_id = @ward_id;

-- name: GetPatientWithBedAndRoom :one
SELECT
	patients.*,
	beds.name as bed_name,
	beds.consistency as bed_consistency,
	rooms.id as room_id,
	rooms.name as room_name,
	rooms.ward_id as ward_id,
	rooms.consistency as room_consistency
FROM patients
		 LEFT JOIN beds ON patients.bed_id = beds.id
		 LEFT JOIN rooms ON beds.room_id = rooms.id
WHERE patients.id = @patient_id
LIMIT 1;

-- name: GetAllPatientsWithTasksBedAndRoom :many
SELECT
	sqlc.embed(patients),
	tasks.id as task_id,
	tasks.name as task_name,
	tasks.description as task_description,
	tasks.status as task_status,
	tasks.assigned_user_id as task_assigned_user_id,
	tasks.public as task_public,
	tasks.consistency as task_consistency,
	subtasks.id as subtask_id,
	subtasks.name as subtask_name,
	subtasks.done as subtask_done,
	beds.id as bed_id,
	beds.name as bed_name,
	beds.consistency as beds_consistency,
	rooms.id as room_id,
	rooms.name as room_name,
	rooms.ward_id as ward_id,
	rooms.consistency as room_consistency
FROM patients
		 LEFT JOIN tasks ON tasks.patient_id = patients.id
		 LEFT JOIN subtasks ON subtasks.task_id = tasks.id
		 LEFT JOIN beds ON beds.id = patients.bed_id
		 LEFT JOIN rooms ON rooms.id = beds.room_id;

-- name: DeletePatient :exec
DELETE FROM patients WHERE id = $1;
