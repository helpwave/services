CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS tasks (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	name text NOT NULL,
	description text DEFAULT ''::text NOT NULL,
	status integer NOT NULL,
	assigned_user_id uuid DEFAULT public.uuid_nil(),
	patient_id uuid NOT NULL,
	public boolean DEFAULT false NOT NULL,
	organization_id uuid NOT NULL,
	created_by uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
	due_at timestamp without time zone DEFAULT '1970-01-01 00:00:00'::timestamp without time zone NOT NULL
);

CREATE TABLE IF NOT EXISTS subtasks (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	task_id uuid NOT NULL,
	name text NOT NULL,
	done boolean NOT NULL DEFAULT FALSE,
	created_by uuid DEFAULT '00000000-0000-0000-0000-000000000000'::uuid NOT NULL,
	creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (task_id)
	REFERENCES tasks(id)
	ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS patients (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	human_readable_identifier text NOT NULL,
	organization_id uuid NOT NULL,
	notes text DEFAULT ''::text NOT NULL,
	bed_id uuid,
	is_discharged integer DEFAULT 0 NOT NULL,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

