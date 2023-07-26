ALTER TABLE patients
	ADD organization_id uuid NOT NULL;

ALTER TABLE rooms
	ADD organization_id uuid NOT NULL;

ALTER TABLE tasks
	ADD organization_id uuid NOT NULL;

ALTER TABLE wards
	ADD organization_id uuid NOT NULL;
