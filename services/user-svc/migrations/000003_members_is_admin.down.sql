ALTER TABLE memberships
	RENAME TO members;

ALTER TABLE memberships
	DROP COLUMN is_admin;
