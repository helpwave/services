ALTER TABLE task_templates
	DROP COLUMN is_public;

ALTER TABLE task_templates
	RENAME COLUMN user_id TO created_by;
