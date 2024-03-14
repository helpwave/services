package v1

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
)

type UpdatePropertyCommandHandler func(ctx context.Context, propertyID uuid.UUID, subjectType *pb.SubjectType, fieldType *pb.FieldType, name *string, description *string, setID *string, allowFreetext *bool, upsertOptions *[]models.UpdateSelectOption, removeOptions []string, isArchived *bool) error

func NewUpdatePropertyCommandHandler(as hwes.AggregateStore) UpdatePropertyCommandHandler {
	return func(ctx context.Context, propertyID uuid.UUID, subjectType *pb.SubjectType, fieldType *pb.FieldType, name *string, description *string, setID *string, allowFreetext *bool, upsertOptions *[]models.UpdateSelectOption, removeOptions []string, isArchived *bool) error {
		a, err := aggregate.LoadPropertyAggregate(ctx, as, propertyID)
		if err != nil {
			return err
		}

		if subjectType != nil {
			if err := a.UpdateSubjectType(ctx, *subjectType); err != nil {
				return err
			}
		}

		if fieldType != nil {
			if err := a.UpdateFieldType(ctx, *fieldType); err != nil {
				return err
			}
		}

		if name != nil {
			if err := a.UpdateName(ctx, *name); err != nil {
				return err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return err
			}
		}

		if setID != nil {
			if err := a.UpdateSetID(ctx, *setID); err != nil {
				return err
			}
		}

		if allowFreetext != nil {
			if err := a.UpdateAllowFreetext(ctx, *allowFreetext); err != nil {
				return err
			}
		}

		if upsertOptions != nil {
			if err := a.FieldTypeDataUpsertOptions(ctx, *upsertOptions); err != nil {
				return err
			}
		}

		if len(removeOptions) > 0 {
			// TODO: check if remove options exist in aggregate SelectOptions?
			if err := a.FieldTypeDataRemoveOptions(ctx, removeOptions); err != nil {
				return err
			}
		}

		if isArchived != nil {
			if *isArchived {
				if err := a.ArchiveProperty(ctx); err != nil {
					return err
				}
			} else {
				if err := a.RetrieveProperty(ctx); err != nil {
					return err
				}
			}
		}

		return as.Save(ctx, a)
	}
}
