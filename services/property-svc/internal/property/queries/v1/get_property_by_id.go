package v1

import (
	"context"
	"fmt"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwdb"
	"hwes"
	"property-svc/internal/property/models"
	"property-svc/repos/property_repo"
)

type GetPropertyByIDQueryHandler func(ctx context.Context, propertyID uuid.UUID) (*models.Property, error)

func NewGetPropertyByIDQueryHandler(as hwes.AggregateStore, propertyRepo *property_repo.Queries) GetPropertyByIDQueryHandler {
	return func(ctx context.Context, propertyID uuid.UUID) (*models.Property, error) {
		property, err := propertyRepo.GetPropertyById(ctx, propertyID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		_, found := pb.SubjectType_name[property.SubjectType]
		if !found {
			return nil, fmt.Errorf("subject_type %d invalid", property.SubjectType)
		}
		subjectType := (pb.SubjectType)(property.SubjectType)

		return &models.Property{
			ID:          property.ID,
			SubjectType: subjectType,
			FieldType:   0,
			Name:        property.Name,
			Description: property.Description,
			IsArchived:  property.IsArchived,
			//SetID:         uuid.NullUUID{},
			//FieldTypeData: models.FieldTypeData{},
		}, err
	}
}
