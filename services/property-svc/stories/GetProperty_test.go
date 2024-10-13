package stories

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"hwtesting"
	"hwutil"
	"testing"
)

// TestTaskGetPropertyAlwaysIncluded:
//   - Create a Property,
//   - Add to always include list for ward
//   - Add to don't always include list for ward
//   - Add to always include list for ward and subjectid (matcher too precise)
//     After each step: GetProperty and check AlwaysIncludedForViewSource for wardid
func TestTaskGetPropertyAlwaysIncluded(t *testing.T) {
	wardID := uuid.New()

	propertyClient := propertyServiceClient()
	propertyViewClient := propertyViewServiceClient()

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
	if !assert.NoError(t, err, "could not create new property") {
		return
	}
	propertyID, err := uuid.Parse(createResponse.PropertyId)
	if !assert.NoError(t, err, "propertyID is not a uuid") {
		return
	}
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
	if !assert.NoError(t, err, "could not get property after it was created") {
		return
	}

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

	if !assert.NoError(t, err, "could not update property view") {
		return
	}

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
	if !assert.NoError(t, err, "could not get property after view was updated") {
		return
	}

	if !assert.Equal(t, hwutil.PtrTo(true), propertyResponse.AlwaysIncludeForViewSource) {
		return
	}

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

	if !assert.NoError(t, err, "could not update property view the second time") {
		return
	}

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
	if !assert.NoError(t, err, "could not get property after view was updated the second time") {
		return
	}

	if !assert.Equal(t, hwutil.PtrTo(false), propertyResponse.AlwaysIncludeForViewSource) {
		return
	}

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
				TaskId: hwutil.PtrTo(propertyID.String()),
			},
		},
	})

	if !assert.NoError(t, err, "could not update property view the third time") {
		return
	}

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
	if !assert.NoError(t, err, "could not get property after view was updated the third time") {
		return
	}

	if !assert.Equal(t, hwutil.PtrTo(false), propertyResponse.AlwaysIncludeForViewSource) {
		return
	}

}

// TestTaskGetPropertyConsistency:
//   - Create a Property,
//   - Update name
//   - TODO: conflict detection
func TestTaskGetPropertyConsistency(t *testing.T) {
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
	if !assert.NoError(t, err, "could not create new property") {
		return
	}
	propertyID, err := uuid.Parse(createResponse.PropertyId)
	if !assert.NoError(t, err, "propertyID is not a uuid") {
		return
	}

	createVersion := createResponse.Consistency

	hwtesting.WaitForProjectionsToSettle()

	//
	// Get new Property
	//

	propertyResponse, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id: propertyID.String(),
	})
	if !assert.NoError(t, err, "could not get property after it was created") {
		return
	}

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

	if !assert.NoError(t, err, "could not update property") {
		return
	}

	updatedVersion := updateResponse.GetConsistency()

	assert.NotEqual(t, readVersion, updatedVersion, "update does not change consistency")

	hwtesting.WaitForProjectionsToSettle()

	//
	// Get updated Property
	//

	propertyResponse, err = propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id: propertyID.String(),
	})
	if !assert.NoError(t, err, "could not get property after it was updated") {
		return
	}

	readVersionAfterUpdate := propertyResponse.Consistency

	assert.Equal(t, updatedVersion, readVersionAfterUpdate, "updatedVersion and readVersionAfterUpdate consistencies differ")

}
