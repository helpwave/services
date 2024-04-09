package v1

import (
	"context"
	"github.com/google/uuid"
	"hwdb"
	"hwes"
	"property-svc/internal/property-value/aggregate"
	"property-svc/repos/property_value_repo"
)

type AttachPropertyValueCommandHandler func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID) error

func NewAttachPropertyValueCommandHandler(as hwes.AggregateStore) AttachPropertyValueCommandHandler {
	return func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID) error {
		a := aggregate.NewPropertyValueAggregate(propertyValueID)
		propertyValueRepo := property_value_repo.New(hwdb.GetDB())

		exists, err := propertyValueRepo.ExistsPropertyValue(ctx, property_value_repo.ExistsPropertyValueParams{PropertyID: propertyID, SubjectID: subjectID})
		if err := hwdb.Error(ctx, err); err != nil {
			return err
		}

		if exists {
			if err := a.UpdatePropertyValue(ctx, &value); err != nil {
				return err
			}
		} else {
			if err := a.CreatePropertyValue(ctx, propertyID, value, subjectID); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
