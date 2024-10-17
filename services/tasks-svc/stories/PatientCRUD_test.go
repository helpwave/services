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
	zlog "github.com/rs/zerolog/log"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestCreateUpdateGetPatient(t *testing.T) {
	ctx := context.Background()

	patientClient := patientServiceClient()

	//
	// create new patient
	//

	createReq := &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " patient",
		Notes:                   hwutil.PtrTo("A " + t.Name() + " patient"),
	}
	createRes, err := patientClient.CreatePatient(ctx, createReq)
	require.NoError(t, err, "could not create patient")

	patientId := createRes.GetId()

	//
	// get new patient
	//

	getPatientRes, err := patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	require.NoError(t, err, "could not get after creation")

	assert.Equal(t, createReq.GetHumanReadableIdentifier(), getPatientRes.GetHumanReadableIdentifier())
	assert.Equal(t, createReq.GetNotes(), getPatientRes.GetNotes())
	assert.Equal(t, createRes.GetConsistency(), getPatientRes.GetConsistency())

	//
	// update patient
	//

	updateReq := &pb.UpdatePatientRequest{
		Id:                      patientId,
		HumanReadableIdentifier: hwutil.PtrTo(t.Name() + " patient 1"),
		Consistency:             &getPatientRes.Consistency,
	}
	updateRes, err := patientClient.UpdatePatient(ctx, updateReq)
	require.NoError(t, err, "could not update after creation")

	assert.NotEqual(t, getPatientRes.Consistency, updateRes.Consistency, "consistency has not changed in update")

	//
	// get updated patient
	//

	getPatientRes, err = patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	require.NoError(t, err, "could not get after update")

	assert.Equal(t, updateReq.GetHumanReadableIdentifier(), getPatientRes.GetHumanReadableIdentifier())
	assert.Equal(t, updateRes.GetConsistency(), getPatientRes.GetConsistency())

	//
	// discharge patient
	//

	dischargeRes, err := patientClient.DischargePatient(ctx, &pb.DischargePatientRequest{Id: patientId})
	require.NoError(t, err)
	assert.NotEqual(t, getPatientRes.Consistency, dischargeRes.Consistency)

	//
	// get discharged patient
	//

	getPatientDetailsRes, err := patientClient.GetPatientDetails(ctx, &pb.GetPatientDetailsRequest{Id: patientId})
	require.NoError(t, err, "could not get after discharge")

	assert.True(t, getPatientDetailsRes.IsDischarged)
	assert.Equal(t, dischargeRes.Consistency, getPatientDetailsRes.Consistency)

	//
	// re-admit patient
	//

	readmitRes, err := patientClient.ReadmitPatient(ctx, &pb.ReadmitPatientRequest{PatientId: patientId})
	require.NoError(t, err)
	assert.NotEqual(t, getPatientRes.Consistency, readmitRes.Consistency)

	//
	// get re-admitted patient
	//

	getPatientDetailsRes, err = patientClient.GetPatientDetails(ctx, &pb.GetPatientDetailsRequest{Id: patientId})
	require.NoError(t, err, "could not get after re-admit")

	assert.False(t, getPatientDetailsRes.IsDischarged)
	assert.Equal(t, readmitRes.Consistency, getPatientDetailsRes.Consistency)

	//
	// assign patient to bed
	//

	wardID, _ := prepareWard(t, ctx, "")
	roomId, _ := prepareRoom(t, ctx, wardID, "")
	bedId, _ := prepareBed(t, ctx, roomId, "")

	assignRes, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientId,
		BedId:       bedId,
		Consistency: &getPatientRes.Consistency,
	})
	require.NoError(t, err)
	assert.NotEqual(t, getPatientRes.Consistency, assignRes.Consistency)

	//
	// get assigned patient
	//

	getPatientRes, err = patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	require.NoError(t, err, "could not get after bed assignment")

	zlog.Debug().Interface("patient", getPatientRes).Msg("patient")

	assert.NotNil(t, getPatientRes.Bed)
	assert.Equal(t, bedId, getPatientRes.Bed.Id)

	assert.NotNil(t, getPatientRes.Room)
	assert.Equal(t, roomId, getPatientRes.Room.Id)
	assert.Equal(t, wardID, getPatientRes.Room.WardId)

	assert.Equal(t, assignRes.Consistency, getPatientRes.Consistency)

	//
	// unassign patient from bed
	//

	unassignRes, err := patientClient.UnassignBed(ctx, &pb.UnassignBedRequest{
		Id:          patientId,
		Consistency: &getPatientRes.Consistency,
	})
	require.NoError(t, err)
	assert.NotEqual(t, getPatientRes.Consistency, unassignRes.Consistency)

	//
	// get unassigned patient
	//

	getPatientRes, err = patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	require.NoError(t, err, "could not get after bed assignment")

	zlog.Debug().Interface("patient", getPatientRes).Msg("patient")

	assert.Nil(t, getPatientRes.Bed)
	assert.Nil(t, getPatientRes.Room)

	assert.Equal(t, unassignRes.Consistency, getPatientRes.Consistency)
}

