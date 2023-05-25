ALTER TABLE patients
	ADD COLUMN notes text NOT NULL DEFAULT '';

ALTER TABLE beds
	ADD COLUMN patient_id uuid
	FOREIGN KEY (patient_id)
		REFERENCES patients(id);

ALTER TABLE rooms
	ADD COLUMN ward_id uuid
	FOREIGN KEY (ward_id)
		REFERENCES wards(id);
