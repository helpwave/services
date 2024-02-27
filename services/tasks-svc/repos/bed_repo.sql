-- name: GetBedAndRoomByBedId :one
SELECT
	sqlc.embed(beds),
	sqlc.embed(rooms)
	FROM beds
	JOIN rooms on beds.room_id = rooms.id
	WHERE beds.id = $1;