func TestGetPatientByBed(t *testing.T) {
	ctx := context.Background()

	patientClient := patientServiceClient()

	//
	// create patient and bed
	//

	wardID, _ := prepareWard(t, ctx, "")
	roomId, _ := prepareRoom(t, ctx, wardID, "")
	bedId, _ := prepareBed(t, ctx, roomId, "")

	createReq := &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " patient",
		Notes:                   hwutil.PtrTo("A " + t.Name() + " patient"),
	}
	createRes, err := patientClient.CreatePatient(ctx, createReq)
	require.NoError(t, err, "could not create patient")

	patientId := createRes.GetId()

	assRes, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientId,
		BedId:       bedId,
		Consistency: &createRes.Consistency,
	})
	require.NoError(t, err)

	//
	// GetPatientByBedResponse
	//

	getRes, err := patientClient.GetPatientByBed(ctx, &pb.GetPatientByBedRequest{
		BedId: bedId,
	})
	require.NoError(t, err)

	assert.Equal(t, createRes.Id, getRes.Id)
	assert.Equal(t, bedId, getRes.BedId)
	assert.Equal(t, createReq.GetHumanReadableIdentifier(), getRes.GetHumanReadableIdentifier())
	assert.Equal(t, createReq.GetNotes(), getRes.GetNotes())
	assert.Equal(t, assRes.GetConsistency(), getRes.GetConsistency())
}

func TestGetPatientsByWard(t *testing.T) {
	ctx := context.Background()

	patientClient := patientServiceClient()

	//
	// create patients and beds
	//

	wardID, _ := prepareWard(t, ctx, "")
	roomId, _ := prepareRoom(t, ctx, wardID, "")
	bedId1, _ := prepareBed(t, ctx, roomId, "1")
	bedId2, _ := prepareBed(t, ctx, roomId, "2")

	createReq1 := &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " patient 1",
		Notes:                   hwutil.PtrTo("A " + t.Name() + " patient"),
	}
	createRes1, err := patientClient.CreatePatient(ctx, createReq1)
	require.NoError(t, err, "could not create patient")

	patientId1 := createRes1.GetId()

	assRes1, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientId1,
		BedId:       bedId1,
		Consistency: &createRes1.Consistency,
	})
	require.NoError(t, err)

	createReq2 := &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " patient 2",
		Notes:                   hwutil.PtrTo("A " + t.Name() + " patient"),
	}
	createRes2, err := patientClient.CreatePatient(ctx, createReq2)
	require.NoError(t, err, "could not create patient")

	patientId2 := createRes2.GetId()

	assRes2, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientId2,
		BedId:       bedId2,
		Consistency: &createRes2.Consistency,
	})
	require.NoError(t, err)

	//
	// GetPatientsByWard
	//

	getRes, err := patientClient.GetPatientsByWard(ctx, &pb.GetPatientsByWardRequest{
		WardId: wardID,
	})
	require.NoError(t, err)

	assert.Len(t, getRes.Patients, 2)

	patient1 := getRes.Patients[0]
	patient2 := getRes.Patients[1]

	if patient1.Id != createRes1.Id {
		patient1 = getRes.Patients[1]
		patient2 = getRes.Patients[0]
	}

	assert.Equal(t, createRes1.Id, patient1.Id)
	assert.Equal(t, &bedId1, patient1.BedId)
	assert.Equal(t, createReq1.HumanReadableIdentifier, patient1.HumanReadableIdentifier)
	assert.Equal(t, *createReq1.Notes, patient1.Notes)
	assert.Equal(t, assRes1.Consistency, patient1.Consistency)

	assert.Equal(t, createRes2.Id, patient2.Id)
	assert.Equal(t, &bedId2, patient2.BedId)
	assert.Equal(t, createReq2.HumanReadableIdentifier, patient2.HumanReadableIdentifier)
	assert.Equal(t, *createReq2.Notes, patient2.Notes)
	assert.Equal(t, assRes2.Consistency, patient2.Consistency)
}

