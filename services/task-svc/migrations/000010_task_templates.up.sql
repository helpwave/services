CREATE TABLE IF NOT EXISTS task_templates (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	name text NOT NULL,
	description text  NOT NULL,
	is_public boolean NOT NULL,
	ward_id uuid DEFAULT NULL,
	user_id uuid NOT NULL,
	FOREIGN KEY (ward_id)
		REFERENCES wards (id)
		ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS task_template_subtasks (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	task_template_id uuid NOT NULL,
	name text NOT NULL,
	FOREIGN KEY (task_template_id)
		REFERENCES task_templates (id)
		ON DELETE CASCADE
);
