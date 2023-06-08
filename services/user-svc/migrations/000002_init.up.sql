CREATE TABLE IF NOT EXISTS memberships (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	user_id uuid NOT NULL,
	organization_id uuid NOT NULL,
	is_admin bool DEFAULT false,
	FOREIGN KEY (organization_id)
		REFERENCES organizations(id)
		ON DELETE CASCADE
);
