package stories

import (
	"context"
	"encoding/json"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"hwtesting"
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

func TestGetRoomOverviewsByWard(t *testing.T) {
	patientClient := patientServiceClient()
	taskClient := taskServiceClient()
	ctx := context.Background()

	// prepare all resources

	wardId, _ := prepareWard(t, ctx, "")
	roomIDA, _ := prepareRoom(t, ctx, wardId, "A")
	roomIDB, _ := prepareRoom(t, ctx, wardId, "B")

	bed1Id, _ := prepareBed(t, ctx, roomIDA, "1")
	bed2Id, _ := prepareBed(t, ctx, roomIDA, "2")
	bed3Id, _ := prepareBed(t, ctx, roomIDB, "3")
	bedIDs := []string{bed1Id, bed2Id, bed3Id}

	patient1Id := preparePatient(t, ctx, "1")
	patient2Id := preparePatient(t, ctx, "2")
	patient3Id := preparePatient(t, ctx, "3")
	patientIDs := []string{patient1Id, patient2Id, patient3Id}

	// assign beds 1-3 to patients 1-3
	for i, bedID := range bedIDs {
		_, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
			Id:          patientIDs[i],
			BedId:       bedID,
			Consistency: nil,
		})
		assert.NoError(t, err, "could not assign bed to patient", i)
	}

	// additionally, add unassigned bed and patient
	bed4Id, _ := prepareBed(t, ctx, roomIDB, "unassigned")
	_ = preparePatient(t, ctx, "unassigned")

	// create tasks for patient 1
	_, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:          t.Name() + " Patient 1 Task 1",
		PatientId:     patient1Id,
		InitialStatus: hwutil.PtrTo(pb.TaskStatus_TASK_STATUS_TODO),
	})
	assert.NoError(t, err, "could create task for patient 1")
	_, err = taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:          t.Name() + " Patient 1 Task 2",
		PatientId:     patient1Id,
		InitialStatus: hwutil.PtrTo(pb.TaskStatus_TASK_STATUS_IN_PROGRESS),
	})
	assert.NoError(t, err, "could create task for patient 1")
	_, err = taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:          t.Name() + " Patient 1 Task 3",
		PatientId:     patient1Id,
		InitialStatus: hwutil.PtrTo(pb.TaskStatus_TASK_STATUS_DONE),
	})
	assert.NoError(t, err, "could create task for patient 1")
	_, err = taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:          t.Name() + " Patient 1 Task 4",
		PatientId:     patient1Id,
		InitialStatus: hwutil.PtrTo(pb.TaskStatus_TASK_STATUS_DONE),
	})
	assert.NoError(t, err, "could create task for patient 1")

	hwtesting.WaitForProjectionsToSettle()

	res, err := roomServiceClient().GetRoomOverviewsByWard(ctx, &pb.GetRoomOverviewsByWardRequest{
		Id: wardId,
	})
	assert.NoError(t, err, "could not GetRoomOverviewsByWard")

	assert.Len(t, res.Rooms, 2)

	resRoomA := res.Rooms[0]
	resRoomB := res.Rooms[1]

	// switch, if order is wrong
	if resRoomA.Id != roomIDA {
		resRoomA = res.Rooms[1]
		resRoomB = res.Rooms[0]
	}

	assert.Equal(t, roomIDA, resRoomA.Id)
	assert.Equal(t, roomIDB, resRoomB.Id)

	expectedRoomA := &pb.GetRoomOverviewsByWardResponse_Room{
		Id:   roomIDA,
		Name: t.Name() + " room A",
		Beds: []*pb.GetRoomOverviewsByWardResponse_Room_Bed{
			{
				Id:   bed1Id,
				Name: t.Name() + " bed 1",
				Patient: &pb.GetRoomOverviewsByWardResponse_Room_Bed_Patient{
					Id:                      patient1Id,
					HumanReadableIdentifier: t.Name() + " Patient 1",
					TasksUnscheduled:        1,
					TasksInProgress:         1,
					TasksDone:               2,
					Consistency:             "1",
				},
				Consistency: "0",
			},
			{
				Id:   bed2Id,
				Name: t.Name() + " bed 2",
				Patient: &pb.GetRoomOverviewsByWardResponse_Room_Bed_Patient{
					Id:                      patient2Id,
					HumanReadableIdentifier: t.Name() + " Patient 2",
					TasksUnscheduled:        0,
					TasksInProgress:         0,
					TasksDone:               0,
					Consistency:             "1",
				},
				Consistency: "0",
			},
		},
		Consistency: "0",
	}

	expectedRoomB := &pb.GetRoomOverviewsByWardResponse_Room{
		Id:   roomIDB,
		Name: t.Name() + " room B",
		Beds: []*pb.GetRoomOverviewsByWardResponse_Room_Bed{
			{
				Id:   bed3Id,
				Name: t.Name() + " bed 3",
				Patient: &pb.GetRoomOverviewsByWardResponse_Room_Bed_Patient{
					Id:                      patient3Id,
					HumanReadableIdentifier: t.Name() + " Patient 3",
					TasksUnscheduled:        0,
					TasksInProgress:         0,
					TasksDone:               0,
					Consistency:             "1",
				},
				Consistency: "0",
			},
			{
				Id:          bed4Id,
				Name:        t.Name() + " bed unassigned",
				Patient:     nil,
				Consistency: "0",
			},
		},
		Consistency: "0",
	}

	expectedRoomAJson, err := json.Marshal(expectedRoomA)
	assert.NoError(t, err)
	expectedRoomBJson, err := json.Marshal(expectedRoomB)
	assert.NoError(t, err)
	resRoomAJson, err := json.Marshal(resRoomA)
	assert.NoError(t, err)
	resRoomBJson, err := json.Marshal(resRoomB)
	assert.NoError(t, err)

	assert.JSONEq(t, string(expectedRoomAJson), string(resRoomAJson))
	assert.JSONEq(t, string(expectedRoomBJson), string(resRoomBJson))
}
