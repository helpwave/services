package patient

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"hwutil"
	pbhelpers "proto_helpers/task_svc/v1"
	"task-svc/internal/models"
	"task-svc/internal/repositories"
	"task-svc/internal/tracking"
)

type ServiceServer struct {
	pb.UnimplementedPatientServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreatePatient(ctx context.Context, req *pb.CreatePatientRequest) (*pb.CreatePatientResponse, error) {
	log := zlog.Ctx(ctx)
	patientRepo := repositories.PatientRepo(ctx)

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	patient, err := patientRepo.CreatePatient(&models.Patient{
		PatientBase: models.PatientBase{
			HumanReadableIdentifier: req.HumanReadableIdentifier,
			Notes:                   req.Notes,
		},
		OrganizationID: organizationID,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("patientId", patient.ID.String()).
		Msg("patient created")

	tracking.AddPatientToRecentActivity(ctx, patient.ID.String())

	return &pb.CreatePatientResponse{
		Id: patient.ID.String(),
	}, nil
}

func (ServiceServer) GetPatient(ctx context.Context, req *pb.GetPatientRequest) (*pb.GetPatientResponse, error) {
	patientRepo := repositories.PatientRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patient, err := patientRepo.GetPatientById(id)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "not found")
		}
	}

	return &pb.GetPatientResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
		Notes:                   patient.Notes,
		BedId:                   hwutil.UUIDToStringPtr(patient.BedID),
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
	patientRepo := repositories.PatientRepo(ctx)

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wardID, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patients, err := patientRepo.GetPatientsByWardForOrganization(wardID, organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetPatientsByWardResponse{
		Patients: hwutil.Map(patients, func(patient models.Patient) *pb.GetPatientsByWardResponse_Patient {
			return &pb.GetPatientsByWardResponse_Patient{
				Id:                      patient.ID.String(),
				HumanReadableIdentifier: patient.HumanReadableIdentifier,
				Notes:                   patient.Notes,
				BedId:                   hwutil.UUIDToStringPtr(patient.BedID),
			}
		}),
	}, nil
}

func (ServiceServer) GetPatientAssignmentByWard(ctx context.Context, req *pb.GetPatientAssignmentByWardRequest) (*pb.GetPatientAssignmentByWardResponse, error) {
	patientRepo := repositories.PatientRepo(ctx)

	// TODO: Auth

	wardID, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rooms, err := patientRepo.GetRoomsWithBedsWithPatientsByWard(wardID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	mappedRooms := hwutil.Map(rooms, func(room models.Room) *pb.GetPatientAssignmentByWardResponse_Room {
		return &pb.GetPatientAssignmentByWardResponse_Room{
			Id:   room.ID.String(),
			Name: room.Name,
			Beds: hwutil.Map(room.Beds, func(bed models.Bed) *pb.GetPatientAssignmentByWardResponse_Room_Bed {
				var patient *pb.GetPatientAssignmentByWardResponse_Room_Bed_Patient
				if bed.Patient != nil {
					patient = &pb.GetPatientAssignmentByWardResponse_Room_Bed_Patient{
						Id:   bed.Patient.ID.String(),
						Name: bed.Patient.HumanReadableIdentifier,
					}
				}
				return &pb.GetPatientAssignmentByWardResponse_Room_Bed{
					Id:      bed.ID.String(),
					Name:    bed.Name,
					Patient: patient,
				}
			}),
		}
	})
	return &pb.GetPatientAssignmentByWardResponse{
		Rooms: mappedRooms,
	}, nil
}

func (ServiceServer) GetRecentPatients(ctx context.Context, req *pb.GetRecentPatientsRequest) (*pb.GetRecentPatientsResponse, error) {
	patientRepo := repositories.PatientRepo(ctx)
	log := zlog.Ctx(ctx)

	// TODO: Auth

	recentPatientIdsStrs, err := tracking.GetRecentPatientsForUser(ctx)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
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

	patients, err := patientRepo.GetPatientsByIdsWithBedAndRoom(recentPatientIds)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	recentPatients := hwutil.Map(patients, func(patient models.Patient) *pb.GetRecentPatientsResponse_PatientWithRoomAndBed {
		var bed *pb.GetRecentPatientsResponse_Bed = nil
		var room *pb.GetRecentPatientsResponse_Room = nil

		if patient.Bed != nil {
			bed = &pb.GetRecentPatientsResponse_Bed{
				Id:   patient.Bed.ID.String(),
				Name: patient.Bed.Name,
			}
			if patient.Bed.Room != nil {
				room = &pb.GetRecentPatientsResponse_Room{
					Id:   patient.Bed.Room.ID.String(),
					Name: patient.Bed.Room.Name,
				}
			}
		}

		return &pb.GetRecentPatientsResponse_PatientWithRoomAndBed{
			Id:                      patient.ID.String(),
			HumanReadableIdentifier: patient.HumanReadableIdentifier,
			Room:                    room,
			Bed:                     bed,
		}
	})

	return &pb.GetRecentPatientsResponse{RecentPatients: recentPatients}, nil
}

func (ServiceServer) UpdatePatient(ctx context.Context, req *pb.UpdatePatientRequest) (*pb.UpdatePatientResponse, error) {
	patientRepo := repositories.PatientRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	updates := pbhelpers.UpdatesMapForUpdatePatientRequest(req)
	_, err = patientRepo.UpdatePatient(id, updates)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	tracking.AddPatientToRecentActivity(ctx, id.String())

	return &pb.UpdatePatientResponse{}, nil
}

func (ServiceServer) AssignBed(ctx context.Context, req *pb.AssignBedRequest) (*pb.AssignBedResponse, error) {
	log := zlog.Ctx(ctx)
	patientRepo := repositories.PatientRepo(ctx)
	bedRepo := repositories.BedRepo(ctx)

	// TODO: Auth

	bedID, err := uuid.Parse(req.BedId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Check whether bed exits
	bed, err := bedRepo.GetBedById(bedID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "bed not found")
		}
	}

	updates := map[string]interface{}{"bed_id": bedID}
	patient, err := patientRepo.UpdatePatient(id, updates)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "patient id not found or bed in use")
		}
	}

	log.Info().
		Str("patientId", patient.ID.String()).
		Str("bedId", bed.ID.String()).
		Msg("assigned bed to patient")

	tracking.AddPatientToRecentActivity(ctx, id.String())

	return &pb.AssignBedResponse{}, nil
}

