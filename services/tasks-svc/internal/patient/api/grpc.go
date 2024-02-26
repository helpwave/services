package api

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwdb"
	"hwes"
	"hwutil"
	commandsV1 "tasks-svc/internal/patient/commands/v1"
	v1queries "tasks-svc/internal/patient/queries/v1"
	"tasks-svc/internal/tracking"
	"tasks-svc/repos/bed_repo"
	"tasks-svc/repos/room_repo"
)

type PatientGrpcService struct {
	pb.UnimplementedPatientServiceServer
	as hwes.AggregateStore
}

func NewPatientGrpcService(aggregateStore hwes.AggregateStore) *PatientGrpcService {
	return &PatientGrpcService{as: aggregateStore}
}

func (s *PatientGrpcService) CreatePatient(ctx context.Context, req *pb.CreatePatientRequest) (*pb.CreatePatientResponse, error) {
	log := zlog.Ctx(ctx)
	patientID := uuid.New()

	if err := commandsV1.NewCreatePatientCommandHandler(s.as)(ctx, patientID, req.GetHumanReadableIdentifier(), req.Notes); err != nil {
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
	roomRepo := room_repo.New(hwdb.GetDB())

	patient, err := v1queries.NewGetPatientByIDQueryHandler(s.as)(ctx, patientID)
	if err != nil {
		return nil, err
	}

	var bedRes *pb.GetPatientResponse_Bed = nil
	var roomRes *pb.GetPatientResponse_Room = nil

	if patient.BedID.Valid {
		bed, err := hwdb.Optional(bedRepo.GetBedById)(ctx, patient.BedID.UUID)
		if err != nil {
			return nil, status.Error(codes.Internal, err.Error())
		} else if bed != nil {
			bedRes = &pb.GetPatientResponse_Bed{
				Id:   bed.ID.String(),
				Name: bed.Name,
			}
		}

		room, err := hwdb.Optional(roomRepo.GetRoomByBedId)(ctx, patient.BedID.UUID)
		if err != nil {
			return nil, status.Error(codes.Internal, err.Error())
		} else if room != nil {
			roomRes = &pb.GetPatientResponse_Room{
				Id:     room.ID.String(),
				Name:   room.Name,
				WardId: room.WardID.String(),
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

func (s *PatientGrpcService) GetRecentPatients(ctx context.Context, req *pb.GetRecentPatientsRequest) (*pb.GetRecentPatientsResponse, error) {
	log := zlog.Ctx(ctx)
	bedRepo := bed_repo.New(hwdb.GetDB())
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth
	recentPatientIdsStrs, err := tracking.GetRecentPatientsForUser(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
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
		if err != nil {
			log.Warn().Str("uuid", id).Msg("GetRecentPatientsForUser returned invalid uuid")
			return nil
		}
		patient, err := v1queries.NewGetPatientByIDQueryHandler(s.as)(ctx, parsedUUID)
		if err != nil {
			return nil
		}

		var bedRes *pb.GetRecentPatientsResponse_Bed = nil
		var roomRes *pb.GetRecentPatientsResponse_Room = nil
		if patient.BedID.Valid {
			bed, err := hwdb.Optional(bedRepo.GetBedById)(ctx, patient.BedID.UUID)
			if err != nil {
				log.Warn().Str("bedID", patient.BedID.UUID.String()).Msg("error querying getBedById")
			} else if bed != nil {
				bedRes = &pb.GetRecentPatientsResponse_Bed{
					Id:   bed.ID.String(),
					Name: bed.Name,
				}
			}

			room, err := hwdb.Optional(roomRepo.GetRoomByBedId)(ctx, patient.BedID.UUID)
			if err != nil {
				log.Warn().Str("bedID", patient.BedID.UUID.String()).Msg("error querying getRoomByBedId")
			} else if room != nil {
				roomRes = &pb.GetRecentPatientsResponse_Room{
					Id:     room.ID.String(),
					Name:   room.Name,
					WardId: room.WardID.String(),
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

	if err := commandsV1.NewUpdatePatientCommandHandler(s.as)(ctx, patientID, req.HumanReadableIdentifier, req.Notes); err != nil {
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

	if err := commandsV1.NewAssignBedCommandHandler(s.as)(ctx, patientID, bedID); err != nil {
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

	if err := commandsV1.NewUnassignBedCommandHandler(s.as)(ctx, patientID); err != nil {
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

	if err := commandsV1.NewDischargePatientCommandHandler(s.as)(ctx, patientID); err != nil {
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

	if err := commandsV1.NewDischargePatientCommandHandler(s.as)(ctx, patientID); err != nil {
		return nil, err
	}

	tracking.AddPatientToRecentActivity(ctx, patientID.String())

	return &pb.ReadmitPatientResponse{}, nil
}
