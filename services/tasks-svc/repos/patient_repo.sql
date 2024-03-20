-- name: CreatePatient :exec
INSERT INTO patients
	(id, human_readable_identifier, notes, organization_id, created_at, updated_at)
VALUES ($1, $2, $3, $4, $5, $6);

-- name: UpdatePatient :exec
UPDATE patients
SET human_readable_identifier = coalesce(sqlc.narg('human_readable_identfier'), human_readable_identifier),
    notes = coalesce(sqlc.narg('notes'), notes),
	bed_id = coalesce(sqlc.narg('bed_id'), bed_id),
	updated_at = coalesce(sqlc.narg('updated_at'), updated_at),
	is_discharged = coalesce(sqlc.narg('is_discharged'), is_discharged)
WHERE id = $1;