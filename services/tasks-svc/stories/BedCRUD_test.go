package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"hwtesting"
	"hwutil"
	"strconv"
	"testing"
)

// TestCreateUpdateGetBed:
//   - Create a new bed
//   - Update it
func TestCreateUpdateGetBed(t *testing.T) {
	ctx := context.Background()
	bedClient := bedServiceClient()

	// first, prepare room
	wardId, _ := prepareWard(t, ctx, "1")
	roomId, _ := prepareRoom(t, ctx, wardId, "1")

	//
	// create new bed
	//
	createReq := &pb.CreateBedRequest{
		RoomId: roomId,
		Name:   t.Name() + " bed",
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
	roomID2, _ := prepareRoom(t, ctx, wardId, "2")

	updateReq := &pb.UpdateBedRequest{
		Id:          bedID,
		RoomId:      &roomID2,
		Name:        hwutil.PtrTo(t.Name() + " bed 2"),
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

func TestGetBedByPatient(t *testing.T) {
	ctx := context.Background()

	// first, prepare room
	wardId, _ := prepareWard(t, ctx, "1")
	roomId, roomConsistency := prepareRoom(t, ctx, wardId, "")

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
	assert.NoError(t, err, "could not assign bed to patient")
	hwtesting.WaitForProjectionsToSettle()

	// GetBedByPatient
	res, err := bedServiceClient().GetBedByPatient(ctx, &pb.GetBedByPatientRequest{
		PatientId: patientID,
	})
	assert.NoError(t, err, "could not GetBedByPatient")

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

	wardId, _ := prepareWard(t, ctx, "1")

	for i, bedSfxs := range suffixMatrix {
		roomSuffix := strconv.Itoa(i + 1)
		roomId, _ := prepareRoom(t, ctx, wardId, roomSuffix)
		roomBedsMap[roomId] = make([]string, 0)
		for _, bedSuffix := range bedSfxs {
			bedId, bedConsistency := prepareBed(t, ctx, roomId, bedSuffix)
			bedRoomMap[bedId] = roomId
			bedConsistencyMap[bedId] = bedConsistency
			roomBedsMap[roomId] = append(roomBedsMap[roomId], bedId)
		}
	}

	allBeds, err := bedClient.GetBeds(ctx, &pb.GetBedsRequest{})
	assert.NoError(t, err, "could not get all beds")

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
		assert.NoError(t, err, "could not get beds for room 1")

		assert.Len(t, res.Beds, len(expectedBedIDs))

		bedIds := hwutil.Map(res.Beds, func(bed *pb.GetBedsByRoomResponse_Bed) string {
			return bed.Id
		})
		assert.Subset(t, expectedBedIDs, bedIds, "actual bedIDs are not a subset of expected for room %s", roomId)

	}
}

func TestUpdateBedConflict(t *testing.T) {
	ctx := context.Background()
	bedClient := bedServiceClient()

	// prepare
	wardId, _ := prepareWard(t, ctx, "")
	roomId0, _ := prepareRoom(t, ctx, wardId, "0")

	bedId, initialConsistency := prepareBed(t, ctx, roomId0, "")

	name1 := "This came first"
	roomId1, _ := prepareRoom(t, ctx, wardId, "1")

	// update 1
	update1Res, err := bedClient.UpdateBed(ctx, &pb.UpdateBedRequest{
		Id:          bedId,
		Name:        &name1,
		RoomId:      &roomId1,
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Nil(t, update1Res.Conflict)
	assert.NotEqual(t, initialConsistency, update1Res.Consistency)

	name2 := "This came second"
	roomId2, _ := prepareRoom(t, ctx, wardId, "2")

	// racing update 2
	update2Res, err := bedClient.UpdateBed(ctx, &pb.UpdateBedRequest{
		Id:          bedId,
		Name:        &name2,
		RoomId:      &roomId2,
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Equal(t, update1Res.Consistency, update2Res.Consistency)
	assert.NotNil(t, update2Res.Conflict)

	nameRes := update2Res.Conflict.ConflictingAttributes["name"]
	assert.NotNil(t, nameRes)

	nameIs := &wrapperspb.StringValue{}
	assert.NoError(t, nameRes.Is.UnmarshalTo(nameIs))
	assert.Equal(t, name1, nameIs.Value)

	nameWant := &wrapperspb.StringValue{}
	assert.NoError(t, nameRes.Want.UnmarshalTo(nameWant))
	assert.Equal(t, name2, nameWant.Value)

	roomRes := update2Res.Conflict.ConflictingAttributes["room_id"]
	assert.NotNil(t, roomRes)

	roomIs := &wrapperspb.StringValue{}
	assert.NoError(t, roomRes.Is.UnmarshalTo(roomIs))
	assert.Equal(t, roomId1, roomIs.Value)

	roomWant := &wrapperspb.StringValue{}
	assert.NoError(t, roomRes.Want.UnmarshalTo(roomWant))
	assert.Equal(t, roomId2, roomWant.Value)

	// racing update 3
	update3Res, err := bedClient.UpdateBed(ctx, &pb.UpdateBedRequest{
		Id:          bedId,
		Name:        &name2,
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Equal(t, update1Res.Consistency, update2Res.Consistency)
	assert.NotNil(t, update2Res.Conflict)

	assert.NotNil(t, update3Res.Conflict.ConflictingAttributes["name"])
	assert.Nil(t, update3Res.Conflict.ConflictingAttributes["room_id"])
}
