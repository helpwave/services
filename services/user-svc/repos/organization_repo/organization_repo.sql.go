// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0
// source: organization_repo.sql

package organization_repo

import (
	"context"

	"github.com/google/uuid"
)

const addUserToOrganization = `-- name: AddUserToOrganization :exec
INSERT INTO memberships (user_id, organization_id)
VALUES ($1, $2)
`

type AddUserToOrganizationParams struct {
	UserID         uuid.UUID
	OrganizationID uuid.UUID
}

func (q *Queries) AddUserToOrganization(ctx context.Context, arg AddUserToOrganizationParams) error {
	_, err := q.db.Exec(ctx, addUserToOrganization, arg.UserID, arg.OrganizationID)
	return err
}

const createOrganization = `-- name: CreateOrganization :one
INSERT INTO organizations (id, long_name, short_name, contact_email, avatar_url, is_personal, created_by_user_id)
VALUES ($1, $2, $3, $4, $5, $6, $7)
RETURNING id, long_name, short_name, contact_email, avatar_url, is_personal, created_by_user_id
`

type CreateOrganizationParams struct {
	ID              uuid.UUID
	LongName        string
	ShortName       string
	ContactEmail    string
	AvatarUrl       *string
	IsPersonal      bool
	CreatedByUserID uuid.UUID
}

func (q *Queries) CreateOrganization(ctx context.Context, arg CreateOrganizationParams) (Organization, error) {
	row := q.db.QueryRow(ctx, createOrganization,
		arg.ID,
		arg.LongName,
		arg.ShortName,
		arg.ContactEmail,
		arg.AvatarUrl,
		arg.IsPersonal,
		arg.CreatedByUserID,
	)
	var i Organization
	err := row.Scan(
		&i.ID,
		&i.LongName,
		&i.ShortName,
		&i.ContactEmail,
		&i.AvatarUrl,
		&i.IsPersonal,
		&i.CreatedByUserID,
	)
	return i, err
}

const deleteOrganization = `-- name: DeleteOrganization :exec
DELETE FROM organizations WHERE id=$1
`

func (q *Queries) DeleteOrganization(ctx context.Context, id uuid.UUID) error {
	_, err := q.db.Exec(ctx, deleteOrganization, id)
	return err
}

const doesOrganizationExist = `-- name: DoesOrganizationExist :one
SELECT EXISTS (
	SELECT 1
	FROM organizations
	WHERE (id = $1)
)
`

func (q *Queries) DoesOrganizationExist(ctx context.Context, id uuid.UUID) (bool, error) {
	row := q.db.QueryRow(ctx, doesOrganizationExist, id)
	var exists bool
	err := row.Scan(&exists)
	return exists, err
}

const getInvitationConditions = `-- name: GetInvitationConditions :one
SELECT
	EXISTS (
		SELECT 1
		FROM memberships
				 JOIN users ON users.id = memberships.user_id
		WHERE memberships.organization_id = $1
		  AND users.email = $2
		LIMIT 1
	) AS is_in_organization_by_email,

	EXISTS (
		SELECT 1
		FROM organizations
		WHERE (id = $1)
	) AS does_organization_exist,

	EXISTS (
		SELECT 1
		FROM invitations
		WHERE (email = $2 AND organization_id = $1)
		  AND state = ANY($3::int[])
	) AS does_invitation_exist
`

type GetInvitationConditionsParams struct {
	OrganizationID uuid.UUID
	Email          string
	States         []int32
}

type GetInvitationConditionsRow struct {
	IsInOrganizationByEmail bool
	DoesOrganizationExist   bool
	DoesInvitationExist     bool
}

func (q *Queries) GetInvitationConditions(ctx context.Context, arg GetInvitationConditionsParams) (GetInvitationConditionsRow, error) {
	row := q.db.QueryRow(ctx, getInvitationConditions, arg.OrganizationID, arg.Email, arg.States)
	var i GetInvitationConditionsRow
	err := row.Scan(&i.IsInOrganizationByEmail, &i.DoesOrganizationExist, &i.DoesInvitationExist)
	return i, err
}

const getInvitations = `-- name: GetInvitations :many
SELECT id, email, organization_id, state
	FROM invitations
	WHERE (
		(organization_id = $1 OR $1 IS NULL) AND
		(state = $2 OR $2 IS NULL) AND
		(id = $3 OR $3 IS NULL) AND
		(email = $4 OR $4 IS NULL)
	)
`

type GetInvitationsParams struct {
	OrganizationID uuid.NullUUID
	State          *int32
	ID             uuid.NullUUID
	Email          *string
}

