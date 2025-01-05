package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwdb"
	"hwutil"

	wardPerm "tasks-svc/internal/ward/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/models"
	"tasks-svc/repos/room_repo"
)

type GetPatientAssignmentByWardQueryHandler func(
	ctx context.Context,
	wardID uuid.UUID,
) ([]*models.RoomWithBedsWithPatient, error)

func NewGetPatientAssignmentByWardQueryHandler(authz hwauthz.AuthZ) GetPatientAssignmentByWardQueryHandler {
	return func(ctx context.Context, wardID uuid.UUID) ([]*models.RoomWithBedsWithPatient, error) {
		roomRepo := room_repo.New(hwdb.MustGetDB(ctx))

		// check permissions
		//
		// CAUTION: IMPORTANT!
		// WE CURRENTLY DON'T HAVE A WAY TO COMMUNICATE "FORBIDDEN" VALUES TO THE API CONSUMERS
		// ALSO EVERYTHING IS SCOPED TO THE ORG RIGHT NOW
		// THAT'S WE DO NOT DO ANY FURTHER FILTERING (E.G. ROOMS, BEDS, TASKS) HERE
		// THIS NEEDS A SECOND LOOK ONCE PERMISSIONS BECOME MORE FLEXIBLE!

		user := commonPerm.UserFromCtx(ctx)
		taskCheck := hwauthz.NewPermissionCheck(user, wardPerm.WardCanUserGet, wardPerm.Ward(wardID))
		if err := authz.Must(ctx, taskCheck); err != nil {
			return nil, err
		}

		rows, err := roomRepo.GetRoomsWithBedsWithPatientsByWard(ctx, wardID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		processedRooms := make(map[uuid.UUID]bool)
		return hwutil.FlatMap(rows,
			func(roomRow room_repo.GetRoomsWithBedsWithPatientsByWardRow) **models.RoomWithBedsWithPatient {
				if _, processed := processedRooms[roomRow.RoomID]; processed {
					return nil
				}
				processedRooms[roomRow.RoomID] = true
				beds := hwutil.FlatMap(rows,
					func(bedRow room_repo.GetRoomsWithBedsWithPatientsByWardRow) **models.BedWithPatient {
						if bedRow.RoomID != roomRow.RoomID || !bedRow.BedID.Valid {
							return nil
						}
						var patient *models.PatientWithConsistency
						if bedRow.PatientID.Valid {
							patient = &models.PatientWithConsistency{
								Patient: models.Patient{
									ID:                      bedRow.PatientID.UUID,
									HumanReadableIdentifier: *bedRow.PatientHumanReadableIdentifier,
								},
								Consistency: common.ConsistencyToken(roomRow.RoomConsistency).String(), //nolint:gosec
							}
						}
						val := &models.BedWithPatient{
							Bed: models.Bed{
								ID:          bedRow.BedID.UUID,
								Name:        *bedRow.BedName,                                          // safe, bed is NOT NULL
								Consistency: common.ConsistencyToken(*bedRow.BedConsistency).String(), //nolint:gosec
							},
							Patient: patient,
						}
						return &val
					})
				val := &models.RoomWithBedsWithPatient{
					Room: models.Room{
						ID:          roomRow.RoomID,
						Name:        roomRow.RoomName,
						Consistency: common.ConsistencyToken(roomRow.RoomConsistency).String(), //nolint:gosec
					},
					Beds: beds,
				}
				return &val
			}), nil
	}
}
