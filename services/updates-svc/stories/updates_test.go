package stories

import (
	"context"
	pb "gen/services/updates_svc/v1"
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestOpenAndClosingReceiveUpdatesStream(t *testing.T) {
	ctx := context.Background()
	updatesClient := updatesServiceClient()

	req := &pb.ReceiveUpdatesRequest{}
	stream, err := updatesClient.ReceiveUpdates(ctx, req)
	assert.NoError(t, err)
	assert.NoError(t, stream.CloseSend())
}
