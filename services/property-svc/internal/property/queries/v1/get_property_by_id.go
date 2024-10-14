package v1

import (
	"common"
	"context"
	"fmt"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwdb"
	"property-svc/internal/property/models"
	"property-svc/repos/property_repo"
)

type GetPropertyByIDQueryHandler func(
	ctx context.Context,
	propertyID uuid.UUID,
) (*models.Property, common.ConsistencyToken, error)

func NewGetPropertyByIDQueryHandler() GetPropertyByIDQueryHandler {
	return func(ctx context.Context, propertyID uuid.UUID) (*models.Property, common.ConsistencyToken, error) {
		propertyRepo := property_repo.New(hwdb.GetDB())

		rows, err := propertyRepo.GetPropertiesWithSelectDataAndOptionsBySubjectTypeOrID(
			ctx,
			property_repo.GetPropertiesWithSelectDataAndOptionsBySubjectTypeOrIDParams{
				ID: uuid.NullUUID{UUID: propertyID, Valid: true},
			})
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, 0, err
		}
		if len(rows) == 0 {
			return nil, 0, fmt.Errorf("record with id %s not found.", propertyID.String())
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

		return property, common.ConsistencyToken(rows[0].Property.Consistency), nil
	}
}
