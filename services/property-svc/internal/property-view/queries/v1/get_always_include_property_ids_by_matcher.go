package v1

import (
	"context"
	"hwutil"
	"property-svc/internal/property-view/models"

	"github.com/google/uuid"
)

type GetAlwaysIncludePropertyIDsByMatcherQueryHandler func(ctx context.Context, matcher models.PropertyMatchers) ([]uuid.UUID, error)

func NewGetAlwaysIncludePropertiesByMatcherHandler() GetAlwaysIncludePropertyIDsByMatcherQueryHandler {
	return func(ctx context.Context, matcher models.PropertyMatchers) ([]uuid.UUID, error) {
		rows, err := matcher.QueryProperties(ctx)
		if err != nil {
			return nil, err
		}

		alwaysInclude := make(map[uuid.UUID]bool)

		// keep in mind, we expect rows to be ordered by ascending specificity
		// we will now iterate upwards, while filling in the alwaysInclude list

		for _, row := range rows {
			alwaysInclude[row.GetPropertyID()] = !row.GetDontAlwaysInclude()
		}
		return hwutil.SetToSlice(alwaysInclude), nil
	}
}
