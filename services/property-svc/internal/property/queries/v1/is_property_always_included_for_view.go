package v1

import (
	"context"
	pb "gen/services/property_svc/v1"
	"hwauthz"
	"hwutil"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	viewModels "property-svc/internal/property-view/models"
	"property-svc/internal/property/perm"
)

type ViewSource interface {
	GetWardId() string
}

type IsPropertyAlwaysIncludedForViewSource func(
	ctx context.Context,
	viewSource ViewSource,
	subjectType pb.SubjectType,
	propertyId uuid.UUID,
) (bool, error)

func NewIsPropertyAlwaysIncludedForViewSourceHandler(authz hwauthz.AuthZ) IsPropertyAlwaysIncludedForViewSource {
	return func(
		ctx context.Context,
		viewSource ViewSource,
		subjectType pb.SubjectType,
		propertyID uuid.UUID,
	) (bool, error) {
		user := perm.UserFromCtx(ctx)

		// Is user allowed to see this property?
		check := hwauthz.NewPermissionCheck(user, perm.PropertyCanUserGet, perm.Property(propertyID))
		if err := authz.Must(ctx, check); err != nil {
			return false, err
		}

		wardID := uuid.NullUUID{}
		wardIDP := viewSource.GetWardId()
		if wardIDP != "" {
			var err error
			wardID, err = hwutil.ParseNullUUID(&wardIDP)
			if err != nil {
				return false, err
			}
		}

		var matcher viewModels.PropertyMatchers

		switch subjectType {
		case pb.SubjectType_SUBJECT_TYPE_PATIENT:
			matcher = viewModels.PatientPropertyMatchers{
				WardID: wardID,
			}
		case pb.SubjectType_SUBJECT_TYPE_TASK:
			matcher = viewModels.TaskPropertyMatchers{
				WardID: wardID,
			}
		case pb.SubjectType_SUBJECT_TYPE_UNSPECIFIED:
			fallthrough
		default:
			return false, status.Errorf(codes.Internal, "no matcher for subject type %s", subjectType.String())
		}

		return matcher.IsPropertyAlwaysIncluded(ctx, propertyID)
	}
}
