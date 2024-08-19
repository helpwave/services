
CREATE TABLE IF NOT EXISTS task_property_view_rules (
	ward_id uuid,
	task_id uuid,
	UNIQUE (ward_id, task_id) -- for one set of matchers, there can only be one rule
	-- always_include and dont_always_include
	-- are managed in property_view_filter_always_include_items
) INHERITS (property_view_rules); 	-- causes (non-ONLY) DELETE commands on this table to cascade to the rules table
									-- WARNING: this does not apply to the INSERT command. YOU NEED TO DO A MANUAL INSERT INTO THE RULES TABLE!
