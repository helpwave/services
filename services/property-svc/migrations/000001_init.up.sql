CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS properties (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	subject_type integer NOT NULL,
	field_type integer NOT NULL,
	name text NOT NULL,
	description text NOT NULL DEFAULT '',
	is_archived boolean NOT NULL DEFAULT false,
	set_id uuid DEFAULT NULL,
	field_type_data_id uuid NOT NULL DEFAULT uuid_nil()
);

CREATE TABLE IF NOT EXISTS field_type_datas (
	id uuid PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
	select_data_id uuid DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS select_datas (
	id uuid PRIMARY KEY NOT NULL,
	select_options_id uuid DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS select_options (
	id uuid PRIMARY KEY NOT NULL,
	name text NOT NULL,
	description text NOT NULL DEFAULT '',
	is_custom boolean NOT NULL DEFAULT false,
	select_data_id uuid NOT NULL,
	FOREIGN KEY (select_data_id)
		REFERENCES select_datas(id)
		ON DELETE CASCADE
);
