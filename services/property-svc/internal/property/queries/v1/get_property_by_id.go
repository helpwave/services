package v1

import (
	"common"
	"context"
	pb "gen/services/property_svc/v1"
	"hwauthz"
	"hwauthz/commonperm"
	"hwdb"
	"hwes/errs"

	"github.com/google/uuid"

	"property-svc/internal/property/models"
	"property-svc/internal/property/perm"
	"property-svc/repos/property-repo"
)

type GetPropertyByIDQueryHandler func(
	ctx context.Context,
	propertyID uuid.UUID,
) (*models.Property, common.ConsistencyToken, error)

func NewGetPropertyByIDQueryHandler(authz hwauthz.AuthZ) GetPropertyByIDQueryHandler {
	return func(ctx context.Context, propertyID uuid.UUID) (*models.Property, common.ConsistencyToken, error) {
		user := commonperm.UserFromCtx(ctx)

		// Verify user is allowed to see this property
		check := hwauthz.NewPermissionCheck(user, perm.PropertyCanUserGet, perm.Property(propertyID))
		if err := authz.Must(ctx, check); err != nil {
			return nil, 0, err
		}

		propertyRepo := propertyrepo.New(hwdb.GetDB())

		rows, err := propertyRepo.GetPropertiesWithSelectDataAndOptionsBySubjectTypeOrID(
			ctx,
			propertyrepo.GetPropertiesWithSelectDataAndOptionsBySubjectTypeOrIDParams{
				ID: uuid.NullUUID{UUID: propertyID, Valid: true},
			})
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, 0, err
		}
		if len(rows) == 0 {
			return nil, 0, errs.NotFoundError(propertyID)
		}

		property := &models.Property{
			ID:            rows[0].Property.ID,
			Name:          rows[0].Property.Name,
			IsArchived:    rows[0].Property.IsArchived,
			Description:   rows[0].Property.Description,
			SetID:         rows[0].Property.SetID,
			FieldType:     pb.FieldType(rows[0].Property.FieldType),
			SubjectType:   pb.SubjectType(rows[0].Property.SubjectType),
			FieldTypeData: models.FieldTypeData{},
		}
		for _, row := range rows {
			if row.SelectDatasID.Valid {
				if property.FieldTypeData.SelectData == nil {
					property.FieldTypeData.SelectData = &models.SelectData{
						AllowFreetext: *row.SelectDatasAllowFreetext, // if selectDatasID exists, allowFreetext also exists
						SelectOptions: make([]models.SelectOption, 0),
					}
				}
			}

			if row.SelectOptionID.Valid && property.FieldTypeData.SelectData != nil {
				property.FieldTypeData.SelectData.SelectOptions = append(
					property.FieldTypeData.SelectData.SelectOptions,
					models.SelectOption{
						ID:          row.SelectOptionID.UUID,
						Name:        *row.SelectOptionName, // NOT NULL
						Description: row.SelectOptionDescription,
						IsCustom:    *row.SelectOptionIsCustom, // NOT NULL
					})
			}
		}

		return property, common.ConsistencyToken(rows[0].Property.Consistency), nil //nolint:gosec
	}
}
