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

func (s *PropertyValueGrpcService) AttachPropertyValue(ctx context.Context, req *pb.AttachPropertyValueRequest) (*pb.AttachPropertyValueResponse, error) {
	propertyValueID := uuid.New()

	_, err := uuid.Parse(req.GetSubjectId())
	if err != nil {
		return nil, err
	}

	propertyID, err := uuid.Parse(req.GetPropertyId())
	if err != nil {
		return nil, err
	}

	subjectID, err := uuid.Parse(req.GetSubjectId())
	if err != nil {
		return nil, err
	}

	var value interface{}
	switch req.Value.(type) {
	case *pb.AttachPropertyValueRequest_TextValue:
		value = req.GetTextValue()
	case *pb.AttachPropertyValueRequest_NumberValue:
		value = req.GetNumberValue()
	case *pb.AttachPropertyValueRequest_BoolValue:
		value = req.GetBoolValue()
	case *pb.AttachPropertyValueRequest_DateValue:
		value = req.GetDateValue()
	case *pb.AttachPropertyValueRequest_DateTimeValue:
		value = req.GetDateTimeValue()
	case *pb.AttachPropertyValueRequest_SelectValue:
		value = req.GetSelectValue()
	default:
		value = nil
	}

	if err := commandsV1.NewAttachPropertyValueCommandHandler(s.as)(ctx, propertyValueID, propertyID, value, subjectID, req.GetSubjectType()); err != nil {
		return nil, err
	}

	return &pb.AttachPropertyValueResponse{
		PropertyValueId: propertyValueID.String(),
	}, nil
}

func (s *PropertyValueGrpcService) GetPropertyValue(ctx context.Context, req *pb.GetPropertyValueRequest) (*pb.GetPropertyValueResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	propertyValue, err := v1queries.NewGetPropertyValueByIDQueryHandler(s.as)(ctx, id)
	if err != nil {
		return nil, err
	}

	response := &pb.GetPropertyValueResponse{
		Id:         propertyValue.ID.String(),
		PropertyId: propertyValue.PropertyID.String(),
	}

	// TODO: handle Date, datetime, select
	switch v := propertyValue.Value.(type) {
	case string:
		response.Value = &pb.GetPropertyValueResponse_TextValue{TextValue: v}
	case float32:
		response.Value = &pb.GetPropertyValueResponse_NumberValue{NumberValue: v}
	case bool:
		response.Value = &pb.GetPropertyValueResponse_BoolValue{BoolValue: v}
	default:
		response.Value = nil
	}

	return response, nil
}
