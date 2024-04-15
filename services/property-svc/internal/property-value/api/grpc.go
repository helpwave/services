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
	v1queries "property-svc/internal/property-value/queries/v1"
	"property-svc/repos/property_repo"
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
	var alreadyExists bool
	propertyValueRepo := property_value_repo.New(hwdb.GetDB())
	propertyValueID := uuid.New()

	propertyID, err := uuid.Parse(req.GetPropertyId())
	if err != nil {
		return nil, err
	}

	subjectID, err := uuid.Parse(req.GetSubjectId())
	if err != nil {
		return nil, err
	}

	existingPropertyValueID, err := hwdb.Optional(propertyValueRepo.GetPropertyValueBySubjectIDAndPropertyID)(ctx, property_value_repo.GetPropertyValueBySubjectIDAndPropertyIDParams{
		PropertyID: propertyID,
		SubjectID:  subjectID,
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return nil, err
	}
	if existingPropertyValueID != nil {
		alreadyExists = true
		propertyValueID = *existingPropertyValueID
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

	if err := commandsV1.NewAttachPropertyValueCommandHandler(s.as)(ctx, propertyValueID, propertyID, value, subjectID, alreadyExists); err != nil {
		return nil, err
	}

	return &pb.AttachPropertyValueResponse{
		PropertyValueId: propertyValueID.String(),
	}, nil
}

func (s *PropertyValueGrpcService) GetAttachedPropertyValues(ctx context.Context, req *pb.GetAttachedPropertyValuesRequest) (*pb.GetAttachedPropertyValuesResponse, error) {
	db := hwdb.GetDB()
	propertyValueRepo := property_value_repo.New(db)
	propertyRepo := property_repo.New(db)

	subjectID, err := uuid.Parse(req.GetSubjectId())
	if err != nil {
		return nil, err
	}

	propertyValues, err := v1queries.NewGetPropertyValuesBySubjectIDQueryHandler(propertyValueRepo)(ctx, subjectID)
	if err != nil {
		return nil, err
	}

	propertyValuesRes, err := hwutil.MapWithErr(propertyValues, func(propertyValue property_value_repo.PropertyValue) (*pb.GetAttachedPropertyValuesResponse_Value, error) {
		property, err := propertyRepo.GetPropertyById(ctx, propertyValue.PropertyID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}
		fieldType := (pb.FieldType)(property.FieldType)

		res := &pb.GetAttachedPropertyValuesResponse_Value{
			PropertyId: propertyValue.PropertyID.String(),
			Name:       property.Name,
			IsArchived: property.IsArchived,
			FieldType:  fieldType,
			// TODO: IsSoftRequired
		}

		switch {
		case propertyValue.TextValue != nil:
			res.Value = &pb.GetAttachedPropertyValuesResponse_Value_TextValue{TextValue: *propertyValue.TextValue}
		case propertyValue.BoolValue != nil:
			res.Value = &pb.GetAttachedPropertyValuesResponse_Value_BoolValue{BoolValue: *propertyValue.BoolValue}
		case propertyValue.NumberValue != nil:
			res.Value = &pb.GetAttachedPropertyValuesResponse_Value_NumberValue{NumberValue: *propertyValue.NumberValue}
		case propertyValue.SelectValue.Valid:
			res.Value = &pb.GetAttachedPropertyValuesResponse_Value_SelectValue{SelectValue: propertyValue.SelectValue.UUID.String()}
		case propertyValue.DateTimeValue.Valid:
			res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateTimeValue{DateTimeValue: timestamppb.New(propertyValue.DateTimeValue.Time)}
		case propertyValue.DateValue.Valid:
			res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateValue{
				DateValue: &pb.Date{
					Day:   int32(propertyValue.DateValue.Time.Day()),
					Month: int32(propertyValue.DateValue.Time.Month()),
					Year:  int32(propertyValue.DateValue.Time.Year()),
				},
			}
		}

		return res, nil
	})
	if err != nil {
		return nil, err
	}

	return &pb.GetAttachedPropertyValuesResponse{
		Values: propertyValuesRes,
	}, nil

}
