ALTER TABLE members
	RENAME TO memberships;

ALTER TABLE memberships
    ADD COLUMN is_admin bool DEFAULT false;
