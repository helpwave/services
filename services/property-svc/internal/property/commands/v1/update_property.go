package v1

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
)

type UpdatePropertyCommandHandler func(ctx context.Context, propertyID uuid.UUID, subjectType *pb.SubjectType, fieldType *pb.FieldType, name *string, description *string, setID *uuid.UUID, fieldTypeData *models.FieldTypeData) error

func NewUpdatePropertyCommandHandler(as hwes.AggregateStore) UpdatePropertyCommandHandler {
	return func(ctx context.Context, propertyID uuid.UUID, subjectType *pb.SubjectType, fieldType *pb.FieldType, name *string, description *string, setID *uuid.UUID, fieldTypeData *models.FieldTypeData) error {
		a, err := aggregate.LoadPropertyAggregate(ctx, as, propertyID)
		if err != nil {
			return err
		}

		if subjectType != nil {
			if err := a.UpdateSubjectType(ctx, *subjectType); err != nil {
				return err
			}
		}

		if fieldType != nil {
			if err := a.UpdateFieldType(ctx, *fieldType); err != nil {
				return err
			}
		}

		if name != nil {
			if err := a.UpdateName(ctx, *name); err != nil {
				return err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return err
			}
		}

		if setID != nil {
			if err := a.UpdateSetID(ctx, *setID); err != nil {
				return err
			}
		}

		if fieldTypeData != nil {
			if err := a.UpdateFieldTypeData(ctx, *fieldTypeData); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
