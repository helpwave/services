package api

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"hwes"
	"hwutil"
	commandsV1 "property-svc/internal/property-view/commands/v1"
	"property-svc/internal/property-view/models"
)

type PropertyViewGrpcService struct {
	pb.UnimplementedPropertyViewsServiceServer
	as hwes.AggregateStore
}

func NewPropertyViewService(aggregateStore hwes.AggregateStore) *PropertyViewGrpcService {
	return &PropertyViewGrpcService{as: aggregateStore}
}

func (s PropertyViewGrpcService) UpdateTaskPropertyViewRule(ctx context.Context, req *pb.UpdateTaskPropertyViewRuleRequest) (*pb.UpdateTaskPropertyViewRuleResponse, error) {
	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, err
	}
	taskID, err := hwutil.ParseNullUUID(req.TaskId)
	if err != nil {
		return nil, err
	}

	// when writing another view rule handler, move this into a common function

	appendToAlwaysInclude, err := hwutil.StringsToUUIDs(req.FilterUpdate.AppendToAlwaysInclude)
	if err != nil {
		return nil, err
	}

	removeFromAlwaysInclude, err := hwutil.StringsToUUIDs(req.FilterUpdate.RemoveFromAlwaysInclude)
	if err != nil {
		return nil, err
	}

	appendToDontAlwaysInclude, err := hwutil.StringsToUUIDs(req.FilterUpdate.AppendToDontAlwaysInclude)
	if err != nil {
		return nil, err
	}

	removeFromDontAlwaysInclude, err := hwutil.StringsToUUIDs(req.FilterUpdate.RemoveFromDontAlwaysInclude)
	if err != nil {
		return nil, err
	}

	// ---

	if err := commandsV1.NewUpdatePropertyViewRuleCommandHandler(s.as)(ctx, models.TaskPropertyMatchers{
		WardID: wardID,
		TaskID: taskID,
	},
		appendToAlwaysInclude,
		removeFromAlwaysInclude,
		appendToDontAlwaysInclude,
		removeFromDontAlwaysInclude,
	); err != nil {
		return nil, err
	}

	return &pb.UpdateTaskPropertyViewRuleResponse{}, nil
}
