package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwdb"
	"hwes"
	"property-svc/internal/property-value/aggregate"
	"property-svc/internal/property-value/models"
	"property-svc/repos/property_value_repo"
)

type AttachPropertyValueCommandHandler func(ctx context.Context,
	propertyValueID uuid.UUID,
	propertyID uuid.UUID,
	value interface{},
	subjectID uuid.UUID,
	expConsistency *common.ConsistencyToken,
) (common.ConsistencyToken, *AttachPropertyValueConflict, error)

type AttachPropertyValueConflict struct {
	Was *models.PropertyValue
	Is  *models.PropertyValue
}

func NewAttachPropertyValueCommandHandler(as hwes.AggregateStore) AttachPropertyValueCommandHandler {
	return func(ctx context.Context, propertyValueID uuid.UUID, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, *AttachPropertyValueConflict, error) {
		propertyValueRepo := property_value_repo.New(hwdb.GetDB())
		var a *aggregate.PropertyValueAggregate

		rows, err := propertyValueRepo.GetPropertyValueBySubjectIDAndPropertyID(ctx, property_value_repo.GetPropertyValueBySubjectIDAndPropertyIDParams{
			PropertyID: propertyID,
			SubjectID:  subjectID,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return 0, nil, err
		}

		if len(rows) != 0 {
			existingPropertyValueID := rows[0].PropertyValue.ID
			var snapshot *models.PropertyValue
			a, snapshot, err = aggregate.LoadPropertyValueAggregateWithSnapshotAt(ctx, as, existingPropertyValueID, expConsistency)
			if err != nil {
				return 0, nil, err
			}

			// conflict detection
			consistency := common.ConsistencyToken(a.GetVersion())
			if expConsistency != nil && consistency != *expConsistency {
				return consistency, &AttachPropertyValueConflict{
					Was: snapshot,
					Is:  a.PropertyValue,
				}, err
			}

			// TODO: update value will be triggered, even if the value is not the type the property defines

			if err := a.UpdatePropertyValue(ctx, value); err != nil {
				return 0, nil, err
			}
		} else {
			a = aggregate.NewPropertyValueAggregate(propertyValueID)
			if err := a.CreatePropertyValue(ctx, propertyID, value, subjectID); err != nil {
				return 0, nil, err
			}
		}

		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
