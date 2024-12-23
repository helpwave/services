package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwdb"
	"hwes"

	"property-svc/internal/property-value/models"

	"property-svc/internal/property/perm"

	"github.com/google/uuid"

	"property-svc/internal/property-value/aggregate"
	"property-svc/repos/property_value_repo"
)

type AttachPropertyValueCommandHandler func(
	ctx context.Context,
	propertyValueID uuid.UUID,
	propertyID uuid.UUID,
	valueChange models.TypedValueChange,
	subjectID uuid.UUID,
) (common.ConsistencyToken, error)

func NewAttachPropertyValueCommandHandler(
	as hwes.AggregateStore, authz hwauthz.AuthZ,
) AttachPropertyValueCommandHandler {
	return func(
		ctx context.Context,
		propertyValueID uuid.UUID,
		propertyID uuid.UUID,
		valueChange models.TypedValueChange,
		subjectID uuid.UUID,
	) (common.ConsistencyToken, error) {
		user := commonPerm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, perm.PropertyCanUserUpdateValue, perm.Property(propertyID))
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		propertyValueRepo := property_value_repo.New(hwdb.GetDB(ctx))
		var a *aggregate.PropertyValueAggregate

		query := hwdb.Optional(propertyValueRepo.GetPropertyValueBySubjectIDAndPropertyID)
		existingPropertyValueID, err := query(ctx, property_value_repo.GetPropertyValueBySubjectIDAndPropertyIDParams{
			PropertyID: propertyID,
			SubjectID:  subjectID,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return 0, err
		}

		// if no value exists yet, create one
		if existingPropertyValueID == nil {
			a = aggregate.NewPropertyValueAggregate(propertyValueID)
			if err := a.CreatePropertyValue(ctx, propertyID, valueChange, subjectID); err != nil {
				return 0, err
			}
		} else {
			if a, err = aggregate.LoadPropertyValueAggregate(ctx, as, *existingPropertyValueID); err != nil {
				return 0, err
			}
			// TODO: update value will be triggered, even if the value is not the type the property defines
			if err := a.UpdatePropertyValue(ctx, valueChange); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
