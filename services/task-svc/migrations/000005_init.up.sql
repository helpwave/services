CREATE TABLE IF NOT EXISTS subtasks (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	task_id uuid NOT NULL,
	name text NOT NULL,
	done boolean NOT NULL DEFAULT FALSE,
	FOREIGN KEY (task_id)
	    REFERENCES tasks(id)
		ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS tasks (
	 id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	 name text NOT NULL,
	 description text  NOT NULL DEFAULT '',
	 status integer NOT NULL,
	 assigned_user_id uuid DEFAULT uuid_nil(),
	 patient_id uuid NOT NULL,
	 public bool NOT NULL DEFAULT FALSE
);
