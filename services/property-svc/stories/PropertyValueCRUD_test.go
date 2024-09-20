package stories

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"hwutil"
	"testing"
	"time"
)

func TestMain(m *testing.M) {
	Setup(m)
}

// TestCreateAttachUpdateTextProperty:
//   - Create a Property,
//   - Attach a Value
//   - Update said value
func TestCreateAttachUpdateTextProperty(t *testing.T) {
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

	time.Sleep(time.Second * 1)

	//
	// Get new Property
	//

	propertyResponse, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{Id: propertyID.String()})
	if !assert.NoError(t, err, "could not get property after it was created") {
		return
	}

	response := map[string]interface{}{
		"Id":                         propertyResponse.Id,
		"SubjectType":                propertyResponse.SubjectType.String(),
		"FieldType":                  propertyResponse.FieldType.String(),
		"Name":                       propertyResponse.Name,
		"Description":                propertyResponse.Description,
		"IsArchived":                 propertyResponse.IsArchived,
		"SetId":                      propertyResponse.SetId,
		"FieldTypeData":              propertyResponse.FieldTypeData,
		"AlwaysIncludeForViewSource": nil,
		"PropertyConsistency":        propertyResponse.Consistency,
	}

	expectedResponse := map[string]interface{}{
		"Id":                         propertyID.String(),
		"SubjectType":                createPropertyRequest.SubjectType.String(),
		"FieldType":                  createPropertyRequest.FieldType.String(),
		"Name":                       createPropertyRequest.Name,
		"Description":                createPropertyRequest.Description,
		"IsArchived":                 false,
		"SetId":                      createPropertyRequest.SetId,
		"FieldTypeData":              createPropertyRequest.FieldTypeData,
		"AlwaysIncludeForViewSource": nil,
		"PropertyConsistency":        createResponse.Consistency,
	}

	if !assert.Equal(t, expectedResponse, response) {
		return
	}

	//
	// Attach a value
	//

	subjectId := uuid.New().String()

	valueClient := propertyValueServiceClient()
	attachResponse, err := valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_TextValue{
			TextValue: "Initial Text Value",
		},
	})

	if !assert.NoError(t, err, "could not attach value") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Values
	//

	attachedValuesResponse, err := valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		}})

	if !assert.NoError(t, err, "could not get values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values))

	assert.Equal(t, "Initial Text Value", attachedValuesResponse.Values[0].GetTextValue())

	assert.Equal(t, &attachResponse.Consistency, attachedValuesResponse.Values[0].ValueConsistency)

	//
	// Update Value
	//

	updateResponse, err := valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_TextValue{
			TextValue: "Updated Text Value",
		},
	})

	if !assert.NoError(t, err, "could not update value") {
		return
	}

	assert.NotEqual(t, attachedValuesResponse.Values[0].ValueConsistency, &updateResponse.Consistency)

	time.Sleep(time.Second * 1)

	//
	// Get Updated Values
	//

	attachedValuesResponse, err = valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		}})

	if !assert.NoError(t, err, "could not get updated values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values))

	assert.Equal(t, "Updated Text Value", attachedValuesResponse.Values[0].GetTextValue())

	assert.Equal(t, &updateResponse.Consistency, attachedValuesResponse.Values[0].ValueConsistency, "ValueConsistency was not updated")
}

