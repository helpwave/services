package v1

import (
	"context"
	"github.com/google/uuid"
	"hwdb"
	"property-svc/repos/property_value_repo"
)

type GetPropertyValuesBySubjectIDHandler func(ctx context.Context, subjectID uuid.UUID) ([]property_value_repo.PropertyValue, error)

func NewGetPropertyValuesBySubjectIDQueryHandler(propertyValueRepo *property_value_repo.Queries) GetPropertyValuesBySubjectIDHandler {
	return func(ctx context.Context, subjectID uuid.UUID) ([]property_value_repo.PropertyValue, error) {
		properties, err := propertyValueRepo.GetPropertyValuesBySubjectID(ctx, subjectID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}
		return properties, nil
	}
}
