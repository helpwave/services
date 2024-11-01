package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"

	bedPerm "tasks-svc/internal/bed/perm"
	"tasks-svc/internal/patient/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
)

type AssignBedCommandHandler func(
	ctx context.Context,
	patientID uuid.UUID,
	bedID uuid.UUID,
) (common.ConsistencyToken, error)

func NewAssignBedCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) AssignBedCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, bedID uuid.UUID) (common.ConsistencyToken, error) {
		user := commonPerm.UserFromCtx(ctx)
		checkPatient := hwauthz.NewPermissionCheck(user, perm.PatientCanUserUpdate, perm.Patient(patientID))
		checkBed := hwauthz.NewPermissionCheck(user, bedPerm.BedCanUserUpdate, bedPerm.Bed(bedID))
		if err := authz.BulkMust(ctx, checkPatient, checkBed); err != nil {
			return 0, err
		}

		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return 0, err
		}

		if err := a.AssignBed(ctx, bedID); err != nil {
			return 0, err
		}
		return as.Save(ctx, a)
	}
}
