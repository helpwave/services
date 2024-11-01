package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"

	"github.com/google/uuid"

	bedPerm "tasks-svc/internal/bed/perm"
	"tasks-svc/internal/patient/perm"

	"tasks-svc/internal/patient/aggregate"
)

type UnassignBedCommandHandler func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error)

func NewUnassignBedCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UnassignBedCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error) {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return 0, err
		}

		// check permissions
		user := commonPerm.UserFromCtx(ctx)
		checks := make([]hwauthz.PermissionCheck, 0, 2)
		checks = append(checks,
			hwauthz.NewPermissionCheck(user, perm.PatientCanUserUpdate, perm.Patient(patientID)))
		if a.Patient.BedID.Valid {
			checks = append(checks,
				hwauthz.NewPermissionCheck(user, bedPerm.BedCanUserUpdate, bedPerm.Bed(a.Patient.BedID.UUID)))
		}
		if err := authz.BulkMust(ctx, checks...); err != nil {
			return 0, err
		}

		// do unassignment
		if err := a.UnassignBed(ctx); err != nil {
			return 0, err
		}
		return as.Save(ctx, a)
	}
}