func TestGetPatientAssignmentByWard(t *testing.T) {
	ctx := context.Background()
	patientClient := patientServiceClient()

	wardID, _ := prepareWard(t, ctx, "")

	suffixMatrix := [][]string{
		{"1 A", "1 B"}, // Room 1
		{"2 A"},        // Room 2
		{},             // Room 3
	}

	roomIds := make([]string, 0, len(suffixMatrix))

	roomConsistencies := make(map[string]string)
	bedConsistencies := make(map[string]string)
	patientConsistencies := make(map[string]string)

	bedsForRoom := make(map[string][]string)
	patientForBed := make(map[string]string)

	for i, bedSfxs := range suffixMatrix {
		roomSuffix := strconv.Itoa(i + 1)
		roomId, roomConsistency := prepareRoom(t, ctx, wardID, roomSuffix)
		roomIds = append(roomIds, roomId)
		roomConsistencies[roomId] = roomConsistency
		bedsForRoom[roomId] = make([]string, 0)

		for _, bedSuffix := range bedSfxs {
			bedId, bedConsistency := prepareBed(t, ctx, roomId, bedSuffix)
			bedConsistencies[bedId] = bedConsistency
			bedsForRoom[roomId] = append(bedsForRoom[roomId], bedId)

			patientId := preparePatient(t, ctx, bedSuffix)
			res, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
				Id:    patientId,
				BedId: bedId,
			})
			require.NoError(t, err)
			patientConsistencies[patientId] = res.Consistency
			patientForBed[bedId] = patientId
		}
	}

	res, err := patientClient.GetPatientAssignmentByWard(ctx, &pb.GetPatientAssignmentByWardRequest{WardId: wardID})
	require.NoError(t, err)

	assert.Len(t, res.Rooms, len(suffixMatrix))

	zlog.Debug().Interface("res", res).Msg("res")

	for _, room := range res.Rooms {
		assert.Contains(t, roomIds, room.Id)
		assert.Equal(t, roomConsistencies[room.Id], room.Consistency)

		for _, bed := range room.Beds {
			assert.Contains(t, bedsForRoom[room.Id], bed.Id)
			assert.Equal(t, bedConsistencies[bed.Id], bed.Consistency)

			if bed.Patient == nil {
				assert.Nil(t, patientForBed[bed.Id])
				continue
			}
			assert.Equal(t, patientForBed[bed.Id], bed.Patient.Id)
		}
	}
}

