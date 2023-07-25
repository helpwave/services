CREATE TYPE invitation_state AS ENUM ('accepted', 'rejected', 'pending');

ALTER TABLE invitations
	ALTER COLUMN state TYPE invitation_state USING (
		CASE state
			WHEN 1 THEN 'pending'::invitation_state
			WHEN 2 THEN 'accepted'::invitation_state
			WHEN 3 THEN 'rejected'::invitation_state
			ELSE 'rejected'::invitation_state
			END
		);
