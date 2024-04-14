package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-value/aggregate"
)

type AttachPropertyValueCommandHandler func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID, alreadyExists bool) error

func NewAttachPropertyValueCommandHandler(as hwes.AggregateStore) AttachPropertyValueCommandHandler {
	return func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID, alreadyExists bool) error {
		var a *aggregate.PropertyValueAggregate
		var err error

		if alreadyExists {
			if a, err = aggregate.LoadPropertyValueAggregate(ctx, as, propertyValueID); err != nil {
				return err
			}
			// TBD: update value will be triggered, even if the value is not the type the property defines
			if err := a.UpdatePropertyValue(ctx, value); err != nil {
				return err
			}
		} else {
			a = aggregate.NewPropertyValueAggregate(propertyValueID)
			if err := a.CreatePropertyValue(ctx, propertyID, value, subjectID); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
