package v1

import (
	"common"
	"context"
	v1 "gen/libs/common/v1"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwdb"

	"github.com/google/uuid"

	bedPerm "tasks-svc/internal/bed/perm"
	"tasks-svc/internal/patient/perm"

	"tasks-svc/internal/patient/models"
	"tasks-svc/repos/patient_repo"
)

type GetPatientByBedQueryHandler func(ctx context.Context, bedID uuid.UUID) (*models.PatientWithConsistency, error)

func NewGetPatientByBedQueryHandler(authz hwauthz.AuthZ) GetPatientByBedQueryHandler {
	return func(ctx context.Context, bedID uuid.UUID) (*models.PatientWithConsistency, error) {
		patientRepo := patient_repo.New(hwdb.GetDB())

		// check bed permissions
		user := commonPerm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, bedPerm.BedCanUserGet, bedPerm.Bed(bedID))
		if err := authz.Must(ctx, check); err != nil {
			return nil, err
		}

		// do query
		patient, err := hwdb.Optional(patientRepo.GetPatientByBed)(ctx, uuid.NullUUID{
			UUID:  bedID,
			Valid: true,
		})
		if patient == nil {
			return nil, nil
		}
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		// check patient permissions
		check = hwauthz.NewPermissionCheck(user, perm.PatientCanUserGet, perm.Patient(patient.ID))
		if err := authz.Must(ctx, check); err != nil {
			return nil, err
		}

		// return
		return &models.PatientWithConsistency{
			Patient: models.Patient{
				PatientBase: models.PatientBase{
					ID:                      patient.ID,
					HumanReadableIdentifier: patient.HumanReadableIdentifier,
					Gender:                  v1.Gender(patient.Gender),
				},
				Notes:        patient.Notes,
				BedID:        patient.BedID,
				IsDischarged: patient.IsDischarged,
				CreatedAt:    patient.CreatedAt.Time,
				UpdatedAt:    patient.UpdatedAt.Time,
				DateOfBirth:  hwdb.DateToTime(patient.DateOfBirth),
			},
			Consistency: common.ConsistencyToken(patient.Consistency).String(), //nolint:gosec
		}, nil
	}
}
