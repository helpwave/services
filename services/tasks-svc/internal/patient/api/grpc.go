package api

import (
	"common"
	"context"
	"fmt"
	pb "gen/services/tasks_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwdb"
	"hwdb/locale"
	"hwes"
	"hwutil"
	"tasks-svc/internal/patient/handlers"
	"tasks-svc/internal/patient/models"
	"tasks-svc/internal/tracking"
	"tasks-svc/repos/bed_repo"
)

type PatientGrpcService struct {
	pb.UnimplementedPatientServiceServer
	as       hwes.AggregateStore
	handlers *handlers.Handlers
}

func NewPatientGrpcService(aggregateStore hwes.AggregateStore, handlers *handlers.Handlers) *PatientGrpcService {
	return &PatientGrpcService{as: aggregateStore, handlers: handlers}
}

func (s *PatientGrpcService) CreatePatient(ctx context.Context, req *pb.CreatePatientRequest) (*pb.CreatePatientResponse, error) {
	log := zlog.Ctx(ctx)
	patientID := uuid.New()

	if err := s.handlers.Commands.V1.CreatePatient(ctx, patientID, req.GetHumanReadableIdentifier(), req.Notes); err != nil {
		return nil, err
	}

	log.Info().Str("patientID", patientID.String()).Msg("patient created")

	tracking.AddPatientToRecentActivity(ctx, patientID.String())

	return &pb.CreatePatientResponse{
		Id: patientID.String(),
	}, nil
}

func (s *PatientGrpcService) GetPatient(ctx context.Context, req *pb.GetPatientRequest) (*pb.GetPatientResponse, error) {
	patientID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, err
	}

	bedRepo := bed_repo.New(hwdb.GetDB())

	patient, err := s.handlers.Queries.V1.GetPatientByID(ctx, patientID)
	if err != nil {
		return nil, err
	}

	var bedRes *pb.GetPatientResponse_Bed = nil
	var roomRes *pb.GetPatientResponse_Room = nil

	if patient.BedID.Valid {
		result, err := hwdb.Optional(bedRepo.GetBedAndRoomByBedId)(ctx, patient.BedID.UUID)
		if err != nil {
			return nil, status.Error(codes.Internal, err.Error())
		} else if result != nil {
			bedRes = &pb.GetPatientResponse_Bed{
				Id:   result.Bed.ID.String(),
				Name: result.Bed.Name,
			}
			roomRes = &pb.GetPatientResponse_Room{
				Id:     result.Room.ID.String(),
				Name:   result.Room.Name,
				WardId: result.Room.WardID.String(),
			}
		}
	}

	return &pb.GetPatientResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
		Notes:                   patient.Notes,
		Bed:                     bedRes,
		Room:                    roomRes,
	}, nil
}

func (s *PatientGrpcService) GetPatientByBed(ctx context.Context, req *pb.GetPatientByBedRequest) (*pb.GetPatientByBedResponse, error) {
	bedID, err := uuid.Parse(req.BedId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patient, err := s.handlers.Queries.V1.GetPatientByBed(ctx, bedID)
	if patient == nil {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}
	if err != nil {
		return nil, err
	}

	return &pb.GetPatientByBedResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
		Notes:                   patient.Notes,
		BedId:                   &req.BedId,
	}, nil
}

func (s *PatientGrpcService) GetPatientsByWard(ctx context.Context, req *pb.GetPatientsByWardRequest) (*pb.GetPatientsByWardResponse, error) {
	wardID, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patients, err := s.handlers.Queries.V1.GetPatientsByWard(ctx, wardID)
	if err != nil {
		return nil, err
	}

	return &pb.GetPatientsByWardResponse{
		Patients: hwutil.Map(patients, func(patient *models.Patient) *pb.GetPatientsByWardResponse_Patient {
			return &pb.GetPatientsByWardResponse_Patient{
				Id:                      patient.ID.String(),
				HumanReadableIdentifier: patient.HumanReadableIdentifier,
				Notes:                   patient.Notes,
				BedId:                   hwutil.NullUUIDToStringPtr(patient.BedID),
			}
		}),
	}, nil
}

