ALTER TABLE rooms
	DROP COLUMN IF EXISTS organization_id;

ALTER TABLE wards
	DROP COLUMN IF EXISTS organization_id;

ALTER TABLE beds
	DROP COLUMN IF EXISTS organization_id;

ALTER TABLE task_templates
	DROP COLUMN IF EXISTS organization_id;
