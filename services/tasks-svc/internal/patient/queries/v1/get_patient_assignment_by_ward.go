package v1

import (
	"context"
	"github.com/google/uuid"
	"hwdb"
	"hwutil"
	"strconv"
	"tasks-svc/internal/patient/models"
	"tasks-svc/repos/room_repo"
)

type GetPatientAssignmentByWardQueryHandler func(ctx context.Context, wardID uuid.UUID) ([]*models.RoomWithBedsWithPatient, error)

func NewGetPatientAssignmentByWardQueryHandler() GetPatientAssignmentByWardQueryHandler {
	return func(ctx context.Context, wardID uuid.UUID) ([]*models.RoomWithBedsWithPatient, error) {
		roomRepo := room_repo.New(hwdb.GetDB())

		rows, err := roomRepo.GetRoomsWithBedsWithPatientsByWard(ctx, wardID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		processedRooms := make(map[uuid.UUID]bool)
		return hwutil.FlatMap(rows, func(roomRow room_repo.GetRoomsWithBedsWithPatientsByWardRow) **models.RoomWithBedsWithPatient {
			if _, processed := processedRooms[roomRow.RoomID]; processed {
				return nil
			}
			processedRooms[roomRow.RoomID] = true
			beds := hwutil.FlatMap(rows, func(bedRow room_repo.GetRoomsWithBedsWithPatientsByWardRow) **models.BedWithPatient {
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
						Consistency: strconv.FormatUint(uint64(roomRow.RoomConsistency), 10),
					}
				}
				val := &models.BedWithPatient{
					Bed: models.Bed{
						ID:          bedRow.BedID.UUID,
						Name:        *bedRow.BedName, // safe, bed is NOT NULL
						Consistency: strconv.FormatUint(uint64(*bedRow.BedConsistency), 10),
					},
					Patient: patient,
				}
				return &val
			})
			val := &models.RoomWithBedsWithPatient{
				Room: models.Room{
					ID:          roomRow.RoomID,
					Name:        roomRow.RoomName,
					Consistency: strconv.FormatUint(uint64(roomRow.RoomConsistency), 10),
				},
				Beds: beds,
			}
			return &val
		}), nil
	}
}
