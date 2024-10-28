DELETE FROM properties; -- remove all rows, adding a new NOT NULL column without default
ALTER TABLE properties ADD COLUMN IF NOT EXISTS organization_id uuid NOT NULL;
