package v1

import (
	"context"
	"errors"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-value/aggregate"
)

type CreatePropertyValueCommandHandler func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, subjectID uuid.UUID, subjectType string, value interface{}) error

func NewCreatePropertyValueCommandHandler(as hwes.AggregateStore) CreatePropertyValueCommandHandler {
	return func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, subjectID uuid.UUID, subjectType string, value interface{}) error {
		a := aggregate.NewPropertyValueAggregate(propertyValueID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return err
		}

		if exists {
			return errors.New("cannot create an already existing aggregate")
		}

		if err := a.CreatePropertyValue(ctx, propertyID, subjectID, subjectType, value); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
