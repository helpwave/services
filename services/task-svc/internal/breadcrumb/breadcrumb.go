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

	if req.PatientId != nil {
		patientID, err := hwutil.StringToUUIDPtr(req.PatientId)
		if err != nil {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
		if patientID != nil {
			patient, err := breadcrumbRepo.LoadPatientCrumbs(*patientID)
			if err != nil {
				return nil, status.Error(codes.InvalidArgument, err.Error())
			}
			if patient.Bed == nil {
				return nil, status.Error(codes.InvalidArgument, "invalid patient")
			}
			bed := patient.Bed
			room := bed.Room
			ward := room.Ward
			// TODO add organization
			return &pb.GetBreadcrumbsResponse{
				Organization: &pb.GetBreadcrumbsResponse_Organization{
					Id:   ward.OrganizationID.String(),
					Name: "Later", // TODO replace
					Ward: &pb.GetBreadcrumbsResponse_Ward{
						Id:   ward.ID.String(),
						Name: ward.Name,
						Room: &pb.GetBreadcrumbsResponse_Room{
							Id:   room.ID.String(),
							Name: room.Name,
							Bed: &pb.GetBreadcrumbsResponse_Bed{
								Id:   bed.ID.String(),
								Name: bed.Name,
								Patient: &pb.GetBreadcrumbsResponse_Patient{
									Id:   patient.ID.String(),
									Name: patient.HumanReadableIdentifier,
								},
							},
						},
					},
				},
			}, nil
		}
	}

	if req.BedId != nil {
		bedID, err := hwutil.StringToUUIDPtr(req.BedId)
		if err != nil {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
		if bedID != nil {
			bed, err := breadcrumbRepo.LoadBedCrumbs(*bedID)
			if err != nil {
				return nil, status.Error(codes.InvalidArgument, err.Error())
			}
			room := bed.Room
			ward := room.Ward
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
							Id:   room.ID.String(),
							Name: room.Name,
							Bed: &pb.GetBreadcrumbsResponse_Bed{
								Id:   bed.ID.String(),
								Name: bed.Name,
							},
						},
					},
				},
			}, nil
		}
	}

	if req.RoomId != nil {
		roomId, err := hwutil.StringToUUIDPtr(req.RoomId)
		if err != nil {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
		if roomId != nil {
			room, err := breadcrumbRepo.LoadRoomCrumbs(*roomId)
			if err != nil {
				return nil, status.Error(codes.InvalidArgument, err.Error())
			}
			ward := room.Ward
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
							Id:   room.ID.String(),
							Name: room.Name,
						},
					},
				},
			}, nil
		}
	}

	if req.WardId != nil {
		wardId, err := hwutil.StringToUUIDPtr(req.WardId)
		if err != nil {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
		if wardId != nil {
			ward, err := breadcrumbRepo.LoadWardCrumbs(*wardId)
			if err != nil {
				return nil, status.Error(codes.InvalidArgument, err.Error())
			}
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
	}

	if req.OrganizationId != nil {
		organizationId, err := hwutil.StringToUUIDPtr(req.OrganizationId)
		if err != nil {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
		if organizationId != nil {
			// TODO load organization here
			return &pb.GetBreadcrumbsResponse{
				Organization: &pb.GetBreadcrumbsResponse_Organization{
					Id:   organizationId.String(),
					Name: "Later", // TODO replace
				},
			}, nil
		}
	}

	return nil, status.Error(codes.InvalidArgument, "no id was given, provide one")
}
