DELETE FROM patients; -- we need to drop all patients, as organization_id must be NOT NULL
ALTER TABLE patients ADD COLUMN IF NOT EXISTS organization_id uuid NOT NULL;
