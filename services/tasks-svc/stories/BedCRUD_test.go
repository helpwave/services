package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"hwutil"
	"strconv"
	"testing"
	"time"
)

func prepareRoom(t *testing.T, ctx context.Context, suffix string) (wardID, roomID, roomConsistency string) {
	wardRes, err := wardServiceClient().CreateWard(ctx, &pb.CreateWardRequest{
		Name: t.Name() + " ward " + suffix,
	})
	assert.NoError(t, err, "prepareRoom failed: could not create ward", suffix)
	roomRes, err := roomServiceClient().CreateRoom(ctx, &pb.CreateRoomRequest{
		Name:   t.Name() + " room " + suffix,
		WardId: wardRes.Id,
	})
	assert.NoError(t, err, "prepareRoom failed: could not create room", suffix)
	return wardRes.Id, roomRes.Id, roomRes.Consistency
}

func prepareBed(t *testing.T, ctx context.Context, roomId, suffix string) (bedID, consistency string) {
	createRes, err := bedServiceClient().CreateBed(ctx, &pb.CreateBedRequest{
		RoomId: roomId,
		Name:   t.Name() + " bed " + suffix,
	})
	assert.NoError(t, err, "prepareBed: could not create bed", suffix)
	return createRes.Id, createRes.Consistency
}

func preparePatient(t *testing.T, ctx context.Context) (patientID string) {
	res, err := patientServiceClient().CreatePatient(ctx, &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " Patient",
		Notes:                   hwutil.PtrTo("A patient for test " + t.Name()),
	})
	assert.NoError(t, err, "preparePatient: could not create patient")
	time.Sleep(time.Second)
	return res.Id
}

// TestCreateUpdateGetBed:
//   - Create a new bed
//   - Update it
func TestCreateUpdateGetBed(t *testing.T) {
	ctx := context.Background()
	bedClient := bedServiceClient()

	// first, prepare room
	_, roomId, _ := prepareRoom(t, ctx, "1")

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
	_, roomID2, _ := prepareRoom(t, ctx, "2")

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

func TestGetBedByPatient(t *testing.T) {
	ctx := context.Background()

	// first, prepare room
	_, roomId, roomConsistency := prepareRoom(t, ctx, "")

	// creating two beds
	unrelatedBedID, _ := prepareBed(t, ctx, roomId, "unrelated")
	patientsBedID, bedConsistency := prepareBed(t, ctx, roomId, "patient")

	// create a patient
	patientID := preparePatient(t, ctx)

	// assign bed to patient
	_, err := patientServiceClient().AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientID,
		BedId:       patientsBedID,
		Consistency: nil,
	})
	assert.NoError(t, err, "could not assign bed to patient")
	time.Sleep(time.Second)

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

	var room1Id string // for part 2

	for i, bedSfxs := range suffixMatrix {
		roomSuffix := strconv.Itoa(i + 1)
		_, roomId, _ := prepareRoom(t, ctx, roomSuffix)
		if i == 0 {
			room1Id = roomId
		}
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

	res, err := bedClient.GetBedsByRoom(ctx, &pb.GetBedsByRoomRequest{RoomId: room1Id})
	assert.NoError(t, err, "could not get beds for room 1")

	assert.Len(t, res.Beds, 2)

	bedIds := hwutil.Map(res.Beds, func(bed *pb.GetBedsByRoomResponse_Bed) string {
		return bed.Id
	})

	assert.Subset(t, roomBedsMap[room1Id], bedIds)
}
