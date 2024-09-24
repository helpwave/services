package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"hwtesting"
	"hwutil"
	"strconv"
	"testing"
	"time"
)

// TestCreateUpdateGetWard:
//   - Create a new ward
//   - Update it
func TestCreateUpdateGetWard(t *testing.T) {
	ctx := context.Background()
	wardClient := wardServiceClient()

	//
	// create new ward
	//

	createReq := &pb.CreateWardRequest{
		Name: t.Name() + " ward",
	}
	createRes, err := wardServiceClient().CreateWard(ctx, createReq)
	assert.NoError(t, err, "could not create ward")

	wardID := createRes.GetId()

	//
	// get new ward
	//

	getWardRes, err := wardClient.GetWard(ctx, &pb.GetWardRequest{Id: wardID})
	assert.NoError(t, err, "could not get ward after creation")

	assert.Equal(t, createReq.Name, getWardRes.Name)
	assert.Equal(t, createRes.Consistency, getWardRes.Consistency)

	//
	// update ward
	//

	updateReq := &pb.UpdateWardRequest{
		Id:          wardID,
		Name:        hwutil.PtrTo(t.Name() + " ward 2"),
		Consistency: &getWardRes.Consistency,
	}
	updateRes, err := wardClient.UpdateWard(ctx, updateReq)
	assert.NoError(t, err, "could not update ward after creation")

	assert.NotEqual(t, getWardRes.Consistency, updateRes.Consistency, "consistency has not changed in update")

	//
	// get updated ward
	//

	getWardRes, err = wardClient.GetWard(ctx, &pb.GetWardRequest{Id: wardID})
	assert.NoError(t, err, "could not get room after update")

	assert.Equal(t, *updateReq.Name, getWardRes.Name)
	assert.Equal(t, updateRes.Consistency, getWardRes.Consistency)

}

func prepareWards(t *testing.T, ctx context.Context, client pb.WardServiceClient, N int) []string {
	ids := make([]string, 0, N)
	for i := 1; i <= N; i++ {
		wardRes, err := client.CreateWard(ctx, &pb.CreateWardRequest{
			Name: t.Name() + " ward " + strconv.Itoa(i),
		})
		if !assert.NoError(t, err, "prepareWard failed: could not create ward", i) {
			return nil
		}
		ids = append(ids, wardRes.Id)
	}
	return ids
}

func TestGetRecentWardsResponse(t *testing.T) {
	userID := uuid.New() // new user for this test, to prevent interference with other tests
	wardClient := pb.NewWardServiceClient(hwtesting.GetGrpcConn(userID.String()))
	taskClient := pb.NewTaskServiceClient(hwtesting.GetGrpcConn(userID.String()))
	patientClient := pb.NewPatientServiceClient(hwtesting.GetGrpcConn(userID.String()))
	ctx := context.Background()

	wardIds := prepareWards(t, ctx, wardClient, 11)
	consistencies := make(map[string]string)

	// do a spot-check for one ward
	taskCountWardID := wardIds[3]
	suffixMatrix := [][]string{
		{"1 A", "1 B"}, // Room 1
		{"2 A"},        // Room 2
		{},             // Room 3
	}
	for i, bedSfxs := range suffixMatrix {
		roomSuffix := strconv.Itoa(i + 1)
		roomId, _ := prepareRoom(t, ctx, taskCountWardID, roomSuffix)
		for j, bedSuffix := range bedSfxs {
			bedId, _ := prepareBed(t, ctx, roomId, bedSuffix)
			patientID := preparePatient(t, ctx, bedSuffix)
			_, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
				Id:    patientID,
				BedId: bedId,
			})
			assert.NoError(t, err, "could not assign bed to patient")
			_, err = taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
				Name:          t.Name() + " Patient " + bedSuffix + " Task ",
				PatientId:     patientID,
				InitialStatus: hwutil.PtrTo(pb.TaskStatus(j + 1)), // this is dirty, lol
			})
			assert.NoError(t, err, "could create task for patient")
		}
	}

	time.Sleep(time.Second)

	// touch each ward, to push it into RecentWards
	for _, wardId := range wardIds {
		res, err := wardClient.UpdateWard(ctx, &pb.UpdateWardRequest{Id: wardId})
		assert.NoError(t, err, "could not update ward %s", wardId)
		consistencies[wardId] = res.Consistency
		time.Sleep(time.Millisecond * 500)
	}

	// GetRecentWards
	res, err := wardClient.GetRecentWards(ctx, &pb.GetRecentWardsRequest{})
	assert.NoError(t, err, "could not GetRecentWards")

	// assertions
	actualWardIds := hwutil.Map(res.Wards, func(ward *pb.GetRecentWardsResponse_Ward) string {
		assert.Equal(t, consistencies[ward.Id], ward.Consistency)
		if ward.Id == taskCountWardID {
			assert.EqualValues(t, 3, ward.BedCount)
			assert.EqualValues(t, 2, ward.TasksTodo)
			assert.EqualValues(t, 1, ward.TasksInProgress)
			assert.EqualValues(t, 0, ward.TasksDone)
		}
		return ward.Id
	})

	assert.Len(t, actualWardIds, 10) // cap is 10
	assert.Subset(t, wardIds, actualWardIds)
	assert.NotContains(t, actualWardIds, wardIds[0]) // first element was thrown out
}

func TestGetWardOverviews(t *testing.T) {
	wardClient := wardServiceClient()
	patientClient := patientServiceClient()
	taskClient := taskServiceClient()
	ctx := context.Background()

	suffixMatrix := [][]string{
		{"1 A", "1 B"}, // Room 1
		{"2 A"},        // Room 2
		{},             // Room 3
	}

	wardId, consistency := prepareWard(t, ctx, "")

	for i, bedSfxs := range suffixMatrix {
		roomSuffix := strconv.Itoa(i + 1)
		roomId, _ := prepareRoom(t, ctx, wardId, roomSuffix)
		for j, bedSuffix := range bedSfxs {
			bedId, _ := prepareBed(t, ctx, roomId, bedSuffix)
			patientID := preparePatient(t, ctx, bedSuffix)
			_, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
				Id:    patientID,
				BedId: bedId,
			})
			assert.NoError(t, err, "could not assign bed to patient")
			_, err = taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
				Name:          t.Name() + " Patient " + bedSuffix + " Task ",
				PatientId:     patientID,
				InitialStatus: hwutil.PtrTo(pb.TaskStatus(j + 1)), // this is dirty, lol
			})
			assert.NoError(t, err, "could create task for patient")
		}
	}

	res, err := wardClient.GetWardOverviews(ctx, &pb.GetWardOverviewsRequest{})
	assert.NoError(t, err, "could GetWardOverviews")

	found := false
	for _, ward := range res.Wards {
		if ward.Id != wardId {
			continue
		}
		found = true

		expected := map[string]interface{}{
			"id":                wardId,
			"name":              t.Name() + " ward ",
			"bed_count":         uint32(3),
			"tasks_todo":        uint32(2),
			"tasks_in_progress": uint32(1),
			"tasks_done":        uint32(0),
			"consistency":       consistency,
		}

		actual := map[string]interface{}{
			"id":                ward.Id,
			"name":              ward.Name,
			"bed_count":         ward.BedCount,
			"tasks_todo":        ward.TasksTodo,
			"tasks_in_progress": ward.TasksInProgress,
			"tasks_done":        ward.TasksDone,
			"consistency":       ward.Consistency,
		}

		assert.Equal(t, expected, actual)
	}

	assert.True(t, found)
}
