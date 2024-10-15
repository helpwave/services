package ward

import (
	"common"
	"context"
	pb "gen/services/task_svc/v1"
	"hwdb"
	"hwutil"

	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"task-svc/internal/tracking"
	"task-svc/repos/ward_repo"
)

type ServiceServer struct {
	pb.UnimplementedWardServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateWard(ctx context.Context, req *pb.CreateWardRequest) (*pb.CreateWardResponse, error) {
	log := zlog.Ctx(ctx)
	wardRepo := ward_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wardID, err := wardRepo.CreateWard(ctx, ward_repo.CreateWardParams{
		Name:           req.GetName(),
		OrganizationID: organizationID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("wardID", wardID.String()).
		Msg("ward created")

	tracking.AddWardToRecentActivity(ctx, wardID.String())

	return &pb.CreateWardResponse{
		Id: wardID.String(),
	}, nil
}

func (ServiceServer) GetWard(ctx context.Context, req *pb.GetWardRequest) (*pb.GetWardResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward, err := hwdb.Optional(wardRepo.GetWardById)(ctx, ward_repo.GetWardByIdParams{
		OrganizationID: organizationID,
		WardID:         id,
	})
	if ward == nil {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.GetWardResponse{
		Id:             ward.ID.String(),
		Name:           ward.Name,
		OrganizationId: ward.OrganizationID.String(),
	}, nil
}

func (ServiceServer) GetWards(ctx context.Context, req *pb.GetWardsRequest) (*pb.GetWardsResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wards, err := wardRepo.GetWards(ctx, organizationID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.GetWardsResponse{
		Wards: hwutil.Map(wards, func(ward ward_repo.Ward) *pb.GetWardsResponse_Ward {
			return &pb.GetWardsResponse_Ward{
				Id:   ward.ID.String(),
				Name: ward.Name,
			}
		}),
	}, nil
}

func (ServiceServer) GetRecentWards(
	ctx context.Context,
	_ *pb.GetRecentWardsRequest,
) (*pb.GetRecentWardsResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())
	log := zlog.Ctx(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	// TODO: Auth

	recentWardIDsStr, err := tracking.GetRecentWardsForUser(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// parse all valid uuids into an array
	recentWardIDs := hwutil.FlatMap(recentWardIDsStr, func(s string) *uuid.UUID {
		parsedUUID, err := uuid.Parse(s)
		if err != nil {
			log.Warn().Str("uuid", s).Msg("GetRecentWardsForUser returned invalid uuid")
			return nil
		}
		return &parsedUUID
	})

	rows, err := wardRepo.GetWardsWithCounts(ctx, ward_repo.GetWardsWithCountsParams{
		StatusTodo:       int32(pb.TaskStatus_TASK_STATUS_TODO),
		StatusInProgress: int32(pb.TaskStatus_TASK_STATUS_IN_PROGRESS),
		StatusDone:       int32(pb.TaskStatus_TASK_STATUS_DONE),
		OrganizationID:   organizationID,
		WardIds:          recentWardIDs,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	response := hwutil.Map(rows, func(row ward_repo.GetWardsWithCountsRow) *pb.GetRecentWardsResponse_Ward {
		return &pb.GetRecentWardsResponse_Ward{
			Id:              row.Ward.ID.String(),
			Name:            row.Ward.Name,
			BedCount:        uint32(row.BedCount),        //nolint:gosec
			TasksTodo:       uint32(row.TodoCount),       //nolint:gosec
			TasksInProgress: uint32(row.InProgressCount), //nolint:gosec
			TasksDone:       uint32(row.DoneCount),
		}
	})

	return &pb.GetRecentWardsResponse{Wards: response}, nil
}

func (ServiceServer) UpdateWard(ctx context.Context, req *pb.UpdateWardRequest) (*pb.UpdateWardResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = wardRepo.UpdateWard(ctx, ward_repo.UpdateWardParams{
		ID:   id,
		Name: req.Name,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	tracking.AddWardToRecentActivity(ctx, id.String())

	return &pb.UpdateWardResponse{}, nil
}

func (ServiceServer) DeleteWard(ctx context.Context, req *pb.DeleteWardRequest) (*pb.DeleteWardResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	exists, err := wardRepo.ExistsWard(ctx, ward_repo.ExistsWardParams{
		ID:             id,
		OrganizationID: organizationID,
	})
	if !exists {
		return nil, nil
	}
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	err = wardRepo.DeleteWard(ctx, id)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	tracking.RemoveWardFromRecentActivity(ctx, id.String())

	return &pb.DeleteWardResponse{}, nil
}

func (s ServiceServer) GetWardOverviews(
	ctx context.Context,
	_ *pb.GetWardOverviewsRequest,
) (*pb.GetWardOverviewsResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	rows, err := wardRepo.GetWardsWithCounts(ctx, ward_repo.GetWardsWithCountsParams{
		StatusTodo:       int32(pb.TaskStatus_TASK_STATUS_TODO),
		StatusInProgress: int32(pb.TaskStatus_TASK_STATUS_IN_PROGRESS),
		StatusDone:       int32(pb.TaskStatus_TASK_STATUS_DONE),
		OrganizationID:   organizationID,
		WardIds:          nil,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	resWards := hwutil.Map(rows, func(row ward_repo.GetWardsWithCountsRow) *pb.GetWardOverviewsResponse_Ward {
		return &pb.GetWardOverviewsResponse_Ward{
			Id:              row.Ward.ID.String(),
			Name:            row.Ward.Name,
			BedCount:        uint32(row.BedCount),
			TasksTodo:       uint32(row.TodoCount),
			TasksInProgress: uint32(row.InProgressCount),
			TasksDone:       uint32(row.DoneCount),
		}
	})

	return &pb.GetWardOverviewsResponse{Wards: resWards}, err
}

func (ServiceServer) GetWardDetails(
	ctx context.Context,
	req *pb.GetWardDetailsRequest,
) (*pb.GetWardDetailsResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	wardID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	rows, err := wardRepo.GetWardByIdWithRoomsBedsAndTaskTemplates(ctx,
		ward_repo.GetWardByIdWithRoomsBedsAndTaskTemplatesParams{
			OrganizationID: organizationID,
			WardID:         wardID,
		})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	} else if len(rows) == 0 {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}

	rooms := make([]*pb.GetWardDetailsResponse_Room, 0)
	roomsIndexMap := make(map[uuid.UUID]int)
	bedSet := make(map[uuid.UUID]bool)

	for _, row := range rows {
		if !row.RoomID.Valid {
			continue
		}
		var room *pb.GetWardDetailsResponse_Room
		if roomIx, processed := roomsIndexMap[row.RoomID.UUID]; processed {
			room = rooms[roomIx]
		} else {
			room = &pb.GetWardDetailsResponse_Room{
				Id:   row.RoomID.UUID.String(),
				Name: *row.RoomName,
				Beds: make([]*pb.GetWardDetailsResponse_Bed, 0),
			}
			rooms = append(rooms, room)
			roomsIndexMap[row.RoomID.UUID] = len(rooms) - 1
		}

		if !row.BedID.Valid {
			continue
		}
		if _, processed := bedSet[row.BedID.UUID]; !processed {
			bed := &pb.GetWardDetailsResponse_Bed{
				Id:   row.BedID.UUID.String(),
				Name: *row.BedName,
			}
			room.Beds = append(room.Beds, bed)
			bedSet[row.BedID.UUID] = true
		}
	}

	// we could process both in one iteration,
	// but I suspect the deep branching required will result in slower performance
	// (bmn)

	taskTemplates := make([]*pb.GetWardDetailsResponse_TaskTemplate, 0)
	ttIndexMap := make(map[uuid.UUID]int)
	stSet := make(map[uuid.UUID]bool)

	for _, row := range rows {
		if !row.TaskTemplateID.Valid {
			continue
		}
		var taskTemplate *pb.GetWardDetailsResponse_TaskTemplate
		if ttIx, processed := ttIndexMap[row.TaskTemplateID.UUID]; processed {
			taskTemplate = taskTemplates[ttIx]
		} else {
			taskTemplate = &pb.GetWardDetailsResponse_TaskTemplate{
				Id:       row.TaskTemplateID.UUID.String(),
				Name:     *row.TaskTemplateName,
				Subtasks: make([]*pb.GetWardDetailsResponse_Subtask, 0),
			}
			taskTemplates = append(taskTemplates, taskTemplate)
			ttIndexMap[row.TaskTemplateID.UUID] = len(taskTemplates) - 1
		}

		if !row.TaskTemplateSubtaskID.Valid {
			continue
		}
		if _, processed := stSet[row.TaskTemplateSubtaskID.UUID]; !processed {
			subTask := &pb.GetWardDetailsResponse_Subtask{
				Id:   row.TaskTemplateSubtaskID.UUID.String(),
				Name: *row.TaskTemplateSubtaskName,
			}
			taskTemplate.Subtasks = append(taskTemplate.Subtasks, subTask)
			stSet[row.TaskTemplateSubtaskID.UUID] = true
		}
	}

	ward := &pb.GetWardDetailsResponse{
		Id:            rows[0].WardID.String(),
		Name:          rows[0].WardName,
		Rooms:         rooms,
		TaskTemplates: taskTemplates,
	}

	return ward, nil
}
