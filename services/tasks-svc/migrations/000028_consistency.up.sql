ALTER TABLE beds ADD COLUMN IF NOT EXISTS consistency BIGINT NOT NULL DEFAULT 0;
ALTER TABLE rooms ADD COLUMN IF NOT EXISTS consistency BIGINT NOT NULL DEFAULT 0;
ALTER TABLE patients ADD COLUMN IF NOT EXISTS consistency BIGINT NOT NULL DEFAULT 0;
ALTER TABLE tasks ADD COLUMN IF NOT EXISTS consistency BIGINT NOT NULL DEFAULT 0;
ALTER TABLE subtasks ADD COLUMN IF NOT EXISTS consistency BIGINT NOT NULL DEFAULT 0;
