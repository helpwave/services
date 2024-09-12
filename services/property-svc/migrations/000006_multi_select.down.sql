ALTER TABLE property_values ADD COLUMN IF NOT EXISTS select_value uuid;

-- poor man's ADD CONSTRAINT IF EXISTS (which is not supported by postgres)
ALTER TABLE property_values DROP CONSTRAINT IF EXISTS property_values_select_value_fkey;
ALTER TABLE property_values ADD CONSTRAINT property_values_select_value_fkey FOREIGN KEY (select_value)
	REFERENCES select_options(id) ON DELETE CASCADE;

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

-- may select any selected value
DO $$
	BEGIN
		IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'multi_select_values') THEN
			UPDATE property_values pv
			SET select_value = ms.select_option
			FROM multi_select_values ms
			WHERE pv.id = ms.value_id
			  AND ms.select_option IS NOT NULL;
		END IF;
END $$;

ALTER TABLE property_values DROP CONSTRAINT IF EXISTS property_values_check;
ALTER TABLE property_values DROP CONSTRAINT IF EXISTS property_values_check1;
ALTER TABLE property_values ADD CONSTRAINT property_values_check CHECK (((((((((text_value IS NOT NULL))::integer + ((number_value IS NOT NULL))::integer) + ((bool_value IS NOT NULL))::integer) + ((date_value IS NOT NULL))::integer) + ((date_time_value IS NOT NULL))::integer) + ((select_value IS NOT NULL))::integer) = 1));
ALTER TABLE property_values ADD CONSTRAINT property_values_check1 CHECK (does_select_option_belong_to_property(property_id, select_value));


DROP TABLE IF EXISTS multi_select_values;

