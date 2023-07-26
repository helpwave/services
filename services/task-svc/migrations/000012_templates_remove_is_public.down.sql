ALTER TABLE IF EXISTS task_templates
	ADD COLUMN is_public boolean NOT NULL DEFAULT FALSE;

ALTER TABLE IF EXISTS task_templates
	RENAME COLUMN created_by TO user_id;
