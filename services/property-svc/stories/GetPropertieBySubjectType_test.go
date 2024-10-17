package stories

import (
	"context"
	"encoding/json"
	pb "gen/services/property_svc/v1"
	"hwtesting"
	"hwutil"
	"regexp"
	"testing"

	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

// TestGetPropertiesBySubjectType:
//   - Create Properties
//   - Check GetPropertiesBySubjectType
func TestGetProperties(t *testing.T) {
	propertyClient := propertyServiceClient()

	ctx := context.Background()

	//
	// Create new Properties
	//

	createPropertyRequestA := &pb.CreatePropertyRequest{
		SubjectType:   pb.SubjectType_SUBJECT_TYPE_TASK,
		FieldType:     pb.FieldType_FIELD_TYPE_TEXT,
		Name:          t.Name() + " A",
		Description:   nil,
		SetId:         nil,
		FieldTypeData: nil,
	}

	createResponseA, err := propertyClient.CreateProperty(ctx, createPropertyRequestA)
	require.NoError(t, err, "could not create new property A")
	_, err = uuid.Parse(createResponseA.PropertyId)
	require.NoError(t, err, "propertyIDA is not a uuid")

	createPropertyRequestB := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_PATIENT,
		FieldType:   pb.FieldType_FIELD_TYPE_SELECT,
		Name:        t.Name() + " B",
		Description: nil,
		SetId:       nil,
		FieldTypeData: &pb.CreatePropertyRequest_SelectData_{
			SelectData: &pb.CreatePropertyRequest_SelectData{
				AllowFreetext: hwutil.PtrTo(false),
				Options: []*pb.CreatePropertyRequest_SelectData_SelectOption{
					{
						Name:        "Option 1",
						Description: nil,
					},
					{
						Name:        "Option 2",
						Description: hwutil.PtrTo("Some Description"),
					},
				},
			},
		},
	}

	createResponseB, err := propertyClient.CreateProperty(ctx, createPropertyRequestB)
	require.NoError(t, err, "could not create new property B")
	_, err = uuid.Parse(createResponseB.PropertyId)
	require.NoError(t, err, "propertyIDB is not a uuid")

	createPropertyRequestC := &pb.CreatePropertyRequest{
		SubjectType:   pb.SubjectType_SUBJECT_TYPE_PATIENT,
		FieldType:     pb.FieldType_FIELD_TYPE_NUMBER,
		Name:          t.Name() + " C",
		Description:   nil,
		SetId:         nil,
		FieldTypeData: nil,
	}

	createResponseC, err := propertyClient.CreateProperty(ctx, createPropertyRequestC)
	require.NoError(t, err, "could not create new property C")
	_, err = uuid.Parse(createResponseC.PropertyId)
	require.NoError(t, err, "propertyIDC is not a uuid")

	hwtesting.WaitForProjectionsToSettle()

	//
	// Get Properties with SubjectType filter
	//

	propertiesResponse, err := propertyClient.GetProperties(ctx, &pb.GetPropertiesRequest{
		SubjectType: hwutil.PtrTo(pb.SubjectType_SUBJECT_TYPE_PATIENT),
	})
	require.NoError(t, err, "could not get properties after they were created")

	assert.Len(t, propertiesResponse.Properties, 2)

	propertyMap := make(map[string]map[string]interface{})

	for _, property := range propertiesResponse.Properties {
		s, err := json.Marshal(property)
		require.NoError(t, err)

		re := regexp.MustCompile(`[a-f0-9]{8}-[a-f0-9]{4}-[1-5][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}`)
		res := re.ReplaceAllString(string(s), "<id>")

		v := make(map[string]interface{})
		err = json.Unmarshal([]byte(res), &v)
		require.NoError(t, err)

		propertyMap[property.Id] = v
	}

	expectedB := map[string]interface{}{
		"id":           "<id>",
		"name":         createPropertyRequestB.Name,
		"consistency":  "1",
		"description":  "",
		"field_type":   float64(pb.FieldType_FIELD_TYPE_SELECT.Number()),
		"subject_type": float64(createPropertyRequestB.SubjectType.Number()),
		"FieldTypeData": map[string]interface{}{
			"SelectData": map[string]interface{}{
				"allow_freetext": false,
				"options": []interface{}{
					map[string]interface{}{
						"id":          "<id>",
						"name":        "Option 1",
						"description": "",
					},
					map[string]interface{}{
						"id":          "<id>",
						"name":        "Option 2",
						"description": "Some Description",
					},
				},
			},
		},
	}

	expectedC := map[string]interface{}{
		"id":            "<id>",
		"name":          createPropertyRequestC.Name,
		"FieldTypeData": nil,
		"consistency":   "0",
		"description":   "",
		"field_type":    float64(pb.FieldType_FIELD_TYPE_NUMBER.Number()),
		"subject_type":  float64(createPropertyRequestB.SubjectType.Number()),
	}

	assert.Equal(t, expectedB, propertyMap[createResponseB.PropertyId])
	assert.Equal(t, expectedC, propertyMap[createResponseC.PropertyId])

	//
	// GetPropertiesWithoutFilter
	//

	propertiesResponse, err = propertyClient.GetProperties(ctx, &pb.GetPropertiesRequest{})
	require.NoError(t, err, "could not get properties after they were created")
	assert.Len(t, propertiesResponse.Properties, 3)
}
