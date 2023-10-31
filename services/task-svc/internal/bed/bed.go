package bed

import (
	"common"
	"context"
	"fmt"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"hwutil"
	"task-svc/database"
	"task-svc/internal/models"
	"task-svc/internal/repositories"

	pb "gen/proto/services/task_svc/v1"
	zlog "github.com/rs/zerolog/log"
	pgxUUID "github.com/vgarvardt/pgx-google-uuid/v5"
	pbhelpers "proto_helpers/task_svc/v1"
)

type ServiceServer struct {
	pb.UnimplementedBedServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateBed(ctx context.Context, req *pb.CreateBedRequest) (*pb.CreateBedResponse, error) {
	log := zlog.Ctx(ctx)

	// FIXME: move this into common (similar to hwgorm.SetupDatabaseByEnvs())
	// FIXME: and replace with a getter similar to hwgorm.GetDB()
	dsn := hwutil.GetEnvOr("POSTGRES_DSN", "")
	if dsn == "" {
		host,
			user,
			password,
			databaseName,
			port :=
			hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
			hwutil.GetEnvOr("POSTGRES_USER", "postgres"),
			hwutil.GetEnvOr("POSTGRES_PASSWORD", "postgres"),
			hwutil.GetEnvOr("POSTGRES_DB", "postgres"),
			hwutil.GetEnvOr("POSTGRES_PORT", "5432")

		dsn = fmt.Sprintf(
			"host=%s user=%s password=%s dbname=%s port=%s",
			host, user, password, databaseName, port,
		)
		log.Debug().Msg("POSTGRES_DSN env not found, build dsn from POSTGRES_HOST, ... envs")
	}

	pgxConfig, err := pgxpool.ParseConfig(dsn)
	if err != nil {
		log.Error().Err(err).Msg("Unable to parse database config")
		return nil, status.Error(codes.Internal, "Database Issues")
	}

	pgxConfig.AfterConnect = func(ctx context.Context, conn *pgx.Conn) error {
		pgxUUID.Register(conn.TypeMap())
		return nil
	}

	dbpool, err := pgxpool.NewWithConfig(ctx, pgxConfig)
	if err != nil {
		log.Error().Err(err).Msg("Unable to create connection pool")
		return nil, status.Error(codes.Internal, "Database Issues")
	}
	defer dbpool.Close()

	queries := database.New(dbpool)

	// end of FIXME

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	roomId, err := uuid.Parse(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed, err := queries.CreateBed(ctx, database.CreateBedParams{
		RoomID:         roomId,
		OrganizationID: organizationID,
		Name:           req.Name,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("bedID", bed.ID.String()).
		Str("roomID", req.RoomId).
		Str("name", bed.Name).
		Msg("bed created")

	return &pb.CreateBedResponse{
		Id: bed.ID.String(),
	}, nil
}

func (ServiceServer) GetBed(ctx context.Context, req *pb.GetBedRequest) (*pb.GetBedResponse, error) {
	bedRepo := repositories.BedRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed, err := bedRepo.GetBedByIdForOrganization(id, organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetBedResponse{
		Id:     bed.ID.String(),
		RoomId: bed.RoomID.String(),
		Name:   bed.Name,
	}, nil
}

func (ServiceServer) GetBeds(ctx context.Context, _ *pb.GetBedsRequest) (*pb.GetBedsResponse, error) {
	bedRepo := repositories.BedRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	beds, err := bedRepo.GetBedsForOrganization(organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetBedsResponse{
		Beds: hwutil.Map(beds, func(bed models.Bed) *pb.GetBedsResponse_Bed {
			return &pb.GetBedsResponse_Bed{
				Id:     bed.ID.String(),
				RoomId: bed.RoomID.String(),
				Name:   bed.Name,
			}
		}),
	}, nil
}

func (ServiceServer) GetBedsByRoom(ctx context.Context, req *pb.GetBedsByRoomRequest) (*pb.GetBedsByRoomResponse, error) {
	roomID, err := uuid.Parse(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	bedRepo := repositories.BedRepo(ctx)

	beds, err := bedRepo.GetBedsByRoomForOrganization(roomID, organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "roomID not found")
		}
	}

	res := pb.GetBedsByRoomResponse{
		Beds: []*pb.GetBedsByRoomResponse_Bed{},
	}

	for _, bed := range beds {
		res.Beds = append(res.Beds, &pb.GetBedsByRoomResponse_Bed{
			Id:   bed.ID.String(),
			Name: bed.Name,
		})
	}

	return &res, nil
}

func (ServiceServer) UpdateBed(ctx context.Context, req *pb.UpdateBedRequest) (*pb.UpdateBedResponse, error) {
	bedRepo := repositories.BedRepo(ctx)

	bedID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	updates := pbhelpers.UpdatesMapForUpdateBedRequest(req)

	if _, err := bedRepo.UpdateBed(bedID, updates); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateBedResponse{}, nil
}

func (ServiceServer) DeleteBed(ctx context.Context, req *pb.DeleteBedRequest) (*pb.DeleteBedResponse, error) {
	log := zlog.Ctx(ctx)
	bedRepo := repositories.BedRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	bedID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	_, err = bedRepo.GetBedByIdForOrganization(bedID, organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			// Probably already deleted
			return &pb.DeleteBedResponse{}, err
		}
	}

	err = bedRepo.DeleteBed(bedID)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "roomID not found")
		}
	}

	log.Info().
		Str("bedID", bedID.String()).
		Msg("bed deleted")

	return &pb.DeleteBedResponse{}, err
}