func (ServiceServer) UnassignBed(ctx context.Context, req *pb.UnassignBedRequest) (*pb.UnassignBedResponse, error) {
	log := zlog.Ctx(ctx)
	patientRepo := repositories.PatientRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	updates := map[string]interface{}{"bed_id": nil}
	patient, err := patientRepo.UpdatePatient(id, updates)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	log.Info().
		Str("patientId", patient.ID.String()).
		Msg("unassigned bed from patient")

	tracking.AddPatientToRecentActivity(ctx, id.String())

	return &pb.UnassignBedResponse{}, nil
}

func (ServiceServer) DischargePatient(ctx context.Context, req *pb.DischargePatientRequest) (*pb.DischargePatientResponse, error) {
	log := zlog.Ctx(ctx)
	patientRepo := repositories.PatientRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Unassign Patient from bed and set to discharged
	updates := map[string]interface{}{
		"bed_id":        nil,
		"is_discharged": 1,
	}
	_, err = patientRepo.UpdatePatient(id, updates)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	log.Info().
		Str("patientId", id.String()).
		Msg("patient discharged")

	tracking.RemovePatientFromRecentActivity(ctx, id.String())

	return &pb.DischargePatientResponse{}, nil
}

func (ServiceServer) GetPatientDetails(ctx context.Context, req *pb.GetPatientDetailsRequest) (*pb.GetPatientDetailsResponse, error) {
	patientRepo := repositories.PatientRepo(ctx)
	taskRepo := repositories.TaskRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patient, err := patientRepo.GetPatientById(id)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "patient not found")
		}
	}

	tasks, err := taskRepo.GetTasksWithSubTasksByPatient(patient.ID)
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
	tracking.AddPatientToRecentActivity(ctx, id.String())

	return &pb.GetPatientDetailsResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
		Notes:                   patient.Notes,
		Name:                    patient.HumanReadableIdentifier, // TODO replace later
		Tasks:                   mappedTasks,
	}, nil
}

func (ServiceServer) GetPatientList(ctx context.Context, req *pb.GetPatientListRequest) (*pb.GetPatientListResponse, error) {
	patientRepo := repositories.PatientRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, "invalid organization id")
	}

	isUsingWardID := req.WardId != nil
	var wardID uuid.UUID
	if isUsingWardID {
		wardID, err = uuid.Parse(*req.WardId)
		if err != nil {
			return nil, status.Error(codes.InvalidArgument, "invalid ward id")
		}
	}

	unassignedPatients, err := patientRepo.GetUnassignedPatientsForOrganization(organizationID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	dischargedPatients, err := patientRepo.GetDischargedPatientsForOrganization(organizationID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var rooms []models.Room
	if isUsingWardID {
		rooms, err = patientRepo.GetRoomsWithBedsWithActivePatientsForWard(wardID)
	} else {
		rooms, err = patientRepo.GetRoomsWithBedsWithActivePatientsForOrganization(organizationID)
	}
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var activePatients []*pb.GetPatientListResponse_PatientWithRoomAndBed
	for _, room := range rooms {
		for _, bed := range room.Beds {
			if bed.Patient != nil {
				patientWithRoomAndBed := &pb.GetPatientListResponse_PatientWithRoomAndBed{
					Id:                      bed.Patient.ID.String(),
					HumanReadableIdentifier: bed.Patient.HumanReadableIdentifier,
					Bed: &pb.GetPatientListResponse_Bed{
						Id:   bed.ID.String(),
						Name: bed.Name,
					},
					Room: &pb.GetPatientListResponse_Room{
						Id:   room.ID.String(),
						Name: room.Name,
					},
				}
				activePatients = append(activePatients, patientWithRoomAndBed)
			}
		}
	}

	return &pb.GetPatientListResponse{
		DischargedPatients: hwutil.Map(dischargedPatients, func(patient models.Patient) *pb.GetPatientListResponse_Patient {
			return &pb.GetPatientListResponse_Patient{
				Id:                      patient.ID.String(),
				HumanReadableIdentifier: patient.HumanReadableIdentifier,
			}
		}),
		UnassignedPatients: hwutil.Map(unassignedPatients, func(patient models.Patient) *pb.GetPatientListResponse_Patient {
			return &pb.GetPatientListResponse_Patient{
				Id:                      patient.ID.String(),
				HumanReadableIdentifier: patient.HumanReadableIdentifier,
			}
		}),
		Active: activePatients,
	}, nil
}

func (ServiceServer) DeletePatient(ctx context.Context, req *pb.DeletePatientRequest) (*pb.DeletePatientResponse, error) {
	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// TODO: admin check

	patientRepo := repositories.PatientRepo(ctx)
	_, err = patientRepo.DeletePatient(id)
	if err != nil {
		return nil, err
	}

	tracking.RemovePatientFromRecentActivity(ctx, id.String())

	return &pb.DeletePatientResponse{}, nil
}
