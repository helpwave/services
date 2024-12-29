package stories

import (
	"common/auth"
	"context"
	"errors"
	pbEventsV1 "gen/libs/events/v1"
	pb "gen/services/updates_svc/v1"
	"hwes"
	"hwes/eventstoredb"
	"hwutil"
	"io"
	"testing"
	"time"

	"github.com/google/uuid"

	"github.com/stretchr/testify/require"

	"github.com/stretchr/testify/assert"
)

// requireTrue because testify/require cannot be used in Goroutines ... and to prevent many if-conditions
func requireTrue(t *testing.T, b bool) {
	t.Helper()
	if b {
		return
	}
	t.Fail()
}

func TestOpenAndClosingReceiveUpdatesStream(t *testing.T) {
	ctx := context.Background()
	updatesClient := updatesServiceClient()

	req := &pb.ReceiveUpdatesRequest{}
	stream, err := updatesClient.ReceiveUpdates(ctx, req)
	assert.NoError(t, err)
	assert.NoError(t, stream.CloseSend())
}

func TestReceivingEvents(t *testing.T) {
	ctx := context.Background()
	es := eventstoredb.SetupEventStoreByEnv()

	updatesClient := updatesServiceClient()

	bedID := uuid.New()
	bedType := "bed"

	bedAggregate := hwes.NewAggregateBase(eventstoredb.EntityEventPrefix+"bed", bedID)

	req := &pb.ReceiveUpdatesRequest{}
	stream, err := updatesClient.ReceiveUpdates(ctx, req)
	require.NoError(t, err)

	go func() {
		// test receive one event that got emitted after subscribing
		res, err := stream.Recv()
		requireTrue(t, assert.NoError(t, err))

		resEntityEvent := res.GetEvent()
		requireTrue(t, assert.NotNil(t, resEntityEvent))
		requireTrue(t, assert.Equal(t, bedType, resEntityEvent.GetAggregateType()))
		requireTrue(t, assert.Equal(t, bedID.String(), resEntityEvent.GetAggregateId()))
		requireTrue(t, assert.Equal(t, "BED_CREATED_v1", resEntityEvent.GetEventType()))

		bedID2 := uuid.New()
		bed2Aggregate := hwes.NewAggregateBase(eventstoredb.EntityEventPrefix+"bed", bedID2)

		// store event
		if err := eventstoredb.SaveEntityEventForAggregate(ctx, es, bed2Aggregate,
			&pbEventsV1.BedCreatedEvent{Id: bedID2.String()},
		); err != nil {
			requireTrue(t, assert.NoError(t, err))
		}

		// test receive one event that got emitted before subscribing with previous revision

		req2 := &pb.ReceiveUpdatesRequest{Revision: hwutil.PtrTo(res.Revision)}
		stream2, err := updatesClient.ReceiveUpdates(ctx, req2)
		requireTrue(t, assert.NoError(t, err))

		// receive event
		res2, err := stream2.Recv()
		requireTrue(t, assert.NoError(t, err))

		res2EntityEvent := res2.GetEvent()
		requireTrue(t, assert.NotNil(t, res2EntityEvent))
		requireTrue(t, assert.Equal(t, bedType, res2EntityEvent.GetAggregateType()))
		requireTrue(t, assert.Equal(t, bedID2.String(), res2EntityEvent.GetAggregateId()))
		requireTrue(t, assert.Equal(t, "BED_CREATED_v1", res2EntityEvent.GetEventType()))
	}()

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, es, bedAggregate,
		&pbEventsV1.BedCreatedEvent{Id: bedID.String()},
	); err != nil {
		require.NoError(t, err)
	}
}

func TestAutoClosingWhenTokenExpiresReceiveUpdateStream(t *testing.T) {
	ctx := context.Background()
	updatesClient := updatesServiceClient()

	auth.FakeTokenValidFor = time.Second * 3

	req := &pb.ReceiveUpdatesRequest{}

	ctxTimeout := auth.FakeTokenValidFor + (time.Second * 3)
	ctx, cancel := context.WithTimeout(ctx, ctxTimeout)
	defer cancel()

	timeBeforeOpeningStream := time.Now()
	stream, err := updatesClient.ReceiveUpdates(ctx, req)
	require.NoError(t, err)

	done := make(chan bool)
	go func() {
		defer close(done)
		for {
			_, err := stream.Recv()
			if errors.Is(err, io.EOF) {
				elapsedTimeBounds := time.Second
				elapsedTime := time.Since(timeBeforeOpeningStream).Round(elapsedTimeBounds)
				if elapsedTime != auth.FakeTokenValidFor {
					t.Errorf(
						"Connection timeout is out of bounds (lower and upper bounds is %s) with %s",
						elapsedTimeBounds, elapsedTime,
					)
					return
				}
				return
			}
			assert.NoError(t, err)
		}
	}()

	select {
	case <-done:
	case <-ctx.Done():
		t.Errorf(
			"ReceiveUpdates did not closed the connection in time. Test reached the timeout of %s.",
			ctxTimeout,
		)
	}
}
