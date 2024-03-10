-- remove constraint
ALTER TABLE IF EXISTS rooms
	DROP CONSTRAINT IF EXISTS rooms_ward_id_fk;
