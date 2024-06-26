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
		propertyValueRepo := property_value_repo.New(hwdb.GetDB())
		var a *aggregate.PropertyValueAggregate

		// TODO: Do not use the data from the projection here, could be outdated
		existingPropertyValueID, err := hwdb.Optional(propertyValueRepo.GetPropertyValueBySubjectIDAndPropertyID)(ctx, property_value_repo.GetPropertyValueBySubjectIDAndPropertyIDParams{
			PropertyID: propertyID,
			SubjectID:  subjectID,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return err
		}

		if existingPropertyValueID != nil {
			if a, err = aggregate.LoadPropertyValueAggregate(ctx, as, *existingPropertyValueID); err != nil {
				return err
			}
			// TODO: update value will be triggered, even if the value is not the type the property defines
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
