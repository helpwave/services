-- name: CreateOrganization :one
INSERT INTO organizations (long_name, short_name, contact_email, avatar_url, is_personal, created_by_user_id)
VALUES (@long_name, @short_name, @contact_email, @avatar_url, @is_personal, @created_by_user_id)
RETURNING *;

-- name: GetOrganizationById :one
SELECT * FROM organizations
    WHERE id = $1 LIMIT 1;

-- name: GetOrganizationWithMemberById :many
SELECT
	sqlc.embed(organizations),
	users.id as user_id
FROM organizations
		 LEFT JOIN memberships ON memberships.organization_id = organizations.id
		 LEFT JOIN users ON memberships.user_id = users.id
WHERE organizations.id = $1;

-- name: GetOrganizationsWithMembersByUser :many
SELECT
	sqlc.embed(organizations),
	users.*
FROM organizations
	JOIN memberships ON memberships.organization_id=organizations.id
	JOIN users ON memberships.user_id=users.id
WHERE organizations.id IN (SELECT memberships.organization_id
						   FROM memberships
						   WHERE memberships.user_id = $1);

-- name: UpdateOrganization :exec
UPDATE organizations
SET
	long_name=coalesce(sqlc.narg('long_name'), long_name),
	short_name=coalesce(sqlc.narg('short_name'), short_name),
	contact_email=coalesce(sqlc.narg('contact_email'), contact_email),
	is_personal=coalesce(sqlc.narg('is_personal'), is_personal),
	avatar_url=coalesce(sqlc.narg('avatar_url'), avatar_url)
WHERE id = @id;

-- name: DeleteOrganization :exec
DELETE FROM organizations WHERE id=$1;

-- name: AddUserToOrganization :exec
INSERT INTO memberships (user_id, organization_id)
VALUES (@user_id, @organization_id);

-- name: ChangeMembershipAdminStatus :exec
UPDATE memberships
SET
	is_admin=TRUE
WHERE user_id = $1 AND organization_id = $2;

-- name: RemoveMember :exec
DELETE FROM memberships WHERE user_id=$1 AND organization_id=$2;

-- name: InviteMember :one
INSERT INTO invitations (email, organization_id, state)
VALUES (@email, @organization_id, @state)
RETURNING *;

-- name: GetInvitationsByOrganization :many
SELECT *
	FROM invitations
	WHERE (
		organization_id = $1 AND
		state = $2 OR $2 IS NULL
	);

-- name: GetMembersByOrganization :many
SELECT u.*
	FROM memberships m
	JOIN users u ON m.user_id = u.id
	WHERE m.organization_id = $1;

-- name: IsInOrganizationByEmail :one
SELECT EXISTS(
	SELECT memberships.*
	FROM memberships
		JOIN users ON users.id = memberships.user_id
	WHERE memberships.organization_id = @organization_id
	  AND users.email = @email
	LIMIT 1
);

-- name: IsInOrganizationById :one
SELECT EXISTS(
	SELECT 1
	FROM memberships
	WHERE user_id = @userID AND organization_id = @organizationID
);

-- name: DoesInvitationExist :one
SELECT EXISTS (
	SELECT 1
	FROM invitations
	WHERE (invitations.email = @email AND invitations.organization_id = @organization_id)
		AND state = ANY(ARRAY[@state::int[]])
);

-- name: GetInvitationsByOrganizations :many
SELECT *
FROM invitations
WHERE organization_id = @organization_id
	AND state = coalesce(sqlc.narg('state'), state);

-- name: GetInvitationsWithOrganizationByUser :many
SELECT
	sqlc.embed(organizations),
	invitations.*
FROM invitations
	JOIN organizations ON invitations.organization_id = organizations.id
WHERE email = @email
	AND state = coalesce(sqlc.narg('state'), state);

-- name: GetInvitationByIdAndEmail :one
SELECT
	*
FROM invitations
WHERE email = @email AND id = @id;

-- name: UpdateInvitationState :exec
UPDATE invitations
SET
	state = @state
WHERE id = @id;