func TestGetPatientList(t *testing.T) {
	ctx := context.Background()
	patientClient := patientServiceClient()
	taskClient := taskServiceClient()

	//
	// Prepare ward, rooms, beds
	//

	wardID, _ := prepareWard(t, ctx, "")
	room1Id, room1Consistency := prepareRoom(t, ctx, wardID, "1")
	room2Id, room2Consistency := prepareRoom(t, ctx, wardID, "2")
	bed1Id, bed1Consistency := prepareBed(t, ctx, room1Id, "1")
	bed2Id, bed2Consistency := prepareBed(t, ctx, room2Id, "2")

	//
	// Create and assign Patients 1-2
	//

	patient1Id := preparePatient(t, ctx, "1")
	patient2Id := preparePatient(t, ctx, "2")

	ass1, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:    patient1Id,
		BedId: bed1Id,
	})
	require.NoError(t, err)

	ass2, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:    patient2Id,
		BedId: bed2Id,
	})
	require.NoError(t, err)

	//
	// Create and discharge Patient 3
	//

	patient3Id := preparePatient(t, ctx, "3")

	_, err = patientClient.DischargePatient(ctx, &pb.DischargePatientRequest{Id: patient3Id})
	require.NoError(t, err)

	//
	// Create unassigned Patient 4
	//

	patient4Id := preparePatient(t, ctx, "4")

	//
	// Create tasks
	//

	task1Res, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:      t.Name() + " task 1",
		PatientId: patient1Id,
		Public:    hwutil.PtrTo(true),
		Subtasks: []*pb.CreateTaskRequest_SubTask{
			{
				Name: "ST 1",
				Done: hwutil.PtrTo(true),
			},
			{
				Name: "ST 2",
			},
		},
	})
	require.NoError(t, err)

	task2Res, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:      t.Name() + " task 2",
		PatientId: patient3Id,
		Public:    hwutil.PtrTo(true),
	})
	require.NoError(t, err)

	hwtesting.WaitForProjectionsToSettle()

	//
	// GetPatientList
	//

	patientListRes, err := patientClient.GetPatientList(ctx, &pb.GetPatientListRequest{})
	require.NoError(t, err)

	//
	// Assertions
	//

	activeFound := 0
	for _, patient := range patientListRes.Active {
		if patient.Id == patient1Id {
			activeFound++
			require.NoError(t, err)
			assert.Equal(t, t.Name()+" Patient 1", patient.HumanReadableIdentifier)
			assert.Equal(t, "A patient for test "+t.Name(), patient.Notes)
			assert.Equal(t, ass1.Consistency, patient.Consistency)

			assert.NotNil(t, patient.Bed)
			assert.Equal(t, bed1Id, patient.Bed.Id)
			assert.Equal(t, t.Name()+" bed 1", patient.Bed.Name)
			assert.Equal(t, bed1Consistency, patient.Bed.Consistency)

			assert.NotNil(t, patient.Room)
			assert.Equal(t, room1Id, patient.Room.Id)
			assert.Equal(t, room1Consistency, patient.Room.Consistency)
			assert.Equal(t, t.Name()+" room 1", patient.Room.Name)
			assert.Equal(t, wardID, patient.Room.WardId)

			assert.Len(t, patient.Tasks, 1)
			assert.Equal(t, task1Res.Id, patient.Tasks[0].Id)
			assert.Equal(t, task1Res.Consistency, patient.Tasks[0].Consistency)

			assert.Len(t, patient.Tasks[0].Subtasks, 2)
			f := 0
			for _, st := range patient.Tasks[0].Subtasks {
				if st.Name == "ST 1" {
					f++
					assert.True(t, st.Done)
				}
				if st.Name == "ST 2" {
					f++
					assert.False(t, st.Done)
				}
			}
			assert.Equal(t, 2, f)
		}
		if patient.Id == patient2Id {
			activeFound++
			require.NoError(t, err)
			assert.Equal(t, t.Name()+" Patient 2", patient.HumanReadableIdentifier)
			assert.Equal(t, "A patient for test "+t.Name(), patient.Notes)
			assert.Equal(t, ass2.Consistency, patient.Consistency)

			assert.NotNil(t, patient.Bed)
			assert.Equal(t, bed2Id, patient.Bed.Id)
			assert.Equal(t, t.Name()+" bed 2", patient.Bed.Name)
			assert.Equal(t, bed2Consistency, patient.Bed.Consistency)

			assert.NotNil(t, patient.Room)
			assert.Equal(t, room2Id, patient.Room.Id)
			assert.Equal(t, room2Consistency, patient.Room.Consistency)
			assert.Equal(t, t.Name()+" room 2", patient.Room.Name)
			assert.Equal(t, wardID, patient.Room.WardId)
		}
	}
	assert.Equal(t, 2, activeFound)

	dischargedIds := hwutil.Map(patientListRes.DischargedPatients, func(p *pb.GetPatientListResponse_Patient) string {
		return p.Id
	})
	assert.Contains(t, dischargedIds, patient3Id)

	unassignedIds := hwutil.Map(patientListRes.UnassignedPatients, func(p *pb.GetPatientListResponse_Patient) string {
		if p.Id == patient3Id {
			assert.Len(t, p.Tasks, 1)
			assert.Equal(t, task2Res.Id, p.Tasks[0].Id)
			assert.Equal(t, task2Res.Consistency, p.Tasks[0].Consistency)
			assert.Empty(t, p.Tasks[0].Subtasks)
		}
		return p.Id
	})
	assert.Contains(t, unassignedIds, patient4Id)
}

