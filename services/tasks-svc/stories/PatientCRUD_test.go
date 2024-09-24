package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	zlog "github.com/rs/zerolog/log"
	"github.com/stretchr/testify/assert"
	"hwutil"
	"strconv"
	"testing"
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
	assert.NoError(t, err, "could not create patient")

	patientId := createRes.GetId()

	//
	// get new patient
	//

	getPatientRes, err := patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	assert.NoError(t, err, "could not get after creation")

	assert.Equal(t, createReq.HumanReadableIdentifier, getPatientRes.HumanReadableIdentifier)
	assert.Equal(t, *createReq.Notes, getPatientRes.Notes)
	assert.Equal(t, createRes.Consistency, getPatientRes.Consistency)

	//
	// update patient
	//

	updateReq := &pb.UpdatePatientRequest{
		Id:                      patientId,
		HumanReadableIdentifier: hwutil.PtrTo(t.Name() + " patient 1"),
		Consistency:             &getPatientRes.Consistency,
	}
	updateRes, err := patientClient.UpdatePatient(ctx, updateReq)
	assert.NoError(t, err, "could not update after creation")

	assert.NotEqual(t, getPatientRes.Consistency, updateRes.Consistency, "consistency has not changed in update")

	//
	// get updated patient
	//

	getPatientRes, err = patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	assert.NoError(t, err, "could not get after update")

	assert.Equal(t, *updateReq.HumanReadableIdentifier, getPatientRes.HumanReadableIdentifier)
	assert.Equal(t, updateRes.Consistency, getPatientRes.Consistency)

	//
	// discharge patient
	//

	dischargeRes, err := patientClient.DischargePatient(ctx, &pb.DischargePatientRequest{Id: patientId})
	assert.NoError(t, err)
	assert.NotEqual(t, getPatientRes.Consistency, dischargeRes.Consistency)

	//
	// get discharged patient
	//

	getPatientRes, err = patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	assert.NoError(t, err, "could not get after discharge")

	// TODO: we we ever expose the discharged-state?
	assert.Equal(t, dischargeRes.Consistency, getPatientRes.Consistency)

	//
	// re-admit patient
	//

	readmitRes, err := patientClient.ReadmitPatient(ctx, &pb.ReadmitPatientRequest{PatientId: patientId})
	assert.NoError(t, err)
	assert.NotEqual(t, getPatientRes.Consistency, readmitRes.Consistency)

	//
	// get re-admitted patient
	//

	getPatientRes, err = patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	assert.NoError(t, err, "could not get after re-admit")

	// TODO: we we ever expose the discharged-state?
	assert.Equal(t, readmitRes.Consistency, getPatientRes.Consistency)

	//
	// assign patient to bed
	//

	wardId, _ := prepareWard(t, ctx, "")
	roomId, _ := prepareRoom(t, ctx, wardId, "")
	bedId, _ := prepareBed(t, ctx, roomId, "")

	assignRes, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientId,
		BedId:       bedId,
		Consistency: &getPatientRes.Consistency,
	})
	assert.NoError(t, err)
	assert.NotEqual(t, getPatientRes.Consistency, assignRes.Consistency)

	//
	// get assigned patient
	//

	getPatientRes, err = patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	assert.NoError(t, err, "could not get after bed assignment")

	zlog.Debug().Interface("patient", getPatientRes).Msg("patient")

	assert.NotNil(t, getPatientRes.Bed)
	assert.Equal(t, bedId, getPatientRes.Bed.Id)

	assert.NotNil(t, getPatientRes.Room)
	assert.Equal(t, roomId, getPatientRes.Room.Id)
	assert.Equal(t, wardId, getPatientRes.Room.WardId)

	assert.Equal(t, &getPatientRes.Bed.Id, getPatientRes.BedId)
	assert.Equal(t, &getPatientRes.Room.WardId, getPatientRes.WardId)

	assert.Equal(t, assignRes.Consistency, getPatientRes.Consistency)

	//
	// unassign patient from bed
	//

	unassignRes, err := patientClient.UnassignBed(ctx, &pb.UnassignBedRequest{
		Id:          patientId,
		Consistency: &getPatientRes.Consistency,
	})
	assert.NoError(t, err)
	assert.NotEqual(t, getPatientRes.Consistency, unassignRes.Consistency)

	//
	// get unassigned patient
	//

	getPatientRes, err = patientClient.GetPatient(ctx, &pb.GetPatientRequest{Id: patientId})
	assert.NoError(t, err, "could not get after bed assignment")

	zlog.Debug().Interface("patient", getPatientRes).Msg("patient")

	assert.Nil(t, getPatientRes.Bed)
	assert.Nil(t, getPatientRes.Room)
	assert.Nil(t, getPatientRes.BedId)
	assert.Nil(t, getPatientRes.WardId)

	assert.Equal(t, unassignRes.Consistency, getPatientRes.Consistency)
}