// TestCreateAttachUpdateSelectProperty:
//   - Create a Property,
//   - Attach a Value
//   - Update said value
func TestCreateAttachUpdateSelectProperty(t *testing.T) {
	propertyClient := propertyServiceClient()
	ctx := context.Background()

	//
	// Create new Property
	//

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_TASK,
		FieldType:   pb.FieldType_FIELD_TYPE_SELECT,
		Name:        t.Name(),
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
						Description: hwutil.PtrTo("Some profound Text"),
					},
				},
			},
		},
	}

	createResponse, err := propertyClient.CreateProperty(ctx, createPropertyRequest)
	if !assert.NoError(t, err, "could not create new property") {
		return
	}
	propertyID, err := uuid.Parse(createResponse.PropertyId)
	if !assert.NoError(t, err, "propertyID is not a uuid") {
		return
	}

	// FIXME: I hate this
	time.Sleep(time.Second * 1)

	//
	// Get new Property
	//

	propertyResponse, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{Id: propertyID.String()})
	if !assert.NoError(t, err, "could not get property after it was created") {
		return
	}

	response := map[string]interface{}{
		"Id":          propertyResponse.Id,
		"SubjectType": propertyResponse.SubjectType.String(),
		"FieldType":   propertyResponse.FieldType.String(),
		"Name":        propertyResponse.Name,
		"Description": propertyResponse.Description,
		"IsArchived":  propertyResponse.IsArchived,
		"SetId":       propertyResponse.SetId,
		// "FieldTypeData": propertyResponse.FieldTypeData, // TODO
		"AlwaysIncludeForViewSource": nil,
		"Consistency":                propertyResponse.Consistency,
	}

	expectedResponse := map[string]interface{}{
		"Id":          propertyID.String(),
		"SubjectType": createPropertyRequest.SubjectType.String(),
		"FieldType":   createPropertyRequest.FieldType.String(),
		"Name":        createPropertyRequest.Name,
		"Description": createPropertyRequest.Description,
		"IsArchived":  false,
		"SetId":       createPropertyRequest.SetId,
		// "FieldTypeData": createPropertyRequest.FieldTypeData, // TODO
		"AlwaysIncludeForViewSource": nil,
		"Consistency":                createResponse.Consistency,
	}

	if !assert.Equal(t, expectedResponse, response) {
		return
	}

	// order is not defined, this can cause flakiness, but who cares lol
	option1 := propertyResponse.GetSelectData().Options[0].GetId()
	option2 := propertyResponse.GetSelectData().Options[1].GetId()

	//
	// Attach a value
	//

	subjectId := uuid.New().String()

	valueClient := propertyValueServiceClient()
	attachResponse, err := valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_SelectValue{
			SelectValue: option1,
		},
	})

	if !assert.NoError(t, err, "could not attach value") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Values
	//

	attachedValuesResponse, err := valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		}})

	if !assert.NoError(t, err, "could not get values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values), "no initial values")

	assert.Equal(t, "Option 1", attachedValuesResponse.Values[0].GetSelectValue().GetName())

	assert.Equal(t, &attachResponse.Consistency, attachedValuesResponse.Values[0].ValueConsistency)

	//
	// Update Value
	//

	updateResponse, err := valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_SelectValue{
			SelectValue: option2,
		},
	})

	if !assert.NoError(t, err, "could not update value") {
		return
	}

	assert.NotEqual(t, attachedValuesResponse.Values[0].ValueConsistency, &updateResponse.Consistency)

	time.Sleep(time.Second * 1)

	//
	// Get Updated Values
	//

	attachedValuesResponse, err = valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		}})

	if !assert.NoError(t, err, "could not get updated values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values), "no updated values")

	assert.Equal(t, "Option 2", attachedValuesResponse.Values[0].GetSelectValue().GetName())

	assert.Equal(t, &updateResponse.Consistency, attachedValuesResponse.Values[0].ValueConsistency, "ValueConsistency was not updated")
}

