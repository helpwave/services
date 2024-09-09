-- Drop default for created_by
DELETE FROM tasks
WHERE created_by = '00000000-0000-0000-0000-000000000000';

ALTER TABLE tasks
	ALTER COLUMN created_by DROP DEFAULT;

-- Drop default for tasks.created_by and NOT NULL constraint
DELETE FROM tasks
WHERE due_at = '1970-01-01 00:00:00';

ALTER TABLE tasks
	ALTER COLUMN due_at DROP DEFAULT;

ALTER TABLE tasks
	ALTER COLUMN due_at DROP NOT NULL;

-- Drop default for tasks.created_at
DELETE FROM tasks
WHERE created_at = '1970-01-01 00:00:00';

ALTER TABLE tasks
	ALTER COLUMN created_at DROP DEFAULT;

-- Drop default for subtasks.created_by
DELETE FROM subtasks
	WHERE created_by = '00000000-0000-0000-0000-000000000000';

ALTER TABLE subtasks
	ALTER COLUMN created_by DROP DEFAULT;
