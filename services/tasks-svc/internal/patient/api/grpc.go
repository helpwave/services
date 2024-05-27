package api

import (
	"common"
	"context"
	"fmt"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwdb"
	"hwdb/locale"
	"hwes"
	"hwutil"
	"tasks-svc/internal/patient/handlers"
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
	if err != nil {
		return nil, err
	}
	if patient == nil {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}

	return &pb.GetPatientByBedResponse{
		Id:                      patient.ID.String(),
		HumanReadableIdentifier: patient.HumanReadableIdentifier,
		Notes:                   patient.Notes,
		BedId:                   &req.BedId,
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
