package patient

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	"hwdb"
	"hwgorm"
	"hwutil"
	"task-svc/internal/models"
	"task-svc/internal/repositories"
	"task-svc/internal/tracking"
	"task-svc/repos/bed_repo"
	"task-svc/repos/patient_repo"
	"task-svc/repos/room_repo"

	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type ServiceServer struct {
	pb.UnimplementedPatientServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreatePatient(ctx context.Context, req *pb.CreatePatientRequest) (*pb.CreatePatientResponse, error) {
	log := zlog.Ctx(ctx)
	patientRepo := patient_repo.New(hwdb.GetDB())

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	patient_id, err := patientRepo.CreatePatient(ctx, patient_repo.CreatePatientParams{
		OrganizationID:          organizationID,
		HumanReadableIdentifier: req.HumanReadableIdentifier,
		Notes:                   req.Notes,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("patientID", patient_id.String()).
		Msg("patient created")

	tracking.AddPatientToRecentActivity(ctx, patient_id.String())

	return &pb.CreatePatientResponse{
		Id: patient_id.String(),
	}, nil
}

func (ServiceServer) GetPatient(ctx context.Context, req *pb.GetPatientRequest) (*pb.GetPatientResponse, error) {
	patientRepo := patient_repo.New(hwdb.GetDB())

	// TODO: Auth

	patientId, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	res, err := hwdb.Optional(patientRepo.GetPatientWithBedAndRoom)(ctx, patientId)
	if res == nil {
		return nil, status.Error(codes.InvalidArgument, "not found")
	}
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.GetPatientResponse{
		Id:                      res.ID.String(),
		HumanReadableIdentifier: res.HumanReadableIdentifier,
		Notes:                   res.Notes,
		BedId:                   hwutil.NullUUIDToStringPtr(res.BedID),
		WardId:                  hwutil.NullUUIDToStringPtr(res.WardID),
		Room: hwutil.MapIf(res.RoomID.Valid, *res, func(res patient_repo.GetPatientWithBedAndRoomRow) pb.GetPatientResponse_Room {
			return pb.GetPatientResponse_Room{
				Id:     res.RoomID.UUID.String(), // has to be Valid, we just checked
				Name:   *res.RoomName,            // RoomName must exist (NOT NULL) when room exists
				WardId: res.WardID.UUID.String(), // WardId must exist (NOT NULL) when room exists
			}
		}),
		Bed: hwutil.MapIf(res.BedID.Valid, *res, func(res patient_repo.GetPatientWithBedAndRoomRow) pb.GetPatientResponse_Bed {
			return pb.GetPatientResponse_Bed{
				Id:   res.BedID.UUID.String(), // has to be Valid as per MapIf condition
				Name: *res.BedName,            // BedName must exist (NOT NULL) when Bed exists
			}
		}),
	}, nil
}

func (ServiceServer) GetPatientByBed(ctx context.Context, req *pb.GetPatientByBedRequest) (*pb.GetPatientByBedResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	bedID, err := uuid.Parse(req.BedId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patient := models.Patient{}
	if err := db.Where("bed_id = ?", bedID).First(&patient).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetPatientByBedResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
		Notes:                   patient.Notes,
		BedId:                   &req.BedId,
	}, nil
}

func (ServiceServer) GetPatientsByWard(ctx context.Context, req *pb.GetPatientsByWardRequest) (*pb.GetPatientsByWardResponse, error) {
	patientRepo := patient_repo.New(hwdb.GetDB())

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wardID, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patients, err := patientRepo.GetPatientsByWardForOrganization(ctx, patient_repo.GetPatientsByWardForOrganizationParams{
		WardID:         wardID,
		OrganizationID: organizationID,
	})

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetPatientsByWardResponse{
		Patients: hwutil.Map(patients, func(patient patient_repo.Patient) *pb.GetPatientsByWardResponse_Patient {
			return &pb.GetPatientsByWardResponse_Patient{
				Id:                      patient.ID.String(),
				HumanReadableIdentifier: patient.HumanReadableIdentifier,
				Notes:                   patient.Notes,
				BedId:                   hwutil.NullUUIDToStringPtr(patient.BedID),
			}
		}),
	}, nil
}

func (ServiceServer) GetPatientAssignmentByWard(ctx context.Context, req *pb.GetPatientAssignmentByWardRequest) (*pb.GetPatientAssignmentByWardResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth

	wardID, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := roomRepo.GetRoomsWithBedsWithPatientsByWard(ctx, wardID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	processedRooms := make(map[uuid.UUID]bool)

	return &pb.GetPatientAssignmentByWardResponse{
		Rooms: hwutil.FlatMap(rows, func(roomRow room_repo.GetRoomsWithBedsWithPatientsByWardRow) **pb.GetPatientAssignmentByWardResponse_Room {
			if _, processed := processedRooms[roomRow.RoomID]; processed {
				return nil
			}
			processedRooms[roomRow.RoomID] = true

			beds := hwutil.FlatMap(rows, func(bedRow room_repo.GetRoomsWithBedsWithPatientsByWardRow) **pb.GetPatientAssignmentByWardResponse_Room_Bed {
				if bedRow.RoomID != roomRow.RoomID || !bedRow.BedID.Valid {
					return nil
				}
				val := &pb.GetPatientAssignmentByWardResponse_Room_Bed{
					Id:   bedRow.BedID.UUID.String(), // valid because of if above
					Name: *bedRow.BedName,            // exists, because NOT-NULL
					Patient: hwutil.MapIf(bedRow.PatientID.Valid, bedRow,
						func(bedRow room_repo.GetRoomsWithBedsWithPatientsByWardRow) pb.GetPatientAssignmentByWardResponse_Room_Bed_Patient {
							return pb.GetPatientAssignmentByWardResponse_Room_Bed_Patient{
								Id:   bedRow.PatientID.UUID.String(),
								Name: *bedRow.PatientHumanReadableIdentifier,
							}
						}),
				}
				return &val
			})
			val := &pb.GetPatientAssignmentByWardResponse_Room{
				Id:   roomRow.RoomID.String(),
				Name: roomRow.RoomName,
				Beds: beds,
			}
			return &val
		}),
	}, nil
}

func (ServiceServer) GetRecentPatients(ctx context.Context, req *pb.GetRecentPatientsRequest) (*pb.GetRecentPatientsResponse, error) {
	patientRepo := patient_repo.New(hwdb.GetDB())
	log := zlog.Ctx(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	// TODO: Auth

	recentPatientIdsStrs, err := tracking.GetRecentPatientsForUser(ctx)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// WORKAROUND: Until https://github.com/helpwave/services/issues/458 is fixed
	if len(recentPatientIdsStrs) == 0 {
		log.Debug().Msg("recentPatientIdsStrs was empty")
		if patientIds, err := patientRepo.GetLastUpdatedPatientIDsForOrganization(ctx, organizationID); err == nil {
			recentPatientIdsStrs = hwutil.Map(patientIds, func(patientId uuid.UUID) string {
				return patientId.String()
			})
		}
	}

	// parse all valid uuids into an array
	recentPatientIds := hwutil.FlatMap(recentPatientIdsStrs, func(s string) *uuid.UUID {
		parsedUUID, err := uuid.Parse(s)
		if err != nil {
			log.Warn().Str("uuid", s).Msg("GetRecentPatientsForUser returned invalid uuid")
			return nil
		}
		return &parsedUUID
	})

	patientsRes, err := patientRepo.GetPatientsWithBedAndRoom(ctx, recentPatientIds)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	recentPatients := hwutil.Map(patientsRes, func(res patient_repo.GetPatientsWithBedAndRoomRow) *pb.GetRecentPatientsResponse_PatientWithRoomAndBed {
		var bed *pb.GetRecentPatientsResponse_Bed = nil
		var room *pb.GetRecentPatientsResponse_Room = nil

		if res.BedID.Valid {
			bed = &pb.GetRecentPatientsResponse_Bed{
				Id:   res.BedID.UUID.String(),
				Name: *res.BedName, // NOT-NULL, must exist
			}
			if res.RoomID.Valid {
				room = &pb.GetRecentPatientsResponse_Room{
					Id:     res.RoomID.UUID.String(), // checked validity already
					Name:   *res.RoomName,            // must exist, as NOT-NULL
					WardId: res.WardID.UUID.String(), // must be valid, as NOT-NULL
				}
			}
		}

		return &pb.GetRecentPatientsResponse_PatientWithRoomAndBed{
			Id:                      res.ID.String(),
			HumanReadableIdentifier: res.HumanReadableIdentifier,
			Room:                    room,
			Bed:                     bed,
		}
	})

	return &pb.GetRecentPatientsResponse{RecentPatients: recentPatients}, nil
}

func (ServiceServer) UpdatePatient(ctx context.Context, req *pb.UpdatePatientRequest) (*pb.UpdatePatientResponse, error) {
	patientRepo := patient_repo.New(hwdb.GetDB())

	// TODO: Auth

	patientID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:                      patientID,
		HumanReadableIdentifier: req.HumanReadableIdentifier,
		Notes:                   req.Notes,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	tracking.AddPatientToRecentActivity(ctx, patientID.String())

	return &pb.UpdatePatientResponse{}, nil
}

func (ServiceServer) AssignBed(ctx context.Context, req *pb.AssignBedRequest) (*pb.AssignBedResponse, error) {
	log := zlog.Ctx(ctx)
	patientRepo := patient_repo.New(hwdb.GetDB())
	bedRepo := bed_repo.New(hwdb.GetDB())

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	bedID, err := uuid.Parse(req.BedId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patientID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Check whether bed exits
	bedExists, err := bedRepo.ExistsBedInOrganization(ctx, bed_repo.ExistsBedInOrganizationParams{
		ID:             bedID,
		OrganizationID: organizationID,
	})
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	} else if !bedExists {
		return nil, status.Error(codes.InvalidArgument, "bed not found")
	}

	err = patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:    patientID,
		BedID: uuid.NullUUID{UUID: bedID, Valid: true},
	})
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "patient id not found or bed in use")
		}
	}

	log.Info().
		Str("patientID", patientID.String()).
		Str("bedID", bedID.String()).
		Msg("assigned bed to patient")

	tracking.AddPatientToRecentActivity(ctx, patientID.String())

	return &pb.AssignBedResponse{}, nil
}

