package api

import (
	"context"
	"fmt"
	pb "gen/services/property_svc/v1"
	"hwes"
	"hwutil"

	"github.com/pkg/errors"

	valuesApi "property-svc/internal/property-value/api"
	"property-svc/internal/property-view/handlers"
)

type PropertyViewGrpcService struct {
	pb.UnimplementedPropertyViewsServiceServer
	as       hwes.AggregateStore
	handlers *handlers.Handlers
}

func NewPropertyViewService(aggregateStore hwes.AggregateStore, handlers *handlers.Handlers) *PropertyViewGrpcService {
	return &PropertyViewGrpcService{as: aggregateStore, handlers: handlers}
}

var ErrNoMatcher = errors.New("no matcher provided")

func (s PropertyViewGrpcService) UpdatePropertyViewRule(
	ctx context.Context,
	req *pb.UpdatePropertyViewRuleRequest,
) (*pb.UpdatePropertyViewRuleResponse, error) {
	if req.FilterUpdate == nil {
		// nothing to update
		return &pb.UpdatePropertyViewRuleResponse{}, nil
	}

	matcher, err := valuesApi.DeMuxMatchers(req)
	if err != nil {
		return nil, fmt.Errorf("UpdatePropertyViewRule: error in demux: %w", err)
	}

	if matcher == nil {
		return nil, ErrNoMatcher
	}

	appendToAlwaysInclude, err := hwutil.StringsToUUIDs(hwutil.OrEmptySlice(
		req.GetFilterUpdate().GetAppendToAlwaysInclude(),
	))
	if err != nil {
		return nil, err
	}

	removeFromAlwaysInclude, err := hwutil.StringsToUUIDs(hwutil.OrEmptySlice(
		req.GetFilterUpdate().GetRemoveFromAlwaysInclude(),
	))
	if err != nil {
		return nil, err
	}

	appendToDontAlwaysInclude, err := hwutil.StringsToUUIDs(
		hwutil.OrEmptySlice(req.GetFilterUpdate().GetAppendToDontAlwaysInclude()),
	)
	if err != nil {
		return nil, err
	}

	removeFromDontAlwaysInclude, err := hwutil.StringsToUUIDs(
		hwutil.OrEmptySlice(req.GetFilterUpdate().GetRemoveFromDontAlwaysInclude()),
	)
	if err != nil {
		return nil, err
	}

	if len(appendToAlwaysInclude) == 0 &&
		len(removeFromAlwaysInclude) == 0 &&
		len(appendToDontAlwaysInclude) == 0 &&
		len(removeFromDontAlwaysInclude) == 0 {
		// nothing to update
		return &pb.UpdatePropertyViewRuleResponse{}, nil
	}

	_, err = s.handlers.Commands.V1.UpdatePropertyViewRule(ctx, matcher,
		appendToAlwaysInclude,
		removeFromAlwaysInclude,
		appendToDontAlwaysInclude,
		removeFromDontAlwaysInclude,
	)
	if err != nil {
		return nil, err
	}

	return &pb.UpdatePropertyViewRuleResponse{}, nil
}