// TestCreateAttachUpdateMultiSelectProperty:
//   - Create a Property,
//   - Attach a Value
//   - Update said value
func TestCreateAttachUpdateMultiSelectProperty(t *testing.T) {
	propertyClient := propertyServiceClient()
	ctx := context.Background()

	//
	// Create new Property
	//

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_TASK,
		FieldType:   pb.FieldType_FIELD_TYPE_MULTI_SELECT,
		Name:        t.Name(),
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
						Description: hwutil.PtrTo("Some profound Text"),
					},
					{
						Name:        "Option 3",
						Description: nil,
					},
				},
			},
		},
	}

	createResponse, err := propertyClient.CreateProperty(ctx, createPropertyRequest)
	if !assert.NoError(t, err, "could not create new property") {
		return
	}
	propertyID, err := uuid.Parse(createResponse.PropertyId)
	if !assert.NoError(t, err, "propertyID is not a uuid") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get new Property
	//

	propertyResponse, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{Id: propertyID.String()})
	if !assert.NoError(t, err, "could not get property after it was created") {
		return
	}

	response := map[string]interface{}{
		"Id":          propertyResponse.Id,
		"SubjectType": propertyResponse.SubjectType.String(),
		"FieldType":   propertyResponse.FieldType.String(),
		"Name":        propertyResponse.Name,
		"Description": propertyResponse.Description,
		"IsArchived":  propertyResponse.IsArchived,
		"SetId":       propertyResponse.SetId,
		// "FieldTypeData": propertyResponse.FieldTypeData, // TODO
		"AlwaysIncludeForViewSource": nil,
		"PropertyConsistency":        propertyResponse.Consistency,
	}

	expectedResponse := map[string]interface{}{
		"Id":          propertyID.String(),
		"SubjectType": createPropertyRequest.SubjectType.String(),
		"FieldType":   createPropertyRequest.FieldType.String(),
		"Name":        createPropertyRequest.Name,
		"Description": createPropertyRequest.Description,
		"IsArchived":  false,
		"SetId":       createPropertyRequest.SetId,
		// "FieldTypeData": createPropertyRequest.FieldTypeData, // TODO
		"AlwaysIncludeForViewSource": nil,
		"PropertyConsistency":        createResponse.Consistency,
	}

	if !assert.Equal(t, expectedResponse, response) {
		return
	}

	// order is not defined, this can cause flakiness, but who cares lol
	option1 := propertyResponse.GetSelectData().Options[0].GetId()
	option2 := propertyResponse.GetSelectData().Options[1].GetId()
	option3 := propertyResponse.GetSelectData().Options[2].GetId()

	//
	// Attach a value
	//

	subjectId := uuid.New().String()

	valueClient := propertyValueServiceClient()
	attachResponse, err := valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_MultiSelectValue_{
			MultiSelectValue: &pb.AttachPropertyValueRequest_MultiSelectValue{
				SelectValues:       []string{option1, option2},
				RemoveSelectValues: nil,
			},
		},
	})

	if !assert.NoError(t, err, "could not attach value") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Values
	//

	attachedValuesResponse, err := valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		}})

	if !assert.NoError(t, err, "could not get values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values), "no initial values")

	assert.Equal(t, []string{"Option 1", "Option 2"}, NamesOf(attachedValuesResponse.Values[0].GetMultiSelectValue().GetSelectValues()))

	assert.Equal(t, &attachResponse.Consistency, attachedValuesResponse.Values[0].ValueConsistency)

	//
	// Update Value
	//

	updateResponse, err := valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_MultiSelectValue_{
			MultiSelectValue: &pb.AttachPropertyValueRequest_MultiSelectValue{
				SelectValues:       []string{option3},
				RemoveSelectValues: []string{option1},
			},
		},
	})

	if !assert.NoError(t, err, "could not update value") {
		return
	}

	assert.NotEqual(t, attachedValuesResponse.Values[0].ValueConsistency, &updateResponse.Consistency)

	time.Sleep(time.Second * 1)

	//
	// Get Updated Values
	//

	attachedValuesResponse, err = valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		}})

	if !assert.NoError(t, err, "could not get updated values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values), "no updated values")

	assert.Equal(t, []string{"Option 2", "Option 3"}, NamesOf(attachedValuesResponse.Values[0].GetMultiSelectValue().GetSelectValues()))

	assert.Equal(t, &updateResponse.Consistency, attachedValuesResponse.Values[0].ValueConsistency, "ValueConsistency was not updated")
}

// TestCreateAttachAddOptionAttachSelectProperty:
//   - Create a Property,
//   - Attach a Value
//   - Upsert an Option
//   - Attach another Value
func TestCreateAttachAddOptionAttachSelectProperty(t *testing.T) {
	propertyClient := propertyServiceClient()
	ctx := context.Background()

	//
	// Create new Property
	//

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_TASK,
		FieldType:   pb.FieldType_FIELD_TYPE_SELECT,
		Name:        t.Name(),
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
				},
			},
		},
	}

	createResponse, err := propertyClient.CreateProperty(ctx, createPropertyRequest)
	if !assert.NoError(t, err, "could not create new property") {
		return
	}
	propertyID, err := uuid.Parse(createResponse.PropertyId)
	if !assert.NoError(t, err, "propertyID is not a uuid") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get new Property
	//

	propertyResponse, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{Id: propertyID.String()})
	if !assert.NoError(t, err, "could not get property after it was created") {
		return
	}

	option1 := propertyResponse.GetSelectData().Options[0].GetId()

	//
	// Attach a value
	//

	subjectId := uuid.New().String()

	valueClient := propertyValueServiceClient()
	_, err = valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_SelectValue{
			SelectValue: option1,
		},
	})

	if !assert.NoError(t, err, "could not attach value") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Values
	//

	attachedValuesResponse, err := valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		}})

	if !assert.NoError(t, err, "could not get values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values), "no initial values")

	assert.Equal(t, "Option 1", attachedValuesResponse.Values[0].GetSelectValue().GetName())

	//
	// Add new Option
	//

	_, err = propertyClient.UpdateProperty(ctx, &pb.UpdatePropertyRequest{
		Id: propertyID.String(),
		FieldTypeData: &pb.UpdatePropertyRequest_SelectData_{
			SelectData: &pb.UpdatePropertyRequest_SelectData{
				AllowFreetext: hwutil.PtrTo(true),
				RemoveOptions: nil,
				UpsertOptions: []*pb.UpdatePropertyRequest_SelectData_SelectOption{
					{
						Id:          "",
						Name:        hwutil.PtrTo("Option 2"),
						Description: nil,
						IsCustom:    hwutil.PtrTo(false),
					},
				},
			},
		},
	})

	if !assert.NoError(t, err, "could not add new option") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Updated Property
	//

	propertyResponse, err = propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{Id: propertyID.String()})
	if !assert.NoError(t, err, "could not get property after it was updated") {
		return
	}

	assert.Equal(t, 2, len(propertyResponse.GetSelectData().Options))

	option2 := propertyResponse.GetSelectData().Options[1].GetId() // not guaranteed tbf

	//
	// Update Value
	//

	_, err = valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_SelectValue{
			SelectValue: option2,
		},
	})

	if !assert.NoError(t, err, "could not update value") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Updated Values
	//

	attachedValuesResponse, err = valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		}})

	if !assert.NoError(t, err, "could not get updated values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values), "no updated values")

	assert.Equal(t, "Option 2", attachedValuesResponse.Values[0].GetSelectValue().GetName())
}

