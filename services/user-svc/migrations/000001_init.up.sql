CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS organizations (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	long_name text NOT NULL,
	short_name text NOT NULL,
	contact_email text NOT NULL,
	avatar_url text,
	is_personal bool DEFAULT false,
	created_by_user_id uuid NOT NULL
);

CREATE TABLE IF NOT EXISTS members (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	user_id uuid NOT NULL,
	organization_id uuid NOT NULL,
	FOREIGN KEY (organization_id)
		REFERENCES organizations(id)
		ON DELETE CASCADE
);
