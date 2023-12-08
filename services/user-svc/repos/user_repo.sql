-- name: CreateUser :one
INSERT INTO users (id, email, nickname, name, avatar_url) VALUES (@id, @email, @nickname, @name, @avatar_url) RETURNING *;

-- name: GetUserById :one
SELECT * FROM users WHERE id = $1 LIMIT 1;

-- name: ExistsUser :one
SELECT EXISTS(
	SELECT 1
	FROM users
	WHERE id = $1
) user_exists;
