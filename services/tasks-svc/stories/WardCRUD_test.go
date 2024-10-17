package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwtesting"
	"hwutil"
	"strconv"
	"testing"
	"time"

	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
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
	require.NoError(t, err, "could not create ward")

	wardID := createRes.GetId()

	//
	// get new ward
	//

	getWardRes, err := wardClient.GetWard(ctx, &pb.GetWardRequest{Id: wardID})
	require.NoError(t, err, "could not get ward after creation")

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
	require.NoError(t, err, "could not update ward after creation")

	assert.NotEqual(
		t,
		getWardRes.Consistency,
		updateRes.Consistency,
		"consistency has not changed in update",
	)

	//
	// get updated ward
	//

	getWardRes, err = wardClient.GetWard(ctx, &pb.GetWardRequest{Id: wardID})
	require.NoError(t, err, "could not get room after update")

	assert.Equal(t, *updateReq.Name, getWardRes.Name)
	assert.Equal(t, updateRes.Consistency, getWardRes.Consistency)
}

func prepareWards(t *testing.T, ctx context.Context, client pb.WardServiceClient, amount int) []string {
	t.Helper()

	ids := make([]string, 0, amount)
	for i := 1; i <= amount; i++ {
		wardRes, err := client.CreateWard(ctx, &pb.CreateWardRequest{
			Name: t.Name() + " ward " + strconv.Itoa(i),
		})
		require.NoError(t, err, "prepareWard failed: could not create ward", i)
		ids = append(ids, wardRes.Id)
	}
	return ids
}

func TestGetRecentWards(t *testing.T) {
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
			require.NoError(t, err, "could not assign bed to patient")
			_, err = taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
				Name:      t.Name() + " Patient " + bedSuffix + " Task ",
				PatientId: patientID,
				// behold: peak enginering:
				InitialStatus: hwutil.PtrTo(pb.TaskStatus(j + 1)), //nolint:gosec
			})
			require.NoError(t, err, "could not create task for patient")
		}
	}

	hwtesting.WaitForProjectionsToSettle()

	// touch each ward, to push it into RecentWards
	for _, wardID := range wardIds {
		res, err := wardClient.UpdateWard(ctx, &pb.UpdateWardRequest{Id: wardID})
		require.NoError(t, err, "could not update ward %s", wardID)
		consistencies[wardID] = res.Consistency
		hwtesting.WaitForProjectionsToSettle()
	}

	hwtesting.WaitForProjectionsToSettle()
	time.Sleep(time.Second * 5) // this one needs a bit for some reason

	// GetRecentWards
	res, err := wardClient.GetRecentWards(ctx, &pb.GetRecentWardsRequest{})
	require.NoError(t, err, "could not GetRecentWards")

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

