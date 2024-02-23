package api

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	commandsV1 "property-svc/internal/property-value/commands/v1"
	v1queries "property-svc/internal/property-value/queries/v1"
)

type PropertyValueGrpcService struct {
	pb.UnimplementedPropertyValueServiceServer
	as hwes.AggregateStore
}

func NewPropertyValueService(aggregateStore hwes.AggregateStore) *PropertyValueGrpcService {
	return &PropertyValueGrpcService{as: aggregateStore}
}

func (s *PropertyValueGrpcService) CreatePropertyValue(ctx context.Context, req *pb.CreatePropertyValueRequest) (*pb.CreatePropertyValueResponse, error) {
	propertyValueID := uuid.New()

	subjectID, err := uuid.Parse(req.GetSubjectId())
	if err != nil {
		return nil, err
	}
	propertyID, err := uuid.Parse(req.GetPropertyId())
	if err != nil {
		return nil, err
	}

	var value interface{}
	switch req.Value.(type) {
	case *pb.CreatePropertyValueRequest_TextValue:
		value = req.GetTextValue()
	case *pb.CreatePropertyValueRequest_NumberValue:
		value = req.GetNumberValue()
	case *pb.CreatePropertyValueRequest_BoolValue:
		value = req.GetBoolValue()
	case *pb.CreatePropertyValueRequest_DateValue:
		value = req.GetDateValue()
	case *pb.CreatePropertyValueRequest_DateTimeValue:
		value = req.GetDateTimeValue()
	case *pb.CreatePropertyValueRequest_IsUndefined:
		value = true
	}

	if err := commandsV1.NewCreatePropertyValueCommandHandler(s.as)(ctx, propertyValueID, propertyID, subjectID, req.GetSubjectType(), value); err != nil {
		return nil, err
	}

	return &pb.CreatePropertyValueResponse{
		Id: propertyValueID.String(),
	}, nil
}

func (s *PropertyValueGrpcService) GetPropertyValue(ctx context.Context, req *pb.GetPropertyValueRequest) (*pb.GetPropertyValueResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	property, err := v1queries.NewGetPropertyValueByIDQueryHandler(s.as)(ctx, id)
	if err != nil {
		return nil, err
	}

	response := &pb.GetPropertyValueResponse{
		Id:          property.ID.String(),
		SubjectType: property.SubjectType,
		PropertyId:  property.PropertyID.String(),
	}

	// TODO: handle Date, datetime, select
	switch v := property.Value.(type) {
	case string:
		response.Value = &pb.GetPropertyValueResponse_TextValue{TextValue: v}
	case float32:
		response.Value = &pb.GetPropertyValueResponse_NumberValue{NumberValue: v}
	case bool:
		response.Value = &pb.GetPropertyValueResponse_BoolValue{BoolValue: v}
	default:
		response.Value = &pb.GetPropertyValueResponse_IsUndefined{IsUndefined: true}
	}

	return response, nil
}
