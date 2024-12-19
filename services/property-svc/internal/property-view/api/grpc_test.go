package api_test

import (
	"bytes"
	"common"
	common_test "common/test"
	"context"
	pb "gen/services/property_svc/v1"
	"hwauthz/test"
	"hwdb"
	"hwes"
	hwes_test "hwes/test"
	"hwutil"
	"strings"
	"testing"
	"text/template"
	"time"

	"github.com/stretchr/testify/require"

	"property-svc/internal/property-view/aggregate"
	"property-svc/internal/property-view/api"
	v1 "property-svc/internal/property-view/events/v1"
	"property-svc/internal/property-view/handlers"

	"github.com/google/uuid"
	"github.com/pashagolub/pgxmock/v4"
	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
)

func server() (context.Context, pb.PropertyViewsServiceClient, *hwes_test.AggregateStore, func()) {
	// Build gRPC service
	aggregateStore := hwes_test.NewAggregateStore()
	propertyViewHandlers := handlers.NewPropertyViewHandlers(aggregateStore, test.NewTrueAuthZ())
	grpcService := api.NewPropertyViewService(aggregateStore, propertyViewHandlers)

	ctx := common.Setup("property-svc", "test", common.WithFakeAuthOnly())

	// Start Server
	grpcServer := grpc.NewServer(common.DefaultServerOptions()...)
	pb.RegisterPropertyViewsServiceServer(grpcServer, grpcService)
	conn, closer := common_test.StartGRPCServer(ctx, grpcServer)

	client := pb.NewPropertyViewsServiceClient(conn)

	return ctx, client, aggregateStore, closer
}

func setup() (
	ctx context.Context,
	client pb.PropertyViewsServiceClient,
	as *hwes_test.AggregateStore,
	dbMock pgxmock.PgxPoolIface,
	teardown func(),
) {
	ctx, client, as, closer := server()
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

func TestPropertyViewGrpcService_UpdatePropertyViewRule_Validation(t *testing.T) {
	t.Parallel()

	ctx, client, _, dbMock, teardown := setup()
	defer teardown()

	// Empty Request
	_, err := client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		FilterUpdate: nil,
		Matcher:      nil,
	})
	require.Error(t, err, "accepts empty requests")

	// Semi-Empty Request
	_, err = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: nil,
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     nil,
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	require.NoError(t, err, "rejects semi-empty requests")

	// Array-based Semi-Empty Request
	_, err = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: nil,
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       make([]string, 0),
			RemoveFromAlwaysInclude:     make([]string, 0),
			AppendToDontAlwaysInclude:   make([]string, 0),
			RemoveFromDontAlwaysInclude: make([]string, 0),
		},
	})
	require.NoError(t, err, "rejects array based semi-empty requests")

	// Invalid WardID
	_, err = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: hwutil.PtrTo("asdasdads"),
				TaskId: nil,
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     nil,
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	require.Error(t, err, "accepts invalid ward_id")

	// Invalid TaskID
	_, err = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				TaskId: hwutil.PtrTo("asdasdads"),
				WardId: nil,
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     nil,
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	require.Error(t, err, "accepts invalid task_id")

	// Valid IDs
	_, err = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: hwutil.PtrTo("e602f938-66c5-4a08-a251-4aef94a98060"),
				TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     nil,
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	require.NoError(t, err, "rejects valid matchers")

	// Invalid updates
	_, err = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: hwutil.PtrTo("e602f938-66c5-4a08-a251-4aef94a98060"),
				TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       nil,
			RemoveFromAlwaysInclude:     []string{"asdasdasda"},
			AppendToDontAlwaysInclude:   nil,
			RemoveFromDontAlwaysInclude: nil,
		},
	})
	require.Error(t, err, "accepts invalid updates")

	// Fully valid request

	dbMock.ExpectQuery(".*").
		WithArgs(
			uuid.NullUUID{},
			uuid.NullUUID{UUID: uuid.MustParse("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"), Valid: true},
		).
		WillReturnRows(pgxmock.NewRows([]string{}))

	_, err = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude: nil,
			RemoveFromAlwaysInclude: []string{
				"a7ff7a87-7787-42b4-9aa8-037293ac9d90",
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
			},
			AppendToDontAlwaysInclude: []string{
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
				"db59dd1b-fd1c-488e-a73c-6926abe68c34",
			},
			RemoveFromDontAlwaysInclude: []string{"08b23992-9489-41d2-b80d-d7d49c4c9168"},
		},
	})
	require.NoError(t, err, "rejects fully valid request")
}

