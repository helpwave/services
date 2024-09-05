package models

import (
	"context"
	"errors"
	"github.com/google/uuid"
	"hwdb"
	"hwutil"
	"property-svc/repos/patient_views_repo"
)

type PatientPropertyMatcher struct {
	WardID    uuid.NullUUID `json:"ward_id,omitempty"`
	PatientID uuid.NullUUID `json:"patient_id,omitempty"`
}

func (m PatientPropertyMatcher) FindExactRuleId(ctx context.Context) (*uuid.UUID, error) {
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

func (m PatientPropertyMatcher) QueryProperties(ctx context.Context) ([]PropertiesQueryRow, error) {
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

func (m PatientPropertyMatcher) GetSubjectId() (uuid.UUID, error) {
	if !m.PatientID.Valid {
		return uuid.UUID{}, errors.New("PatientPropertyMatchers GetSubjectId: PatientID not valid")
	}
	return m.PatientID.UUID, nil
}

func (m PatientPropertyMatcher) ToMap() map[string]interface{} {
	mp := make(map[string]interface{})
	if m.WardID.Valid {
		mp["WardID"] = m.WardID.UUID.String()
	} else {
		mp["WardID"] = nil
	}
	if m.PatientID.Valid {
		mp["PatientID"] = m.PatientID.UUID.String()
	} else {
		mp["PatientID"] = nil
	}
	return mp
}
