package api

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/protobuf/types/known/timestamppb"
	"hwes"
	"hwutil"
	"property-svc/internal/property-value/handlers"
	"property-svc/internal/property-value/models"
	viewModels "property-svc/internal/property-view/models"
)

type MatchersRequest interface {
	GetTaskMatcher() *pb.TaskPropertyMatcher
}

// DeMuxMatchers de-multiplexes the matchers in a grpc request
// - the request must implement the MatchersRequest interface (see GetAttachedPropertyValuesRequest)
// - parsing might fail (i.e., invalid uuids)
// - a request may also carry no matchers at all, in that case (nil, nil) is returned
func DeMuxMatchers(req MatchersRequest) (viewModels.PropertyMatchers, error) {
	var matcher viewModels.PropertyMatchers = nil
	if taskMatcher := req.GetTaskMatcher(); taskMatcher != nil {
		wardID, err := hwutil.ParseNullUUID(taskMatcher.WardId)
		if err != nil {
			return nil, err
		}
		taskID, err := hwutil.ParseNullUUID(taskMatcher.TaskId)
		if err != nil {
			return nil, err
		}

		matcher = viewModels.TaskPropertyMatchers{
			WardID: wardID,
			TaskID: taskID,
		}
	}
	return matcher, nil
}

type PropertyValueGrpcService struct {
	pb.UnimplementedPropertyValueServiceServer
	as       hwes.AggregateStore
	handlers *handlers.Handlers
}

func NewPropertyValueService(aggregateStore hwes.AggregateStore, handlers *handlers.Handlers) *PropertyValueGrpcService {
	return &PropertyValueGrpcService{as: aggregateStore, handlers: handlers}
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
		value = req.GetDateValue().Date
	case *pb.AttachPropertyValueRequest_DateTimeValue:
		value = req.GetDateTimeValue()
	case *pb.AttachPropertyValueRequest_SelectValue:
		value = req.GetSelectValue()
	case *pb.AttachPropertyValueRequest_MultiSelectValue_:
		msv := req.GetMultiSelectValue()
		value = models.MultiSelectChange{
			SelectValues:       msv.SelectValues,
			RemoveSelectValues: msv.RemoveSelectValues,
		}
	default:
		value = nil
	}

	if err := s.handlers.Commands.V1.AttachPropertyValue(ctx, propertyValueID, propertyID, value, subjectID); err != nil {
		return nil, err
	}

	return &pb.AttachPropertyValueResponse{
		PropertyValueId: propertyValueID.String(),
	}, nil
}

func (s *PropertyValueGrpcService) GetAttachedPropertyValues(ctx context.Context, req *pb.GetAttachedPropertyValuesRequest) (*pb.GetAttachedPropertyValuesResponse, error) {
	log := zlog.Ctx(ctx)

	// de-mux matchers
	matcher, err := DeMuxMatchers(req)
	if err != nil {
		return nil, err
	}

	propertiesWithValues := make([]models.PropertyAndValue, 0)

	if matcher != nil {
		propertiesWithValues, err = s.handlers.Queries.V1.GetRelevantPropertyValues(ctx, matcher)
		if err != nil {
			return nil, err
		}
	} else {
		log.Warn().Msg("Request is missing a matcher, can not determine relevant properties")
	}

	return &pb.GetAttachedPropertyValuesResponse{
		Values: hwutil.Map(propertiesWithValues, func(pv models.PropertyAndValue) *pb.GetAttachedPropertyValuesResponse_Value {
			res := &pb.GetAttachedPropertyValuesResponse_Value{
				PropertyId:  pv.PropertyID.String(),
				FieldType:   pv.FieldType,
				Name:        pv.Name,
				Description: hwutil.MapIf(pv.Description != "", pv.Description, func(s string) string { return s }),
				IsArchived:  pv.IsArchived,
				Value:       nil,
			}
			switch {
			case pv.Value == nil:
				return res
			case pv.Value.TextValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_TextValue{TextValue: *pv.Value.TextValue}
			case pv.Value.BoolValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_BoolValue{BoolValue: *pv.Value.BoolValue}
			case pv.Value.NumberValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_NumberValue{NumberValue: *pv.Value.NumberValue}
			case len(pv.Value.MultiSelectValues) != 0 && pv.FieldType == pb.FieldType_FIELD_TYPE_SELECT:
				v := pv.Value.MultiSelectValues[0]
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_SelectValue{
					SelectValue: &pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption{
						Id:          v.Id.String(),
						Name:        v.Name,
						Description: v.Description,
					},
				}
			case len(pv.Value.MultiSelectValues) != 0 && pv.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_MultiSelectValue_{
					MultiSelectValue: &pb.GetAttachedPropertyValuesResponse_Value_MultiSelectValue{
						SelectValues: hwutil.Map(pv.Value.MultiSelectValues, func(o models.SelectValueOption) *pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption {
							return &pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption{
								Id:          o.Id.String(),
								Name:        o.Name,
								Description: o.Description,
							}
						}),
					},
				}
			case pv.Value.DateTimeValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateTimeValue{DateTimeValue: timestamppb.New(*pv.Value.DateTimeValue)}
			case pv.Value.DateValue != nil:
				res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateValue{
					DateValue: &pb.Date{
						Date: timestamppb.New(*pv.Value.DateValue),
					},
				}
			default:
				log.Error().Any("pv", pv).Msg("pv.Value is in an invalid state!")
			}
			return res
		}),
	}, nil
}