func TestGetPatientDetails(t *testing.T) {
	ctx := context.Background()

	patientClient := patientServiceClient()
	taskClient := taskServiceClient()

	//
	// create patient and bed
	//

	wardID, _ := prepareWard(t, ctx, "")
	roomId, _ := prepareRoom(t, ctx, wardID, "")
	bedId, _ := prepareBed(t, ctx, roomId, "")

	createReq := &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " patient",
		Notes:                   hwutil.PtrTo("A " + t.Name() + " patient"),
	}
	createRes, err := patientClient.CreatePatient(ctx, createReq)
	require.NoError(t, err, "could not create patient")

	hwtesting.WaitForProjectionsToSettle()

	patientId := createRes.GetId()

	assRes, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientId,
		BedId:       bedId,
		Consistency: &createRes.Consistency,
	})
	require.NoError(t, err)

	//
	// Create Tasks
	//
	suffixMap := [][]string{
		{"1 A", "1 B", "1 C"}, // Task 1
		{"2 A", "2 B"},        // Task 2
		{},                    // Task 3
	}

	taskIds := make([]string, 0, len(suffixMap))
	taskConsistencies := make(map[string]string)
	subtaskMap := make(map[string][]*pb.CreateTaskRequest_SubTask)

	for i, stSuffixes := range suffixMap {
		taskSuffix := strconv.Itoa(i + 1)

		sts := hwutil.Map(stSuffixes, func(s string) *pb.CreateTaskRequest_SubTask {
			return &pb.CreateTaskRequest_SubTask{
				Name: t.Name() + " ST " + s,
			}
		})

		taskRes, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
			Name:        t.Name() + " task " + taskSuffix,
			Description: nil,
			PatientId:   patientId,
			Public:      hwutil.PtrTo(true),
			DueAt:       nil,
			// behold: peak enginering:
			InitialStatus:  hwutil.PtrTo(pb.TaskStatus(i + 1)), //nolint:gosec
			AssignedUserId: nil,
			Subtasks:       sts,
		})
		require.NoError(t, err)
		taskIds = append(taskIds, taskRes.Id)
		taskConsistencies[taskRes.Id] = taskRes.Consistency
		subtaskMap[taskRes.Id] = sts
	}

	hwtesting.WaitForProjectionsToSettle()

	//
	// GetPatientDetails
	//

	getRes, err := patientClient.GetPatientDetails(ctx, &pb.GetPatientDetailsRequest{
		Id: patientId,
	})
	require.NoError(t, err)

	assert.Equal(t, createRes.Id, getRes.Id)
	assert.Equal(t, createReq.GetHumanReadableIdentifier(), getRes.GetHumanReadableIdentifier())
	assert.Equal(t, createReq.GetNotes(), getRes.GetNotes())
	assert.Len(t, getRes.GetTasks(), len(suffixMap))

	assert.Subset(t, taskIds, hwutil.Map(getRes.GetTasks(), func(tsk *pb.GetPatientDetailsResponse_Task) string {
		assert.Equal(t, taskConsistencies[tsk.Id], tsk.Consistency)
		assert.Len(t, tsk.GetSubtasks(), len(subtaskMap[tsk.Id]))
		exp := hwutil.Map(subtaskMap[tsk.Id], func(st *pb.CreateTaskRequest_SubTask) string {
			return st.GetName()
		})
		have := hwutil.Map(tsk.GetSubtasks(), func(st *pb.GetPatientDetailsResponse_Task_SubTask) string {
			return st.GetName()
		})
		assert.Subset(t, exp, have)
		return tsk.Id
	}))

	assert.Equal(t, roomId, getRes.GetRoom().GetId())
	assert.Equal(t, bedId, getRes.GetBed().GetId())
	assert.False(t, getRes.GetIsDischarged())
	assert.Equal(t, assRes.GetConsistency(), getRes.GetConsistency())
}

