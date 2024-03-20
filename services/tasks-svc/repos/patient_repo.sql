-- name: CreatePatient :exec
INSERT INTO patients
	(id, human_readable_identifier, notes, created_at, updated_at)
VALUES ($1, $2, $3, $4, $5);

-- name: UpdatePatient :exec
UPDATE patients
SET human_readable_identifier = coalesce(sqlc.narg('human_readable_identfier'), human_readable_identifier),
    notes = coalesce(sqlc.narg('notes'), notes),
	updated_at = coalesce(sqlc.narg('updated_at'), updated_at),
	is_discharged = coalesce(sqlc.narg('is_discharged'), is_discharged)
WHERE id = $1;

-- name: UpdatePatientBedId :exec
UPDATE patients
	SET bed_id = @bed_id,
		updated_at = @updated_at
WHERE id = @id;
