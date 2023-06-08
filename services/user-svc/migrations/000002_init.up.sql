CREATE TYPE invitation_state AS ENUM ('accepted', 'rejected', 'pending');

CREATE TABLE IF NOT EXISTS invitations  (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	email varchar(255) NOT NULL,
	organization_id uuid NOT NULL,
	state invitation_state NOT NULL,
	FOREIGN KEY (organization_id)
		REFERENCES organizations(id)
	 	ON DELETE CASCADE
);