func TestPropertyViewGrpcService_UpdatePropertyViewRule_AllEmptyNoEffect(t *testing.T) {
	t.Parallel()

	ctx, client, as, _, teardown := setup()
	defer teardown()

	// Valid IDs
	_, _ = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: hwutil.PtrTo("e602f938-66c5-4a08-a251-4aef94a98060"),
				TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude:       []string{},
			RemoveFromAlwaysInclude:     []string{},
			AppendToDontAlwaysInclude:   []string{},
			RemoveFromDontAlwaysInclude: []string{},
		},
	})

	as.ExpectToBeEmpty(t)
}

func TestPropertyViewGrpcService_UpdatePropertyViewRule_TaskPropertyMatcher_GreenPath_Created(t *testing.T) {
	t.Parallel()

	ctx, client, as, dbMock, teardown := setup()
	defer teardown()

	// Mock Empty Row response from database
	dbMock.ExpectQuery(".*").
		WithArgs(
			uuid.NullUUID{},
			uuid.NullUUID{UUID: uuid.MustParse("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"), Valid: true},
		).
		WillReturnRows(pgxmock.NewRows([]string{}))

	_, _ = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude: nil,
			RemoveFromAlwaysInclude: []string{
				"a7ff7a87-7787-42b4-9aa8-037293ac9d90",
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
			},
			AppendToDontAlwaysInclude: []string{
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
				"db59dd1b-fd1c-488e-a73c-6926abe68c34",
			},
			RemoveFromDontAlwaysInclude: []string{"08b23992-9489-41d2-b80d-d7d49c4c9168"},
		},
	})

	as.ExpectAnyStream(t, func(streamName string, events []hwes.Event) bool {
		if !assert.NotEmpty(t, events) {
			return false
		}
		event := events[0]

		expData := `{
			"AlwaysInclude":[],
			"DontAlwaysInclude": [
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
				"db59dd1b-fd1c-488e-a73c-6926abe68c34"
			],
			"Matchers":{
				"TaskId":"bca23ec4-e8fd-407d-8e7d-0d0a52ba097f",
				"WardId":null,
				"PropertyMatcherType":"task_property_matcher"
			},
			"RuleID": "{{ . }}"
		}`
		s := ""
		buf := bytes.NewBufferString(s)
		tmplt, _ := template.New("").Parse(expData)
		_ = tmplt.ExecuteTemplate(
			buf,
			"",
			strings.Split(streamName, aggregate.PropertyViewRuleAggregateType+"-")[1],
		)
		s = buf.String()

		return assert.Equal(t, v1.PropertyRuleCreated, event.EventType) &&
			assert.Equal(t, hwes.AggregateType(aggregate.PropertyViewRuleAggregateType), event.AggregateType) &&
			assert.JSONEq(t, s, string(event.Data))
	})
}

func TestPropertyViewGrpcService_UpdatePropertyViewRule_PatientPropertyMatcher_GreenPath_Created(t *testing.T) {
	t.Parallel()

	ctx, client, as, dbMock, teardown := setup()
	defer teardown()

	// Mock Empty Row response from database
	dbMock.ExpectQuery(".*").
		WithArgs(
			uuid.NullUUID{},
			uuid.NullUUID{UUID: uuid.MustParse("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"), Valid: true},
		).
		WillReturnRows(pgxmock.NewRows([]string{}))

	_, _ = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_PatientMatcher{
			PatientMatcher: &pb.PatientPropertyMatcher{
				WardId:    nil,
				PatientId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude: nil,
			RemoveFromAlwaysInclude: []string{
				"a7ff7a87-7787-42b4-9aa8-037293ac9d90",
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
			},
			AppendToDontAlwaysInclude: []string{
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
				"db59dd1b-fd1c-488e-a73c-6926abe68c34",
			},
			RemoveFromDontAlwaysInclude: []string{"08b23992-9489-41d2-b80d-d7d49c4c9168"},
		},
	})

	as.ExpectAnyStream(t, func(streamName string, events []hwes.Event) bool {
		if !assert.NotEmpty(t, events) {
			return false
		}
		event := events[0]

		expData := `{
			"AlwaysInclude":[],
			"DontAlwaysInclude": [
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
				"db59dd1b-fd1c-488e-a73c-6926abe68c34"
			],
			"Matchers":{
				"PatientID":"bca23ec4-e8fd-407d-8e7d-0d0a52ba097f",
				"WardID":null,
				"PropertyMatcherType":"patient_property_matcher"
			},
			"RuleID": "{{ . }}"
		}`
		s := ""
		buf := bytes.NewBufferString(s)
		tmplt, _ := template.New("").Parse(expData)
		_ = tmplt.ExecuteTemplate(
			buf,
			"",
			strings.Split(streamName, aggregate.PropertyViewRuleAggregateType+"-")[1],
		)
		s = buf.String()

		return assert.Equal(t, v1.PropertyRuleCreated, event.EventType) &&
			assert.Equal(t, hwes.AggregateType(aggregate.PropertyViewRuleAggregateType), event.AggregateType) &&
			assert.JSONEq(t, s, string(event.Data))
	})
}

