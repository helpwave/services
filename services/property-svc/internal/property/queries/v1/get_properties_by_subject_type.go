package v1

import (
	"common"
	"context"
	pb "gen/services/property_svc/v1"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwdb"
	"hwutil"

	"github.com/google/uuid"

	"property-svc/internal/property/models"
	"property-svc/internal/property/perm"
	"property-svc/repos/property_repo"
)

type GetPropertiesQueryHandler func(
	ctx context.Context,
	subjectType *pb.SubjectType,
) ([]*models.PropertyWithConsistency, error)

func NewGetPropertiesQueryHandler(authz hwauthz.AuthZ) GetPropertiesQueryHandler {
	return func(ctx context.Context, subjectType *pb.SubjectType) ([]*models.PropertyWithConsistency, error) {
		user := commonPerm.UserFromCtx(ctx)

		propertyRepo := property_repo.New(hwdb.MustGetDB(ctx))

		var subjectTypeID *int32
		if subjectType != nil {
			subjectTypeID = hwutil.PtrTo(int32(*subjectType))
		}

		rows, err := propertyRepo.GetPropertiesWithSelectDataAndOptionsBySubjectTypeOrID(
			ctx,
			property_repo.GetPropertiesWithSelectDataAndOptionsBySubjectTypeOrIDParams{
				SubjectType: subjectTypeID,
			})
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		properties := make([]*models.PropertyWithConsistency, 0)
		propertyMap := make(map[uuid.UUID]*models.PropertyWithConsistency)

		for _, row := range rows {
			var property *models.PropertyWithConsistency

			if prop, exists := propertyMap[row.Property.ID]; exists {
				property = prop
			} else {
				property = &models.PropertyWithConsistency{
					Property: models.Property{
						ID:            row.Property.ID,
						Name:          row.Property.Name,
						IsArchived:    row.Property.IsArchived,
						Description:   row.Property.Description,
						SetID:         row.Property.SetID,
						FieldTypeData: models.FieldTypeData{},
						FieldType:     pb.FieldType(row.Property.FieldType),
						SubjectType:   pb.SubjectType(row.Property.SubjectType),
					},
					Consistency: common.ConsistencyToken(row.Property.Consistency).String(), //nolint:gosec
				}
				propertyMap[row.Property.ID] = property
				properties = append(properties, property)
			}

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
					},
				)
			}
		}

		checks := hwutil.Map(properties, func(p *models.PropertyWithConsistency) hwauthz.PermissionCheck {
			return hwauthz.NewPermissionCheck(user, perm.PropertyCanUserGet, perm.Property(p.ID))
		})

		canGet, err := authz.BulkCheck(ctx, checks)
		if err != nil {
			return nil, err
		}

		properties = hwutil.Filter(properties, func(i int, _ *models.PropertyWithConsistency) bool {
			return canGet[i]
		})

		return properties, nil
	}
}
