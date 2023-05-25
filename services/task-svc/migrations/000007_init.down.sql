ALTER TABLE patients
	DROP COLUMN notes;

ALTER TABLE beds
	DROP COLUMN patient_id;

ALTER TABLE rooms
	DROP COLUMN ward_id;
