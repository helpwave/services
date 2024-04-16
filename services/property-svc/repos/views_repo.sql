
-- name: CreateRule :exec
INSERT INTO property_view_rules (rule_id) VALUES (@id);

-- name: AddToAlwaysInclude :copyfrom
INSERT INTO property_view_filter_always_include_items (rule_id, property_id, dont_always_include) VALUES ($1, $2, $3);

-- name: DeleteFromAlwaysInclude :exec
DELETE FROM property_view_filter_always_include_items WHERE (rule_id = $1 AND property_id = $2 AND dont_always_include = $3);
