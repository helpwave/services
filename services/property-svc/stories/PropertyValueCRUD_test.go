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

func getClient() pb.PropertyServiceClient {
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
	return pb.NewPropertyServiceClient(conn)
}

// TODO

// TestCreateAttachUpdateDelete:
//   - Create a Property,
//   - Attach a Value
//   - Get the Value
//   - Update said value
//   - Get the value
func TestCreateAttachUpdateTextProperty(t *testing.T) {
	client := getClient()
	ctx := context.Background()

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType:   pb.SubjectType_SUBJECT_TYPE_TASK,
		FieldType:     pb.FieldType_FIELD_TYPE_TEXT,
		Name:          t.Name(),
		Description:   nil,
		SetId:         nil,
		FieldTypeData: nil,
	}

	createResponse, err := client.CreateProperty(ctx, createPropertyRequest)
	if !assert.NoError(t, err, "could not create new property") {
		return
	}
	propertyID, err := uuid.Parse(createResponse.PropertyId)
	if !assert.NoError(t, err, "propertyID is not a uuid") {
		return
	}

	// FIXME: I hate this
	time.Sleep(time.Second * 5)

	propertyResponse, err := client.GetProperty(ctx, &pb.GetPropertyRequest{Id: propertyID.String()})
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
}
