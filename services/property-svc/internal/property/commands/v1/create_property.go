package v1

import (
	"context"
	"errors"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
	"property-svc/internal/property/perm"
)

type CreatePropertyCommandHandler func(ctx context.Context, propertyID uuid.UUID, subjectType pb.SubjectType, fieldType pb.FieldType, name string, description *string, setID *string, fieldTypeData *models.FieldTypeData) error

func NewCreatePropertyCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CreatePropertyCommandHandler {
	return func(ctx context.Context, propertyID uuid.UUID, subjectType pb.SubjectType, fieldType pb.FieldType, name string, description *string, setID *string, fieldTypeData *models.FieldTypeData) error {
		user, err := perm.UserFromCtx(ctx)
		if err != nil {
			return err
		}
		organization, err := perm.OrganizationFromCtx(ctx)
		if err != nil {
			return err
		}

		check := hwauthz.NewPermissionCheck(user, perm.OrganizationCanUserCreateProperty, organization)
		if err = authz.Must(ctx, check); err != nil {
			return err
		}

		a := aggregate.NewPropertyAggregate(propertyID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return err
		}

		if exists {
			return errors.New("cannot create an already existing aggregate")
		}

		if err := a.CreateProperty(ctx, subjectType, fieldType, name); err != nil {
			return err
		}

		if fieldTypeData != nil {
			if fieldTypeData.SelectData != nil && fieldType == pb.FieldType_FIELD_TYPE_SELECT {
				if err := a.CreateFieldTypeData(ctx, *fieldTypeData); err != nil {
					return err
				}
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return err
			}
		}

		if setID != nil {
			if err := a.UpdateSetID(ctx, *setID); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
