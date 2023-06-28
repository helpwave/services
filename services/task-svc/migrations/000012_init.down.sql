CREATE TABLE IF NOT EXISTS wards (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name text NOT NULL,
    organization_id uuid NOT NULL
);

ALTER TABLE task_templates
    ADD FOREIGN KEY (ward_id)
        REFERENCES wards (id)
        ON DELETE CASCADE;

