-- name: GetBedById :one
SELECT * FROM beds
	WHERE id = $1
	LIMIT 1;
