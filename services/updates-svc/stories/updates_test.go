package stories

import (
	"common/auth"
	"context"
	pb "gen/services/updates_svc/v1"
	"io"
	"testing"
	"time"

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
	upperBound := auth.FakeTokenValidFor + (time.Second * 1)
	lowerBound := auth.FakeTokenValidFor - (time.Second * 1)

	req := &pb.ReceiveUpdatesRequest{}

	timeBeforeOpeningStream := time.Now()
	stream, err := updatesClient.ReceiveUpdates(ctx, req)
	assert.NoError(t, err)

	_, cancel := context.WithTimeout(ctx, auth.FakeTokenValidFor+(time.Second*3))
	defer cancel()

	for {
		_, err := stream.Recv()
		if err == io.EOF {
			elapsedTime := time.Since(timeBeforeOpeningStream)
			if elapsedTime > upperBound || elapsedTime < lowerBound {
				t.Errorf("Connection timeout is out of bounds (upper bound %s, lower bound %s) with %s", upperBound, lowerBound, elapsedTime)
				return
			}
			return
		}
		assert.NoError(t, err)
	}
}
