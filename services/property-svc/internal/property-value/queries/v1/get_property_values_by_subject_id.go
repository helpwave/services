package v1

import (
	"context"
	"fmt"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
	"hwdb"
	"hwes"
	"hwutil"
	"property-svc/internal/property-value/models"
	vh "property-svc/internal/property-view/handlers"
	viewModels "property-svc/internal/property-view/models"
	"property-svc/repos/property_value_repo"
	"time"
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

			// we don't want to return empty values, so we skip empty rows (all LEFT JOINS have failed)
			if row.TextValue == nil && row.BoolValue == nil && row.NumberValue == nil && !row.SelectOptionID.Valid && !row.DateTimeValue.Valid && !row.DateValue.Valid {
				continue
			}

			// If row has SelectOptionID, the LEFT JOIN yielded a value
			if row.SelectOptionID.Valid {

				// make sure MultiSelectValues is an array
				if properties[row.Property.ID].Value == nil {
					properties[row.Property.ID].Value = &models.TypedValue{
						TextValue:         nil,
						BoolValue:         nil,
						NumberValue:       nil,
						MultiSelectValues: make([]models.SelectValueOption, 0),
						DateTimeValue:     nil,
					}
				}

				// add multiselectvalue to array
				properties[row.Property.ID].Value.MultiSelectValues = append(properties[row.Property.ID].Value.MultiSelectValues, models.SelectValueOption{
					Id:          row.SelectOptionID.UUID,      // known to be valid by if
					Name:        *row.SelectOptionName,        // known to be set due to NOT NULL and successful LEFT JOIN
					Description: *row.SelectOptionDescription, // known to be set due to NOT NULL and successful LEFT JOIN
				})
			} else {

				// basic values can just be set, we expect only one of them to be not null,
				// but at least one has to due to ifs
				properties[row.Property.ID].Value = &models.TypedValue{
					TextValue:         row.TextValue,
					BoolValue:         row.BoolValue,
					NumberValue:       row.NumberValue,
					MultiSelectValues: nil,
					DateTimeValue: hwutil.MapIf(row.DateTimeValue.Valid, row.DateTimeValue, func(dtV pgtype.Timestamp) time.Time {
						return dtV.Time
					}),
					DateValue: hwutil.MapIf(row.DateValue.Valid, row.DateValue, func(dV pgtype.Date) time.Time {
						return dV.Time
					}),
				}
			}
		}
		return hwutil.MapValuesPtrToSlice(properties), nil
	}
}
