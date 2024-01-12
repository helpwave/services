ALTER TABLE memberships
	RENAME TO members;

ALTER TABLE members
	DROP COLUMN is_admin;
