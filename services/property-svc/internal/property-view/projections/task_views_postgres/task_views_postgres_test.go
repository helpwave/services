package task_views_postgres

import (
	"context"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgconn"
	"github.com/pashagolub/pgxmock/v3"
	"github.com/stretchr/testify/assert"
	"hwdb"
	"hwes"
	"property-svc/internal/property-view/aggregate"
	v1 "property-svc/internal/property-view/events/v1"
	"testing"
	"time"
)

type esClientStub struct{}

func (e esClientStub) SubscribeToPersistentSubscriptionToAll(ctx context.Context, groupName string, options esdb.SubscribeToPersistentSubscriptionOptions) (*esdb.PersistentSubscription, error) {
	return nil, nil
}

func (e esClientStub) CreatePersistentSubscriptionToAll(ctx context.Context, groupName string, options esdb.PersistentAllSubscriptionOptions) error {
	return nil
}

func setup() (ctx context.Context, projection *Projection, dbMock pgxmock.PgxPoolIface, teardown func()) {
	dbMock, err := pgxmock.NewPool()
	if err != nil {
		panic(err)
	}
	hwdb.TestingSetDB(dbMock)
	teardown = dbMock.Close

	projection = NewProjection(esClientStub{}, "testing")

	ctx = context.Background()

	return ctx, projection, dbMock, teardown
}

func TestPropertyViewTaskViewsProjection_Create_GreenPath(t *testing.T) {
	ctx, projection, dbMock, teardown := setup()
	defer teardown()

	dbMock.ExpectBeginTx(pgx.TxOptions{})
	dbMock.ExpectExec(`.*INSERT INTO property_view_rules.*`).
		WithArgs(uuid.MustParse("96e7ffe9-8b18-4e58-b2e1-a756fdbe1273")).
		WillReturnResult(pgconn.NewCommandTag("INSERT 1"))
	dbMock.ExpectExec(`.*INSERT INTO task_property_view_rules.*`).
		WithArgs(uuid.MustParse("96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"), uuid.NullUUID{}, uuid.NullUUID{UUID: uuid.MustParse("bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"), Valid: true}).
		WillReturnResult(pgconn.NewCommandTag("INSERT 1"))

	dbMock.ExpectCommit()

	data := []byte(`{
		"Matchers": {
			"WardId": null,
			"TaskId": "bca23ec4-e8fd-407d-8e7d-0d0a52ba097f"
		},
		"AlwaysInclude": ["a7ff7a87-7787-42b4-9aa8-037293ac9d90"],
		"DontAlwaysInclude": [],
		"RuleId": "96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"
	}`)

	err, action := projection.onPropertyRuleCreated(ctx, hwes.Event{
		EventID:         uuid.MustParse("227592bd-7aa0-4018-bcd4-c68fb06090ee"),
		EventType:       v1.PropertyRuleCreated,
		AggregateID:     uuid.MustParse("96e7ffe9-8b18-4e58-b2e1-a756fdbe1273"),
		AggregateType:   aggregate.PropertyViewRuleAggregateType,
		Data:            data,
		Timestamp:       time.Time{}, // warning: nonsensical default value, but not relevant for this test
		Version:         0,           // warning: nonsensical default value, but not relevant for this test
		CommitterUserID: nil,         // warning: nonsensical default value, but not relevant for this test
	})

	assert.NoError(t, err)
	assert.Equal(t, esdb.NackActionUnknown, action)

	// TODO
}
