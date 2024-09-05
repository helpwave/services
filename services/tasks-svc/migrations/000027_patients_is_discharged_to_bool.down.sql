ALTER TABLE patients ADD COLUMN temp_is_discharged INTEGER DEFAULT 0 NOT NULL;

UPDATE patients
SET temp_is_discharged = CASE
		WHEN is_discharged = FALSE THEN 0
		ELSE 1
	END;

ALTER TABLE patients DROP COLUMN is_discharged;

ALTER TABLE patients RENAME COLUMN temp_is_discharged TO is_discharged;
