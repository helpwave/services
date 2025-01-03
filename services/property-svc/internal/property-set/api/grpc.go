package api

import (
	"context"
	pb "gen/services/property_svc/v1"
	"hwes"

	"github.com/google/uuid"

	"property-svc/internal/property-set/handlers"
)

type PropertySetGrpcService struct {
	pb.UnimplementedPropertySetServiceServer
	as       hwes.AggregateStore
	handlers *handlers.Handlers
}

func NewPropertySetService(aggregateStore hwes.AggregateStore, handlers *handlers.Handlers) *PropertySetGrpcService {
	return &PropertySetGrpcService{as: aggregateStore, handlers: handlers}
}

func (s *PropertySetGrpcService) CreatePropertySet(
	ctx context.Context,
	req *pb.CreatePropertySetRequest,
) (*pb.CreatePropertySetResponse, error) {
	propertySetID := uuid.New()
	consistency, err := s.handlers.Commands.V1.CreatePropertySet(ctx, propertySetID, req.GetName())
	if err != nil {
		return nil, err
	}

	return &pb.CreatePropertySetResponse{
		Id:          propertySetID.String(),
		Consistency: consistency.String(),
	}, nil
}

func (s *PropertySetGrpcService) GetPropertySet(
	ctx context.Context,
	req *pb.GetPropertySetRequest,
) (*pb.GetPropertySetResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	property, err := s.handlers.Queries.V1.GetPropertySetByID(ctx, id)
	if err != nil {
		return nil, err
	}

	return &pb.GetPropertySetResponse{
		Id:   property.ID.String(),
		Name: property.Name,
	}, nil
}
