package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"hwutil"
	"strconv"
	"testing"
)

// TestCreateUpdateGetRoom:
//   - Create a new room
//   - Update it
func TestCreateUpdateGetRoom(t *testing.T) {
	ctx := context.Background()
	roomClient := roomServiceClient()

	// first, prepare ward
	wardId, _ := prepareWard(t, ctx, "1")

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

func TestGetRooms(t *testing.T) {
	roomClient := roomServiceClient()
	ctx := context.Background()

	suffixMatrix := [][]string{
		{"1 A", "1 B"}, // Ward 1
		{"2 A"},        // Ward 2
		{},             // Ward 3
	}

	roomWardMap := make(map[string]string)        // map roomID to its wardID
	wardRoomsMap := make(map[string][]string)     // map wardID to its roomIDs
	roomConsistencyMap := make(map[string]string) // map roomID to its consistency

	for i, roomSfxs := range suffixMatrix {
		wardSuffix := strconv.Itoa(i + 1)
		wardId, _ := prepareWard(t, ctx, wardSuffix)
		wardRoomsMap[wardId] = make([]string, 0)
		for _, bedSuffix := range roomSfxs {
			roomId, roomConsistency := prepareRoom(t, ctx, wardId, bedSuffix)
			roomWardMap[roomId] = wardId
			roomConsistencyMap[roomId] = roomConsistency
			wardRoomsMap[wardId] = append(wardRoomsMap[wardId], roomId)
		}
	}

	allRooms, err := roomClient.GetRooms(ctx, &pb.GetRoomsRequest{
		WardId: nil,
	})
	assert.NoError(t, err, "could not get all rooms")

	assert.GreaterOrEqual(t, len(allRooms.Rooms), 3) // other rooms might exist from other tests

	found := 0
	for _, room := range allRooms.Rooms {
		assert.NotEqual(t, "", room.Id)
		if roomWardMap[room.Id] == "" {
			continue
		}
		found++
		assert.Equal(t, roomWardMap[room.Id], room.WardId)
		assert.Equal(t, roomConsistencyMap[room.Id], room.Consistency)
	}

	assert.Equal(t, 3, found)

	// Part 2: GetRooms with ward

	for wardId, roomIDs := range wardRoomsMap {
		res, err := roomClient.GetRooms(ctx, &pb.GetRoomsRequest{WardId: &wardId})
		assert.NoError(t, err, "could not get all rooms for ward %s", wardId)
		assert.Len(t, res.Rooms, len(roomIDs))
		actualRoomIDs := hwutil.Map(res.Rooms, func(room *pb.GetRoomsResponse_Room) string {
			return room.Id
		})
		assert.Subset(t, roomIDs, actualRoomIDs, "actualRoomIDs not a subset for ward %s", wardId)
	}
}
