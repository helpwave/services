CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS select_datas (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	allow_freetext boolean NOT NULL DEFAULT false
);

CREATE TABLE IF NOT EXISTS select_options (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	name text NOT NULL,
	description text NOT NULL DEFAULT '',
	is_custom boolean NOT NULL DEFAULT false,
	select_data_id uuid NOT NULL,
	FOREIGN KEY (select_data_id)
		REFERENCES select_datas(id)
		ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS properties (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    subject_type integer NOT NULL,
	field_type integer NOT NULL,
	name text NOT NULL,
	description text NOT NULL DEFAULT '',
	is_archived boolean NOT NULL DEFAULT false,
	set_id uuid DEFAULT NULL,
	select_data_id uuid DEFAULT NULL,
	FOREIGN KEY (select_data_id)
		REFERENCES select_datas(id)
		ON DELETE SET NULL
);
