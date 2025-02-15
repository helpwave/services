package api

import (
	"context"
	"fmt"
	pb "gen/services/property_svc/v1"
	"hwes"
	"hwutil"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

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

func toTypedValueChange(value pb.IsAttachPropertyValueRequest_Value) (typedValue *models.TypedValueChange) {
	if value == nil {
		return &models.TypedValueChange{
			ValueRemoved: true,
		}
	}
	switch value := value.(type) {
	case *pb.AttachPropertyValueRequest_TextValue:
		return &models.TypedValueChange{
			TextValue: &value.TextValue,
		}
	case *pb.AttachPropertyValueRequest_NumberValue:
		return &models.TypedValueChange{
			NumberValue: &value.NumberValue,
		}
	case *pb.AttachPropertyValueRequest_BoolValue:
		return &models.TypedValueChange{
			BoolValue: &value.BoolValue,
		}
	case *pb.AttachPropertyValueRequest_DateValue:
		return &models.TypedValueChange{
			DateValue: hwutil.PtrTo(value.DateValue.Date.AsTime()),
		}
	case *pb.AttachPropertyValueRequest_DateTimeValue:
		return &models.TypedValueChange{
			DateTimeValue: hwutil.PtrTo(value.DateTimeValue.AsTime()),
		}
	case *pb.AttachPropertyValueRequest_SelectValue:
		return &models.TypedValueChange{
			SingleSelectValue: &value.SelectValue,
		}
	case *pb.AttachPropertyValueRequest_MultiSelectValue_:
		msv := value.MultiSelectValue
		return &models.TypedValueChange{
			MultiSelectValues: &models.MultiSelectChange{
				SelectValues:       msv.GetSelectValues(),
				RemoveSelectValues: msv.RemoveSelectValues,
			},
		}
	default:
		return nil
	}
}

func (s *PropertyValueGrpcService) AttachPropertyValue(
	ctx context.Context,
	req *pb.AttachPropertyValueRequest,
) (*pb.AttachPropertyValueResponse, error) {
	log := zlog.Ctx(ctx)

	propertyValueID := uuid.New()

	propertyID := uuid.MustParse(req.GetPropertyId()) // guarded by validate
	subjectID := uuid.MustParse(req.GetSubjectId())   // guarded by validate

	valueChange := toTypedValueChange(req.GetValue())
	if valueChange == nil {
		log.Error().Type("valueType", req.Value).Msg("req.ValueChange type is not known")
		return nil, status.Error(codes.Internal, "failed to parse value")
	}

	consistency, err := s.handlers.Commands.V1.AttachPropertyValue(
		ctx, propertyValueID, propertyID, *valueChange, subjectID)
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
						SelectValue: &pb.SelectValueOption{
							Id:          v.ID.String(),
							Name:        v.Name,
							Description: v.Description,
						},
					}
				case len(pnv.Value.MultiSelectValues) != 0 && pnv.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT:
					res.Value = &pb.GetAttachedPropertyValuesResponse_Value_MultiSelectValue{
						MultiSelectValue: &pb.MultiSelectValue{
							SelectValues: hwutil.Map(
								pnv.Value.MultiSelectValues,
								func(o models.SelectValueOption) *pb.SelectValueOption {
									return &pb.SelectValueOption{
										Id:          o.ID.String(),
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
						DateValue: &pb.Date{
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
