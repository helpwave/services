-- name: CreateUser :one
INSERT INTO users (id, email, nickname, name, avatar_url) VALUES (@id, @email, @nickname, @name, @avatar_url) RETURNING *;

-- name: GetUserById :one
SELECT * FROM users WHERE id = $1 LIMIT 1;

-- name: UpdateUser :exec
UPDATE users
SET
	email=coalesce(sqlc.narg('email'), email),
	nickname=coalesce(sqlc.narg('nickname'), nickname),
	name=coalesce(sqlc.narg('name'), name),
	avatar_url=coalesce(sqlc.narg('avatar_url'), avatar_url)
WHERE id = @id;
