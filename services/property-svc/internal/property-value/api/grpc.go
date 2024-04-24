package api

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"
	"hwdb"
	"hwes"
	"hwutil"
	commandsV1 "property-svc/internal/property-value/commands/v1"
	"property-svc/internal/property-value/models"
	v1queries "property-svc/internal/property-value/queries/v1"
	"property-svc/repos/property_value_repo"
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

	if err := commandsV1.NewAttachPropertyValueCommandHandler(s.as)(ctx, propertyValueID, propertyID, value, subjectID); err != nil {
		return nil, err
	}

	return &pb.AttachPropertyValueResponse{
		PropertyValueId: propertyValueID.String(),
	}, nil
}

func (s *PropertyValueGrpcService) GetAttachedPropertyValues(ctx context.Context, req *pb.GetAttachedPropertyValuesRequest) (*pb.GetAttachedPropertyValuesResponse, error) {
	db := hwdb.GetDB()
	propertyValueRepo := property_value_repo.New(db)

	subjectID, err := uuid.Parse(req.GetSubjectId())
	if err != nil {
		return nil, err
	}

	propertyValues, err := v1queries.NewGetPropertyValuesWithPropertiesBySubjectIDQueryHandler(propertyValueRepo)(ctx, subjectID)
	if err != nil {
		return nil, err
	}

	return &pb.GetAttachedPropertyValuesResponse{
		Values: hwutil.Map(propertyValues, func(pv models.PropertyValueWithProperty) *pb.GetAttachedPropertyValuesResponse_Value {
			res := &pb.GetAttachedPropertyValuesResponse_Value{
				PropertyId: pv.PropertyID.String(),
				Name:       pv.Name,
				IsArchived: pv.IsArchived,
				FieldType:  pv.FieldType,
			}
			switch {
			case pv.TextValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_TextValue{TextValue: *pv.TextValue}
			case pv.BoolValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_BoolValue{BoolValue: *pv.BoolValue}
			case pv.NumberValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_NumberValue{NumberValue: *pv.NumberValue}
			case pv.SelectValue.Valid:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_SelectValue{SelectValue: pv.SelectValue.UUID.String()}
			case pv.DateTimeValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateTimeValue{DateTimeValue: timestamppb.New(*pv.DateTimeValue)}
			case pv.DateValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateValue{
					DateValue: &pb.Date{
						Day:   int32(pv.DateValue.Day()),
						Month: int32(pv.DateValue.Month()),
						Year:  int32(pv.DateValue.Year()),
					},
				}
			}
			return res
		}),
	}, nil
}
