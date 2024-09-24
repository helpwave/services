package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	zlog "github.com/rs/zerolog/log"
	"github.com/stretchr/testify/assert"
	"hwutil"
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
	assert.NoError(t, err, "could not create ward")

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
