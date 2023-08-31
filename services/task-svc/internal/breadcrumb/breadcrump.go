package breadcrumb

import (
	"context"
	pb "gen/proto/services/task_svc/v1"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwutil"
	"task-svc/internal/repositories"
)

type ServiceServer struct {
	pb.UnimplementedBreadcrumbServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) GetBreadcrumbs(ctx context.Context, req *pb.GetBreadcrumbsRequest) (*pb.GetBreadcrumbsResponse, error) {
	breadcrumbRepo := repositories.BreadcrumbRepo(ctx)

	patientID, err := hwutil.StringToUUIDPtr(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}
	if patientID != nil {
		ward, err := breadcrumbRepo.LoadPatientCrumbs(*patientID)
		if err != nil {
			return nil, err
		}
		return &pb.GetBreadcrumbsResponse{
			Organization: &pb.GetBreadcrumbsResponse_Organization{
				Id:   ward.OrganizationID.String(),
				Name: "Later", // TODO replace
				Ward: &pb.GetBreadcrumbsResponse_Ward{
					Id:   ward.ID.String(),
					Name: ward.Name,
				},
			},
		}, nil
	}

	bedID, err := hwutil.StringToUUIDPtr(req.BedId)
	if bedID != nil {
		ward, err := breadcrumbRepo.LoadBedCrumbs(*bedID)
		if err != nil {
			return nil, err
		}
		return &pb.GetBreadcrumbsResponse{
			Organization: &pb.GetBreadcrumbsResponse_Organization{
				Id:   ward.OrganizationID.String(),
				Name: "Later", // TODO replace
				Ward: &pb.GetBreadcrumbsResponse_Ward{
					Id:   ward.ID.String(),
					Name: ward.Name,
					Room: &pb.GetBreadcrumbsResponse_Room{
						// TODO somehow get the right ward
					},
				},
			},
		}, nil
	}
	return &pb.GetBreadcrumbsResponse{}, nil
}
