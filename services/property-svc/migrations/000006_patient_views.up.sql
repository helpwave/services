CREATE TABLE IF NOT EXISTS patient_property_view_rules (
	ward_id uuid,
    patient_id uuid,
	UNIQUE (ward_id, patient_id)
) INHERITS (property_view_rules);
