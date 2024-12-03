package ward

import (
	"common"
	"context"
	"fmt"
	pb "gen/services/tasks_svc/v1"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwdb"
	"hwes"
	"hwes/eventstoredb"
	"hwutil"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	roomPerm "tasks-svc/internal/room/perm"
	ttPerm "tasks-svc/internal/task-template/perm"

	"tasks-svc/internal/ward/perm"

	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"tasks-svc/internal/tracking"
	"tasks-svc/repos/ward_repo"

	pbEventsV1 "gen/libs/events/v1"
)

const WardAggregateType = eventstoredb.EntityEventPrefix + "ward"

type WardAggregate struct {
	*hwes.AggregateBase
}

func NewWardAggregate(id uuid.UUID) *WardAggregate {
	aggregate := &WardAggregate{}
	aggregate.AggregateBase = hwes.NewAggregateBase(WardAggregateType, id)
	return aggregate
}

type ServiceServer struct {
	authz hwauthz.AuthZ
	es    *esdb.Client
	pb.UnimplementedWardServiceServer
}

func NewServiceServer(authz hwauthz.AuthZ, es *esdb.Client) *ServiceServer {
	return &ServiceServer{
		authz:                          authz,
		es:                             es,
		UnimplementedWardServiceServer: pb.UnimplementedWardServiceServer{},
	}
}

func (s *ServiceServer) CreateWard(ctx context.Context, req *pb.CreateWardRequest) (*pb.CreateWardResponse, error) {
	log := zlog.Ctx(ctx)
	wardRepo := ward_repo.New(hwdb.GetDB())

	// check permissions
	user := commonPerm.UserFromCtx(ctx)
	organization := commonPerm.OrganizationFromCtx(ctx)

	check := hwauthz.NewPermissionCheck(user, perm.OrganizationCanUserCreateWard, organization)
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	row, err := wardRepo.CreateWard(ctx, req.GetName())
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	wardID := row.ID
	consistency := row.Consistency

	log.Info().
		Str("wardID", wardID.String()).
		Msg("ward created")

	// write relationship to permission graph
	relationship := hwauthz.NewRelationship(
		organization,
		perm.WardOrganization,
		perm.Ward(wardID),
	)

	_, err = s.authz.
		Create(relationship).
		Commit(ctx)
	if err != nil {
		return nil, fmt.Errorf("could not create spice relationship %s: %w", relationship.String(), err)
	}

	// add to "recently used"
	tracking.AddWardToRecentActivity(ctx, wardID.String())

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewWardAggregate(wardID),
		&pbEventsV1.WardCreatedEvent{
			Id: wardID.String(),
		},
	); err != nil {
		return nil, err
	}

	// return
	return &pb.CreateWardResponse{
		Id:          wardID.String(),
		Consistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (s *ServiceServer) GetWard(ctx context.Context, req *pb.GetWardRequest) (*pb.GetWardResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	// parse input
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permission
	user := commonPerm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, perm.WardCanUserGet, perm.Ward(id))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	ward, err := hwdb.Optional(wardRepo.GetWardById)(ctx, id)
	if ward == nil {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// return
	return &pb.GetWardResponse{
		Id:          ward.ID.String(),
		Name:        ward.Name,
		Consistency: common.ConsistencyToken(ward.Consistency).String(), //nolint:gosec
	}, nil
}

func (s *ServiceServer) GetWards(ctx context.Context, req *pb.GetWardsRequest) (*pb.GetWardsResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	wards, err := wardRepo.GetWards(ctx)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	user := commonPerm.UserFromCtx(ctx)
	checks := hwutil.Map(wards, func(w ward_repo.Ward) hwauthz.PermissionCheck {
		return hwauthz.NewPermissionCheck(user, perm.WardCanUserGet, perm.Ward(w.ID))
	})
	canGet, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}

	wards = hwutil.Filter(wards, func(i int, _ ward_repo.Ward) bool {
		return canGet[i]
	})

	return &pb.GetWardsResponse{
		Wards: hwutil.Map(wards, func(ward ward_repo.Ward) *pb.GetWardsResponse_Ward {
			return &pb.GetWardsResponse_Ward{
				Id:          ward.ID.String(),
				Name:        ward.Name,
				Consistency: common.ConsistencyToken(ward.Consistency).String(), //nolint:gosec
			}
		}),
	}, nil
}

