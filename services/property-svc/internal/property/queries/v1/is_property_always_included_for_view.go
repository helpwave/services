package v1

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwutil"
	viewModels "property-svc/internal/property-view/models"
)

type ViewSource interface {
	GetWardId() string
}

type IsPropertyAlwaysIncludedForViewSource func(ctx context.Context, viewSource ViewSource, subjectType pb.SubjectType, propertyId uuid.UUID) (bool, error)

func NewIsPropertyAlwaysIncludedForViewSourceHandler() IsPropertyAlwaysIncludedForViewSource {
	return func(ctx context.Context, viewSource ViewSource, subjectType pb.SubjectType, propertyId uuid.UUID) (bool, error) {
		wardId := uuid.NullUUID{}
		wardIdP := viewSource.GetWardId()
		if wardIdP != "" {
			var err error
			wardId, err = hwutil.ParseNullUUID(&wardIdP)
			if err != nil {
				return false, err
			}
		}

		var matcher viewModels.PropertyMatchers

		switch subjectType {
		case pb.SubjectType_SUBJECT_TYPE_PATIENT:
			matcher = viewModels.PatientPropertyMatchers{
				WardID: wardId,
			}
		case pb.SubjectType_SUBJECT_TYPE_TASK:
			matcher = viewModels.TaskPropertyMatchers{
				WardID: wardId,
			}
		default:
			return false, status.Errorf(codes.Internal, "no matcher for subject type %s", subjectType.String())
		}

		return matcher.IsPropertyAlwaysIncluded(ctx, propertyId)
	}
}
