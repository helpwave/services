CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS tasks (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	name text NOT NULL,
	description text  NOT NULL DEFAULT '',
	status integer NOT NULL,
	assigned_user_id uuid DEFAULT uuid_nil(),
	patient_id uuid NOT NULL
);

CREATE TABLE IF NOT EXISTS patients (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	human_readable_identifier text NOT NULL
);