func (ServiceServer) UnassignBed(ctx context.Context, req *pb.UnassignBedRequest) (*pb.UnassignBedResponse, error) {
	log := zlog.Ctx(ctx)
	patientRepo := patient_repo.New(hwdb.GetDB())

	// TODO: Auth

	patientId, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = patientRepo.UnassignBedFromPatient(ctx, patientId)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "patientId not found")
		}
	}

	log.Info().
		Str("patientID", patientId.String()).
		Msg("unassigned bed from patient")

	tracking.AddPatientToRecentActivity(ctx, patientId.String())

	return &pb.UnassignBedResponse{}, nil
}

func (ServiceServer) DischargePatient(ctx context.Context, req *pb.DischargePatientRequest) (*pb.DischargePatientResponse, error) {
	log := zlog.Ctx(ctx)
	patientRepo := patient_repo.New(hwdb.GetDB())

	// TODO: Auth

	patientId, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = patientRepo.DischargePatient(ctx, patientId)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "patientId not found")
		}
	}

	log.Info().
		Str("patientID", patientId.String()).
		Msg("patient discharged")

	tracking.RemovePatientFromRecentActivity(ctx, patientId.String())

	return &pb.DischargePatientResponse{}, nil
}

func (ServiceServer) GetPatientDetails(ctx context.Context, req *pb.GetPatientDetailsRequest) (*pb.GetPatientDetailsResponse, error) {
	patientRepo := patient_repo.New(hwdb.GetDB())
	taskRepo := repositories.TaskRepo(ctx)

	// TODO: Auth

	patientId, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patientRes, err := hwdb.Optional(patientRepo.GetPatientWithBedAndRoom)(ctx, patientId)
	if patientRes == nil {
		return nil, status.Error(codes.InvalidArgument, "patient not found")
	}
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	tasks, err := taskRepo.GetTasksWithSubTasksByPatient(patientId)
	if err != nil {
		return nil, err
	}

	var mappedTasks = hwutil.Map(tasks, func(task models.Task) *pb.GetPatientDetailsResponse_Task {
		var mappedSubtasks = hwutil.Map(task.Subtasks, func(subtask models.Subtask) *pb.GetPatientDetailsResponse_Task_SubTask {
			return &pb.GetPatientDetailsResponse_Task_SubTask{
				Id:   subtask.ID.String(),
				Done: subtask.Done,
				Name: subtask.Name,
			}
		})
		return &pb.GetPatientDetailsResponse_Task{
			Id:             task.ID.String(),
			Name:           task.Name,
			Description:    task.Description,
			Status:         pb.GetPatientDetailsResponse_TaskStatus(task.Status),
			AssignedUserId: task.AssignedUserId.UUID.String(),
			PatientId:      task.PatientId.String(),
			Subtasks:       mappedSubtasks,
			Public:         task.Public,
		}
	})

	// TODO: check if tracking here makes sense or too much spam
	tracking.AddPatientToRecentActivity(ctx, patientId.String())

	return &pb.GetPatientDetailsResponse{
		Id:                      patientRes.ID.String(),
		HumanReadableIdentifier: patientRes.HumanReadableIdentifier,
		Notes:                   patientRes.Notes,
		Name:                    patientRes.HumanReadableIdentifier, // TODO replace later
		Tasks:                   mappedTasks,
		WardId:                  hwutil.NullUUIDToStringPtr(patientRes.WardID),
		Room: hwutil.MapIf(patientRes.RoomID.Valid, *patientRes, func(res patient_repo.GetPatientWithBedAndRoomRow) pb.GetPatientDetailsResponse_Room {
			return pb.GetPatientDetailsResponse_Room{
				Id:     res.RoomID.UUID.String(), // we just checked
				Name:   *res.RoomName,            // RoomName is NOT-NULL, so must exist
				WardId: res.WardID.UUID.String(), // WardID is NOT-NULL, so must be valid
			}
		}),
		Bed: hwutil.MapIf(patientRes.BedID.Valid, *patientRes, func(res patient_repo.GetPatientWithBedAndRoomRow) pb.GetPatientDetailsResponse_Bed {
			return pb.GetPatientDetailsResponse_Bed{
				Id:   res.BedID.UUID.String(), // valid as per MapIf condition
				Name: *res.BedName,            // BedName is NOT-NULL, so must exist
			}
		}),
	}, nil
}

