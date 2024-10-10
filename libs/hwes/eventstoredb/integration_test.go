package eventstoredb

import (
	"context"
	"fmt"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"github.com/stretchr/testify/assert"
	"hwes"
	"hwtesting"
	"os"
	"testing"
	"time"
)

var endpoint string

func TestMain(m *testing.M) {
	ctx, cancel := context.WithCancel(context.Background())

	zlog.Info().Msg("starting containers")
	endpoints, teardownContainers := hwtesting.StartContainers(ctx, hwtesting.Eventstore)

	endpoint = fmt.Sprintf("esdb://%s:%s@%s?tls=false",
		hwtesting.EsUser, hwtesting.EsPassword, endpoints.Get(hwtesting.Eventstore))

	exit := m.Run()

	teardownContainers()
	cancel()
	os.Exit(exit)
}

func TestLoadN(t *testing.T) {
	zlog.Info().Str("endpoint", endpoint).Msg(t.Name())
	client := SetupEventStore(endpoint)
	as := NewAggregateStore(client)
	ctx := context.Background()

	id := uuid.New()
	eventType := t.Name()

	sendAggregate := hwes.NewAggregateBase(hwes.AggregateType(eventType), id)
	sendAggregate.RegisterEventListener(eventType, func(evt hwes.Event) error { return nil })

	for i := 0; i < 4; i++ {
		event, _ := hwes.NewEvent(sendAggregate, eventType, hwes.WithContext(ctx))
		assert.NoError(t, sendAggregate.Apply(event))
	}

	_, err := as.Save(ctx, sendAggregate)
	assert.NoError(t, err)

	time.Sleep(time.Millisecond * 100)

	rxAggregate := hwes.NewAggregateBase(hwes.AggregateType(eventType), id)
	rxAggregate.RegisterEventListener(eventType, func(evt hwes.Event) error { return nil })
	assert.Len(t, sendAggregate.GetAppliedEvents(), 0)

	// LoadN 0 does nothing
	err = as.LoadN(ctx, rxAggregate, 0)
	assert.NoError(t, err)
	assert.Len(t, rxAggregate.GetAppliedEvents(), 0)

	// LoadN 1 loads the first event
	err = as.LoadN(ctx, rxAggregate, 1)
	assert.NoError(t, err)
	assert.Len(t, rxAggregate.GetAppliedEvents(), 1)
	assert.Equal(t, rxAggregate.GetAppliedEvents()[0].Version, uint64(0))

	// LoadN 1 loads another event
	err = as.LoadN(ctx, rxAggregate, 1)
	assert.NoError(t, err)
	assert.Len(t, rxAggregate.GetAppliedEvents(), 2)
	assert.Equal(t, rxAggregate.GetAppliedEvents()[1].Version, uint64(1))

	// LoadN 2 loads the rest
	err = as.LoadN(ctx, rxAggregate, 2)
	assert.NoError(t, err)
	assert.Len(t, rxAggregate.GetAppliedEvents(), 4)
	assert.Equal(t, rxAggregate.GetAppliedEvents()[2].Version, uint64(2))
	assert.Equal(t, rxAggregate.GetAppliedEvents()[3].Version, uint64(3))

	// LoadN 1 now does nothing anymore
	err = as.LoadN(ctx, rxAggregate, 1)
	assert.NoError(t, err)
	assert.Len(t, rxAggregate.GetAppliedEvents(), 4)

}
