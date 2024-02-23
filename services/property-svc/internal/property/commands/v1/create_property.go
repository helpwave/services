package v1

import (
	"context"
	"errors"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/aggregate"
)

type CreatePropertyCommandHandler func(ctx context.Context, propertyID uuid.UUID, subjectID uuid.UUID, subjectType string, fieldType pb.FieldType, name string) error

func NewCreatePropertyCommandHandler(as hwes.AggregateStore) CreatePropertyCommandHandler {
	return func(ctx context.Context, propertyID uuid.UUID, subjectID uuid.UUID, subjectType string, fieldType pb.FieldType, name string) error {
		a := aggregate.NewPropertyAggregate(propertyID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return err
		}

		if exists {
			return errors.New("cannot create an already existing aggregate")
		}

		if err := a.CreateProperty(ctx, subjectID, subjectType, fieldType, name); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
