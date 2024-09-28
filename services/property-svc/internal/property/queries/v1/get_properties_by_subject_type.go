package v1

import (
	"common"
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwdb"
	"hwutil"
	"property-svc/internal/property/models"
	"property-svc/repos/property_repo"
)

type GetPropertiesBySubjectTypeHandler func(ctx context.Context, subjectType pb.SubjectType) ([]*models.PropertyWithConsistency, error)

func NewGetPropertiesBySubjectTypeQueryHandler() GetPropertiesBySubjectTypeHandler {
	return func(ctx context.Context, subjectType pb.SubjectType) ([]*models.PropertyWithConsistency, error) {
		propertyRepo := property_repo.New(hwdb.GetDB())

		rows, err := propertyRepo.GetPropertiesWithSelectDataAndOptionsBySubjectTypeOrID(ctx, property_repo.GetPropertiesWithSelectDataAndOptionsBySubjectTypeOrIDParams{
			SubjectType: hwutil.PtrTo(int32(subjectType)),
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
					Consistency: common.ConsistencyToken(row.Property.Consistency).String(),
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
				property.FieldTypeData.SelectData.SelectOptions = append(property.FieldTypeData.SelectData.SelectOptions, models.SelectOption{
					ID:          row.SelectOptionID.UUID,
					Name:        *row.SelectOptionName, // NOT NULL
					Description: row.SelectOptionDescription,
					IsCustom:    *row.SelectOptionIsCustom, // NOT NULL
				})
			}
		}

		return properties, nil
	}
}
