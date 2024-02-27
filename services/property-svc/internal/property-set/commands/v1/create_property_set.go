package v1

import (
	"context"
	"errors"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-set/aggregate"
)

type CreatePropertySetCommandHandler func(ctx context.Context, propertySetID uuid.UUID, name string) error

func NewCreatePropertySetCommandHandler(as hwes.AggregateStore) CreatePropertySetCommandHandler {
	return func(ctx context.Context, propertySetID uuid.UUID, name string) error {
		a := aggregate.NewPropertySetAggregate(propertySetID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return err
		}

		if exists {
			return errors.New("cannot create an already existing aggregate")
		}

		if err := a.CreatePropertySet(ctx, name); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
