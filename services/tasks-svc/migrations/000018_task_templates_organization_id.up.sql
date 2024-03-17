-- this migration remove the DEFAULT for task_templates' organization_id

DELETE FROM task_templates
WHERE organization_id = '00000000-0000-0000-0000-000000000000';

ALTER TABLE task_templates
  ALTER COLUMN organization_id DROP DEFAULT;
