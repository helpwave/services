package stories

import (
	"common/auth"
	"context"
	"errors"
	pbEventsV1 "gen/libs/events/v1"
	pb "gen/services/updates_svc/v1"
	"hwes/eventstoredb"
	"hwutil"
	"io"
	"testing"
	"time"

	"github.com/google/uuid"

	"github.com/stretchr/testify/require"

	"github.com/stretchr/testify/assert"
)

// requireTrueBool because require. cannot be used in Goroutines and to prevent many if-conditions
func requireTrueBool(t *testing.T, b bool) {
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

	bedId := uuid.New()

	req := &pb.ReceiveUpdatesRequest{}
	stream, err := updatesClient.ReceiveUpdates(ctx, req)
	require.NoError(t, err)

	go func() {
		// test receive one event that got emitted after subscribing
		res, err := stream.Recv()
		requireTrueBool(t, assert.NoError(t, err))

		requireTrueBool(t, assert.NotNil(t, res.GetEntityEvent()))
		requireTrueBool(t, assert.Equal(t, "bed", res.GetEntityEvent().GetEntityType()))
		requireTrueBool(t, assert.Equal(t, bedId.String(), res.GetEntityEvent().GetEntityId()))
		requireTrueBool(t, assert.Equal(t, "BED_CREATED_v1", res.GetEntityEvent().GetEventType()))

		bedId2 := uuid.New()

		// emit event
		if err := eventstoredb.SaveEntityEvent(ctx, es, "bed", bedId2,
			&pbEventsV1.BedCreatedEvent{Id: bedId2.String()},
		); err != nil {
			requireTrueBool(t, assert.NoError(t, err))
		}

		// test receive one event that got emitted before subscribing with previous revision

		req2 := &pb.ReceiveUpdatesRequest{Revision: hwutil.PtrTo(res.Revision)}
		stream2, err := updatesClient.ReceiveUpdates(ctx, req2)
		requireTrueBool(t, assert.NoError(t, err))

		// receive event
		res2, err := stream2.Recv()
		requireTrueBool(t, assert.NoError(t, err))

		requireTrueBool(t, assert.NotNil(t, res2.GetEntityEvent()))
		requireTrueBool(t, assert.Equal(t, "bed", res2.GetEntityEvent().GetEntityType()))
		requireTrueBool(t, assert.Equal(t, bedId2.String(), res2.GetEntityEvent().GetEntityId()))
		requireTrueBool(t, assert.Equal(t, "BED_CREATED_v1", res2.GetEntityEvent().GetEventType()))
	}()

	// emit event
	if err := eventstoredb.SaveEntityEvent(ctx, es, "bed", bedId,
		&pbEventsV1.BedCreatedEvent{Id: bedId.String()},
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
