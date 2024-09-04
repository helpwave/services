ALTER TABLE patients ADD COLUMN temp_is_discharged BOOLEAN DEFAULT FALSE NOT NULL;

UPDATE patients
SET temp_is_discharged = CASE
		WHEN is_discharged = 0 THEN FALSE
		ELSE TRUE
	END;

ALTER TABLE patients DROP COLUMN is_discharged;

ALTER TABLE patients RENAME COLUMN temp_is_discharged TO is_discharged;
