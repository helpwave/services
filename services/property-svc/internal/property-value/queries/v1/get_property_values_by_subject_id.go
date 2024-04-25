package v1

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwdb"
	"hwutil"
	"property-svc/internal/property-value/models"
	"property-svc/repos/property_value_repo"
)

type GetPropertyValuesWithPropertiesBySubjectIQueryHandler func(ctx context.Context, subjectID uuid.UUID) ([]models.PropertyValueWithProperty, error)

func NewGetPropertyValuesWithPropertiesBySubjectIDQueryHandler(propertyValueRepo *property_value_repo.Queries) GetPropertyValuesWithPropertiesBySubjectIQueryHandler {
	return func(ctx context.Context, subjectID uuid.UUID) ([]models.PropertyValueWithProperty, error) {

		propertyValuesWithProperties, err := propertyValueRepo.GetPropertyValuesWithPropertyBySubjectID(ctx, subjectID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		if propertyValuesWithProperties != nil {
			return hwutil.Map(propertyValuesWithProperties, func(row property_value_repo.GetPropertyValuesWithPropertyBySubjectIDRow) models.PropertyValueWithProperty {
				fieldType := (pb.FieldType)(row.Property.FieldType)
				res := models.PropertyValueWithProperty{
					ID:         row.PropertyValue.ID,
					PropertyID: row.Property.ID,
					Name:       row.Property.Name,
					IsArchived: row.Property.IsArchived,
					FieldType:  fieldType,
					// TODO: isSoftRequired
					TextValue:   row.PropertyValue.TextValue,
					BoolValue:   row.PropertyValue.BoolValue,
					NumberValue: row.PropertyValue.NumberValue,
					SelectValue: row.PropertyValue.SelectValue,
				}
				if row.PropertyValue.DateTimeValue.Valid {
					res.DateTimeValue = &row.PropertyValue.DateTimeValue.Time
				}
				if row.PropertyValue.DateValue.Valid {
					res.DateValue = &row.PropertyValue.DateValue.Time
				}
				return res
			}), nil
		}

		return []models.PropertyValueWithProperty{}, nil
	}
}
