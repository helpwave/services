ALTER TABLE tasks
	ALTER COLUMN assigned_user_id SET DEFAULT public.uuid_nil();
