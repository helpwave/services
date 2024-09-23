package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"hwutil"
	"testing"
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
