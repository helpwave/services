package v1

import (
	"common"
	"context"
	"errors"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
)

type CreatePropertyCommandHandler func(ctx context.Context,
	propertyID uuid.UUID,
	subjectType pb.SubjectType,
	fieldType pb.FieldType,
	name string,
	description *string,
	setID *string,
	fieldTypeData *models.FieldTypeData,
) (version common.ConsistencyToken, err error)

func NewCreatePropertyCommandHandler(as hwes.AggregateStore) CreatePropertyCommandHandler {
	return func(ctx context.Context, propertyID uuid.UUID, subjectType pb.SubjectType, fieldType pb.FieldType, name string, description *string, setID *string, fieldTypeData *models.FieldTypeData) (version common.ConsistencyToken, err error) {
		a := aggregate.NewPropertyAggregate(propertyID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return 0, err
		}

		if exists {
			return 0, errors.New("cannot create an already existing aggregate")
		}

		if err := a.CreateProperty(ctx, subjectType, fieldType, name); err != nil {
			return 0, err
		}

		if fieldTypeData != nil {
			if fieldTypeData.SelectData != nil && (fieldType == pb.FieldType_FIELD_TYPE_SELECT || fieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT) {
				if err := a.CreateFieldTypeData(ctx, *fieldTypeData); err != nil {
					return 0, err
				}
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return 0, err
			}
		}

		if setID != nil {
			if err := a.UpdateSetID(ctx, *setID); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
