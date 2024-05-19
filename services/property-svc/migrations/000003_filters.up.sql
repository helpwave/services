
-- the only purpose of this table is to keep track of all rule ids
-- when creating a new rule, an entry should be made not just in the specific matcher table,
-- but also here
-- more importantly, they should also be deleted together,
-- thus the filters have something to reference and can cascade-delete
CREATE TABLE IF NOT EXISTS property_view_rules (rule_id uuid PRIMARY KEY DEFAULT uuid_generate_v4());

CREATE TABLE IF NOT EXISTS property_view_filter_always_include_items (
	dont_always_include boolean NOT NULL,
		-- true = this is an item in the dont_always_include list of the rule
		-- false = this is an item in the always_include list of the rule
 	rule_id uuid NOT NULL, -- the rule this always_includes item belongs to
	property_id uuid NOT NULL, -- the property to (not) always include
	FOREIGN KEY (property_id)
		REFERENCES properties (id)
		ON DELETE CASCADE,
	FOREIGN KEY (rule_id)
		REFERENCES property_view_rules (rule_id)
		ON DELETE CASCADE,
	UNIQUE (rule_id, property_id) -- unique prevents a property to be in both lists (or in one multiple times)
);

-- we will make lookups by rule_id, it cant be a PK, as it is not unique
CREATE INDEX IF NOT EXISTS idx_property_view_filter_always_include_items_rule_id
	ON property_view_filter_always_include_items (rule_id);