func TestGetRecentPatients(t *testing.T) {
	userID := uuid.New() // new user for this test, to prevent interference with other tests
	patientClient := pb.NewPatientServiceClient(hwtesting.GetGrpcConn(userID.String()))
	ctx := context.Background()

	wardID, _ := prepareWard(t, ctx, "")
	roomId, roomConsistency := prepareRoom(t, ctx, wardID, "")
	bedId, bedConsitency := prepareBed(t, ctx, roomId, "")
	patientWithBedId := ""

	N := 11 // cap is ten

	consistencies := make(map[string]string)

	ids := make([]string, 0, N)
	for i := 1; i <= N; i++ {
		patientRes, err := patientClient.CreatePatient(ctx, &pb.CreatePatientRequest{
			HumanReadableIdentifier: t.Name() + " patient " + strconv.Itoa(i),
			Notes:                   nil,
		})
		require.NoError(t, err)
		ids = append(ids, patientRes.Id)
		consistencies[patientRes.Id] = patientRes.Consistency

		if i == N {
			assRes, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
				Id:          patientRes.Id,
				BedId:       bedId,
				Consistency: &patientRes.Consistency,
			})
			require.NoError(t, err)
			patientWithBedId = patientRes.Id
			consistencies[patientRes.Id] = assRes.Consistency
		}

		// items are ordered by the result of redis TIME command, which is accurate to the second,
		// thus we have to wait for at least one to have a deterministic test
		time.Sleep(time.Second)
	}

	hwtesting.WaitForProjectionsToSettle()

	recent, err := patientClient.GetRecentPatients(ctx, &pb.GetRecentPatientsRequest{})
	require.NoError(t, err)

	assert.Len(t, recent.RecentPatients, 10)
	foundIds := hwutil.Map(recent.RecentPatients, func(p *pb.GetRecentPatientsResponse_Patient) string {
		id := p.Id
		if id == patientWithBedId {
			assert.Equal(t, bedId, p.Bed.Id)
			assert.Equal(t, bedConsitency, p.Bed.Consistency)
			assert.Equal(t, roomId, p.Room.Id)
			assert.Equal(t, roomConsistency, p.Room.Consistency)
		}
		assert.Equal(t, consistencies[p.Id], p.Consistency)
		return id
	})

	assert.Len(t, ids, N)
	assert.Subset(t, ids, foundIds)
	assert.NotContains(t, foundIds, ids[0]) // thrown out
}
