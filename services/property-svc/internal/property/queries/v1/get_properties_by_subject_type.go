package v1

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwdb"
	"property-svc/internal/property/models"
	"property-svc/repos/property_repo"
)

type GetPropertiesBySubjectTypeHandler func(ctx context.Context, subjectType pb.SubjectType) ([]*models.Property, error)

func NewGetPropertiesBySubjectTypeQueryHandler(propertyRepo *property_repo.Queries) GetPropertiesBySubjectTypeHandler {
	return func(ctx context.Context, subjectType pb.SubjectType) ([]*models.Property, error) {
		rows, err := propertyRepo.GetPropertiesWithSelectDataAndOptionsBySubjectType(ctx, int32(subjectType))
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		properties := make([]*models.Property, 0)
		propertyMap := make(map[uuid.UUID]*models.Property)

		for _, row := range rows {
			var property *models.Property

			if prop, exists := propertyMap[row.Property.ID]; exists {
				property = prop
			} else {
				property = &models.Property{
					ID:            row.Property.ID,
					Name:          row.Property.Name,
					IsArchived:    row.Property.IsArchived,
					Description:   row.Property.Description,
					SetID:         row.Property.SetID,
					FieldTypeData: models.FieldTypeData{},
					FieldType:     pb.FieldType(row.Property.FieldType),
					SubjectType:   pb.SubjectType(row.Property.SubjectType),
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
