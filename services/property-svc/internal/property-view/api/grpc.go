package api

import (
	"context"
	"fmt"
	pb "gen/proto/services/property_svc/v1"
	"github.com/pkg/errors"
	"hwes"
	"hwutil"
	valuesApi "property-svc/internal/property-value/api"
	commandsV1 "property-svc/internal/property-view/commands/v1"
)

type PropertyViewGrpcService struct {
	pb.UnimplementedPropertyViewsServiceServer
	as hwes.AggregateStore
}

func NewPropertyViewService(aggregateStore hwes.AggregateStore) *PropertyViewGrpcService {
	return &PropertyViewGrpcService{as: aggregateStore}
}

func (s PropertyViewGrpcService) UpdatePropertyViewRule(ctx context.Context, req *pb.UpdatePropertyViewRuleRequest) (*pb.UpdatePropertyViewRuleResponse, error) {
	if req.FilterUpdate == nil {
		// nothing to update
		return &pb.UpdatePropertyViewRuleResponse{}, nil
	}

	matcher, err := valuesApi.DeMuxMatchers(req)
	if err != nil {
		return nil, fmt.Errorf("UpdatePropertyViewRule: error in demux: %w", err)
	}

	if matcher == nil {
		return nil, errors.New("UpdatePropertyViewRule: no matcher provided")
	}

	appendToAlwaysInclude, err := hwutil.StringsToUUIDs(hwutil.OrEmptySlice(req.FilterUpdate.AppendToAlwaysInclude))
	if err != nil {
		return nil, err
	}

	removeFromAlwaysInclude, err := hwutil.StringsToUUIDs(hwutil.OrEmptySlice(req.FilterUpdate.RemoveFromAlwaysInclude))
	if err != nil {
		return nil, err
	}

	appendToDontAlwaysInclude, err := hwutil.StringsToUUIDs(hwutil.OrEmptySlice(req.FilterUpdate.AppendToDontAlwaysInclude))
	if err != nil {
		return nil, err
	}

	removeFromDontAlwaysInclude, err := hwutil.StringsToUUIDs(hwutil.OrEmptySlice(req.FilterUpdate.RemoveFromDontAlwaysInclude))
	if err != nil {
		return nil, err
	}

	if len(appendToAlwaysInclude) == 0 && len(removeFromAlwaysInclude) == 0 && len(appendToDontAlwaysInclude) == 0 && len(removeFromDontAlwaysInclude) == 0 {
		// nothing to update
		return &pb.UpdatePropertyViewRuleResponse{}, nil
	}

	if err := commandsV1.NewUpdatePropertyViewRuleCommandHandler(s.as)(ctx, matcher,
		appendToAlwaysInclude,
		removeFromAlwaysInclude,
		appendToDontAlwaysInclude,
		removeFromDontAlwaysInclude,
	); err != nil {
		return nil, err
	}

	return &pb.UpdatePropertyViewRuleResponse{}, nil
}
