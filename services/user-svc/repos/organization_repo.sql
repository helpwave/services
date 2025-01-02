-- name: CreateOrganization :one
INSERT INTO organizations (id, long_name, short_name, contact_email, avatar_url, is_personal, created_by_user_id)
VALUES (@id, @long_name, @short_name, @contact_email, @avatar_url, @is_personal, @created_by_user_id)
RETURNING *;

-- name: GetOrganizationById :one
SELECT
	*
	FROM organizations
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
	WHERE organizations.id IN
	      (SELECT memberships.organization_id
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

-- name: RemoveMember :exec
DELETE FROM memberships WHERE user_id=$1 AND organization_id=$2;

-- name: InviteMember :one
WITH inserted_invitation AS (
	INSERT INTO invitations (email, organization_id, state)
	VALUES (@email, @organization_id, @state) RETURNING id
)
SELECT
	inserted_invitation.id AS invitation_id,
	users.id AS user_id
FROM inserted_invitation
LEFT JOIN users ON users.email = @email;

-- name: GetInvitations :many
SELECT *
	FROM invitations
	WHERE (
		(organization_id = sqlc.narg('organization_id') OR sqlc.narg('organization_id') IS NULL) AND
		(state = sqlc.narg('state') OR sqlc.narg('state') IS NULL) AND
		(id = sqlc.narg('id') OR sqlc.narg('id') IS NULL) AND
		(email = sqlc.narg('email') OR sqlc.narg('email') IS NULL)
	);

-- name: GetMembersByOrganization :many
SELECT users.*
	FROM memberships
	JOIN users ON memberships.user_id = users.id
	WHERE memberships.organization_id = $1;

-- name: IsInOrganizationById :one
SELECT EXISTS(
	SELECT 1
	FROM memberships
	WHERE user_id = @userID AND organization_id = @organizationID
);

-- name: DoesOrganizationExist :one
SELECT EXISTS (
	SELECT 1
	FROM organizations
	WHERE (id = @id)
);

-- name: GetInvitationConditions :one
SELECT
	EXISTS (
		SELECT 1
		FROM memberships
				 JOIN users ON users.id = memberships.user_id
		WHERE memberships.organization_id = @organization_id
		  AND users.email = @email
		LIMIT 1
	) AS is_in_organization_by_email,

	EXISTS (
		SELECT 1
		FROM organizations
		WHERE (id = @organization_id)
	) AS does_organization_exist,

	EXISTS (
		SELECT 1
		FROM invitations
		WHERE (email = @email AND organization_id = @organization_id)
		  AND state = ANY(@states::int[])
	) AS does_invitation_exist;


-- name: GetInvitationsWithOrganizationByUser :many
SELECT
	sqlc.embed(organizations),
	invitations.*
	FROM invitations
	JOIN organizations ON invitations.organization_id = organizations.id
	WHERE email = @email
	AND (state = sqlc.narg('state') OR sqlc.narg('state') IS NULL);

-- name: UpdateInvitationState :exec
UPDATE invitations
SET
	state = @state
WHERE id = @id;
