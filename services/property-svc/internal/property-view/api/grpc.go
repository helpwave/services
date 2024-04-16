package api

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
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

func (PropertyViewGrpcService) UpdateTaskPropertyViewRule(ctx context.Context, req *pb.UpdateTaskPropertyViewRuleRequest) (*pb.UpdateTaskPropertyViewRuleResponse, error) {
	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, err
	}
	taskID, err := hwutil.ParseNullUUID(req.TaskId)
	if err != nil {
		return nil, err
	}

	if err := commandsV1.NewUpdatePropertyViewRuleCommandHandler()(ctx, models.TaskPropertyMatchers{
		WardID: wardID,
		TaskID: taskID,
	}); err != nil {
		return nil, err
	}

	// TODO
	return nil, status.Errorf(codes.Unimplemented, "method UpdatePatientPropertyViewRule not implemented")
}
