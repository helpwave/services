ALTER TABLE properties ADD COLUMN IF NOT EXISTS consistency BIGINT NOT NULL DEFAULT -1;