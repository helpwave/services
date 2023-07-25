-- see InvitationState
--   https://proto.helpwave.de/#proto.services.user_svc.v1.InvitationState
ALTER TABLE invitations
	ALTER COLUMN state TYPE integer USING (
		CASE state
			WHEN 'pending' THEN 1
			WHEN 'accepted' THEN 2
			WHEN 'rejected' THEN 3
			ELSE 3
			END
		);

DROP TYPE IF EXISTS invitation_state;
