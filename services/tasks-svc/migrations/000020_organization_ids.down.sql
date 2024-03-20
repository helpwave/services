ALTER TABLE patients
	ADD COLUMN IF NOT EXISTS
	organization_id uuid NOT NULL;

ALTER TABLE rooms
	ADD COLUMN IF NOT EXISTS
	organization_id uuid NOT NULL;

ALTER TABLE tasks
	ADD COLUMN IF NOT EXISTS
	organization_id uuid NOT NULL;

ALTER TABLE wards
	ADD COLUMN IF NOT EXISTS
	organization_id uuid NOT NULL;

ALTER TABLE beds
	ADD COLUMN IF NOT EXISTS
	organization_id uuid NOT NULL;

ALTER TABLE task_templates
	DROP COLUMN organization_id;
