-- organization_id is updated again in migration 18
ALTER TABLE task_templates
	ADD COLUMN organization_id uuid NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000';
