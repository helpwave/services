package api

import (
	"context"
	"fmt"
	commonPb "gen/libs/common/v1"
	pb "gen/services/property_svc/v1"
	"hwes"
	"hwutil"

	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/protobuf/types/known/timestamppb"

	"property-svc/internal/property-value/handlers"
	"property-svc/internal/property-value/models"
	viewModels "property-svc/internal/property-view/models"
)

type MatchersRequest interface {
	GetTaskMatcher() *pb.TaskPropertyMatcher
	GetPatientMatcher() *pb.PatientPropertyMatcher
}

// DeMuxMatchers de-multiplexes the matchers in a grpc request
// - the request must implement the MatchersRequest interface (see GetAttachedPropertyValuesRequest)
// - parsing might fail (i.e., invalid uuids)
// - a request may also carry no matchers at all, in that case (nil, nil) is returned
func DeMuxMatchers(req MatchersRequest) (viewModels.PropertyMatchers, error) {
	var matcher viewModels.PropertyMatchers
	if taskMatcher := req.GetTaskMatcher(); taskMatcher != nil {
		wardID, err := hwutil.ParseNullUUID(taskMatcher.WardId)
		if err != nil {
			return nil, fmt.Errorf("DeMuxMatchers: WardId invalid: %w", err)
		}
		taskID, err := hwutil.ParseNullUUID(taskMatcher.TaskId)
		if err != nil {
			return nil, fmt.Errorf("DeMuxMatchers: TaskId invalid: %w", err)
		}

		matcher = viewModels.TaskPropertyMatchers{
			WardID: wardID,
			TaskID: taskID,
		}
	} else if patientMatcher := req.GetPatientMatcher(); patientMatcher != nil {
		wardID, err := hwutil.ParseNullUUID(patientMatcher.WardId)
		if err != nil {
			return nil, fmt.Errorf("DeMuxMatchers: WardID invalid: %w", err)
		}
		patientID, err := hwutil.ParseNullUUID(patientMatcher.PatientId)
		if err != nil {
			return nil, fmt.Errorf("DeMuxMatchers: PatientID invalid: %w", err)
		}

		matcher = viewModels.PatientPropertyMatchers{
			WardID:    wardID,
			PatientID: patientID,
		}
	}
	return matcher, nil
}

type PropertyValueGrpcService struct {
	pb.UnimplementedPropertyValueServiceServer
	as       hwes.AggregateStore
	handlers *handlers.Handlers
}

func NewPropertyValueService(as hwes.AggregateStore, handlers *handlers.Handlers) *PropertyValueGrpcService {
	return &PropertyValueGrpcService{as: as, handlers: handlers}
}

func (s *PropertyValueGrpcService) AttachPropertyValue(
	ctx context.Context,
	req *pb.AttachPropertyValueRequest,
) (*pb.AttachPropertyValueResponse, error) {
	propertyValueID := uuid.New()

	propertyID := uuid.MustParse(req.GetPropertyId()) // guarded by validate
	subjectID := uuid.MustParse(req.GetSubjectId())   // guarded by validate

	var value interface{}
	switch req.Value.(type) {
	case *pb.AttachPropertyValueRequest_TextValue:
		value = req.GetTextValue()
	case *pb.AttachPropertyValueRequest_NumberValue:
		value = req.GetNumberValue()
	case *pb.AttachPropertyValueRequest_BoolValue:
		value = req.GetBoolValue()
	case *pb.AttachPropertyValueRequest_DateValue:
		value = req.GetDateValue().GetDate()
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

	consistency, err := s.handlers.Commands.V1.AttachPropertyValue(ctx, propertyValueID, propertyID, value, subjectID)
	if err != nil {
		return nil, err
	}

	return &pb.AttachPropertyValueResponse{
		PropertyValueId: propertyValueID.String(),
		Consistency:     consistency.String(),
	}, nil
}

func (s *PropertyValueGrpcService) GetAttachedPropertyValues(
	ctx context.Context,
	req *pb.GetAttachedPropertyValuesRequest,
) (*pb.GetAttachedPropertyValuesResponse, error) {
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
		Values: hwutil.Map(
			propertiesWithValues,
			func(pnv models.PropertyAndValue) *pb.GetAttachedPropertyValuesResponse_Value {
				res := &pb.GetAttachedPropertyValuesResponse_Value{
					PropertyId:          pnv.PropertyID.String(),
					FieldType:           pnv.FieldType,
					Name:                pnv.Name,
					Description:         hwutil.MapIf(pnv.Description != "", pnv.Description, func(s string) string { return s }),
					IsArchived:          pnv.IsArchived,
					Value:               nil,
					PropertyConsistency: pnv.PropertyConsistency,
					ValueConsistency:    pnv.ValueConsistency,
				}
				switch {
				case pnv.Value == nil:
					return res
				case pnv.Value.TextValue != nil:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_TextValue{TextValue: *pnv.Value.TextValue}
				case pnv.Value.BoolValue != nil:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_BoolValue{BoolValue: *pnv.Value.BoolValue}
				case pnv.Value.NumberValue != nil:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_NumberValue{NumberValue: *pnv.Value.NumberValue}
				case len(pnv.Value.MultiSelectValues) != 0 && pnv.FieldType == pb.FieldType_FIELD_TYPE_SELECT:
					v := pnv.Value.MultiSelectValues[0]
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_SelectValue{
						SelectValue: &pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption{
							Id:          v.Id.String(),
							Name:        v.Name,
							Description: v.Description,
						},
					}
				case len(pnv.Value.MultiSelectValues) != 0 && pnv.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_MultiSelectValue_{
						MultiSelectValue: &pb.GetAttachedPropertyValuesResponse_Value_MultiSelectValue{
							SelectValues: hwutil.Map(
								pnv.Value.MultiSelectValues,
								func(o models.SelectValueOption) *pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption {
									return &pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption{
										Id:          o.Id.String(),
										Name:        o.Name,
										Description: o.Description,
									}
								}),
						},
					}
				case pnv.Value.DateTimeValue != nil:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateTimeValue{
						DateTimeValue: timestamppb.New(*pnv.Value.DateTimeValue),
					}
				case pnv.Value.DateValue != nil:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_DateValue{
						DateValue: &commonPb.Date{
							Date: timestamppb.New(*pnv.Value.DateValue),
						},
					}
				default:
					log.Error().Any("pnv", pnv).Msg("pnv.Value is in an invalid state!")
				}
				return res
			}),
	}, nil
}
