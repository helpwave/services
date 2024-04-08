package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-value/aggregate"
)

type AttachPropertyValueCommandHandler func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, value interface{}) error

func NewAttachPropertyValueCommandHandler(as hwes.AggregateStore) AttachPropertyValueCommandHandler {
	return func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, value interface{}) error {
		a := aggregate.NewPropertyValueAggregate(propertyValueID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return err
		}

		if exists {
			if err := a.UpdatePropertyValue(ctx, &value); err != nil {
				return err
			}
		} else {
			if err := a.CreatePropertyValue(ctx, propertyID, value); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