// TestCreateAttachAddOptionAttachMultiSelectProperty:
//   - Create a Property,
//   - Attach a Value
//   - Upsert an Option
//   - Attach another Value
func TestCreateAttachAddOptionAttachMultiSelectProperty(t *testing.T) {
	propertyClient := propertyServiceClient()
	ctx := context.Background()

	//
	// Create new Property
	//

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_TASK,
		FieldType:   pb.FieldType_FIELD_TYPE_MULTI_SELECT,
		Name:        t.Name(),
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
				},
			},
		},
	}

	createResponse, err := propertyClient.CreateProperty(ctx, createPropertyRequest)
	if !assert.NoError(t, err, "could not create new property") {
		return
	}
	propertyID, err := uuid.Parse(createResponse.PropertyId)
	if !assert.NoError(t, err, "propertyID is not a uuid") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get new Property
	//

	propertyResponse, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{Id: propertyID.String()})
	if !assert.NoError(t, err, "could not get property after it was created") {
		return
	}

	option1 := propertyResponse.GetSelectData().Options[0].GetId()

	//
	// Attach a value
	//

	subjectId := uuid.New().String()

	valueClient := propertyValueServiceClient()
	_, err = valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_MultiSelectValue_{
			MultiSelectValue: &pb.AttachPropertyValueRequest_MultiSelectValue{
				SelectValues:       []string{option1},
				RemoveSelectValues: nil,
			},
		},
	})

	if !assert.NoError(t, err, "could not attach value") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Values
	//

	attachedValuesResponse, err := valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		},
	})

	if !assert.NoError(t, err, "could not get values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values), "no initial values")

	assert.Equal(t, []string{"Option 1"}, NamesOf(attachedValuesResponse.Values[0].GetMultiSelectValue().GetSelectValues()))

	//
	// Add new Option
	//

	_, err = propertyClient.UpdateProperty(ctx, &pb.UpdatePropertyRequest{
		Id: propertyID.String(),
		FieldTypeData: &pb.UpdatePropertyRequest_SelectData_{
			SelectData: &pb.UpdatePropertyRequest_SelectData{
				AllowFreetext: hwutil.PtrTo(true),
				RemoveOptions: nil,
				UpsertOptions: []*pb.UpdatePropertyRequest_SelectData_SelectOption{
					{
						Id:          "",
						Name:        hwutil.PtrTo("Option 2"),
						Description: nil,
						IsCustom:    hwutil.PtrTo(false),
					},
				},
			},
		},
	})

	if !assert.NoError(t, err, "could not add new option") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Updated Property
	//

	propertyResponse, err = propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{Id: propertyID.String()})
	if !assert.NoError(t, err, "could not get property after it was updated") {
		return
	}

	assert.Equal(t, 2, len(propertyResponse.GetSelectData().Options))

	option2 := propertyResponse.GetSelectData().Options[1].GetId() // order not guaranteed

	//
	// Update Value
	//

	_, err = valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_MultiSelectValue_{
			MultiSelectValue: &pb.AttachPropertyValueRequest_MultiSelectValue{
				SelectValues:       []string{option2},
				RemoveSelectValues: nil,
			},
		},
	})

	if !assert.NoError(t, err, "could not update value") {
		return
	}

	time.Sleep(time.Second * 1)

	//
	// Get Updated Values
	//

	attachedValuesResponse, err = valueClient.GetAttachedPropertyValues(ctx, &pb.GetAttachedPropertyValuesRequest{
		Matcher: &pb.GetAttachedPropertyValuesRequest_TaskMatcher{
			TaskMatcher: &pb.TaskPropertyMatcher{
				WardId: nil,
				TaskId: &subjectId,
			},
		}})

	if !assert.NoError(t, err, "could not get updated values") {
		return
	}

	assert.Equal(t, 1, len(attachedValuesResponse.Values), "no updated values")

	assert.Equal(t, []string{"Option 1", "Option 2"}, NamesOf(attachedValuesResponse.Values[0].GetMultiSelectValue().GetSelectValues()))
}
