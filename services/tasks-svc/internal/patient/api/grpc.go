package api

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"hwes"
	commandsV1 "tasks-svc/internal/patient/commands/v1"
)

type PatientGrpcService struct {
	pb.UnimplementedPatientServiceServer
	as hwes.AggregateStore
}

func NewPatientGrpcService(aggregateStore hwes.AggregateStore) *PatientGrpcService {
	return &PatientGrpcService{as: aggregateStore}
}

func (s *PatientGrpcService) CreatePatient(ctx context.Context, req *pb.CreatePatientRequest) (*pb.CreatePatientResponse, error) {
	patientID := uuid.New()

	if err := commandsV1.NewCreatePatientCommandHandler(s.as)(ctx, patientID, req.GetHumanReadableIdentifier(), req.Notes); err != nil {
		return nil, err
	}

	return &pb.CreatePatientResponse{
		Id: patientID.String(),
	}, nil
}

func (s *PatientGrpcService) UpdatePatient(ctx context.Context, req *pb.UpdatePatientRequest) (*pb.UpdatePatientResponse, error) {
	patientID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	if err := commandsV1.NewUpdatePatientCommandHandler(s.as)(ctx, patientID, req.HumanReadableIdentifier, req.Notes); err != nil {
		return nil, err
	}

	return &pb.UpdatePatientResponse{}, nil
}
