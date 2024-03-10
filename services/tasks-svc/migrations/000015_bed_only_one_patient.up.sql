-- unassign conflicting patients
UPDATE patients
SET bed_id = NULL
WHERE bed_id IN (
  SELECT bed_id
  FROM patients
  GROUP BY bed_id
  HAVING COUNT(*) > 1
);

-- add constraint
ALTER TABLE patients
	ADD CONSTRAINT patients_bed_id_unique
	UNIQUE (bed_id);
