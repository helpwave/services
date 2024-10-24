package stories

import (
	"common/auth"
	"context"
	"errors"
	pb "gen/services/updates_svc/v1"
	"io"
	"testing"
	"time"

	"github.com/stretchr/testify/require"

	"github.com/stretchr/testify/assert"
)

func TestOpenAndClosingReceiveUpdatesStream(t *testing.T) {
	ctx := context.Background()
	updatesClient := updatesServiceClient()

	req := &pb.ReceiveUpdatesRequest{}
	stream, err := updatesClient.ReceiveUpdates(ctx, req)
	assert.NoError(t, err)
	assert.NoError(t, stream.CloseSend())
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
