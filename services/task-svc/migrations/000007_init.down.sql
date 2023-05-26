ALTER TABLE patients
	DROP COLUMN notes,
	DROP COLUMN bed_id;

ALTER TABLE rooms
	DROP COLUMN ward_id;
