package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"hwutil"
	"testing"
)

func prepareRoom(t *testing.T, ctx context.Context, suffix string) (wardID, roomID string) {
	wardRes, err := wardServiceClient().CreateWard(ctx, &pb.CreateWardRequest{
		Name: t.Name() + " ward " + suffix,
	})
	assert.NoError(t, err, "prepareRoom failed: could not create ward", suffix)
	roomRes, err := roomServiceClient().CreateRoom(ctx, &pb.CreateRoomRequest{
		Name:   t.Name() + " room " + suffix,
		WardId: wardRes.Id,
	})
	assert.NoError(t, err, "prepareRoom failed: could not create room", suffix)
	return wardRes.Id, roomRes.Id
}

// TestCreateUpdateGetBed:
//   - Create a new bed
//   - Update it
func TestCreateUpdateGetBed(t *testing.T) {
	ctx := context.Background()
	bedClient := bedServiceClient()

	// first, prepare room
	_, roomId := prepareRoom(t, ctx, "1")

	//
	// create new bed
	//
	createReq := &pb.CreateBedRequest{
		RoomId: roomId,
		Name:   t.Name() + " room",
	}
	createRes, err := bedClient.CreateBed(ctx, createReq)

	assert.NoError(t, err, "could not create bed")

	bedID := createRes.GetId()

	//
	// get new bed
	//

	getBedRes, err := bedClient.GetBed(ctx, &pb.GetBedRequest{Id: bedID})
	assert.NoError(t, err, "could not get bed after creation")

	assert.Equal(t, createReq.Name, getBedRes.Name)
	assert.Equal(t, createReq.RoomId, getBedRes.RoomId)
	assert.Equal(t, createRes.Consistency, getBedRes.Consistency)

	//
	// update bed
	//

	// prepare new room
	_, roomID2 := prepareRoom(t, ctx, "2")

	updateReq := &pb.UpdateBedRequest{
		Id:          bedID,
		RoomId:      &roomID2,
		Name:        hwutil.PtrTo(t.Name() + " room 2"),
		Consistency: &getBedRes.Consistency,
	}
	updateRes, err := bedClient.UpdateBed(ctx, updateReq)
	assert.NoError(t, err, "could not update bed after creation")

	assert.NotEqual(t, getBedRes.Consistency, updateRes.Consistency, "consistency has not changed in update")

	//
	// get updated bed
	//

	getBedRes, err = bedClient.GetBed(ctx, &pb.GetBedRequest{Id: bedID})
	assert.NoError(t, err, "could not get bed after update")

	assert.Equal(t, *updateReq.RoomId, getBedRes.RoomId)
	assert.Equal(t, *updateReq.Name, getBedRes.Name)
	assert.Equal(t, updateRes.Consistency, getBedRes.Consistency)

}
