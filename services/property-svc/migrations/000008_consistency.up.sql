ALTER TABLE properties ADD COLUMN IF NOT EXISTS consistency BIGINT NOT NULL DEFAULT 0;
ALTER TABLE property_values ADD COLUMN IF NOT EXISTS consistency BIGINT NOT NULL DEFAULT 0;