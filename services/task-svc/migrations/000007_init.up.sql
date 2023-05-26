ALTER TABLE patients
	ADD COLUMN notes text NOT NULL DEFAULT '',
	ADD COLUMN bed_id uuid,
	ADD FOREIGN KEY (bed_id)
		REFERENCES beds(id);

ALTER TABLE rooms
	ADD COLUMN ward_id uuid,
	ADD FOREIGN KEY (ward_id)
		REFERENCES wards(id);