func TestGetWards(t *testing.T) {
	wardClient := wardServiceClient()
	ctx := context.Background()

	createReq := &pb.CreateWardRequest{
		Name: t.Name() + " ward",
	}

	wardRes, err := wardClient.CreateWard(ctx, createReq)
	require.NoError(t, err, "could not create ward")

	res, err := wardClient.GetWards(ctx, &pb.GetWardsRequest{})
	require.NoError(t, err, "could not GetWardOverviews")

	found := false
	for _, ward := range res.Wards {
		if ward.Id != wardRes.Id {
			continue
		}
		found = true

		expected := map[string]interface{}{
			"id":          wardRes.Id,
			"name":        createReq.Name,
			"consistency": wardRes.Consistency,
		}

		actual := map[string]interface{}{
			"id":          ward.Id,
			"name":        ward.Name,
			"consistency": ward.Consistency,
		}

		assert.Equal(t, expected, actual)
	}

	assert.True(t, found)
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

	wardID, consistency := prepareWard(t, ctx, "")

	for i, bedSfxs := range suffixMatrix {
		roomSuffix := strconv.Itoa(i + 1)
		roomId, _ := prepareRoom(t, ctx, wardID, roomSuffix)
		for j, bedSuffix := range bedSfxs {
			bedId, _ := prepareBed(t, ctx, roomId, bedSuffix)
			patientID := preparePatient(t, ctx, bedSuffix)
			_, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
				Id:    patientID,
				BedId: bedId,
			})
			require.NoError(t, err, "could not assign bed to patient")
			_, err = taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
				Name:      t.Name() + " Patient " + bedSuffix + " Task ",
				PatientId: patientID,
				// behold: peak enginering:
				InitialStatus: hwutil.PtrTo(pb.TaskStatus(j + 1)), //nolint:gosec
			})
			require.NoError(t, err, "could not create task for patient")
		}
	}

	res, err := wardClient.GetWardOverviews(ctx, &pb.GetWardOverviewsRequest{})
	require.NoError(t, err, "could not GetWardOverviews")

	found := false
	for _, ward := range res.Wards {
		if ward.Id != wardID {
			continue
		}
		found = true

		expected := map[string]interface{}{
			"id":                wardID,
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

func TestGetWardDetails(t *testing.T) {
	wardClient := wardServiceClient()
	taskTemplateClient := taskTemplateServiceClient()
	ctx := context.Background()
	wardID, consistency := prepareWard(t, ctx, "")

	expected := map[string]interface{}{
		"id":          wardID,
		"name":        t.Name() + " ward ",
		"consistency": consistency,
	}

	// create task-template and subtask

	ttres, err := taskTemplateClient.CreateTaskTemplate(ctx, &pb.CreateTaskTemplateRequest{
		Name:        t.Name() + " task template",
		Description: nil,
		WardId:      &wardID,
	})
	require.NoError(t, err, "could not CreateTaskTemplate")

	st, err := taskTemplateClient.CreateTaskTemplateSubTask(ctx, &pb.CreateTaskTemplateSubTaskRequest{
		TaskTemplateId: ttres.Id,
		Name:           t.Name() + " substask",
	})
	require.NoError(t, err, "could not CreateTaskTemplateSubTask")

	expected["task_templates"] = []map[string]interface{}{
		{
			"id":          ttres.Id,
			"name":        t.Name() + " task template",
			"consistency": st.TaskTemplateConsistency,
			"subtasks": []map[string]interface{}{
				{
					"id":   st.Id,
					"name": t.Name() + " substask",
				},
			},
		},
	}

	// create rooms and beds

	suffixMatrix := [][]string{
		{"1 A", "1 B"}, // Room 1
		{"2 A"},        // Room 2
		{},             // Room 3
	}

	rooms := make([]map[string]interface{}, 0)
	for i, bedSfxs := range suffixMatrix {
		roomSuffix := strconv.Itoa(i + 1)
		roomId, roomConsistency := prepareRoom(t, ctx, wardID, roomSuffix)
		expectedRoom := map[string]interface{}{
			"id":          roomId,
			"name":        t.Name() + " room " + roomSuffix,
			"consistency": roomConsistency,
		}
		beds := make([]map[string]interface{}, 0)
		for _, bedSuffix := range bedSfxs {
			bedId, bedConsistency := prepareBed(t, ctx, roomId, bedSuffix)
			beds = append(beds, map[string]interface{}{
				"id":          bedId,
				"name":        t.Name() + " bed " + bedSuffix,
				"consistency": bedConsistency,
			})
		}
		expectedRoom["beds"] = beds
		rooms = append(rooms, expectedRoom)
	}
	expected["rooms"] = rooms

	// get GetWardDetails

	ward, err := wardClient.GetWardDetails(ctx, &pb.GetWardDetailsRequest{
		Id: wardID,
	})
	require.NoError(t, err, "could GetWardDetailsRequest")

	// assertions

	actual := map[string]interface{}{
		"id":          ward.Id,
		"name":        ward.Name,
		"consistency": ward.Consistency,
		"rooms": hwutil.Map(ward.Rooms, func(r *pb.GetWardDetailsResponse_Room) map[string]interface{} {
			return map[string]interface{}{
				"id":          r.Id,
				"name":        r.Name,
				"consistency": r.Consistency,
				"beds": hwutil.Map(r.Beds, func(b *pb.GetWardDetailsResponse_Bed) map[string]interface{} {
					return map[string]interface{}{
						"id":          b.Id,
						"name":        b.Name,
						"consistency": b.Consistency,
					}
				}),
			}
		}),
		"task_templates": hwutil.Map(ward.TaskTemplates,
			func(tt *pb.GetWardDetailsResponse_TaskTemplate) map[string]interface{} {
				return map[string]interface{}{
					"id":          tt.Id,
					"name":        tt.Name,
					"consistency": tt.Consistency,
					"subtasks": hwutil.Map(tt.Subtasks,
						func(st *pb.GetWardDetailsResponse_Subtask) map[string]interface{} {
							return map[string]interface{}{
								"id":   st.Id,
								"name": st.Name,
							}
						}),
				}
			}),
	}

	assert.Equal(t, expected, actual)
}
