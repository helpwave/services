package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwtesting"
	"hwutil"
	"strconv"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

// TestCreateUpdateGetBed:
//   - Create a new bed
//   - Update it
func TestCreateUpdateGetBed(t *testing.T) {
	ctx := context.Background()
	bedClient := bedServiceClient()

	// first, prepare room
	wardID, _ := prepareWard(t, ctx, "1")
	roomId, _ := prepareRoom(t, ctx, wardID, "1")

	//
	// create new bed
	//
	createReq := &pb.CreateBedRequest{
		RoomId: roomId,
		Name:   t.Name() + " bed",
	}
	createRes, err := bedClient.CreateBed(ctx, createReq)

	require.NoError(t, err, "could not create bed")

	bedID := createRes.GetId()

	//
	// get new bed
	//

	getBedRes, err := bedClient.GetBed(ctx, &pb.GetBedRequest{Id: bedID})
	require.NoError(t, err, "could not get bed after creation")

	assert.Equal(t, createReq.GetName(), getBedRes.GetName())
	assert.Equal(t, createReq.GetRoomId(), getBedRes.GetRoomId())
	assert.Equal(t, createRes.GetConsistency(), getBedRes.GetConsistency())

	//
	// update bed
	//

	// prepare new room
	roomID2, _ := prepareRoom(t, ctx, wardID, "2")

	updateReq := &pb.UpdateBedRequest{
		Id:          bedID,
		RoomId:      &roomID2,
		Name:        hwutil.PtrTo(t.Name() + " bed 2"),
		Consistency: &getBedRes.Consistency,
	}
	updateRes, err := bedClient.UpdateBed(ctx, updateReq)
	require.NoError(t, err, "could not update bed after creation")

	assert.NotEqual(t, getBedRes.Consistency, updateRes.Consistency, "consistency has not changed in update")

	//
	// get updated bed
	//

	getBedRes, err = bedClient.GetBed(ctx, &pb.GetBedRequest{Id: bedID})
	require.NoError(t, err, "could not get bed after update")

	assert.Equal(t, *updateReq.RoomId, getBedRes.RoomId)
	assert.Equal(t, *updateReq.Name, getBedRes.Name)
	assert.Equal(t, updateRes.Consistency, getBedRes.Consistency)
}

func TestGetBedByPatient(t *testing.T) {
	ctx := context.Background()

	// first, prepare room
	wardID, _ := prepareWard(t, ctx, "1")
	roomId, roomConsistency := prepareRoom(t, ctx, wardID, "")

	// creating two beds
	unrelatedBedID, _ := prepareBed(t, ctx, roomId, "unrelated")
	patientsBedID, bedConsistency := prepareBed(t, ctx, roomId, "patient")

	// create a patient
	patientID := preparePatient(t, ctx, "")

	// assign bed to patient
	_, err := patientServiceClient().AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientID,
		BedId:       patientsBedID,
		Consistency: nil,
	})
	require.NoError(t, err, "could not assign bed to patient")
	hwtesting.WaitForProjectionsToSettle()

	// GetBedByPatient
	res, err := bedServiceClient().GetBedByPatient(ctx, &pb.GetBedByPatientRequest{
		PatientId: patientID,
	})
	require.NoError(t, err, "could not GetBedByPatient")

	assert.NotNil(t, res.Bed)
	assert.NotNil(t, res.Room)

	assert.NotEqual(t, unrelatedBedID, res.Bed.Id)
	assert.Equal(t, patientsBedID, res.Bed.Id)
	assert.Equal(t, bedConsistency, res.Bed.Consistency)

	assert.Equal(t, roomId, res.Room.Id)
	assert.Equal(t, roomConsistency, res.Room.Consistency)
}

func TestGetBeds(t *testing.T) {
	bedClient := bedServiceClient()
	ctx := context.Background()

	suffixMatrix := [][]string{
		{"1 A", "1 B"}, // Room 1
		{"2 A"},        // Room 2
		{},             // Room 3
	}

	bedRoomMap := make(map[string]string)        // map bedID to its roomID
	roomBedsMap := make(map[string][]string)     // map roomID to its bedIDs
	bedConsistencyMap := make(map[string]string) // map bedID to its consistency

	wardID, _ := prepareWard(t, ctx, "1")

	for i, bedSfxs := range suffixMatrix {
		roomSuffix := strconv.Itoa(i + 1)
		roomId, _ := prepareRoom(t, ctx, wardID, roomSuffix)
		roomBedsMap[roomId] = make([]string, 0)
		for _, bedSuffix := range bedSfxs {
			bedId, bedConsistency := prepareBed(t, ctx, roomId, bedSuffix)
			bedRoomMap[bedId] = roomId
			bedConsistencyMap[bedId] = bedConsistency
			roomBedsMap[roomId] = append(roomBedsMap[roomId], bedId)
		}
	}

	allBeds, err := bedClient.GetBeds(ctx, &pb.GetBedsRequest{})
	require.NoError(t, err, "could not get all beds")

	assert.GreaterOrEqual(t, len(allBeds.Beds), 3) // other beds might exist from other tests

	found := 0
	for _, bed := range allBeds.Beds {
		assert.NotEqual(t, "", bed.Id)
		if bedRoomMap[bed.Id] == "" {
			continue
		}
		found++
		assert.Equal(t, bedRoomMap[bed.Id], bed.RoomId)
		assert.Equal(t, bedConsistencyMap[bed.Id], bed.Consistency)
	}

	assert.Equal(t, 3, found)

	// Part 2: GetBedsByRoom

	for roomId, expectedBedIDs := range roomBedsMap {
		res, err := bedClient.GetBedsByRoom(ctx, &pb.GetBedsByRoomRequest{RoomId: roomId})
		require.NoError(t, err, "could not get beds for room 1")

		assert.Len(t, res.Beds, len(expectedBedIDs))

		bedIds := hwutil.Map(res.Beds, func(bed *pb.GetBedsByRoomResponse_Bed) string {
			return bed.Id
		})
		assert.Subset(t, expectedBedIDs, bedIds, "actual bedIDs are not a subset of expected for room %s", roomId)
	}
}
