ALTER TABLE task_templates
    DROP CONSTRAINT task_templates_ward_id_fkey;
DROP TABLE IF EXISTS wards;
