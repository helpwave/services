CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS wards (
	 id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	 name text NOT NULL,
	 organization_id uuid NOT NULL
);