func TestPropertyViewGrpcService_UpdatePropertyViewRule_TaskPropertyMatcher_GreenPath_Updated(t *testing.T) {
	t.Parallel()

	ctx, client, as, dbMock, teardown := setup()
	defer teardown()

	// Mock Existing Row response from database
	dbMock.ExpectQuery(".*").
		WithArgs(
			uuid.NullUUID{},
			uuid.NullUUID{UUID: uuid.MustParse("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"), Valid: true},
		).
		WillReturnRows(
			pgxmock.
				NewRows([]string{"property_view_rules"}).
				AddRow("96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"),
		)

	streamsPrior := make(map[string][]hwes.Event)

	priorData := []byte(`{
		"Matchers": {
			"WardId": null,
			"TaskId": "bca23ec4-e8fd-407d-8e7d-0d0a52ba097f",
			"PropertyMatcherType": "task_property_matcher"
		},
		"AlwaysInclude": ["a7ff7a87-7787-42b4-9aa8-037293ac9d90"],
		"DontAlwaysInclude": [],
		"RuleID": "96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"
	}`)

	nameOfRelevantStream := aggregate.PropertyViewRuleAggregateType + "-96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"
	streamsPrior[nameOfRelevantStream] = []hwes.Event{
		{
			EventID:         uuid.MustParse("227592bd-7aa0-4018-bcd4-c68fb06090ee"),
			EventType:       v1.PropertyRuleCreated,
			AggregateID:     uuid.MustParse("96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"),
			AggregateType:   aggregate.PropertyViewRuleAggregateType,
			Data:            priorData,
			Timestamp:       time.Time{}, // warning: nonsensical default value, but not relevant for this test
			Version:         0,           // warning: nonsensical default value, but not relevant for this test
			CommitterUserID: nil,         // warning: nonsensical default value, but not relevant for this test
		},
	}
	as.SetStreams(streamsPrior)

	_, _ = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude: nil,
			RemoveFromAlwaysInclude: []string{
				"a7ff7a87-7787-42b4-9aa8-037293ac9d90",
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
			},
			AppendToDontAlwaysInclude: []string{
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
				"db59dd1b-fd1c-488e-a73c-6926abe68c34",
			},
			RemoveFromDontAlwaysInclude: []string{"08b23992-9489-41d2-b80d-d7d49c4c9168"},
		},
	})

	as.ExpectAnyStream(t, func(streamName string, events []hwes.Event) bool {
		if streamName != nameOfRelevantStream {
			return false
		}
		if !assert.Len(t, events, 2, "updated event was not created") {
			return false
		}
		event := events[1] // new event

		expData := `{
			"AppendToAlwaysInclude":[],
			"RemoveFromAlwaysInclude":["a7ff7a87-7787-42b4-9aa8-037293ac9d90", "08b23992-9489-41d2-b80d-d7d49c4c9168"],
			"AppendToDontAlwaysInclude":["08b23992-9489-41d2-b80d-d7d49c4c9168", "db59dd1b-fd1c-488e-a73c-6926abe68c34"],
			"RemoveFromDontAlwaysInclude": ["08b23992-9489-41d2-b80d-d7d49c4c9168"],
			"RuleID": "{{ . }}"
		}`
		s := ""
		buf := bytes.NewBufferString(s)
		tmplt, _ := template.New("").Parse(expData)
		_ = tmplt.ExecuteTemplate(
			buf,
			"",
			strings.Split(streamName, aggregate.PropertyViewRuleAggregateType+"-")[1],
		)
		s = buf.String()

		return assert.Equal(t, v1.PropertyRuleListsUpdated, event.EventType) &&
			assert.Equal(t, hwes.AggregateType(aggregate.PropertyViewRuleAggregateType), event.AggregateType) &&
			assert.JSONEq(t, s, string(event.Data))
	})
}

