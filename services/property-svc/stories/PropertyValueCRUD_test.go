//go:build stories
// +build stories

package stories

import (
	"common"
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/rs/zerolog/log"
	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"hwutil"
	"testing"
	"time"
)

func TestMain(m *testing.M) {
	Setup(m)
}

type InsecureBearerToken string

func (t InsecureBearerToken) GetRequestMetadata(_ context.Context, _ ...string) (map[string]string, error) {
	return map[string]string{
		"authorization": "Bearer " + string(t),
	}, nil
}
func (t InsecureBearerToken) RequireTransportSecurity() bool {
	return false
}

func getGrpcConn() *grpc.ClientConn {
	// README's fake token
	token := "eyJzdWIiOiIxODE1OTcxMy01ZDRlLTRhZDUtOTRhZC1mYmI2YmIxNDc5ODQiLCJlbWFpbCI6InRlc3RpbmUudGVzdEBoZWxwd2F2ZS5kZSIsIm5hbWUiOiJUZXN0aW5lIFRlc3QiLCJuaWNrbmFtZSI6InRlc3RpbmUudGVzdCIsIm9yZ2FuaXphdGlvbnMiOlsiM2IyNWM2ZjUtNDcwNS00MDc0LTlmYzYtYTUwYzI4ZWJhNDA2Il19"

	conn, err := grpc.NewClient(
		common.ResolveAddrFromEnv(),
		grpc.WithPerRPCCredentials(InsecureBearerToken(token)),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		log.Fatal().Err(err).Msg("could not create grpc conn")
	}
	return conn
}

func propertyServiceClient() pb.PropertyServiceClient {
	return pb.NewPropertyServiceClient(getGrpcConn())
}

func propertyValueServiceClient() pb.PropertyValueServiceClient {
	return pb.NewPropertyValueServiceClient(getGrpcConn())
}

// TestCreateAttachUpdateDelete:
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
		"Id":            propertyResponse.Id,
		"SubjectType":   propertyResponse.SubjectType.String(),
		"FieldType":     propertyResponse.FieldType.String(),
		"Name":          propertyResponse.Name,
		"Description":   propertyResponse.Description,
		"IsArchived":    propertyResponse.IsArchived,
		"SetId":         propertyResponse.SetId,
		"FieldTypeData": propertyResponse.FieldTypeData,
		// "AlwaysIncludeForViewSource": propertyResponse.AlwaysIncludeForViewSource, // TODO
	}

	expectedResponse := map[string]interface{}{
		"Id":            propertyID.String(),
		"SubjectType":   createPropertyRequest.SubjectType.String(),
		"FieldType":     createPropertyRequest.FieldType.String(),
		"Name":          createPropertyRequest.Name,
		"Description":   createPropertyRequest.Description,
		"IsArchived":    false,
		"SetId":         createPropertyRequest.SetId,
		"FieldTypeData": createPropertyRequest.FieldTypeData,
		// "AlwaysIncludeForViewSource": nil, // TODO
	}

	if !assert.Equal(t, response, expectedResponse) {
		return
	}

	//
	// Attach a value
	//

	subjectId := uuid.New().String()

	valueClient := propertyValueServiceClient()
	_, err = valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
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

	assert.Equal(t, len(attachedValuesResponse.Values), 1)

	assert.Equal(t, attachedValuesResponse.Values[0].GetTextValue(), "Initial Text Value")

	//
	// Update Value
	//

	_, err = valueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectId,
		PropertyId: propertyID.String(),
		Value: &pb.AttachPropertyValueRequest_TextValue{
			TextValue: "Updated Text Value",
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

	assert.Equal(t, len(attachedValuesResponse.Values), 1)

	assert.Equal(t, attachedValuesResponse.Values[0].GetTextValue(), "Updated Text Value")

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
		// "AlwaysIncludeForViewSource": propertyResponse.AlwaysIncludeForViewSource, // TODO
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
		// "AlwaysIncludeForViewSource": nil, // TODO
	}

	if !assert.Equal(t, response, expectedResponse) {
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

	assert.Equal(t, len(attachedValuesResponse.Values), 1, "no initial values")

	assert.Equal(t, attachedValuesResponse.Values[0].GetSelectValue().GetName(), "Option 1")

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

	assert.Equal(t, len(attachedValuesResponse.Values), 1, "no updated values")

	assert.Equal(t, attachedValuesResponse.Values[0].GetSelectValue().GetName(), "Option 2")

}
