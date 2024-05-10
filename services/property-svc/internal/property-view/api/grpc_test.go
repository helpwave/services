package api_test

import (
	"common"
	common_test "common/test"
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/pashagolub/pgxmock/v3"
	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
	"hwdb"
	hwes_test "hwes/test"
	"hwutil"
	"property-svc/internal/property-view/api"
	"testing"
)

func server(ctx context.Context) (pb.PropertyViewsServiceClient, *hwes_test.AggregateStore, func()) {
	// Build gRPC service
	aggregateStore := hwes_test.NewAggregateStore()
	grpcService := api.NewPropertyViewService(aggregateStore)

	common.Setup("property-svc", "test", common.WithFakeAuthOnly())

	// Start Server
	grpcServer := grpc.NewServer(common.DefaultInterceptorChain())
	pb.RegisterPropertyViewsServiceServer(grpcServer, grpcService)
	conn, closer := common_test.StartGRPCServer(ctx, grpcServer)

	client := pb.NewPropertyViewsServiceClient(conn)

	return client, aggregateStore, closer
}

func setup(t *testing.T) (ctx context.Context, client pb.PropertyViewsServiceClient, as *hwes_test.AggregateStore, dbMock pgxmock.PgxPoolIface, teardown func()) {
	ctx = context.Background()
	client, as, closer := server(ctx)
	ctx = common_test.AuthenticatedUserContext(ctx, uuid.NewString())

	dbMock, err := pgxmock.NewPool()
	if err != nil {
		panic(err)
	}
	hwdb.TestingSetDB(dbMock)

	teardown = func() {
		closer()
		dbMock.Close()
	}

	return ctx, client, as, dbMock, teardown
}

func TestPropertyViewGrpcService_UpdateTaskPropertyViewRule_Validation(t *testing.T) {
	ctx, client, _, dbMock, teardown := setup(t)
	defer teardown()

	// Empty Request
	_, err := client.UpdateTaskPropertyViewRule(ctx, &pb.UpdateTaskPropertyViewRuleRequest{
		WardId:       nil,
		TaskId:       nil,
		FilterUpdate: nil,
	})
	assert.Error(t, err, "accepts empty requests")

	// Semi-Empty Request
	_, err = client.UpdateTaskPropertyViewRule(ctx, &pb.UpdateTaskPropertyViewRuleRequest{
		WardId: nil,
		TaskId: nil,
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     nil,
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	assert.NoError(t, err, "rejects semi-empty requests")

	// Array-based Semi-Empty Request
	_, err = client.UpdateTaskPropertyViewRule(ctx, &pb.UpdateTaskPropertyViewRuleRequest{
		WardId: nil,
		TaskId: nil,
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       make([]string, 0),
			RemoveFromAlwaysInclude:     make([]string, 0),
			AppendToDontAlwaysInclude:   make([]string, 0),
			RemoveFromDontAlwaysInclude: make([]string, 0),
		},
	})
	assert.NoError(t, err, "rejects array based semi-empty requests")

	// Invalid WardID
	_, err = client.UpdateTaskPropertyViewRule(ctx, &pb.UpdateTaskPropertyViewRuleRequest{
		WardId: hwutil.PtrTo("asdasdads"),
		TaskId: nil,
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     nil,
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	assert.Error(t, err, "accepts invalid ward_id")

	// Invalid TaskID
	_, err = client.UpdateTaskPropertyViewRule(ctx, &pb.UpdateTaskPropertyViewRuleRequest{
		WardId: nil,
		TaskId: hwutil.PtrTo("asdasdads"),
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     nil,
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	assert.Error(t, err, "accepts invalid task_id")

	// Valid IDs
	_, err = client.UpdateTaskPropertyViewRule(ctx, &pb.UpdateTaskPropertyViewRuleRequest{
		WardId: hwutil.PtrTo("e602f938-66c5-4a08-a251-4aef94a98060"),
		TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     nil,
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	assert.NoError(t, err, "rejects valid matchers")

	// Invalid updates
	_, err = client.UpdateTaskPropertyViewRule(ctx, &pb.UpdateTaskPropertyViewRuleRequest{
		WardId: hwutil.PtrTo("e602f938-66c5-4a08-a251-4aef94a98060"),
		TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     []string{"asdasdasda"},
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	assert.Error(t, err, "accepts invalid updates")

	// Fully valid request

	dbMock.ExpectQuery(".*").
		WithArgs(uuid.NullUUID{}, uuid.NullUUID{UUID: uuid.MustParse("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"), Valid: true}).
		WillReturnRows(pgxmock.NewRows([]string{}))

	_, err = client.UpdateTaskPropertyViewRule(ctx, &pb.UpdateTaskPropertyViewRuleRequest{
		WardId: nil,
		TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     []string{"a7ff7a87-7787-42b4-9aa8-037293ac9d90", "08b23992-9489-41d2-b80d-d7d49c4c9168"},
			AppendToDontAlwaysInclude:   []string{"08b23992-9489-41d2-b80d-d7d49c4c9168", "db59dd1b-fd1c-488e-a73c-6926abe68c34"},
			RemoveFromDontAlwaysInclude: []string{"08b23992-9489-41d2-b80d-d7d49c4c9168"},
		},
	})
	assert.NoError(t, err, "rejects fully valid request")
}

func TestPropertyViewGrpcService_UpdateTaskPropertyViewRule_AllEmptyNoEffect(t *testing.T) {
	ctx, client, as, _, teardown := setup(t)
	defer teardown()

	// Valid IDs
	_, _ = client.UpdateTaskPropertyViewRule(ctx, &pb.UpdateTaskPropertyViewRuleRequest{
		WardId: hwutil.PtrTo("e602f938-66c5-4a08-a251-4aef94a98060"),
		TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       []string{},
			RemoveFromAlwaysInclude:     []string{},
			AppendToDontAlwaysInclude:   []string{},
			RemoveFromDontAlwaysInclude: []string{},
		},
	})

	as.ExpectToBeEmpty(t)
}