func TestPropertyViewGrpcService_UpdatePropertyViewRule_PatientPropertyMatcher_GreenPath_Updated(t *testing.T) {
	t.Parallel()

	ctx, client, as, dbMock, teardown := setup()
	defer teardown()

	// Mock Existing Row response from database
	dbMock.ExpectQuery(".*").
		WithArgs(
			uuid.NullUUID{},
			uuid.NullUUID{UUID: uuid.MustParse("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"), Valid: true},
		).
		WillReturnRows(
			pgxmock.
				NewRows([]string{"property_view_rules"}).
				AddRow("96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"),
		)

	streamsPrior := make(map[string][]hwes.Event)

	priorData := []byte(`{
		"Matchers": {
			"WardId": null,
			"TaskId": "bca23ec4-e8fd-407d-8e7d-0d0a52ba097f",
			"PropertyMatcherType": "patient_property_matcher"
		},
		"AlwaysInclude": ["a7ff7a87-7787-42b4-9aa8-037293ac9d90"],
		"DontAlwaysInclude": [],
		"RuleID": "96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"
	}`)

	nameOfRelevantStream := aggregate.PropertyViewRuleAggregateType + "-96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"
	streamsPrior[nameOfRelevantStream] = []hwes.Event{
		{
			EventID:         uuid.MustParse("227592bd-7aa0-4018-bcd4-c68fb06090ee"),
			EventType:       v1.PropertyRuleCreated,
			AggregateID:     uuid.MustParse("96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"),
			AggregateType:   aggregate.PropertyViewRuleAggregateType,
			Data:            priorData,
			Timestamp:       time.Time{}, // warning: nonsensical default value, but not relevant for this test
			Version:         0,           // warning: nonsensical default value, but not relevant for this test
			CommitterUserID: nil,         // warning: nonsensical default value, but not relevant for this test
		},
	}
	as.SetStreams(streamsPrior)

	_, _ = client.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		Matcher: &pb.UpdatePropertyViewRuleRequest_PatientMatcher{
			PatientMatcher: &pb.PatientPropertyMatcher{
				WardId:    nil,
				PatientId: hwutil.PtrTo("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"),
			},
		},
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude: nil,
			RemoveFromAlwaysInclude: []string{
				"a7ff7a87-7787-42b4-9aa8-037293ac9d90",
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
			},
			AppendToDontAlwaysInclude: []string{
				"08b23992-9489-41d2-b80d-d7d49c4c9168",
				"db59dd1b-fd1c-488e-a73c-6926abe68c34",
			},
			RemoveFromDontAlwaysInclude: []string{"08b23992-9489-41d2-b80d-d7d49c4c9168"},
		},
	})

	as.ExpectAnyStream(t, func(streamName string, events []hwes.Event) bool {
		if streamName != nameOfRelevantStream {
			return false
		}
		if !assert.Len(t, events, 2, "updated event was not created") {
			return false
		}
		event := events[1] // new event

		expData := `{
			"AppendToAlwaysInclude":[],
			"RemoveFromAlwaysInclude":["a7ff7a87-7787-42b4-9aa8-037293ac9d90", "08b23992-9489-41d2-b80d-d7d49c4c9168"],
			"AppendToDontAlwaysInclude":["08b23992-9489-41d2-b80d-d7d49c4c9168", "db59dd1b-fd1c-488e-a73c-6926abe68c34"],
			"RemoveFromDontAlwaysInclude": ["08b23992-9489-41d2-b80d-d7d49c4c9168"],
			"RuleID": "{{ . }}"
		}`
		s := ""
		buf := bytes.NewBufferString(s)
		tmplt, _ := template.New("").Parse(expData)
		_ = tmplt.ExecuteTemplate(
			buf,
			"",
			strings.Split(streamName, aggregate.PropertyViewRuleAggregateType+"-")[1],
		)
		s = buf.String()

		return assert.Equal(t, v1.PropertyRuleListsUpdated, event.EventType) &&
			assert.Equal(t, hwes.AggregateType(aggregate.PropertyViewRuleAggregateType), event.AggregateType) &&
			assert.JSONEq(t, s, string(event.Data))
	})
}