func (s *ServiceServer) GetRecentWards(
	ctx context.Context,
	_ *pb.GetRecentWardsRequest,
) (*pb.GetRecentWardsResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())
	log := zlog.Ctx(ctx)

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

	// do query
	rows, err := wardRepo.GetWardsWithCounts(ctx, ward_repo.GetWardsWithCountsParams{
		StatusTodo:       int32(pb.TaskStatus_TASK_STATUS_TODO),
		StatusInProgress: int32(pb.TaskStatus_TASK_STATUS_IN_PROGRESS),
		StatusDone:       int32(pb.TaskStatus_TASK_STATUS_DONE),
		WardIds:          recentWardIDs,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// check permissions
	user := commonPerm.UserFromCtx(ctx)
	checks := hwutil.Map(rows, func(w ward_repo.GetWardsWithCountsRow) hwauthz.PermissionCheck {
		return hwauthz.NewPermissionCheck(user, perm.WardCanUserGet, perm.Ward(w.Ward.ID))
	})
	canGet, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}

	rows = hwutil.Filter(rows, func(i int, _ ward_repo.GetWardsWithCountsRow) bool {
		return canGet[i]
	})

	// return
	response := hwutil.Map(rows, func(row ward_repo.GetWardsWithCountsRow) *pb.GetRecentWardsResponse_Ward {
		return &pb.GetRecentWardsResponse_Ward{
			Id:              row.Ward.ID.String(),
			Name:            row.Ward.Name,
			BedCount:        uint32(row.BedCount),                                   //nolint:gosec
			TasksTodo:       uint32(row.TodoCount),                                  //nolint:gosec
			TasksInProgress: uint32(row.InProgressCount),                            //nolint:gosec
			TasksDone:       uint32(row.DoneCount),                                  //nolint:gosec
			Consistency:     common.ConsistencyToken(row.Ward.Consistency).String(), //nolint:gosec
		}
	})

	return &pb.GetRecentWardsResponse{Wards: response}, nil
}