func (s *PatientGrpcService) GetPatientDetails(ctx context.Context, req *pb.GetPatientDetailsRequest) (*pb.GetPatientDetailsResponse, error) {
	patientID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, err
	}

	patientWithDetails, err := s.handlers.Queries.V1.GetPatientDetailsByID(ctx, patientID)
	if patientWithDetails == nil {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}
	if err != nil {
		return nil, err
	}

	var roomResponse *pb.GetPatientDetailsResponse_Room
	if patientWithDetails.Room != nil {
		roomResponse = &pb.GetPatientDetailsResponse_Room{
			Id:     patientWithDetails.Room.ID.String(),
			Name:   patientWithDetails.Room.Name,
			WardId: patientWithDetails.Room.WardID.String(),
		}
	}

	var bedResponse *pb.GetPatientDetailsResponse_Bed
	if patientWithDetails.Bed != nil {
		bedResponse = &pb.GetPatientDetailsResponse_Bed{
			Id:   patientWithDetails.Bed.ID.String(),
			Name: patientWithDetails.Bed.Name,
		}
	}

	taskResponse := make([]*pb.GetPatientDetailsResponse_Task, len(patientWithDetails.Tasks))
	for ix, item := range patientWithDetails.Tasks {
		taskResponse[ix] = &pb.GetPatientDetailsResponse_Task{
			Id:             item.ID.String(),
			Name:           item.Name,
			Description:    item.Description,
			Status:         item.Status,
			Public:         item.Public,
			Subtasks:       make([]*pb.GetPatientDetailsResponse_Task_SubTask, len(item.Subtasks)),
			AssignedUserId: hwutil.PtrTo(item.AssignedUsers[0].String()), // TODO: #760
		}

		subtaskIdx := 0
		for _, subtask := range item.Subtasks {
			taskResponse[ix].Subtasks[subtaskIdx] = &pb.GetPatientDetailsResponse_Task_SubTask{
				Id:   subtask.ID.String(),
				Name: subtask.Name,
				Done: subtask.Done,
			}
			subtaskIdx++
		}
	}

	// TODO: add patient to recent activity

	return &pb.GetPatientDetailsResponse{
		Id:                      patientWithDetails.ID.String(),
		HumanReadableIdentifier: patientWithDetails.HumanReadableIdentifier,
		Notes:                   patientWithDetails.Notes,
		Tasks:                   taskResponse,
		IsDischarged:            patientWithDetails.IsDischarged,
		Room:                    roomResponse,
		Bed:                     bedResponse,
	}, nil
}

