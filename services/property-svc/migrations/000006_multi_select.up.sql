
CREATE TABLE IF NOT EXISTS multi_select_values (
	value_id uuid NOT NULL REFERENCES property_values(id) ON DELETE CASCADE,
	select_option uuid NOT NULL REFERENCES select_options(id) ON DELETE CASCADE,
	UNIQUE (value_id, select_option)
);


-- fill table
INSERT INTO multi_select_values (value_id, select_option)
SELECT pv.id, pv.select_value
FROM property_values pv
WHERE pv.select_value IS NOT NULL;

-- now, remove select_value

-- drop existing checks
ALTER TABLE property_values DROP CONSTRAINT IF EXISTS property_values_check;
ALTER TABLE property_values DROP CONSTRAINT IF EXISTS property_values_check1;

DROP FUNCTION IF EXISTS does_select_option_belong_to_property; -- not needed anymore


ALTER TABLE property_values DROP CONSTRAINT IF EXISTS property_values_select_value_fkey;
ALTER TABLE property_values DROP COLUMN IF EXISTS select_value;


