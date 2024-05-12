
-- name: CreateRule :exec
INSERT INTO property_view_rules (rule_id) VALUES (@id);

-- name: AddToAlwaysInclude :copyfrom
INSERT INTO property_view_filter_always_include_items (rule_id, property_id, dont_always_include) VALUES ($1, $2, $3) ON CONFLICT DO NOTHING;

-- name: DeleteFromAlwaysInclude :exec
DELETE FROM property_view_filter_always_include_items
	WHERE (
		rule_id = @rule_id AND
		property_id = ANY(@property_ids :: uuid[])
		AND dont_always_include = @dont_always_include
	);
