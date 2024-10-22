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

	subjectTypes := []pb.SubjectType{
		pb.SubjectType_SUBJECT_TYPE_PATIENT,
		pb.SubjectType_SUBJECT_TYPE_TASK,
	}

	fieldTypes := []pb.FieldType{
		pb.FieldType_FIELD_TYPE_TEXT,
		pb.FieldType_FIELD_TYPE_NUMBER,
		pb.FieldType_FIELD_TYPE_CHECKBOX,
		pb.FieldType_FIELD_TYPE_DATE,
		pb.FieldType_FIELD_TYPE_DATE_TIME,
		pb.FieldType_FIELD_TYPE_SELECT,
		pb.FieldType_FIELD_TYPE_MULTI_SELECT,
	}

	for _, subjectType := range subjectTypes {
		for _, fieldType := range fieldTypes {
			t.Run(t.Name()+"_"+subjectType.String()+"_"+fieldType.String(), func(t *testing.T) {
				subjectID := uuid.New().String()

				// Create a property
				property, err := propertyClient.CreateProperty(ctx, &pb.CreatePropertyRequest{
					SubjectType: subjectType,
					FieldType:   fieldType,
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
							PatientId: &subjectID,
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
							PatientId: &subjectID,
						},
					},
				})
				assert.NoError(t, err)

				// Property shows up
				assert.Len(t, res.Values, 1)
				assert.Equal(t, res.Values[0].PropertyId, property.PropertyId)
			})
		}
	}

}
