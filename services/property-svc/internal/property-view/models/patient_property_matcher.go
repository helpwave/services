package models

import (
	"context"
	"errors"
	"github.com/google/uuid"
	"hwdb"
	"hwutil"
	"property-svc/repos/patient_views_repo"
)

const PatientPropertyMatcherType = "patient_property_matcher"

type PatientPropertyMatchers struct {
	WardID    *uuid.UUID `json:"ward_id,omitempty"`
	PatientID *uuid.UUID `json:"patient_id,omitempty"`
}

func (m PatientPropertyMatchers) FindExactRuleId(ctx context.Context) (*uuid.UUID, error) {
	patientViews := patient_views_repo.New(hwdb.GetDB())
	return hwdb.Optional(patientViews.GetPatientRuleIdUsingExactMatchers)(ctx, patient_views_repo.GetPatientRuleIdUsingExactMatchersParams{
		WardID:    m.WardID,
		PatientID: m.PatientID,
	})
}

type queryPatientPropertiesRow struct {
	patient_views_repo.GetPatientPropertiesUsingMatchersRow
}

func (r queryPatientPropertiesRow) GetPropertyID() uuid.UUID {
	return r.PropertyID
}

func (r queryPatientPropertiesRow) GetDontAlwaysInclude() bool {
	return r.DontAlwaysInclude
}

func (r queryPatientPropertiesRow) GetSpecificity() int32 {
	return r.Specificity
}

func (m PatientPropertyMatchers) GetType() string {
	return PatientPropertyMatcherType
}

func (m PatientPropertyMatchers) QueryProperties(ctx context.Context) ([]PropertiesQueryRow, error) {
	patientViews := patient_views_repo.New(hwdb.GetDB())

	rows, err := patientViews.GetPatientPropertiesUsingMatchers(ctx, patient_views_repo.GetPatientPropertiesUsingMatchersParams{
		WardID:    m.WardID,
		PatientID: m.PatientID,
	})

	cast := func(row patient_views_repo.GetPatientPropertiesUsingMatchersRow) PropertiesQueryRow {
		return queryPatientPropertiesRow{row}
	}

	return hwutil.Map(rows, cast), err
}

func (m PatientPropertyMatchers) GetSubjectId() (uuid.UUID, error) {
	if m.PatientID == nil {
		return uuid.UUID{}, errors.New("PatientPropertyMatchers GetSubjectId: PatientID not valid")
	}
	return *m.PatientID, nil
}

func (m PatientPropertyMatchers) ToMap() map[string]interface{} {
	mp := make(map[string]interface{})
	if m.WardID != nil {
		mp["WardID"] = m.WardID.String()
	} else {
		mp["WardID"] = nil
	}
	if m.PatientID != nil {
		mp["PatientID"] = m.PatientID.String()
	} else {
		mp["PatientID"] = nil
	}

	mp["PropertyMatcherType"] = m.GetType()

	return mp
}

func PatientPropertyMatchersFromMap(m map[string]interface{}) (PatientPropertyMatchers, bool) {
	propertyMatcherType, ok := m["PropertyMatcherType"]
	if !ok || propertyMatcherType != PatientPropertyMatcherType {
		return PatientPropertyMatchers{}, false
	}

	matcher := PatientPropertyMatchers{}

	if wardIDRaw, ok := m["WardID"].(string); ok {
		parsed, err := uuid.Parse(wardIDRaw)
		if err != nil {
			return PatientPropertyMatchers{}, false
		}
		matcher.WardID = &parsed
	}
	if patientIDRaw, ok := m["PatientID"].(string); ok {
		parsed, err := uuid.Parse(patientIDRaw)
		if err != nil {
			return PatientPropertyMatchers{}, false
		}
		matcher.PatientID = &parsed
	}

	return matcher, true
}
