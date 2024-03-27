CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS properties (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    subject_type integer NOT NULL,
	field_type integer NOT NULL,
	name text NOT NULL,
	description text NOT NULL DEFAULT '',
	is_archived boolean NOT NULL DEFAULT false
);