/*
func (ServiceServer) GetPatientList(ctx context.Context, req *pb.GetPatientListRequest) (*pb.GetPatientListResponse, error) {
	patientRepo := patient_repo.New(hwdb.GetDB())
	roomRepo := room_repo.New(hwdb.GetDB())

	mapTasks := func(tasks []models.Task) []*pb.GetPatientListResponse_Task {
		return hwutil.Map(tasks, func(task models.Task) *pb.GetPatientListResponse_Task {
			var mappedSubtasks = hwutil.Map(task.Subtasks, func(subtask models.Subtask) *pb.GetPatientListResponse_Task_SubTask {
				return &pb.GetPatientListResponse_Task_SubTask{
					Id:   subtask.ID.String(),
					Done: subtask.Done,
					Name: subtask.Name,
				}
			})
			return &pb.GetPatientListResponse_Task{
				Id:             task.ID.String(),
				Name:           task.Name,
				Description:    task.Description,
				Status:         pb.GetPatientListResponse_TaskStatus(task.Status),
				AssignedUserId: task.AssignedUserId.UUID.String(),
				PatientId:      task.PatientId.String(),
				Subtasks:       mappedSubtasks,
				Public:         task.Public,
			}
		})
	}

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, "invalid organization id")
	}

	var wardID *uuid.UUID
	if req.WardId != nil {
		parsedWardID, err := uuid.Parse(*req.WardId)
		if err != nil {
			return nil, status.Error(codes.InvalidArgument, "invalid ward id")
		}
		wardID = &parsedWardID
	}

	unassignedPatientsWithTasks, err := patientRepo.GetUnassignedPatientsWithTasksForOrganization(ctx, organizationID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	dischargedPatientsWithTasks, err := patientRepo.GetDischargedPatientsWithTasksForOrganization(ctx, organizationID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var activeRows []room_repo.GetRoomsWithBedsWithActivePatientsForWardRow{}
	if wardID != nil {
		activeRows, err = roomRepo.GetRoomsWithBedsWithActivePatientsForWard(ctx, *wardID)
	} else {
		row, err2 := roomRepo.GetRoomsWithBedsWithActivePatientsForOrganization(ctx, organizationID)
		err = err2
		activeRows = hwutil.Map(row, func(row room_repo.GetRoomsWithBedsWithActivePatientsForOrganizationRow) room_repo.GetRoomsWithBedsWithActivePatientsForWardRow {
			return room_repo.GetRoomsWithBedsWithActivePatientsForWardRow{
				...row
			}
		})
	}
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var activePatients []*pb.GetPatientListResponse_PatientWithRoomAndBed



	for _, row := range activeRows {
		for _, bed := range row.Beds {
			if bed.Patient != nil {
				patientWithRoomAndBed := &pb.GetPatientListResponse_PatientWithRoomAndBed{
					Id:                      bed.Patient.ID.String(),
					HumanReadableIdentifier: bed.Patient.HumanReadableIdentifier,
					Bed: &pb.GetPatientListResponse_Bed{
						Id:   bed.ID.String(),
						Name: bed.Name,
					},
					Room: &pb.GetPatientListResponse_Room{
						Id:     row.ID.String(),
						Name:   row.Name,
						WardId: row.WardID.String(),
					},
					Notes: bed.Patient.Notes,
					Tasks: mapTasks(bed.Patient.Tasks),
				}
				activePatients = append(activePatients, patientWithRoomAndBed)
			}
		}
	}

	mappedUnassignedPatientsWithTasks := hwutil.Map(unassignedPatientsWithTasks, func(row patient_repo.GetUnassignedPatientsWithTasksForOrganizationRow) *pb.GetPatientListResponse_Patient {
		var mappedTasks = mapTasks(row.Tasks)
		return &pb.GetPatientListResponse_Patient{
			Id:                      row.ID.String(),
			HumanReadableIdentifier: row.HumanReadableIdentifier,
			Notes:                   row.Notes,
			Tasks:                   mappedTasks,
		}
	})

	return &pb.GetPatientListResponse{
		DischargedPatients: mapPatients(dischargedPatientsWithTasks),
		UnassignedPatients: mappedUnassignedPatientsWithTasks,
		Active:             activePatients,
	}, nil
}
*/

func (ServiceServer) DeletePatient(ctx context.Context, req *pb.DeletePatientRequest) (*pb.DeletePatientResponse, error) {
	patientID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// TODO: admin check

	patientRepo := patient_repo.New(hwdb.GetDB())
	err = patientRepo.DeletePatient(ctx, patientID)
	if err != nil {
		return nil, err
	}

	tracking.RemovePatientFromRecentActivity(ctx, patientID.String())

	return &pb.DeletePatientResponse{}, nil
}

func (ServiceServer) ReadmitPatient(ctx context.Context, req *pb.ReadmitPatientRequest) (*pb.ReadmitPatientResponse, error) {
	patientID, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// TODO: admin check

	patientRepo := patient_repo.New(hwdb.GetDB())
	err = patientRepo.ReadmitPatient(ctx, patientID)
	if err != nil {
		return nil, err
	}

	tracking.AddPatientToRecentActivity(ctx, patientID.String())

	return &pb.ReadmitPatientResponse{}, nil
}