func (s *ServiceServer) UpdateWard(ctx context.Context, req *pb.UpdateWardRequest) (*pb.UpdateWardResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	// parse input
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permissions
	user := commonPerm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, perm.WardCanUserUpdate, perm.Ward(id))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	consistency, err := wardRepo.UpdateWard(ctx, ward_repo.UpdateWardParams{
		ID:   id,
		Name: req.Name,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// add to "recently used"
	tracking.AddWardToRecentActivity(ctx, id.String())

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewWardAggregate(id),
		&pbEventsV1.WardUpdatedEvent{
			Id:   id.String(),
			Name: req.GetName(),
		},
	); err != nil {
		return nil, err
	}

	// return
	return &pb.UpdateWardResponse{
		Conflict:    nil,                                           // TODO
		Consistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (s *ServiceServer) DeleteWard(ctx context.Context, req *pb.DeleteWardRequest) (*pb.DeleteWardResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	// parse input
	wardID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permissions
	user := commonPerm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, perm.WardCanUserDelete, perm.Ward(wardID))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// check if exists
	exists, err := wardRepo.ExistsWard(ctx, wardID)
	if !exists {
		return nil, nil
	}
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// do query
	err = wardRepo.DeleteWard(ctx, wardID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// delete from permission graph
	if err := s.authz.DeleteObject(ctx, perm.Ward(wardID)); err != nil {
		return nil, fmt.Errorf("could not delete ward from spicedb: %w", err)
	}

	// remove from "recently used"
	tracking.RemoveWardFromRecentActivity(ctx, wardID.String())

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewWardAggregate(wardID),
		&pbEventsV1.WardDeletedEvent{
			Id: wardID.String(),
		},
	); err != nil {
		return nil, err
	}

	// return
	return &pb.DeleteWardResponse{}, nil
}

func (s *ServiceServer) GetWardOverviews(
	ctx context.Context,
	_ *pb.GetWardOverviewsRequest,
) (*pb.GetWardOverviewsResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	rows, err := wardRepo.GetWardsWithCounts(ctx, ward_repo.GetWardsWithCountsParams{
		StatusTodo:       int32(pb.TaskStatus_TASK_STATUS_TODO),
		StatusInProgress: int32(pb.TaskStatus_TASK_STATUS_IN_PROGRESS),
		StatusDone:       int32(pb.TaskStatus_TASK_STATUS_DONE),
		WardIds:          nil,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	user := commonPerm.UserFromCtx(ctx)
	checks := hwutil.Map(rows, func(w ward_repo.GetWardsWithCountsRow) hwauthz.PermissionCheck {
		return hwauthz.NewPermissionCheck(user, perm.WardCanUserGet, perm.Ward(w.Ward.ID))
	})
	canGet, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}

	rows = hwutil.Filter(rows, func(i int, _ ward_repo.GetWardsWithCountsRow) bool {
		return canGet[i]
	})

	resWards := hwutil.Map(rows, func(row ward_repo.GetWardsWithCountsRow) *pb.GetWardOverviewsResponse_Ward {
		return &pb.GetWardOverviewsResponse_Ward{
			Id:              row.Ward.ID.String(),
			Name:            row.Ward.Name,
			BedCount:        uint32(row.BedCount),                                   //nolint:gosec
			TasksTodo:       uint32(row.TodoCount),                                  //nolint:gosec
			TasksInProgress: uint32(row.InProgressCount),                            //nolint:gosec
			TasksDone:       uint32(row.DoneCount),                                  //nolint:gosec
			Consistency:     common.ConsistencyToken(row.Ward.Consistency).String(), //nolint:gosec
		}
	})

	return &pb.GetWardOverviewsResponse{Wards: resWards}, err
}

func (s *ServiceServer) GetWardDetails(
	ctx context.Context,
	req *pb.GetWardDetailsRequest,
) (*pb.GetWardDetailsResponse, error) {
	wardRepo := ward_repo.New(hwdb.GetDB())

	wardID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// permission check
	user := commonPerm.UserFromCtx(ctx)
	wardCheck := hwauthz.NewPermissionCheck(user, perm.WardCanUserGet, perm.Ward(wardID))
	if err := s.authz.Must(ctx, wardCheck); err != nil {
		return nil, err
	}

	rows, err := wardRepo.GetWardByIdWithRoomsBedsAndTaskTemplates(ctx, wardID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	} else if len(rows) == 0 {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}

	rooms := make([]*pb.GetWardDetailsResponse_Room, 0)
	roomChecks := make([]hwauthz.PermissionCheck, 0)
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
				Id:          row.RoomID.UUID.String(),
				Name:        *row.RoomName,
				Beds:        make([]*pb.GetWardDetailsResponse_Bed, 0),
				Consistency: common.ConsistencyToken(*row.RoomConsistency).String(), //nolint:gosec
			}
			rooms = append(rooms, room)
			roomsIndexMap[row.RoomID.UUID] = len(rooms) - 1
			roomChecks = append(roomChecks,
				hwauthz.NewPermissionCheck(user, roomPerm.RoomCanUserGet, roomPerm.Room(row.RoomID.UUID)))
		}

		if !row.BedID.Valid {
			continue
		}
		if _, processed := bedSet[row.BedID.UUID]; !processed {
			bed := &pb.GetWardDetailsResponse_Bed{
				Id:          row.BedID.UUID.String(),
				Name:        *row.BedName,
				Consistency: common.ConsistencyToken(*row.BedConsistency).String(), //nolint:gosec
			}
			room.Beds = append(room.Beds, bed)
			bedSet[row.BedID.UUID] = true

			// permission to beds is currently transitively granted by having access to the room
			// thus no check is needed
		}
	}

	// we could process both in one iteration,
	// but I suspect the deep branching required will result in slower performance
	// (and uglier code)
	// (bmn)

	taskTemplates := make([]*pb.GetWardDetailsResponse_TaskTemplate, 0)
	ttChecks := make([]hwauthz.PermissionCheck, 0)
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
				Id:          row.TaskTemplateID.UUID.String(),
				Name:        *row.TaskTemplateName,
				Subtasks:    make([]*pb.GetWardDetailsResponse_Subtask, 0),
				Consistency: common.ConsistencyToken(*row.TaskTemplateConsistency).String(), //nolint:gosec
			}
			taskTemplates = append(taskTemplates, taskTemplate)
			ttIndexMap[row.TaskTemplateID.UUID] = len(taskTemplates) - 1
			ttChecks = append(ttChecks, hwauthz.NewPermissionCheck(
				user,
				ttPerm.TaskTemplateCanUserGet,
				ttPerm.TaskTemplate(row.TaskTemplateID.UUID),
			))
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

	// do checks and filter out items where permissions are missing
	allowed, err := s.authz.BulkCheck(ctx, append(roomChecks, ttChecks...))
	if err != nil {
		return nil, err
	}
	rooms = hwutil.Filter(rooms, func(i int, _ *pb.GetWardDetailsResponse_Room) bool {
		return allowed[i]
	})
	taskTemplates = hwutil.Filter(taskTemplates, func(i int, _ *pb.GetWardDetailsResponse_TaskTemplate) bool {
		return allowed[len(roomChecks)+i]
	})

	ward := &pb.GetWardDetailsResponse{
		Id:            rows[0].WardID.String(),
		Name:          rows[0].WardName,
		Rooms:         rooms,
		TaskTemplates: taskTemplates,
		Consistency:   common.ConsistencyToken(rows[0].WardConsistency).String(), //nolint:gosec
	}

	return ward, nil
}
