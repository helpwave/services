package stories

import (
	"context"
	pb "gen/services/property_svc/v1"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwauthz/spicedb"
	"hwtesting"
	"hwutil"
	"testing"

	"property-svc/internal/property-view/perm"

	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

// TestTaskGetPropertyAlwaysIncluded:
//   - Create a Property,
//   - Add to always include list for ward
//   - Add to don't always include list for ward
//   - Add to always include list for ward and subjectid (matcher too precise)
//     After each step: GetProperty and check AlwaysIncludedForViewSource for wardid
func TestTaskGetPropertyAlwaysIncluded(t *testing.T) {
	t.Parallel()

	ctx := context.Background()
	wardID := uuid.New()
	patientID := uuid.New()
	taskID := uuid.New()

	// give new user appropriate permissions
	authz := spicedb.NewSpiceDBAuthZ()
	patient := commonPerm.GenericObject{Id: patientID.String(), Typ: "patient"}
	task := commonPerm.GenericObject{Id: taskID.String(), Typ: "task"}
	org := commonPerm.Organization(uuid.MustParse(hwtesting.FakeTokenOrganization))

	_, err := authz.
		Create(hwauthz.NewRelationship(org, "organization", perm.Ward(wardID))).
		Create(hwauthz.NewRelationship(org, "organization", patient)).
		Create(hwauthz.NewRelationship(patient, "patient", task)).
		Commit(ctx)
	require.NoError(t, err)

	propertyClient := propertyServiceClient()
	propertyViewClient := propertyViewServiceClient()

	//
	// Create new Property
	//

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType:   pb.SubjectType_SUBJECT_TYPE_TASK,
		FieldType:     pb.FieldType_FIELD_TYPE_TEXT,
		Name:          t.Name(),
		Description:   nil,
		SetId:         nil,
		FieldTypeData: nil,
	}

	createResponse, err := propertyClient.CreateProperty(ctx, createPropertyRequest)
	require.NoError(t, err, "could not create new property")
	propertyID, err := uuid.Parse(createResponse.PropertyId)
	require.NoError(t, err, "propertyID is not a uuid")

	hwtesting.WaitForProjectionsToSettle()

	//
	// Get new Property
	//

	propertyResponse, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id: propertyID.String(),
		ViewSource: &pb.GetPropertyRequest_ViewSource{
			Value: &pb.GetPropertyRequest_ViewSource_WardId{WardId: wardID.String()},
		},
	})
	require.NoError(t, err, "could not get property after it was created")

	if !assert.Equal(t, hwutil.PtrTo(false), propertyResponse.AlwaysIncludeForViewSource) {
		return
	}

	//
	// Add to always include list for ward
	//

	_, err = propertyViewClient.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude: []string{propertyID.String()},
		},
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: hwutil.PtrTo(wardID.String()),
			},
		},
	})

	require.NoError(t, err, "could not update property view")

	hwtesting.WaitForProjectionsToSettle()

	//
	// Get Property Again
	//

	propertyResponse, err = propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id: propertyID.String(),
		ViewSource: &pb.GetPropertyRequest_ViewSource{
			Value: &pb.GetPropertyRequest_ViewSource_WardId{WardId: wardID.String()},
		},
	})
	require.NoError(t, err, "could not get property after view was updated")

	assert.Equal(t, hwutil.PtrTo(true), propertyResponse.AlwaysIncludeForViewSource)

	//
	// Add to don't always include list for ward
	//

	_, err = propertyViewClient.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		FilterUpdate: &pb.FilterUpdate{
			AppendToDontAlwaysInclude: []string{propertyID.String()},
		},
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: hwutil.PtrTo(wardID.String()),
			},
		},
	})

	require.NoError(t, err, "could not update property view the second time")

	hwtesting.WaitForProjectionsToSettle()

	//
	// Get Property Again
	//

	propertyResponse, err = propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id: propertyID.String(),
		ViewSource: &pb.GetPropertyRequest_ViewSource{
			Value: &pb.GetPropertyRequest_ViewSource_WardId{WardId: wardID.String()},
		},
	})
	require.NoError(t, err, "could not get property after view was updated the second time")

	assert.Equal(t, hwutil.PtrTo(false), propertyResponse.AlwaysIncludeForViewSource)

	//
	// Add to always include list for ward and id (too specific)
	//

	_, err = propertyViewClient.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude: []string{propertyID.String()},
		},
		Matcher: &pb.UpdatePropertyViewRuleRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: hwutil.PtrTo(wardID.String()),
				TaskId: hwutil.PtrTo(taskID.String()),
			},
		},
	})

	require.NoError(t, err, "could not update property view the third time")

	hwtesting.WaitForProjectionsToSettle()

	//
	// Get Property Again
	//

	propertyResponse, err = propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id: propertyID.String(),
		ViewSource: &pb.GetPropertyRequest_ViewSource{
			Value: &pb.GetPropertyRequest_ViewSource_WardId{WardId: wardID.String()},
		},
	})
	require.NoError(t, err, "could not get property after view was updated the third time")

	if !assert.Equal(t, hwutil.PtrTo(false), propertyResponse.AlwaysIncludeForViewSource) {
		return
	}
}

// TestTaskGetPropertyConsistency:
//   - Create a Property,
//   - Update name
//   - TODO: conflict detection
func TestTaskGetPropertyConsistency(t *testing.T) {
	t.Parallel()

	propertyClient := propertyServiceClient()

	ctx := context.Background()

	//
	// Create new Property
	//

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType:   pb.SubjectType_SUBJECT_TYPE_TASK,
		FieldType:     pb.FieldType_FIELD_TYPE_TEXT,
		Name:          t.Name(),
		Description:   nil,
		SetId:         nil,
		FieldTypeData: nil,
	}

	createResponse, err := propertyClient.CreateProperty(ctx, createPropertyRequest)
	require.NoError(t, err, "could not create new property")
	propertyID, err := uuid.Parse(createResponse.PropertyId)
	require.NoError(t, err, "propertyID is not a uuid")

	createVersion := createResponse.Consistency

	hwtesting.WaitForProjectionsToSettle()

	//
	// Get new Property
	//

	propertyResponse, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id: propertyID.String(),
	})
	require.NoError(t, err, "could not get property after it was created")

	readVersion := propertyResponse.Consistency

	assert.Equal(t, createVersion, readVersion, "create and read consistencies differ")

	//
	// Update Property
	//

	updateResponse, err := propertyClient.UpdateProperty(ctx, &pb.UpdatePropertyRequest{
		Id:          propertyID.String(),
		Name:        hwutil.PtrTo(t.Name() + " updated"),
		Description: nil,
		Consistency: &readVersion,
	})

	require.NoError(t, err, "could not update property")

	updatedVersion := updateResponse.GetConsistency()

	assert.NotEqual(t, readVersion, updatedVersion, "update does not change consistency")

	hwtesting.WaitForProjectionsToSettle()

	//
	// Get updated Property
	//

	propertyResponse, err = propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id: propertyID.String(),
	})
	require.NoError(t, err, "could not get property after it was updated")

	readVersionAfterUpdate := propertyResponse.Consistency

	assert.Equal(
		t,
		updatedVersion,
		readVersionAfterUpdate,
		"updatedVersion and readVersionAfterUpdate consistencies differ",
	)
}
