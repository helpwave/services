package api

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	commandsV1 "property-svc/internal/property/commands/v1"
)

type PropertyGrpcService struct {
	pb.UnimplementedPropertyServiceServer
	as hwes.AggregateStore
}

func NewPropertyService(aggregateStore hwes.AggregateStore) *PropertyGrpcService {
	return &PropertyGrpcService{as: aggregateStore}
}

func (s *PropertyGrpcService) CreateProperty(ctx context.Context, req *pb.CreatePropertyRequest) (*pb.CreatePropertyResponse, error) {
	propertyID := uuid.New()

	subjectID, err := uuid.Parse(req.GetSubjectId())
	if err != nil {
		return nil, err
	}
	if err := commandsV1.NewCreatePropertyCommandHandler(s.as)(ctx, propertyID, subjectID, req.GetSubjectType(), req.GetFieldType(), req.GetName()); err != nil {
		return nil, err
	}

	return &pb.CreatePropertyResponse{
		Id: propertyID.String(),
	}, nil
}
