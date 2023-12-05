package ward

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwdb"
	"hwgorm"
	"hwutil"
	pbhelpers "proto_helpers/task_svc/v1"
	"task-svc/internal/models"
	"task-svc/internal/repositories"
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
		Name:           req.Name,
		OrganizationID: organizationID,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("wardID", wardID.String()).
		Msg("wardID created")

	tracking.AddWardToRecentActivity(ctx, wardID.String())

	return &pb.CreateWardResponse{
		Id: wardID.String(),
	}, nil
}

func (ServiceServer) GetWard(ctx context.Context, req *pb.GetWardRequest) (*pb.GetWardResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	id, err := uuid.Parse(req.Id)
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

	} else if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.GetWardResponse{
		Id:             ward.ID.String(),
		Name:           ward.Name,
		OrganizationId: ward.OrganizationID.String(),
	}, nil
}

func (ServiceServer) GetWards(ctx context.Context, req *pb.GetWardsRequest) (*pb.GetWardsResponse, error) {
	wardRepo := repositories.WardRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wards, err := wardRepo.GetWardsForOrganization(organizationID)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetWardsResponse{
		Wards: hwutil.Map(wards, func(ward *models.Ward) *pb.GetWardsResponse_Ward {
			return &pb.GetWardsResponse_Ward{
				Id:   ward.ID.String(),
				Name: ward.Name,
			}
		}),
	}, nil
}

func (ServiceServer) GetRecentWards(ctx context.Context, req *pb.GetRecentWardsRequest) (*pb.GetRecentWardsResponse, error) {
	wardRepo := repositories.WardRepo(ctx)
	log := zlog.Ctx(ctx)

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

	recentWards, err := wardRepo.GetWardsByIDs(recentWardIDs)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	bedCounts, err := wardRepo.CountBedsForWards(recentWardIDs)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	taskCounts, err := wardRepo.CountTasksWithStatusForWards(recentWardIDs)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	response := hwutil.Map(recentWards, func(ward models.Ward) *pb.GetRecentWardsResponse_Ward {
		return &pb.GetRecentWardsResponse_Ward{
			Id:              ward.ID.String(),
			Name:            ward.Name,
			BedCount:        uint32(bedCounts[ward.ID]),
			TasksTodo:       uint32(taskCounts[ward.ID][pb.TaskStatus_TASK_STATUS_TODO]),
			TasksInProgress: uint32(taskCounts[ward.ID][pb.TaskStatus_TASK_STATUS_IN_PROGRESS]),
			TasksDone:       uint32(taskCounts[ward.ID][pb.TaskStatus_TASK_STATUS_DONE]),
		}
	})

	return &pb.GetRecentWardsResponse{Wards: response}, nil
}

func (ServiceServer) UpdateWard(ctx context.Context, req *pb.UpdateWardRequest) (*pb.UpdateWardResponse, error) {
	wardRepo := repositories.WardRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	updates := pbhelpers.UpdatesMapForUpdateWardRequest(req)
	_, err = wardRepo.UpdateWard(id, updates)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
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

	id, err := uuid.Parse(req.Id)
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
	if err != nil {
		return nil, err
	}

	if err := wardRepo.DeleteWard(ctx, id); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	tracking.RemoveWardFromRecentActivity(ctx, id.String())

	return &pb.DeleteWardResponse{}, nil
}

func (s ServiceServer) GetWardOverviews(ctx context.Context, _ *pb.GetWardOverviewsRequest) (*pb.GetWardOverviewsResponse, error) {
	wardRepo := repositories.WardRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wards, err := wardRepo.GetWardsForOrganizationFullyLoaded(organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	resWards := hwutil.Map(wards, func(ward *models.Ward) *pb.GetWardOverviewsResponse_Ward {
		rooms := ward.Rooms

		var bedCount uint32
		var tasksTodo uint32
		var tasksInProgress uint32
		var tasksDone uint32

		for _, room := range rooms {
			beds := room.Beds
			bedCount += uint32(len(beds))

			for _, bed := range beds {
				if bed.Patient != nil {
					tasks := bed.Patient.Tasks

					for _, t := range tasks {
						switch t.Status {
						case pb.TaskStatus_TASK_STATUS_TODO:
							tasksTodo++
						case pb.TaskStatus_TASK_STATUS_IN_PROGRESS:
							tasksInProgress++
						case pb.TaskStatus_TASK_STATUS_DONE:
							tasksDone++
						}
					}
				}
			}
		}

		return &pb.GetWardOverviewsResponse_Ward{
			Id:              ward.ID.String(),
			Name:            ward.Name,
			BedCount:        bedCount,
			TasksTodo:       tasksTodo,
			TasksInProgress: tasksInProgress,
			TasksDone:       tasksDone,
		}
	})

	return &pb.GetWardOverviewsResponse{Wards: resWards}, err
}

func (ServiceServer) GetWardDetails(ctx context.Context, req *pb.GetWardDetailsRequest) (*pb.GetWardDetailsResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	wardID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	rows, err := wardRepo.GetWardByIdWithRoomsBedsAndTaskTemplates(ctx, ward_repo.GetWardByIdWithRoomsBedsAndTaskTemplatesParams{
		OrganizationID: organizationID,
		WardID:         wardID,
	})
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
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
