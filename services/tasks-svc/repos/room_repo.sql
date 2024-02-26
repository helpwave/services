-- name: GetRoomByBedId :one
SELECT
	rooms.*
	FROM rooms
	LEFT JOIN beds ON beds.room_id = rooms.id
	WHERE (beds.id = @bed_id);
