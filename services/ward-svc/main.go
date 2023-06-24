package main

import (
	"common"
	"context"
	"fmt"
	task_svc_pb "gen/proto/services/task_svc/v1"
	pb "gen/proto/services/ward_svc/v1"
	daprc "github.com/dapr/go-sdk/client"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"hwutil"
)

const ServiceName = "ward-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	hwgorm.SetupDatabase(
		hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
		hwutil.GetEnvOr("POSTGRES_USER", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PASSWORD", "postgres"),
		hwutil.GetEnvOr("POSTGRES_DB", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PORT", "5432"),
	)

	daprClient := common.MustNewDaprGRPCClient()

	common.StartNewGRPCServer(common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()
		pb.RegisterWardServiceServer(grpcServer, NewServiceServer(daprClient))
	})
}

type Base struct {
	Name string `gorm:"column:name"`
}

type Ward struct {
	Base
	ID             uuid.UUID `gorm:"column:id"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
}

func GetWardByIdForOrganization(ctx context.Context, id uuid.UUID) (*Ward, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward := Ward{ID: id, OrganizationID: organizationID}
	if err := db.First(&ward).Error; err != nil {
		return nil, err
	}

	return &ward, nil
}

func GetWardsForOrganization(ctx context.Context) ([]*Ward, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var wards []*Ward
	if err := db.Where("organization_id = ?", organizationID).Find(&wards).Error; err != nil {
		return nil, err
	}

	return wards, nil
}

type ServiceServer struct {
	pb.UnimplementedWardServiceServer
	roomSvc task_svc_pb.RoomServiceClient
	bedSvc  task_svc_pb.BedServiceClient
	taskSvc task_svc_pb.TaskServiceClient
}

func NewServiceServer(daprClient *daprc.GRPCClient) *ServiceServer {
	service := ServiceServer{}
	service.roomSvc = task_svc_pb.NewRoomServiceClient(daprClient.GrpcClientConn())
	service.bedSvc = task_svc_pb.NewBedServiceClient(daprClient.GrpcClientConn())
	service.taskSvc = task_svc_pb.NewTaskServiceClient(daprClient.GrpcClientConn())
	return &service
}

func (ServiceServer) CreateWard(ctx context.Context, req *pb.CreateWardRequest) (*pb.CreateWardResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward := Ward{
		Base: Base{
			Name: req.GetName(),
		},
		OrganizationID: organizationID,
	}

	if err := db.Create(&ward).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("wardId", ward.ID.String()).
		Msg("ward created")

	return &pb.CreateWardResponse{
		Id:   ward.ID.String(),
		Name: ward.Name,
	}, nil
}

func (ServiceServer) GetWard(ctx context.Context, req *pb.GetWardRequest) (*pb.GetWardResponse, error) {
	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward, err := GetWardByIdForOrganization(ctx, id)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetWardResponse{
		Id:   ward.ID.String(),
		Name: ward.Name,
	}, nil
}

func (ServiceServer) GetWards(ctx context.Context, _ *pb.GetWardsRequest) (*pb.GetWardsResponse, error) {
	wards, err := GetWardsForOrganization(ctx)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetWardsResponse{
		Wards: hwutil.Map(wards, func(ward *Ward) *pb.GetWardsResponse_Ward {
			return &pb.GetWardsResponse_Ward{
				Id:   ward.ID.String(),
				Name: ward.Name,
			}
		}),
	}, nil
}

func (ServiceServer) UpdateWard(ctx context.Context, req *pb.UpdateWardRequest) (*pb.UpdateWardResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward := Ward{ID: id}
	updates := req.UpdatesMap()

	if err := db.Model(&ward).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateWardResponse{}, nil
}

func (ServiceServer) DeleteWard(ctx context.Context, req *pb.DeleteWardRequest) (*pb.DeleteWardResponse, error) {
	db := hwgorm.GetDB(ctx)

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward, err := GetWardByIdForOrganization(ctx, id)
	if err != nil {
		return nil, err
	}

	if err := db.Delete(ward).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.DeleteWardResponse{}, nil
}

func (s ServiceServer) GetWardsOverview(ctx context.Context, _ *pb.GetWardsOverviewRequest) (*pb.GetWardsOverviewResponse, error) {
	log := zlog.Ctx(ctx)

	wards, err := GetWardsForOrganization(ctx)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	ctx, cancel, err := common.PrepCtxForSvcToSvcCall(ctx, "task-svc")
	if err != nil {
		return nil, err
	}
	defer cancel()

	resWards := hwutil.Map(wards, func(ward *Ward) *pb.GetWardsOverviewResponse_Ward {
		res, err := s.roomSvc.GetRoomsByWard(ctx, &task_svc_pb.GetRoomsByWardRequest{WardId: ward.ID.String()})
		if err != nil {
			log.Error().Err(err).Send()
			return nil
		}

		var bedCount uint32
		for _, room := range res.Rooms {
			res, err := s.bedSvc.GetBedsByRoom(ctx, &task_svc_pb.GetBedsByRoomRequest{RoomId: room.Id})
			if err != nil {
				log.Error().Err(err).Send()
				return nil
			}
			bedCount += uint32(len(res.Beds))
		}

		return &pb.GetWardsOverviewResponse_Ward{
			Id:       ward.ID.String(),
			Name:     ward.Name,
			BedCount: bedCount,
		}
	})

	return &pb.GetWardsOverviewResponse{Wards: resWards}, nil
}
