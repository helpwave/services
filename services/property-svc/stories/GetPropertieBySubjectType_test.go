package stories

import (
	"context"
	"encoding/json"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"hwutil"
	"regexp"
	"testing"
	"time"
)

// TestGetPropertiesBySubjectType:
//   - Create Properties
//   - Check GetPropertiesBySubjectType
func TestGetPropertiesBySubjectType(t *testing.T) {
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
	if !assert.NoError(t, err, "could not create new property A") {
		return
	}
	_, err = uuid.Parse(createResponseA.PropertyId)
	if !assert.NoError(t, err, "propertyIDA is not a uuid") {
		return
	}

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
	if !assert.NoError(t, err, "could not create new property B") {
		return
	}
	_, err = uuid.Parse(createResponseB.PropertyId)
	if !assert.NoError(t, err, "propertyIDB is not a uuid") {
		return
	}

	createPropertyRequestC := &pb.CreatePropertyRequest{
		SubjectType:   pb.SubjectType_SUBJECT_TYPE_PATIENT,
		FieldType:     pb.FieldType_FIELD_TYPE_NUMBER,
		Name:          t.Name() + " C",
		Description:   nil,
		SetId:         nil,
		FieldTypeData: nil,
	}

	createResponseC, err := propertyClient.CreateProperty(ctx, createPropertyRequestC)
	if !assert.NoError(t, err, "could not create new property C") {
		return
	}
	_, err = uuid.Parse(createResponseC.PropertyId)
	if !assert.NoError(t, err, "propertyIDC is not a uuid") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Properties
	//

	propertiesResponse, err := propertyClient.GetPropertiesBySubjectType(ctx, &pb.GetPropertiesBySubjectTypeRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_PATIENT,
	})
	if !assert.NoError(t, err, "could not get properties after they were created") {
		return
	}

	assert.Len(t, propertiesResponse.Properties, 2)

	propertyMap := make(map[string]map[string]interface{})

	for _, property := range propertiesResponse.Properties {
		s, err := json.Marshal(property)
		assert.NoError(t, err)

		re := regexp.MustCompile(`[a-f0-9]{8}-[a-f0-9]{4}-[1-5][a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}`)
		res := re.ReplaceAllString(string(s), "<id>")

		v := make(map[string]interface{})
		err = json.Unmarshal([]byte(res), &v)
		assert.NoError(t, err)

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
				"options": []interface{}{map[string]interface{}{
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
}