func (s *PatientGrpcService) GetPatientList(ctx context.Context, req *pb.GetPatientListRequest) (*pb.GetPatientListResponse, error) {
	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	patientsWithDetails, err := s.handlers.Queries.V1.GetAllPatientsWithDetails(ctx)
	if err != nil {
		return nil, err
	}
	discharged, charged := hwutil.Partition(patientsWithDetails, func(patient *models.PatientDetails) bool {
		return patient.IsDischarged
	})
	active, unassigned := hwutil.Partition(charged, func(patient *models.PatientDetails) bool {
		return patient.Bed != nil
	})

	// Scope active to ward
	if wardID.Valid {
		active = hwutil.Filter(active, func(patientDetails *models.PatientDetails) bool {
			return patientDetails.Room.WardID == wardID.UUID
		})
	}

	collectPatientsResponse := func(patientsWithDetails []*models.PatientDetails) []*pb.GetPatientListResponse_Patient {
		res := make([]*pb.GetPatientListResponse_Patient, 0)

		for _, patientDetails := range patientsWithDetails {
			var roomResponse *pb.GetPatientListResponse_Room
			if patientDetails.Room != nil {
				roomResponse = &pb.GetPatientListResponse_Room{
					Id:     patientDetails.Room.ID.String(),
					Name:   patientDetails.Room.Name,
					WardId: patientDetails.Room.WardID.String(),
				}
			}

			var bedResponse *pb.GetPatientListResponse_Bed
			if patientDetails.Bed != nil {
				bedResponse = &pb.GetPatientListResponse_Bed{
					Id:   patientDetails.Bed.ID.String(),
					Name: patientDetails.Bed.Name,
				}
			}

			taskResponse := make([]*pb.GetPatientListResponse_Task, len(patientDetails.Tasks))
			for ix, item := range patientDetails.Tasks {
				taskResponse[ix] = &pb.GetPatientListResponse_Task{
					Id:             item.ID.String(),
					Name:           item.Name,
					Description:    item.Description,
					Status:         item.Status,
					Public:         item.Public,
					Subtasks:       make([]*pb.GetPatientListResponse_Task_SubTask, len(item.Subtasks)),
					AssignedUserId: hwutil.PtrTo(item.AssignedUsers[0].String()), // TODO: #760
				}

				subtaskIdx := 0
				for _, subtask := range item.Subtasks {
					taskResponse[ix].Subtasks[subtaskIdx] = &pb.GetPatientListResponse_Task_SubTask{
						Id:   subtask.ID.String(),
						Name: subtask.Name,
						Done: subtask.Done,
					}
					subtaskIdx++
				}
			}

			res = append(res, &pb.GetPatientListResponse_Patient{
				Id:                      patientDetails.ID.String(),
				HumanReadableIdentifier: patientDetails.HumanReadableIdentifier,
				Room:                    roomResponse,
				Bed:                     bedResponse,
				Notes:                   patientDetails.Notes,
				Tasks:                   taskResponse,
			})
		}

		return res
	}

	return &pb.GetPatientListResponse{
		Active:             collectPatientsResponse(active),
		UnassignedPatients: collectPatientsResponse(unassigned),
		DischargedPatients: collectPatientsResponse(discharged),
	}, nil
}

func (s *PatientGrpcService) GetRecentPatients(ctx context.Context, req *pb.GetRecentPatientsRequest) (*pb.GetRecentPatientsResponse, error) {
	log := zlog.Ctx(ctx)
	bedRepo := bed_repo.New(hwdb.GetDB())

	var recentPatientIdsStrs []string
	recentPatientIdsStrs, err := tracking.GetRecentPatientsForUser(ctx)
	if err != nil {
		return nil, common.NewStatusError(ctx,
			codes.Internal,
			"decaying_lru error: "+err.Error(),
			locale.GenericError(ctx),
		)
	}

	// WORKAROUND: Until https://github.com/helpwave/services/issues/458 is fixed
	/* TODO: Projection for that workaround?
	if len(recentPatientIdsStrs) == 0 {
		log.Debug().Msg("recentPatientIdsStrs was empty")
		if patientIds, err := patientRepo.GetLastUpdatedPatientIDsForOrganization(ctx, organizationID); err == nil {
			recentPatientIdsStrs = hwutil.Map(patientIds, func(patientId uuid.UUID) string {
				return patientId.String()
			})
		}
	}
	*/

	// get all Patients for valid uuids
	recentPatients := hwutil.Map(recentPatientIdsStrs, func(id string) *pb.GetRecentPatientsResponse_PatientWithRoomAndBed {
		parsedUUID, err := uuid.Parse(id)
		fmt.Println(parsedUUID)
		if err != nil {
			log.Warn().Str("uuid", id).Msg("GetRecentPatientsForUser returned invalid uuid")
			return nil
		}
		patient, err := s.handlers.Queries.V1.GetPatientByID(ctx, parsedUUID)
		if err != nil {
			return nil
		}

		var bedRes *pb.GetRecentPatientsResponse_Bed = nil
		var roomRes *pb.GetRecentPatientsResponse_Room = nil

		if patient.BedID.Valid {
			result, err := hwdb.Optional(bedRepo.GetBedAndRoomByBedId)(ctx, patient.BedID.UUID)
			if err != nil {
				log.Warn().Str("bedID", patient.BedID.UUID.String()).Msg("error querying getBedAndRoomByBed")
			} else if result != nil {
				bedRes = &pb.GetRecentPatientsResponse_Bed{
					Id:   result.Bed.ID.String(),
					Name: result.Bed.Name,
				}
				roomRes = &pb.GetRecentPatientsResponse_Room{
					Id:     result.Room.ID.String(),
					Name:   result.Room.Name,
					WardId: result.Room.WardID.String(),
				}
			}
		}

		return &pb.GetRecentPatientsResponse_PatientWithRoomAndBed{
			Id:                      patient.ID.String(),
			HumanReadableIdentifier: patient.HumanReadableIdentifier,
			Room:                    roomRes,
			Bed:                     bedRes,
		}
	})

	return &pb.GetRecentPatientsResponse{RecentPatients: recentPatients}, nil

}

