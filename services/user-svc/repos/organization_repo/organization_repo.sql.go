// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.22.0
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

const changeMembershipAdminStatus = `-- name: ChangeMembershipAdminStatus :exec
UPDATE memberships
SET
	is_admin=TRUE
WHERE user_id = $1 AND organization_id = $2
`

type ChangeMembershipAdminStatusParams struct {
	UserID         uuid.UUID
	OrganizationID uuid.UUID
}

func (q *Queries) ChangeMembershipAdminStatus(ctx context.Context, arg ChangeMembershipAdminStatusParams) error {
	_, err := q.db.Exec(ctx, changeMembershipAdminStatus, arg.UserID, arg.OrganizationID)
	return err
}

const createOrganization = `-- name: CreateOrganization :one
INSERT INTO organizations (long_name, short_name, contact_email, avatar_url, is_personal, created_by_user_id)
VALUES ($1, $2, $3, $4, $5, $6)
RETURNING id, long_name, short_name, contact_email, avatar_url, is_personal, created_by_user_id
`

type CreateOrganizationParams struct {
	LongName        string
	ShortName       string
	ContactEmail    string
	AvatarUrl       *string
	IsPersonal      *bool
	CreatedByUserID uuid.UUID
}

func (q *Queries) CreateOrganization(ctx context.Context, arg CreateOrganizationParams) (Organization, error) {
	row := q.db.QueryRow(ctx, createOrganization,
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

const getInvitationsByOrganization = `-- name: GetInvitationsByOrganization :many
SELECT id, email, organization_id, state FROM invitations
WHERE (
	organization_id = $1 AND
	state = $2 OR $2 IS NULL
)
`

type GetInvitationsByOrganizationParams struct {
	OrganizationID uuid.UUID
	State          int32
}

func (q *Queries) GetInvitationsByOrganization(ctx context.Context, arg GetInvitationsByOrganizationParams) ([]Invitation, error) {
	rows, err := q.db.Query(ctx, getInvitationsByOrganization, arg.OrganizationID, arg.State)
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

const getOrganizationById = `-- name: GetOrganizationById :one
SELECT id, long_name, short_name, contact_email, avatar_url, is_personal, created_by_user_id FROM organizations WHERE id = $1 LIMIT 1
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

const getOrganizationByUser = `-- name: GetOrganizationByUser :many
SELECT organizations.id, long_name, short_name, contact_email, avatar_url, is_personal, created_by_user_id, memberships.id, user_id, organization_id, is_admin FROM organizations
				JOIN memberships ON memberships.organization_id = organizations.id
WHERE memberships.user_id = $1
`

type GetOrganizationByUserRow struct {
	ID              uuid.UUID
	LongName        string
	ShortName       string
	ContactEmail    string
	AvatarUrl       *string
	IsPersonal      *bool
	CreatedByUserID uuid.UUID
	ID_2            uuid.UUID
	UserID          uuid.UUID
	OrganizationID  uuid.UUID
	IsAdmin         *bool
}

func (q *Queries) GetOrganizationByUser(ctx context.Context, userID uuid.UUID) ([]GetOrganizationByUserRow, error) {
	rows, err := q.db.Query(ctx, getOrganizationByUser, userID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	items := []GetOrganizationByUserRow{}
	for rows.Next() {
		var i GetOrganizationByUserRow
		if err := rows.Scan(
			&i.ID,
			&i.LongName,
			&i.ShortName,
			&i.ContactEmail,
			&i.AvatarUrl,
			&i.IsPersonal,
			&i.CreatedByUserID,
			&i.ID_2,
			&i.UserID,
			&i.OrganizationID,
			&i.IsAdmin,
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

const inviteMember = `-- name: InviteMember :exec
INSERT INTO invitations (email, organization_id, state)
VALUES ($1, $2, $3)
`

type InviteMemberParams struct {
	Email          string
	OrganizationID uuid.UUID
	State          int32
}

func (q *Queries) InviteMember(ctx context.Context, arg InviteMemberParams) error {
	_, err := q.db.Exec(ctx, inviteMember, arg.Email, arg.OrganizationID, arg.State)
	return err
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
