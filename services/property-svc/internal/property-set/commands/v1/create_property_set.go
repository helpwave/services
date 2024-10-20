package v1

import (
	"common"
	"context"
	"errors"
	"fmt"
	"hwes"

	"github.com/google/uuid"

	"property-svc/internal/property-set/aggregate"
)

var ErrAlreadyExists = errors.New("cannot create an already existing aggregate")

type CreatePropertySetCommandHandler func(
	ctx context.Context,
	propertySetID uuid.UUID,
	name string,
) (common.ConsistencyToken, error)

func NewCreatePropertySetCommandHandler(as hwes.AggregateStore) CreatePropertySetCommandHandler {
	return func(ctx context.Context, propertySetID uuid.UUID, name string) (common.ConsistencyToken, error) {
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
