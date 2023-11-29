-- name: CreatePatient :one
INSERT INTO patients (organization_id, human_readable_identifier, notes)
	VALUES (@organization_id, @human_readable_identifier, @notes)
	RETURNING id;

-- name: GetPatientHumanReadableIdentifier :one
SELECT human_readable_identifier FROM patients
	WHERE id = @id
	LIMIT 1;

-- name: GetPatientWithBedAndRoom :one
SELECT
	patients.*,
	beds.name as bed_name,
	rooms.id as room_id, rooms.name as room_name, rooms.ward_id as ward_id
	FROM patients
	LEFT JOIN beds ON patients.bed_id = beds.id
	LEFT JOIN rooms ON beds.room_id = rooms.id
	WHERE patients.id = @patient_id
	LIMIT 1;

-- name: GetPatientsWithBedAndRoom :many
SELECT
	patients.*,
	beds.name as bed_name,
	rooms.id as room_id, rooms.name as room_name, rooms.ward_id as ward_id
	FROM patients
	LEFT JOIN beds ON patients.bed_id = beds.id
	LEFT JOIN rooms ON beds.room_id = rooms.id
	WHERE patients.id IN (sqlc.slice('patient_ids'))
	ORDER BY patients.updated_at DESC;

-- name: GetPatientsByWardForOrganization :many
SELECT
	patients.*
	FROM patients
	JOIN beds ON patients.bed_id = beds.id
	JOIN rooms ON beds.room_id = rooms.id
	WHERE rooms.ward_id = @ward_id
	AND rooms.organization_id = @organization_id;

-- name: GetLastUpdatedPatientIDsForOrganization :many
SELECT id
	FROM patients
	WHERE organization_id = @organization_id
	ORDER BY updated_at DESC
	LIMIT 4;

-- name: ExistsPatientInOrganization :one
SELECT EXISTS (
    SELECT 1
    FROM patients
    WHERE id = $1
    AND organization_id = $2
) patient_exists;

-- name: UpdatePatient :exec
UPDATE patients
SET
	human_readable_identifier = coalesce(sqlc.narg('human_readable_identifier'), human_readable_identifier),
	notes = coalesce(sqlc.narg('notes'), notes),
	bed_id = coalesce(sqlc.narg('bed_id'), bed_id)
WHERE id = @id;

-- name: UnassignBedFromPatient :exec
UPDATE patients	SET	bed_id = NULL WHERE id = @id;

-- name: DischargePatient :exec
UPDATE patients
SET
	bed_id = NULL,
	is_discharged = 1
WHERE id = @id;


-- name: ReadmitPatient :exec
UPDATE patients
SET	is_discharged = 0
WHERE id = @id;


-- name: DeletePatient :exec
DELETE FROM patients WHERE id = @id;
