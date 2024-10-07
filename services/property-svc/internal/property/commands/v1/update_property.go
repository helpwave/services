package v1

import (
	"common"
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
)

type UpdatePropertyConflict struct {
	Consistency common.ConsistencyToken
	Was         *models.Property
	Is          *models.Property
}

type UpdatePropertyCommandHandler func(ctx context.Context, propertyID uuid.UUID, subjectType *pb.SubjectType, name *string, description *string, setID *string, allowFreetext *bool, upsertOptions *[]models.UpdateSelectOption, removeOptions []string, isArchived *bool, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, *UpdatePropertyConflict, error)

func NewUpdatePropertyCommandHandler(as hwes.AggregateStore) UpdatePropertyCommandHandler {
	return func(ctx context.Context, propertyID uuid.UUID, subjectType *pb.SubjectType, name *string, description *string, setID *string, allowFreetext *bool, upsertOptions *[]models.UpdateSelectOption, removeOptions []string, isArchived *bool, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, *UpdatePropertyConflict, error) {
		a, oldState, err := aggregate.LoadPropertyAggregateWithSnapshotAt(ctx, as, propertyID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		// update happened since?
		newToken := common.ConsistencyToken(a.GetVersion())
		if expConsistency != nil && *expConsistency != newToken {
			return 0, &UpdatePropertyConflict{
				Consistency: newToken,
				Was:         oldState,
				Is:          a.Property,
			}, nil
		}

		if subjectType != nil {
			if err := a.UpdateSubjectType(ctx, *subjectType); err != nil {
				return 0, nil, err
			}
		}

		if name != nil {
			if err := a.UpdateName(ctx, *name); err != nil {
				return 0, nil, err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return 0, nil, err
			}
		}

		if setID != nil {
			if err := a.UpdateSetID(ctx, *setID); err != nil {
				return 0, nil, err
			}
		}

		if allowFreetext != nil {
			if a.Property.FieldType == pb.FieldType_FIELD_TYPE_SELECT || a.Property.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT {
				if err := a.UpdateAllowFreetext(ctx, *allowFreetext); err != nil {
					return 0, nil, err
				}
			}
		}

		if upsertOptions != nil {
			if a.Property.FieldType == pb.FieldType_FIELD_TYPE_SELECT || a.Property.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT {
				if err := a.FieldTypeDataUpsertOptions(ctx, *upsertOptions); err != nil {
					return 0, nil, err
				}
			}

		}

		if len(removeOptions) > 0 {
			// TODO: check if remove options exist in aggregate SelectOptions?
			if a.Property.FieldType == pb.FieldType_FIELD_TYPE_SELECT || a.Property.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT {
				if err := a.FieldTypeDataRemoveOptions(ctx, removeOptions); err != nil {
					return 0, nil, err
				}
			}
		}

		if isArchived != nil {
			if *isArchived {
				if err := a.ArchiveProperty(ctx); err != nil {
					return 0, nil, err
				}
			} else {
				if err := a.RetrieveProperty(ctx); err != nil {
					return 0, nil, err
				}
			}
		}

		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
