package v1

import (
	"common"
	"context"
	"hwdb"
	"hwes"

	"github.com/google/uuid"

	"property-svc/internal/property-value/aggregate"
	"property-svc/internal/property-value/models"
	"property-svc/repos/property_value_repo"
)

type AttachPropertyValueCommandHandler func(
	ctx context.Context,
	propertyValueID uuid.UUID,
	propertyID uuid.UUID,
	valueChange models.TypedValueChange,
	subjectID uuid.UUID,
	expConsistency *common.ConsistencyToken,
) (common.ConsistencyToken, *common.Conflict[*models.PropertyValue], error)

func NewAttachPropertyValueCommandHandler(as hwes.AggregateStore) AttachPropertyValueCommandHandler {
	return func(
		ctx context.Context,
		propertyValueID uuid.UUID,
		propertyID uuid.UUID,
		valueChange models.TypedValueChange,
		subjectID uuid.UUID,
		expConsistency *common.ConsistencyToken,
	) (common.ConsistencyToken, *common.Conflict[*models.PropertyValue], error) {
		propertyValueRepo := property_value_repo.New(hwdb.GetDB())
		var a *aggregate.PropertyValueAggregate

		query := hwdb.Optional(propertyValueRepo.GetPropertyValueBySubjectIDAndPropertyID)
		existingPropertyValueID, err := query(ctx, property_value_repo.GetPropertyValueBySubjectIDAndPropertyIDParams{
			PropertyID: propertyID,
			SubjectID:  subjectID,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return 0, nil, err
		}

		// if no value exists yet, create one
		if existingPropertyValueID == nil {
			a = aggregate.NewPropertyValueAggregate(propertyValueID)
			if err := a.CreatePropertyValue(ctx, propertyID, valueChange, subjectID); err != nil {
				return 0, nil, err
			}
		} else { // else, update the existing value
			var snapshot *models.PropertyValue
			a, snapshot, err = aggregate.LoadPropertyValueAggregateWithSnapshotAt(
				ctx,
				as,
				*existingPropertyValueID,
				expConsistency,
			)
			if err != nil {
				return 0, nil, err
			}

			// conflict detection
			consistency := common.ConsistencyToken(a.GetVersion())
			if expConsistency != nil && consistency != *expConsistency {
				return consistency, &common.Conflict[*models.PropertyValue]{
					Was: snapshot,
					Is:  a.PropertyValue,
				}, err
			}

			// TODO: update value will be triggered, even if the value is not the type the property defines

			if err := a.UpdatePropertyValue(ctx, valueChange); err != nil {
				return 0, nil, err
			}
		}

		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
