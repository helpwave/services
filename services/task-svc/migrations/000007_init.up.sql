ALTER TABLE patients
	ADD COLUMN notes text NOT NULL DEFAULT '',
	ADD COLUMN bed_id uuid,
	ADD FOREIGN KEY (bed_id)
		REFERENCES beds(id);
