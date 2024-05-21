package v1

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
	"hwdb"
	"hwutil"
	"property-svc/internal/property-value/models"
	viewModels "property-svc/internal/property-view/models"
	viewQueries "property-svc/internal/property-view/queries/v1"
	"property-svc/repos/property_value_repo"
	"time"
)

type GetRelevantPropertyValuesQueryHandler func(ctx context.Context, subjectID uuid.UUID, matcher viewModels.PropertyMatchers) ([]models.PropertyAndValue, error)

func NewGetRelevantPropertyValuesQueryHandler(propertyValueRepo *property_value_repo.Queries) GetRelevantPropertyValuesQueryHandler {
	return func(ctx context.Context, subjectID uuid.UUID, matcher viewModels.PropertyMatchers) ([]models.PropertyAndValue, error) {

		alwaysInclude, err := viewQueries.GetAlwaysIncludePropertiesByMatcher(ctx, matcher)
		if err != nil {
			return nil, err
		}

		propertyValuesWithProperties, err := propertyValueRepo.GetRelevantPropertyViews(ctx, property_value_repo.GetRelevantPropertyViewsParams{
			SubjectID:     subjectID,
			AlwaysInclude: alwaysInclude,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		properties := make(map[uuid.UUID]*models.PropertyAndValue)

		for _, row := range propertyValuesWithProperties {

			if _, ok := properties[row.Property.ID]; !ok {
				properties[row.Property.ID] = &models.PropertyAndValue{
					PropertyID:  row.Property.ID,
					SubjectType: pb.SubjectType(row.Property.SubjectType),
					FieldType:   pb.FieldType(row.Property.FieldType),
					Name:        row.Property.Name,
					Description: row.Property.Description,
					IsArchived:  row.Property.IsArchived,
					SetID:       row.Property.SetID,
					Value:       nil,
				}
			}

			if row.TextValue == nil && row.BoolValue == nil && row.NumberValue == nil && !row.SelectValue.Valid && !row.DateTimeValue.Valid && !row.DateValue.Valid {
				continue
			}
			properties[row.Property.ID].Value = &models.TypedValue{
				TextValue:   row.TextValue,
				BoolValue:   row.BoolValue,
				NumberValue: row.NumberValue,
				SelectValue: row.SelectValue,
				DateTimeValue: hwutil.MapIf(row.DateTimeValue.Valid, row.DateTimeValue, func(dtV pgtype.Timestamp) time.Time {
					return dtV.Time
				}),
				DateValue: hwutil.MapIf(row.DateValue.Valid, row.DateValue, func(dV pgtype.Date) time.Time {
					return dV.Time
				}),
			}
		}
		return hwutil.MapValuesPtrToSlice(properties), nil
	}
}