func (q *Queries) GetInvitations(ctx context.Context, arg GetInvitationsParams) ([]Invitation, error) {
	rows, err := q.db.Query(ctx, getInvitations,
		arg.OrganizationID,
		arg.State,
		arg.ID,
		arg.Email,
	)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []Invitation{}
	for rows.Next() {
		var i Invitation
		if err := rows.Scan(
			&i.ID,
			&i.Email,
			&i.OrganizationID,
			&i.State,
		); err != nil {
			return nil, err
		}
		items = append(items, i)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}

const getInvitationsWithOrganizationByUser = `-- name: GetInvitationsWithOrganizationByUser :many
SELECT
	organizations.id, organizations.long_name, organizations.short_name, organizations.contact_email, organizations.avatar_url, organizations.is_personal, organizations.created_by_user_id,
	invitations.id, invitations.email, invitations.organization_id, invitations.state
	FROM invitations
	JOIN organizations ON invitations.organization_id = organizations.id
	WHERE email = $1
	AND (state = $2 OR $2 IS NULL)
`

type GetInvitationsWithOrganizationByUserParams struct {
	Email string
	State *int32
}

type GetInvitationsWithOrganizationByUserRow struct {
	Organization   Organization
	ID             uuid.UUID
	Email          string
	OrganizationID uuid.UUID
	State          int32
}

func (q *Queries) GetInvitationsWithOrganizationByUser(ctx context.Context, arg GetInvitationsWithOrganizationByUserParams) ([]GetInvitationsWithOrganizationByUserRow, error) {
	rows, err := q.db.Query(ctx, getInvitationsWithOrganizationByUser, arg.Email, arg.State)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetInvitationsWithOrganizationByUserRow{}
	for rows.Next() {
		var i GetInvitationsWithOrganizationByUserRow
		if err := rows.Scan(
			&i.Organization.ID,
			&i.Organization.LongName,
			&i.Organization.ShortName,
			&i.Organization.ContactEmail,
			&i.Organization.AvatarUrl,
			&i.Organization.IsPersonal,
			&i.Organization.CreatedByUserID,
			&i.ID,
			&i.Email,
			&i.OrganizationID,
			&i.State,
		); err != nil {
			return nil, err
		}
		items = append(items, i)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}

const getMembersByOrganization = `-- name: GetMembersByOrganization :many
SELECT users.id, users.email, users.nickname, users.name, users.avatar_url
	FROM memberships
	JOIN users ON memberships.user_id = users.id
	WHERE memberships.organization_id = $1
`

func (q *Queries) GetMembersByOrganization(ctx context.Context, organizationID uuid.UUID) ([]User, error) {
	rows, err := q.db.Query(ctx, getMembersByOrganization, organizationID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []User{}
	for rows.Next() {
		var i User
		if err := rows.Scan(
			&i.ID,
			&i.Email,
			&i.Nickname,
			&i.Name,
			&i.AvatarUrl,
		); err != nil {
			return nil, err
		}
		items = append(items, i)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}

const getOrganizationById = `-- name: GetOrganizationById :one
SELECT
	id, long_name, short_name, contact_email, avatar_url, is_personal, created_by_user_id
	FROM organizations
    WHERE id = $1 LIMIT 1
`

func (q *Queries) GetOrganizationById(ctx context.Context, id uuid.UUID) (Organization, error) {
	row := q.db.QueryRow(ctx, getOrganizationById, id)
	var i Organization
	err := row.Scan(
		&i.ID,
		&i.LongName,
		&i.ShortName,
		&i.ContactEmail,
		&i.AvatarUrl,
		&i.IsPersonal,
		&i.CreatedByUserID,
	)
	return i, err
}

const getOrganizationWithMemberById = `-- name: GetOrganizationWithMemberById :many
SELECT
	organizations.id, organizations.long_name, organizations.short_name, organizations.contact_email, organizations.avatar_url, organizations.is_personal, organizations.created_by_user_id,
	users.id as user_id
	FROM organizations
	LEFT JOIN memberships ON memberships.organization_id = organizations.id
	LEFT JOIN users ON memberships.user_id = users.id
	WHERE organizations.id = $1
`

type GetOrganizationWithMemberByIdRow struct {
	Organization Organization
	UserID       uuid.NullUUID
}

func (q *Queries) GetOrganizationWithMemberById(ctx context.Context, id uuid.UUID) ([]GetOrganizationWithMemberByIdRow, error) {
	rows, err := q.db.Query(ctx, getOrganizationWithMemberById, id)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetOrganizationWithMemberByIdRow{}
	for rows.Next() {
		var i GetOrganizationWithMemberByIdRow
		if err := rows.Scan(
			&i.Organization.ID,
			&i.Organization.LongName,
			&i.Organization.ShortName,
			&i.Organization.ContactEmail,
			&i.Organization.AvatarUrl,
			&i.Organization.IsPersonal,
			&i.Organization.CreatedByUserID,
			&i.UserID,
		); err != nil {
			return nil, err
		}
		items = append(items, i)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}

const getOrganizationsWithMembersByUser = `-- name: GetOrganizationsWithMembersByUser :many
SELECT
	organizations.id, organizations.long_name, organizations.short_name, organizations.contact_email, organizations.avatar_url, organizations.is_personal, organizations.created_by_user_id,
	users.id, users.email, users.nickname, users.name, users.avatar_url
	FROM organizations
	JOIN memberships ON memberships.organization_id=organizations.id
	JOIN users ON memberships.user_id=users.id
	WHERE organizations.id IN
	      (SELECT memberships.organization_id
			FROM memberships
			WHERE memberships.user_id = $1)
`

type GetOrganizationsWithMembersByUserRow struct {
	Organization Organization
	ID           uuid.UUID
	Email        string
	Nickname     string
	Name         string
	AvatarUrl    *string
}

func (q *Queries) GetOrganizationsWithMembersByUser(ctx context.Context, userID uuid.UUID) ([]GetOrganizationsWithMembersByUserRow, error) {
	rows, err := q.db.Query(ctx, getOrganizationsWithMembersByUser, userID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetOrganizationsWithMembersByUserRow{}
	for rows.Next() {
		var i GetOrganizationsWithMembersByUserRow
		if err := rows.Scan(
			&i.Organization.ID,
			&i.Organization.LongName,
			&i.Organization.ShortName,
			&i.Organization.ContactEmail,
			&i.Organization.AvatarUrl,
			&i.Organization.IsPersonal,
			&i.Organization.CreatedByUserID,
			&i.ID,
			&i.Email,
			&i.Nickname,
			&i.Name,
			&i.AvatarUrl,
		); err != nil {
			return nil, err
		}
		items = append(items, i)
	}
	if err := rows.Err(); err != nil {
		return nil, err
	}
	return items, nil
}

const inviteMember = `-- name: InviteMember :one
WITH inserted_invitation AS (
	INSERT INTO invitations (email, organization_id, state)
	VALUES ($1, $2, $3) RETURNING id
)
SELECT
	inserted_invitation.id AS invitation_id,
	users.id AS user_id
FROM inserted_invitation
LEFT JOIN users ON users.email = $1
`

type InviteMemberParams struct {
	Email          string
	OrganizationID uuid.UUID
	State          int32
}

type InviteMemberRow struct {
	InvitationID uuid.UUID
	UserID       uuid.NullUUID
}

func (q *Queries) InviteMember(ctx context.Context, arg InviteMemberParams) (InviteMemberRow, error) {
	row := q.db.QueryRow(ctx, inviteMember, arg.Email, arg.OrganizationID, arg.State)
	var i InviteMemberRow
	err := row.Scan(&i.InvitationID, &i.UserID)
	return i, err
}

const isInOrganizationById = `-- name: IsInOrganizationById :one
SELECT EXISTS(
	SELECT 1
	FROM memberships
	WHERE user_id = $1 AND organization_id = $2
)
`

type IsInOrganizationByIdParams struct {
	Userid         uuid.UUID
	Organizationid uuid.UUID
}

func (q *Queries) IsInOrganizationById(ctx context.Context, arg IsInOrganizationByIdParams) (bool, error) {
	row := q.db.QueryRow(ctx, isInOrganizationById, arg.Userid, arg.Organizationid)
	var exists bool
	err := row.Scan(&exists)
	return exists, err
}

const removeMember = `-- name: RemoveMember :exec
DELETE FROM memberships WHERE user_id=$1 AND organization_id=$2
`

type RemoveMemberParams struct {
	UserID         uuid.UUID
	OrganizationID uuid.UUID
}

func (q *Queries) RemoveMember(ctx context.Context, arg RemoveMemberParams) error {
	_, err := q.db.Exec(ctx, removeMember, arg.UserID, arg.OrganizationID)
	return err
}

const updateInvitationState = `-- name: UpdateInvitationState :exec
UPDATE invitations
SET
	state = $1
WHERE id = $2
`

type UpdateInvitationStateParams struct {
	State int32
	ID    uuid.UUID
}

func (q *Queries) UpdateInvitationState(ctx context.Context, arg UpdateInvitationStateParams) error {
	_, err := q.db.Exec(ctx, updateInvitationState, arg.State, arg.ID)
	return err
}

const updateOrganization = `-- name: UpdateOrganization :exec
UPDATE organizations
SET
	long_name=coalesce($1, long_name),
	short_name=coalesce($2, short_name),
	contact_email=coalesce($3, contact_email),
	is_personal=coalesce($4, is_personal),
	avatar_url=coalesce($5, avatar_url)
WHERE id = $6
`

type UpdateOrganizationParams struct {
	LongName     *string
	ShortName    *string
	ContactEmail *string
	IsPersonal   *bool
	AvatarUrl    *string
	ID           uuid.UUID
}

func (q *Queries) UpdateOrganization(ctx context.Context, arg UpdateOrganizationParams) error {
	_, err := q.db.Exec(ctx, updateOrganization,
		arg.LongName,
		arg.ShortName,
		arg.ContactEmail,
		arg.IsPersonal,
		arg.AvatarUrl,
		arg.ID,
	)
	return err
}
