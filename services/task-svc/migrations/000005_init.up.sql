CREATE TABLE IF NOT EXISTS subtasks (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	task_id uuid NOT NULL,
	name text NOT NULL,
	done boolean NOT NULL DEFAULT FALSE,
	FOREIGN KEY (task_id)
	    REFERENCES tasks(id)
		ON DELETE CASCADE
);

ALTER TABLE tasks
	 ADD public bool NOT NULL DEFAULT FALSE;
