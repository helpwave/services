CREATE TABLE IF NOT EXISTS rooms (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	name text NOT NULL
);

CREATE TABLE IF NOT EXISTS beds (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	room_id uuid NOT NULL,
	FOREIGN KEY (room_id)
		REFERENCES rooms(id)
		ON DELETE CASCADE
);
