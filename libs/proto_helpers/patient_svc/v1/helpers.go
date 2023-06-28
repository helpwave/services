package patient_svc

import (
	pb "gen/proto/services/patient_svc/v1"
)

func UpdatesMapForUpdatePatientRequest(r *pb.UpdatePatientRequest) map[string]interface{} {
	m := make(map[string]interface{})

	if r.HumanReadableIdentifier != nil {
		m["human_readable_identifier"] = r.HumanReadableIdentifier
	}

	if r.Notes != nil {
		m["notes"] = r.Notes
	}

	return m
}
