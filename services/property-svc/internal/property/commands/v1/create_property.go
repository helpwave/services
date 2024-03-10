package v1

import (
	"context"
	"errors"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
)

type CreatePropertyCommandHandler func(ctx context.Context, propertyID uuid.UUID, subjectType pb.SubjectType, fieldType pb.FieldType, name string, description *string, setID uuid.NullUUID, fieldTypeData models.FieldTypeData) error

func NewCreatePropertyCommandHandler(as hwes.AggregateStore) CreatePropertyCommandHandler {
	return func(ctx context.Context, propertyID uuid.UUID, subjectType pb.SubjectType, fieldType pb.FieldType, name string, description *string, setID uuid.NullUUID, fieldTypeData models.FieldTypeData) error {
		a := aggregate.NewPropertyAggregate(propertyID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return err
		}

		if exists {
			return errors.New("cannot create an already existing aggregate")
		}

		if err := a.CreateProperty(ctx, subjectType, fieldType, name, fieldTypeData); err != nil {
			return err
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return err
			}
		}

		if setID.Valid {
			if err := a.UpdateSetID(ctx, setID); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
