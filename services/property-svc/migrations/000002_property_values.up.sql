CREATE OR REPLACE FUNCTION does_select_option_belong_to_property(property_id uuid, select_value uuid)
RETURNS BOOLEAN AS $$
BEGIN
	IF select_value IS NOT NULL THEN
		RETURN EXISTS (
			SELECT 1
	   		FROM properties
	   			RIGHT JOIN select_datas ON properties.select_data_id = select_datas.id
				RIGHT JOIN select_options ON select_datas.id = select_options.select_data_id
			WHERE properties.id = property_id AND select_options.id = select_value
		);
	ELSE
		RETURN TRUE;
	END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE IF NOT EXISTS property_values (
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	property_id uuid NOT NULL,
	subject_id uuid NOT NULL,
	text_value text DEFAULT NULL,
	number_value FLOAT DEFAULT NULL,
	bool_value boolean DEFAULT NULL,
	date_value DATE DEFAULT NULL,
	date_time_value timestamp DEFAULT NULL,
	select_value uuid DEFAULT NULL,
	-- check if at most one value field is set
	check(
		(
			(text_value is not null)::integer +
			(number_value is not null)::integer +
			(bool_value is not null)::integer +
			(date_value is not null)::integer +
			(date_time_value is not null)::integer +
			(select_value is not null)::integer
		) <= 1
	),

	UNIQUE (property_id, subject_id),

	FOREIGN KEY (property_id)
		REFERENCES properties(id)
		ON DELETE CASCADE,

	FOREIGN KEY (select_value)
		REFERENCES select_options(id)
		ON DELETE SET NULL,

	-- check if select_option belongs to the property
	check (does_select_option_belong_to_property(property_id, select_value))
);

CREATE INDEX idx_property_subject ON property_values (property_id, subject_id);
