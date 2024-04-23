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

	propertyValuesWithProperties, err := hwdb.Optional(propertyValueRepo.GetPropertyValuesWithPropertyBySubjectID)(ctx, subjectID)
	if err := hwdb.Error(ctx, err); err != nil {
		return nil, err
	}

	if propertyValuesWithProperties != nil {
		return &pb.GetAttachedPropertyValuesResponse{
			Values: hwutil.Map(*propertyValuesWithProperties, func(row property_value_repo.GetPropertyValuesWithPropertyBySubjectIDRow) *pb.GetAttachedPropertyValuesResponse_Value {
				fieldType := (pb.FieldType)(row.Property.FieldType)
				res := &pb.GetAttachedPropertyValuesResponse_Value{
					PropertyId: row.Property.ID.String(),
					Name:       row.Property.Name,
					IsArchived: row.Property.IsArchived,
					FieldType:  fieldType,
					// TODO: isSoftRequired
				}
				switch {
				case row.PropertyValue.TextValue != nil:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_TextValue{TextValue: *row.PropertyValue.TextValue}
				case row.PropertyValue.BoolValue != nil:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_BoolValue{BoolValue: *row.PropertyValue.BoolValue}
				case row.PropertyValue.NumberValue != nil:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_NumberValue{NumberValue: *row.PropertyValue.NumberValue}
				case row.PropertyValue.SelectValue.Valid:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_SelectValue{SelectValue: row.PropertyValue.SelectValue.UUID.String()}
				case row.PropertyValue.DateTimeValue.Valid:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateTimeValue{DateTimeValue: timestamppb.New(row.PropertyValue.DateTimeValue.Time)}
				case row.PropertyValue.DateValue.Valid:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateValue{
						DateValue: &pb.Date{
							Day:   int32(row.PropertyValue.DateValue.Time.Day()),
							Month: int32(row.PropertyValue.DateValue.Time.Month()),
							Year:  int32(row.PropertyValue.DateValue.Time.Year()),
						},
					}
				}
				return res
			}),
		}, nil
	}
	return &pb.GetAttachedPropertyValuesResponse{
		Values: []*pb.GetAttachedPropertyValuesResponse_Value{},
	}, nil
}
