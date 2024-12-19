package stories

import (
	"context"
	pb "gen/services/user_svc/v1"
	"hwtesting"
	"hwutil"
	"testing"

	"github.com/google/uuid"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestCreateUpdateGetOrganization(t *testing.T) {
	t.Parallel()

	ctx := context.Background()

	client := pb.NewOrganizationServiceClient(hwtesting.GetGrpcConn("", ""))

	//
	// create new org
	//

	createReq := &pb.CreateOrganizationRequest{
		LongName:     t.Name() + " Organization",
		ShortName:    t.Name()[len(t.Name())-10:],
		ContactEmail: "testing@helpwave.io",
		IsPersonal:   nil,
	}
	createOrganizationResponse, err := client.CreateOrganization(ctx, createReq)
	require.NoError(t, err)

	orgID := uuid.MustParse(createOrganizationResponse.GetId())

	//
	// get new organization
	//
	org, err := client.GetOrganization(ctx, &pb.GetOrganizationRequest{Id: orgID.String()})
	require.NoError(t, err)

	assert.Equal(t, createReq.GetLongName(), org.GetLongName())
	assert.Equal(t, createReq.GetShortName(), org.GetShortName())
	assert.Equal(t, createReq.GetContactEmail(), org.GetContactEmail())

	//
	// update organization
	//
	updateReq := &pb.UpdateOrganizationRequest{
		Id:           orgID.String(),
		LongName:     hwutil.PtrTo(t.Name() + " Organization Updated"),
		ShortName:    hwutil.PtrTo("Updated"),
		ContactEmail: hwutil.PtrTo("updated@helpwave.io"),
		AvatarUrl:    nil,
		IsPersonal:   nil,
	}
	_, err = client.UpdateOrganization(ctx, updateReq)
	require.NoError(t, err)

	//
	// get updated organization
	//

	org, err = client.GetOrganization(ctx, &pb.GetOrganizationRequest{Id: orgID.String()})
	require.NoError(t, err)

	assert.Equal(t, updateReq.GetLongName(), org.GetLongName())
	assert.Equal(t, updateReq.GetShortName(), org.GetShortName())
	assert.Equal(t, updateReq.GetContactEmail(), org.GetContactEmail())
}
