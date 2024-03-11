-- unassign conflicting rooms from ward
DELETE FROM rooms
WHERE ward_id NOT IN (SELECT id FROM wards);

-- add constraint
ALTER TABLE rooms
	ADD CONSTRAINT rooms_ward_id_fk
	FOREIGN KEY (ward_id)
	REFERENCES wards (id)
	ON DELETE CASCADE;