func (s *PatientGrpcService) UpdatePatient(ctx context.Context, req *pb.UpdatePatientRequest) (*pb.UpdatePatientResponse, error) {
	//TODO: Auth

	patientID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	if err := s.handlers.Commands.V1.UpdatePatient(ctx, patientID, req.HumanReadableIdentifier, req.Notes); err != nil {
		return nil, err
	}

	tracking.AddPatientToRecentActivity(ctx, patientID.String())

	return &pb.UpdatePatientResponse{}, nil
}

func (s *PatientGrpcService) AssignBed(ctx context.Context, req *pb.AssignBedRequest) (*pb.AssignBedResponse, error) {
	log := zlog.Ctx(ctx)

	// TODO: Auth

	patientID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, err
	}

	bedID, err := uuid.Parse(req.BedId)
	if err != nil {
		return nil, err
	}

	if err := s.handlers.Commands.V1.AssignBed(ctx, patientID, bedID); err != nil {
		return nil, err
	}

	log.Info().Str("patientID", patientID.String()).Str("bedID", bedID.String()).Msg("assigned bed to patient")

	tracking.AddWardToRecentActivity(ctx, patientID.String())

	return &pb.AssignBedResponse{}, nil
}

func (s *PatientGrpcService) UnassignBed(ctx context.Context, req *pb.UnassignBedRequest) (*pb.UnassignBedResponse, error) {
	log := zlog.Ctx(ctx)

	// TODO: Auth

	patientID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, err
	}

	if err := s.handlers.Commands.V1.UnassignBed(ctx, patientID); err != nil {
		return nil, err
	}

	log.Info().Str("patientID", patientID.String()).Msg("unassigned bed from patient")

	tracking.AddPatientToRecentActivity(ctx, patientID.String())

	return &pb.UnassignBedResponse{}, nil
}

func (s *PatientGrpcService) DischargePatient(ctx context.Context, req *pb.DischargePatientRequest) (*pb.DischargePatientResponse, error) {
	log := zlog.Ctx(ctx)
	patientID, err := uuid.Parse(req.Id)

	// TODO: Auth

	if err != nil {
		return nil, err
	}

	if err := s.handlers.Commands.V1.DischargePatient(ctx, patientID); err != nil {
		return nil, err
	}

	log.Info().Str("patientID", patientID.String()).Msg("patient discharged")

	tracking.RemovePatientFromRecentActivity(ctx, patientID.String())

	return &pb.DischargePatientResponse{}, nil
}

func (s *PatientGrpcService) ReadmitPatient(ctx context.Context, req *pb.ReadmitPatientRequest) (*pb.ReadmitPatientResponse, error) {
	patientID, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, err
	}

	// TODO: admin check

	if err := s.handlers.Commands.V1.ReadmitPatient(ctx, patientID); err != nil {
		return nil, err
	}

	tracking.AddPatientToRecentActivity(ctx, patientID.String())

	return &pb.ReadmitPatientResponse{}, nil
}
