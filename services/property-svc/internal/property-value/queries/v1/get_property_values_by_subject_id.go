package v1

import (
	"common"
	"context"
	"fmt"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwutil"
	"property-svc/internal/property-value/models"
	vh "property-svc/internal/property-view/handlers"
	viewModels "property-svc/internal/property-view/models"
	"property-svc/repos/property_value_repo"
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
					PropertyID:          row.Property.ID,
					SubjectType:         pb.SubjectType(row.Property.SubjectType),
					FieldType:           pb.FieldType(row.Property.FieldType),
					Name:                row.Property.Name,
					Description:         row.Property.Description,
					IsArchived:          row.Property.IsArchived,
					SetID:               row.Property.SetID,
					Value:               nil,
					PropertyConsistency: common.ConsistencyToken(row.Property.Consistency).String(),
				}
			}

			// we don't want to return empty values, so we skip empty rows (all LEFT JOINS have failed)
			if row.TextValue == nil && row.BoolValue == nil && row.NumberValue == nil && !row.SelectOptionID.Valid && !row.DateTimeValue.Valid && !row.DateValue.Valid {
				continue
			}

			properties[row.Property.ID].ValueConsistency = hwutil.PtrTo(common.ConsistencyToken(*row.ValueConsistency).String())

			// If row has SelectOptionID, the LEFT JOIN yielded a value
			if row.SelectOptionID.Valid {

				// make sure MultiSelectValues is an array
				if properties[row.Property.ID].Value == nil {
					properties[row.Property.ID].Value = models.MultiSelectValues(make([]models.SelectValueOption, 0))
				}

				// add multiselectvalue to array
				arr := properties[row.Property.ID].Value.(models.MultiSelectValues)
				properties[row.Property.ID].Value = append(arr, models.SelectValueOption{
					Id:          row.SelectOptionID.UUID,      // known to be valid by if
					Name:        *row.SelectOptionName,        // known to be set due to NOT NULL and successful LEFT JOIN
					Description: *row.SelectOptionDescription, // known to be set due to NOT NULL and successful LEFT JOIN
				})
			} else {

				// basic values can just be set, we expect only one of them to be not null,
				// but at least one has to due to ifs

				switch {
				case row.TextValue != nil:
					properties[row.Property.ID].Value = models.TextValue(*row.TextValue)
				case row.BoolValue != nil:
					properties[row.Property.ID].Value = models.BoolValue(*row.BoolValue)
				case row.NumberValue != nil:
					properties[row.Property.ID].Value = models.NumberValue(*row.NumberValue)
				case row.DateValue.Valid:
					properties[row.Property.ID].Value = models.DateValue(row.DateValue.Time)
				case row.DateTimeValue.Valid:
					properties[row.Property.ID].Value = models.DateTimeValue(row.DateTimeValue.Time)
				default:
					log.Warn().Interface("row", row).Msg("row is all nil, one case does not seem to be handled")
					// if you are debugging the above log line, consider updating the "if" in the beginning
					continue
				}
			}
		}
		return hwutil.MapValuesPtrToSlice(properties), nil
	}
}
