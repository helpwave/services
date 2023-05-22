ALTER TABLE beds
	ADD COLUMN IF NOT EXISTS
	organization_id uuid NOT NULL;
