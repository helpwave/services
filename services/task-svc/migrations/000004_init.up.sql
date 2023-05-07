DROP TABLE beds;
CREATE TABLE IF NOT EXISTS beds (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	organization_id uuid NOT NULL,
	room_id uuid NOT NULL,
	FOREIGN KEY (room_id)
		REFERENCES rooms(id)
		ON DELETE CASCADE
);
