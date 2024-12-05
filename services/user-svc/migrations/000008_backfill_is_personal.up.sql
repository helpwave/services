UPDATE organizations SET is_personal = false WHERE is_personal IS NULL;

ALTER TABLE organizations ALTER COLUMN is_personal SET NOT NULL;
