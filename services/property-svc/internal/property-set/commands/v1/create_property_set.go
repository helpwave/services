package v1

import (
	"context"
	"errors"
	"fmt"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-set/aggregate"
)

var ErrAlreadyExists = errors.New("cannot create an already existing aggregate")

type CreatePropertySetCommandHandler func(ctx context.Context, propertySetID uuid.UUID, name string) (uint64, error)

func NewCreatePropertySetCommandHandler(as hwes.AggregateStore) CreatePropertySetCommandHandler {
	return func(ctx context.Context, propertySetID uuid.UUID, name string) (uint64, error) {
		a := aggregate.NewPropertySetAggregate(propertySetID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return 0, fmt.Errorf("CreatePropertySetCommandHandler: Exists failed: %w", err)
		}

		if exists {
			return 0, ErrAlreadyExists
		}

		if err := a.CreatePropertySet(ctx, name); err != nil {
			return 0, fmt.Errorf("CreatePropertySetCommandHandler: %w", err)
		}

		return as.Save(ctx, a)
	}
}
