ALTER TABLE patients
	DROP COLUMN organization_id;

ALTER TABLE rooms
	DROP COLUMN organization_id;

ALTER TABLE tasks
	DROP COLUMN organization_id;

ALTER TABLE wards
	DROP COLUMN organization_id;

ALTER TABLE beds
	DROP COLUMN organization_id;

ALTER TABLE task_templates
	DROP COLUMN organization_id;
