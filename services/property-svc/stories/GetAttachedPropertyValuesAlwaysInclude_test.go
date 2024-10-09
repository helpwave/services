package stories

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"hwtesting"
	"testing"
)

func TestGetAttachedPropertyValuesAlwaysInclude(t *testing.T) {
	ctx := context.Background()
	propertyClient := propertyServiceClient()
	propertyValueClient := propertyValueServiceClient()
	propertyViewClient := propertyViewServiceClient()

	patientID := uuid.New().String()

	// Create a property
	property, err := propertyClient.CreateProperty(ctx, &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_PATIENT,
		FieldType:   pb.FieldType_FIELD_TYPE_NUMBER,
		Name:        t.Name(),
		Description: nil,
	})
	assert.NoError(t, err)
	hwtesting.WaitForProjectionsToSettle()

	// Don't create a property value

	// Add property to the always_include list of an arbitrary subject
	_, err = propertyViewClient.UpdatePropertyViewRule(ctx, &pb.UpdatePropertyViewRuleRequest{
		FilterUpdate: &pb.FilterUpdate{
			AppendToAlwaysInclude: []string{property.PropertyId},
		},
		Matcher: &pb.UpdatePropertyViewRuleRequest_PatientMatcher{
			PatientMatcher: &pb.PatientPropertyMatcher{
				WardId:    nil,
				PatientId: &patientID,
			},
		},
	})
	assert.NoError(t, err)
	hwtesting.WaitForProjectionsToSettle()

	// Call GetAttachedPropertyValues for this arbitrary patient or task

	res, err := propertyValueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_PatientMatcher{
			PatientMatcher: &pb.PatientPropertyMatcher{
				WardId:    nil,
				PatientId: &patientID,
			},
		},
	})
	assert.NoError(t, err)

	// Property shows up
	assert.Len(t, res.Values, 1)
	assert.Equal(t, res.Values[0].PropertyId, property.PropertyId)

}