func TestGetPatientByBed(t *testing.T) {
	ctx := context.Background()

	patientClient := patientServiceClient()

	//
	// create patient and bed
	//

	wardId, _ := prepareWard(t, ctx, "")
	roomId, _ := prepareRoom(t, ctx, wardId, "")
	bedId, _ := prepareBed(t, ctx, roomId, "")

	createReq := &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " patient",
		Notes:                   hwutil.PtrTo("A " + t.Name() + " patient"),
	}
	createRes, err := patientClient.CreatePatient(ctx, createReq)
	assert.NoError(t, err, "could not create patient")

	patientId := createRes.GetId()

	assRes, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientId,
		BedId:       bedId,
		Consistency: &createRes.Consistency,
	})
	assert.NoError(t, err)

	//
	// GetPatientByBedResponse
	//

	getRes, err := patientClient.GetPatientByBed(ctx, &pb.GetPatientByBedRequest{
		BedId: bedId,
	})
	assert.NoError(t, err)

	assert.Equal(t, createRes.Id, getRes.Id)
	assert.Equal(t, bedId, getRes.BedId)
	assert.Equal(t, createReq.HumanReadableIdentifier, getRes.HumanReadableIdentifier)
	assert.Equal(t, *createReq.Notes, getRes.Notes)
	assert.Equal(t, assRes.Consistency, getRes.Consistency)
}

func TestGetPatientsByWard(t *testing.T) {
	ctx := context.Background()

	patientClient := patientServiceClient()

	//
	// create patients and beds
	//

	wardId, _ := prepareWard(t, ctx, "")
	roomId, _ := prepareRoom(t, ctx, wardId, "")
	bedId1, _ := prepareBed(t, ctx, roomId, "1")
	bedId2, _ := prepareBed(t, ctx, roomId, "2")

	createReq1 := &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " patient 1",
		Notes:                   hwutil.PtrTo("A " + t.Name() + " patient"),
	}
	createRes1, err := patientClient.CreatePatient(ctx, createReq1)
	assert.NoError(t, err, "could not create patient")

	patientId1 := createRes1.GetId()

	assRes1, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientId1,
		BedId:       bedId1,
		Consistency: &createRes1.Consistency,
	})
	assert.NoError(t, err)

	createReq2 := &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " patient 2",
		Notes:                   hwutil.PtrTo("A " + t.Name() + " patient"),
	}
	createRes2, err := patientClient.CreatePatient(ctx, createReq2)
	assert.NoError(t, err, "could not create patient")

	patientId2 := createRes2.GetId()

	assRes2, err := patientClient.AssignBed(ctx, &pb.AssignBedRequest{
		Id:          patientId2,
		BedId:       bedId2,
		Consistency: &createRes2.Consistency,
	})
	assert.NoError(t, err)

	//
	// GetPatientsByWard
	//

	getRes, err := patientClient.GetPatientsByWard(ctx, &pb.GetPatientsByWardRequest{
		WardId: wardId,
	})
	assert.NoError(t, err)

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

	wardId, _ := prepareWard(t, ctx, "")

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
		roomId, roomConsistency := prepareRoom(t, ctx, wardId, roomSuffix)
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
			assert.NoError(t, err)
			patientConsistencies[patientId] = res.Consistency
			patientForBed[bedId] = patientId
		}
	}

	res, err := patientClient.GetPatientAssignmentByWard(ctx, &pb.GetPatientAssignmentByWardRequest{WardId: wardId})
	assert.NoError(t, err)

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
