package models

import (
	"context"
	"errors"
	"hwauthz"
	"hwauthz/commonperm"
	"hwdb"
	"hwutil"

	"property-svc/internal/property-view/perm"

	"github.com/google/uuid"

	"property-svc/repos/patient-views-repo"
)

const PatientPropertyMatcherType = "patient_property_matcher"

type PatientPropertyMatchers struct {
	WardID    uuid.NullUUID `json:"ward_id,omitempty"`
	PatientID uuid.NullUUID `json:"patient_id,omitempty"`
}

func (m PatientPropertyMatchers) FindExactRuleID(ctx context.Context) (*uuid.UUID, error) {
	patientViews := patientviewsrepo.New(hwdb.GetDB())
	return hwdb.Optional(patientViews.GetPatientRuleIdUsingExactMatchers)(ctx,
		patientviewsrepo.GetPatientRuleIdUsingExactMatchersParams{
			WardID:    m.WardID,
			PatientID: m.PatientID,
		})
}

type queryPatientPropertiesRow struct {
	patientviewsrepo.GetPatientPropertiesUsingMatchersRow
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
	patientViews := patientviewsrepo.New(hwdb.GetDB())

	rows, err := patientViews.GetPatientPropertiesUsingMatchers(
		ctx,
		patientviewsrepo.GetPatientPropertiesUsingMatchersParams{
			WardID:    m.WardID,
			PatientID: m.PatientID,
		})

	cast := func(row patientviewsrepo.GetPatientPropertiesUsingMatchersRow) PropertiesQueryRow {
		return queryPatientPropertiesRow{row}
	}

	return hwutil.Map(rows, cast), err
}

var ErrPatientIDNotValid = errors.New("PatientID not valid")

func (m PatientPropertyMatchers) GetSubjectID() (uuid.UUID, error) {
	if !m.PatientID.Valid {
		return uuid.UUID{}, ErrPatientIDNotValid
	}
	return m.PatientID.UUID, nil
}

func (m PatientPropertyMatchers) ToMap() map[string]interface{} {
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

	mp["PropertyMatcherType"] = m.GetType()

	return mp
}

func (m PatientPropertyMatchers) IsPropertyAlwaysIncluded(ctx context.Context, propertyID uuid.UUID) (bool, error) {
	repo := patientviewsrepo.New(hwdb.GetDB())
	query := hwdb.Optional(repo.IsPatientPropertyAlwaysIncluded)
	alwaysInclude, err := query(ctx, patientviewsrepo.IsPatientPropertyAlwaysIncludedParams{
		PropertyID: propertyID,
		WardID:     m.WardID,
		PatientID:  m.PatientID,
	})
	err = hwdb.Error(ctx, err)
	if alwaysInclude == nil || *alwaysInclude == nil {
		return false, err
	}
	return **alwaysInclude, err
}

func PatientPropertyMatchersFromMap(m map[string]interface{}) (PatientPropertyMatchers, bool) {
	propertyMatcherType, ok := m["PropertyMatcherType"]
	if !ok || propertyMatcherType != PatientPropertyMatcherType {
		return PatientPropertyMatchers{}, false
	}

	matcher := PatientPropertyMatchers{}

	if wardIDRaw, ok := m["WardID"].(string); ok {
		parsed, err := hwutil.ParseNullUUID(&wardIDRaw)
		if err != nil {
			return PatientPropertyMatchers{}, false
		}
		matcher.WardID = parsed
	} else {
		matcher.WardID = uuid.NullUUID{Valid: false}
	}
	if patientIDRaw, ok := m["PatientID"].(string); ok {
		parsed, err := hwutil.ParseNullUUID(&patientIDRaw)
		if err != nil {
			return PatientPropertyMatchers{}, false
		}
		matcher.PatientID = parsed
	} else {
		matcher.PatientID = uuid.NullUUID{Valid: false}
	}

	return matcher, true
}

func (m PatientPropertyMatchers) UserMustBeAllowedToUpdateRule(ctx context.Context, authz hwauthz.AuthZ) error {
	user := commonperm.UserFromCtx(ctx)

	checks := make([]hwauthz.PermissionCheck, 0)

	if m.PatientID.Valid {
		checks = append(checks,
			hwauthz.NewPermissionCheck(user, perm.PatientCanUserUpdate, perm.Patient(m.PatientID.UUID)))
	}

	if m.WardID.Valid {
		checks = append(checks,
			hwauthz.NewPermissionCheck(user, perm.WardCanUserUpdate, perm.Ward(m.WardID.UUID)))
	}

	if len(checks) == 0 {
		org := commonperm.OrganizationFromCtx(ctx)
		checks = append(checks,
			hwauthz.NewPermissionCheck(user, perm.OrganizationCanUserAlterRootPropertyRules, org))
	}

	return authz.BulkMust(ctx, checks...)
}
