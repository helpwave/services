package stories

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"hwtesting"
	"strings"
	"testing"
)

func TestAttachPropertyValueConflict(t *testing.T) {
	propertyClient := propertyServiceClient()
	propertyValueClient := propertyValueServiceClient()

	ctx := context.Background()

	// Preparations

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_PATIENT,
		FieldType:   pb.FieldType_FIELD_TYPE_TEXT,
		Name:        t.Name(),
		Description: nil,
		SetId:       nil,
	}

	createRes, err := propertyClient.CreateProperty(ctx, createPropertyRequest)
	assert.NoError(t, err)
	hwtesting.WaitForProjectionsToSettle()

	propertyID := createRes.PropertyId
	subjectID := uuid.New().String()

	// WAS

	wasRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_TextValue{
			TextValue: t.Name() + " WAS",
		},
		Consistency: nil,
	})

	assert.NoError(t, err)
	assert.Nil(t, wasRes.Conflict)

	initialConsistency := wasRes.Consistency

	// IS

	isRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_TextValue{
			TextValue: t.Name() + " IS",
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Nil(t, isRes.Conflict)

	// WANT

	wantRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_TextValue{
			TextValue: t.Name() + " WANT",
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.NotNil(t, wantRes.Conflict)

	s := "conflicting_attributes:{key:\"value\" value:{is:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"TestAttachPropertyValueConflict IS\"}} " +
		"want:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"TestAttachPropertyValueConflict WANT\"}}}}"

	assert.Equal(t, s, strings.ReplaceAll(wantRes.Conflict.String(), "  ", " "))

}
