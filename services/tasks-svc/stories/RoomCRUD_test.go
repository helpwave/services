package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"hwutil"
	"testing"
)

func prepareWard(t *testing.T, ctx context.Context, suffix string) (wardID string) {
	wardRes, err := wardServiceClient().CreateWard(ctx, &pb.CreateWardRequest{
		Name: t.Name() + " ward " + suffix,
	})
	assert.NoError(t, err, "prepareWard failed: could not create ward", suffix)
	return wardRes.Id
}

// TestCreateUpdateGetRoom:
//   - Create a new room
//   - Update it
func TestCreateUpdateGetRoom(t *testing.T) {
	ctx := context.Background()
	roomClient := roomServiceClient()

	// first, prepare ward
	wardId := prepareWard(t, ctx, "1")

	//
	// create new room
	//
	createReq := &pb.CreateRoomRequest{
		WardId: wardId,
		Name:   t.Name() + " room",
	}
	createRes, err := roomClient.CreateRoom(ctx, createReq)

	assert.NoError(t, err, "could not create room")

	roomID := createRes.GetId()

	//
	// get new room
	//

	getRoomRes, err := roomClient.GetRoom(ctx, &pb.GetRoomRequest{Id: roomID})
	assert.NoError(t, err, "could not get room after creation")

	assert.Equal(t, createReq.Name, getRoomRes.Name)
	assert.Equal(t, createReq.WardId, getRoomRes.WardId)
	assert.Equal(t, createRes.Consistency, getRoomRes.Consistency)

	//
	// update room
	//

	// prepare new room

	updateReq := &pb.UpdateRoomRequest{
		Id:          roomID,
		Name:        hwutil.PtrTo(t.Name() + " room 2"),
		Consistency: &getRoomRes.Consistency,
	}
	updateRes, err := roomClient.UpdateRoom(ctx, updateReq)
	assert.NoError(t, err, "could not update room after creation")

	assert.NotEqual(t, getRoomRes.Consistency, updateRes.Consistency, "consistency has not changed in update")

	//
	// get updated bed
	//

	getRoomRes, err = roomClient.GetRoom(ctx, &pb.GetRoomRequest{Id: roomID})
	assert.NoError(t, err, "could not get room after update")

	assert.Equal(t, *updateReq.Name, getRoomRes.Name)
	assert.Equal(t, updateRes.Consistency, getRoomRes.Consistency)

}
