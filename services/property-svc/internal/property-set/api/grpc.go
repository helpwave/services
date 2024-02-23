package api

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	commandsV1 "property-svc/internal/property-set/commands/v1"
	v1queries "property-svc/internal/property-set/queries/v1"
)

type PropertySetGrpcService struct {
	pb.UnimplementedPropertySetServiceServer
	as hwes.AggregateStore
}

func NewPropertySetService(aggregateStore hwes.AggregateStore) *PropertySetGrpcService {
	return &PropertySetGrpcService{as: aggregateStore}
}

func (s *PropertySetGrpcService) CreatePropertySet(ctx context.Context, req *pb.CreatePropertySetRequest) (*pb.CreatePropertySetResponse, error) {
	propertySetID := uuid.New()

	if err := commandsV1.NewCreatePropertySetCommandHandler(s.as)(ctx, propertySetID, req.Name); err != nil {
		return nil, err
	}

	return &pb.CreatePropertySetResponse{
		Id: propertySetID.String(),
	}, nil
}

func (s *PropertySetGrpcService) GetPropertySet(ctx context.Context, req *pb.GetPropertySetRequest) (*pb.GetPropertySetResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	property, err := v1queries.NewGetPropertySetByIDQueryHandler(s.as)(ctx, id)
	if err != nil {
		return nil, err
	}

	return &pb.GetPropertySetResponse{
		Id:   property.ID.String(),
		Name: property.Name,
	}, nil
}
