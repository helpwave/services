package v1

import (
	"common"
	"context"
	pb "gen/services/property_svc/v1"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"

	"github.com/google/uuid"

	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
	"property-svc/internal/property/perm"
)

type UpdatePropertyCommandHandler func(
	ctx context.Context,
	propertyID uuid.UUID,
	subjectType *pb.SubjectType,
	name *string,
	description *string,
	setID *string,
	allowFreetext *bool,
	upsertOptions *[]models.UpdateSelectOption,
	removeOptions []string,
	isArchived *bool,
) (common.ConsistencyToken, error)

func NewUpdatePropertyCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UpdatePropertyCommandHandler {
	return func(
		ctx context.Context,
		propertyID uuid.UUID,
		subjectType *pb.SubjectType,
		name *string,
		description *string,
		setID *string,
		allowFreetext *bool,
		upsertOptions *[]models.UpdateSelectOption,
		removeOptions []string,
		isArchived *bool,
	) (common.ConsistencyToken, error) {
		user := commonPerm.UserFromCtx(ctx)

		check := hwauthz.NewPermissionCheck(user, perm.PropertyCanUserUpdate, perm.Property(propertyID))
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		a, err := aggregate.LoadPropertyAggregate(ctx, as, propertyID)
		if err != nil {
			return 0, err
		}

		if subjectType != nil {
			if err := a.UpdateSubjectType(ctx, *subjectType); err != nil {
				return 0, err
			}
		}

		if name != nil {
			if err := a.UpdateName(ctx, *name); err != nil {
				return 0, err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return 0, err
			}
		}

		if setID != nil {
			if err := a.UpdateSetID(ctx, *setID); err != nil {
				return 0, err
			}
		}

		if allowFreetext != nil {
			if a.Property.FieldType == pb.FieldType_FIELD_TYPE_SELECT ||
				a.Property.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT {
				if err := a.UpdateAllowFreetext(ctx, *allowFreetext); err != nil {
					return 0, err
				}
			}
		}

		if upsertOptions != nil {
			if a.Property.FieldType == pb.FieldType_FIELD_TYPE_SELECT ||
				a.Property.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT {
				if err := a.FieldTypeDataUpsertOptions(ctx, *upsertOptions); err != nil {
					return 0, err
				}
			}
		}

		if len(removeOptions) > 0 {
			// TODO: check if remove options exist in aggregate SelectOptions?
			if a.Property.FieldType == pb.FieldType_FIELD_TYPE_SELECT ||
				a.Property.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT {
				if err := a.FieldTypeDataRemoveOptions(ctx, removeOptions); err != nil {
					return 0, err
				}
			}
		}

		if isArchived != nil {
			if *isArchived {
				if err := a.ArchiveProperty(ctx); err != nil {
					return 0, err
				}
			} else {
				if err := a.RetrieveProperty(ctx); err != nil {
					return 0, err
				}
			}
		}

		return as.Save(ctx, a)
	}
}
