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
				fieldType := (pb.FieldType)(*row.FieldType) // safe, because it's NOT NULL
				res := models.PropertyValueWithProperty{
					ID:         row.PropertyValueID,
					PropertyID: row.PropertyID.UUID,
					Name:       *row.PropertyName,       // NOT NULL
					IsArchived: *row.PropertyIsArchived, // NOT NULL
					FieldType:  fieldType,
					// TODO: isSoftRequired
					TextValue:   row.TextValue,
					BoolValue:   row.BoolValue,
					NumberValue: row.NumberValue,
					SelectValue: row.SelectValue,
				}
				if row.DateTimeValue.Valid {
					res.DateTimeValue = &row.DateTimeValue.Time
				}
				if row.DateValue.Valid {
					res.DateValue = &row.DateValue.Time
				}
				return res
			}), nil
		}

		return []models.PropertyValueWithProperty{}, nil
	}
}
