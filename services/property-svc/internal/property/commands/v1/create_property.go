package v1

import (
	"common"
	"context"
	pb "gen/services/property_svc/v1"
	"hwauthz"
	"hwauthz/commonperm"
	"hwes"
	"hwes/errs"

	"github.com/google/uuid"

	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
	"property-svc/internal/property/perm"
)

type CreatePropertyCommandHandler func(ctx context.Context,
	propertyID uuid.UUID,
	subjectType pb.SubjectType,
	fieldType pb.FieldType,
	name string,
	description *string,
	setID *string,
	fieldTypeData *models.FieldTypeData,
) (version common.ConsistencyToken, err error)

func NewCreatePropertyCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CreatePropertyCommandHandler {
	return func(ctx context.Context,
		propertyID uuid.UUID,
		subjectType pb.SubjectType,
		fieldType pb.FieldType,
		name string,
		description *string,
		setID *string,
		fieldTypeData *models.FieldTypeData,
	) (version common.ConsistencyToken, err error) {
		user := commonperm.UserFromCtx(ctx)
		organization := commonperm.OrganizationFromCtx(ctx)

		check := hwauthz.NewPermissionCheck(user, perm.OrganizationCanUserCreateProperty, organization)
		if err = authz.Must(ctx, check); err != nil {
			return 0, err
		}

		a := aggregate.NewPropertyAggregate(propertyID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return 0, err
		}

		if exists {
			return 0, errs.ErrAlreadyExists
		}

		if err := a.CreateProperty(ctx, subjectType, fieldType, name); err != nil {
			return 0, err
		}

		if fieldTypeData != nil {
			if fieldTypeData.SelectData != nil &&
				(fieldType == pb.FieldType_FIELD_TYPE_SELECT || fieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT) {
				if err := a.CreateFieldTypeData(ctx, *fieldTypeData); err != nil {
					return 0, err
				}
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

		return as.Save(ctx, a)
	}
}
