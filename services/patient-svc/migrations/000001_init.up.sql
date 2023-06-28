CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS patients (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	human_readable_identifier text NOT NULL,
	organization_id uuid NOT NULL;
	notes text NOT NULL DEFAULT '',
	bed_id uuid DEFAULT NULL,
	is_discharged INTEGER NOT NULL DEFAULT 0
);
