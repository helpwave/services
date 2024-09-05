-- delete all patients with incorrect beds
DELETE FROM patients
WHERE bed_id NOT IN (SELECT id FROM beds);

-- add constraint
ALTER TABLE patients
	ADD CONSTRAINT patients_bed_id_fk
	FOREIGN KEY (bed_id)
	REFERENCES beds (id)
	ON DELETE SET NULL;
