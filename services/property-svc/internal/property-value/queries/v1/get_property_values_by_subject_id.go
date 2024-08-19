package v1

import (
	"context"
	"fmt"
	pb "gen/services/property_svc/v1"
	"hwdb"
	"hwes"
	"hwutil"
	"property-svc/internal/property-value/models"
	vh "property-svc/internal/property-view/handlers"
	viewModels "property-svc/internal/property-view/models"
	"property-svc/repos/property_value_repo"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
)

type GetRelevantPropertyValuesQueryHandler func(ctx context.Context, matcher viewModels.PropertyMatchers) ([]models.PropertyAndValue, error)

func NewGetRelevantPropertyValuesQueryHandler(as hwes.AggregateStore) GetRelevantPropertyValuesQueryHandler {
	return func(ctx context.Context, matcher viewModels.PropertyMatchers) ([]models.PropertyAndValue, error) {
		viewHandlers := vh.NewPropertyViewHandlers(as)
		propertyValueRepo := property_value_repo.New(hwdb.GetDB())

		subjectId, err := matcher.GetSubjectId()
		if err != nil {
			return nil, fmt.Errorf("GetRelevantPropertyValuesQueryHandler: matcher error when getting subjectId: %w", err)
		}

		alwaysInclude, err := viewHandlers.Queries.V1.GetAlwaysIncludePropertyIDsByMatcher(ctx, matcher)
		if err != nil {
			return nil, err
		}

		propertyValuesWithProperties, err := propertyValueRepo.GetRelevantPropertyViews(ctx, property_value_repo.GetRelevantPropertyViewsParams{
			SubjectID:     subjectId,
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
