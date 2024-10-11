package v1

import (
	"common"
	"context"
	commonpb "gen/libs/common/v1"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/anypb"
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"hwdb"
	"hwes"
	"hwutil"
	"property-svc/internal/property-value/aggregate"
	"property-svc/repos/property_value_repo"
)

type AttachPropertyValueCommandHandler func(ctx context.Context,
	propertyValueID uuid.UUID,
	propertyID uuid.UUID,
	value interface{},
	subjectID uuid.UUID,
	expConsistency *common.ConsistencyToken,
) (common.ConsistencyToken, proto.Message, error)

func protoMessagesToAnyMessages[T proto.Message](msgs []T) ([]*anypb.Any, error) {
	return hwutil.MapWithErr(msgs, func(m T) (*anypb.Any, error) {
		return anypb.New(m)
	})
}

func propertyValueRowsToSelectOptions(rows []property_value_repo.GetPropertyValueBySubjectIDAndPropertyIDRow) []*pb.SelectValueOption {
	out := make([]*pb.SelectValueOption, 0, len(rows))

	for _, option := range rows {
		if option.SelectOptionID.Valid {
			out = append(out, &pb.SelectValueOption{
				Id:          option.SelectOptionID.UUID.String(),
				Name:        *option.SelectOptionName,        // safe: NOT NULL
				Description: *option.SelectOptionDescription, // safe: NOT NULL
			})
		}
	}

	return out
}

func propertyValueRowsToMessage(rows []property_value_repo.GetPropertyValueBySubjectIDAndPropertyIDRow) (proto.Message, error) {
	// we get most information from the first row, the other rows are only relevant for multi-select options
	firstRow := rows[0] // precondition: rows is not empty

	val := firstRow.PropertyValue
	fieldType := pb.FieldType(firstRow.FieldType)

	switch {
	case val.TextValue != nil:
		return wrapperspb.String(*val.TextValue), nil
	case val.NumberValue != nil:
		return wrapperspb.Double(*val.NumberValue), nil
	case val.BoolValue != nil:
		return wrapperspb.Bool(*val.BoolValue), nil
	case val.DateValue.Valid:
		return &pb.Date{Date: timestamppb.New(val.DateValue.Time)}, nil
	case val.DateTimeValue.Valid:
		return timestamppb.New(val.DateTimeValue.Time), nil
	case firstRow.SelectOptionID.Valid:
		opts := propertyValueRowsToSelectOptions(rows)

		// single-select: only return first (only) option without array-wrapping
		if fieldType == pb.FieldType_FIELD_TYPE_SELECT {
			return opts[0], nil
		}
		// mutli select
		arr, err := protoMessagesToAnyMessages(opts)
		return &commonpb.AnyArray{Elements: arr}, err
	default:
		return nil, nil
	}
}

func NewAttachPropertyValueCommandHandler(as hwes.AggregateStore) AttachPropertyValueCommandHandler {
	return func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, proto.Message, error) {
		propertyValueRepo := property_value_repo.New(hwdb.GetDB())
		var a *aggregate.PropertyValueAggregate

		rows, err := propertyValueRepo.GetPropertyValueBySubjectIDAndPropertyID(ctx, property_value_repo.GetPropertyValueBySubjectIDAndPropertyIDParams{
			PropertyID: propertyID,
			SubjectID:  subjectID,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return 0, nil, err
		}

		if len(rows) != 0 {
			propertyValue := rows[0].PropertyValue
			existingPropertyValueID := propertyValue.ID
			consistency := common.ConsistencyToken(propertyValue.Consistency)

			// conflict detection
			if expConsistency != nil && consistency != *expConsistency {
				conflict, err := propertyValueRowsToMessage(rows)
				return consistency, conflict, err
			}

			if a, err = aggregate.LoadPropertyValueAggregate(ctx, as, existingPropertyValueID); err != nil {
				return 0, nil, err
			}

			// TODO: update value will be triggered, even if the value is not the type the property defines

			if err := a.UpdatePropertyValue(ctx, value); err != nil {
				return 0, nil, err
			}
		} else {
			a = aggregate.NewPropertyValueAggregate(propertyValueID)
			if err := a.CreatePropertyValue(ctx, propertyID, value, subjectID); err != nil {
				return 0, nil, err
			}
		}

		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
