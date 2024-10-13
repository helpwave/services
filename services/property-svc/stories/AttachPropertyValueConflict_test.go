package stories

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"google.golang.org/protobuf/types/known/timestamppb"
	"hwtesting"
	"strconv"
	"strings"
	"testing"
	"time"
)

func TestAttachPropertyValueConflict_Text(t *testing.T) {
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

	s := "conflicting_attributes:{key:\"value\" value:{is:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"" + t.Name() + " IS\"}} " +
		"want:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"" + t.Name() + " WANT\"}}}}"

	assert.Equal(t, s, strings.ReplaceAll(wantRes.Conflict.String(), "  ", " "))

}

func TestAttachPropertyValueConflict_Number(t *testing.T) {
	propertyClient := propertyServiceClient()
	propertyValueClient := propertyValueServiceClient()

	ctx := context.Background()

	// Preparations

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_PATIENT,
		FieldType:   pb.FieldType_FIELD_TYPE_NUMBER,
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
		Value: &pb.AttachPropertyValueRequest_NumberValue{
			NumberValue: 1.0,
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
		Value: &pb.AttachPropertyValueRequest_NumberValue{
			NumberValue: 2.0,
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Nil(t, isRes.Conflict)
	hwtesting.WaitForProjectionsToSettle()

	// WANT

	wantRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_NumberValue{
			NumberValue: 3.0,
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.NotNil(t, wantRes.Conflict)

	s := "conflicting_attributes:{key:\"value\" value:{is:{[type.googleapis.com/google.protobuf.DoubleValue]:{value:2}} " +
		"want:{[type.googleapis.com/google.protobuf.DoubleValue]:{value:3}}}}"

	assert.Equal(t, s, strings.ReplaceAll(wantRes.Conflict.String(), "  ", " "))

}

func TestAttachPropertyValueConflict_Date(t *testing.T) {
	propertyClient := propertyServiceClient()
	propertyValueClient := propertyValueServiceClient()

	ctx := context.Background()

	// Preparations

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_PATIENT,
		FieldType:   pb.FieldType_FIELD_TYPE_DATE,
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

	was := time.Now().Round(time.Millisecond)

	wasRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_DateValue{
			DateValue: &pb.Date{Date: timestamppb.New(was)},
		},
		Consistency: nil,
	})

	assert.NoError(t, err)
	assert.Nil(t, wasRes.Conflict)

	initialConsistency := wasRes.Consistency
	hwtesting.WaitForProjectionsToSettle()

	// IS

	is := time.Now().Round(time.Millisecond)

	isRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_DateValue{
			DateValue: &pb.Date{Date: timestamppb.New(is)},
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Nil(t, isRes.Conflict)
	hwtesting.WaitForProjectionsToSettle()

	// WANT

	want := time.Now().Round(time.Millisecond)

	wantRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_DateValue{
			DateValue: &pb.Date{Date: timestamppb.New(want)},
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.NotNil(t, wantRes.Conflict)

	s := "conflicting_attributes:{key:\"value\" " +
		"value:{is:{[type.googleapis.com/services.property_svc.v1.Date]:{date:{seconds:" + strconv.FormatInt(is.Unix(), 10) + " nanos:" + strconv.Itoa(is.Nanosecond()) + "}}} " +
		"want:{[type.googleapis.com/services.property_svc.v1.Date]:{date:{seconds:" + strconv.FormatInt(want.Unix(), 10) + " nanos:" + strconv.Itoa(want.Nanosecond()) + "}}}}}"

	assert.Equal(t, s, strings.ReplaceAll(wantRes.Conflict.String(), "  ", " "))

}

func TestAttachPropertyValueConflict_DateTime(t *testing.T) {
	propertyClient := propertyServiceClient()
	propertyValueClient := propertyValueServiceClient()

	ctx := context.Background()

	// Preparations

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_PATIENT,
		FieldType:   pb.FieldType_FIELD_TYPE_DATE_TIME,
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

	was := time.Now().Round(time.Millisecond)

	wasRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_DateTimeValue{
			DateTimeValue: timestamppb.New(was),
		},
		Consistency: nil,
	})

	assert.NoError(t, err)
	assert.Nil(t, wasRes.Conflict)

	initialConsistency := wasRes.Consistency
	hwtesting.WaitForProjectionsToSettle()

	// IS

	is := time.Now().Round(time.Millisecond)

	isRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_DateTimeValue{
			DateTimeValue: timestamppb.New(is),
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Nil(t, isRes.Conflict)
	hwtesting.WaitForProjectionsToSettle()

	// WANT

	want := time.Now().Round(time.Millisecond)

	wantRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_DateTimeValue{
			DateTimeValue: timestamppb.New(want),
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.NotNil(t, wantRes.Conflict)

	s := "conflicting_attributes:{key:\"value\" " +
		"value:{is:{[type.googleapis.com/google.protobuf.Timestamp]:{seconds:" + strconv.FormatInt(is.Unix(), 10) + " nanos:" + strconv.Itoa(is.Nanosecond()) + "}} " +
		"want:{[type.googleapis.com/google.protobuf.Timestamp]:{seconds:" + strconv.FormatInt(want.Unix(), 10) + " nanos:" + strconv.Itoa(want.Nanosecond()) + "}}}}"

	assert.Equal(t, s, strings.ReplaceAll(wantRes.Conflict.String(), "  ", " "))

}

func TestAttachPropertyValueConflict_SingleSelect(t *testing.T) {
	propertyClient := propertyServiceClient()
	propertyValueClient := propertyValueServiceClient()

	ctx := context.Background()

	// Preparations

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_PATIENT,
		FieldType:   pb.FieldType_FIELD_TYPE_SELECT,
		Name:        t.Name(),
		Description: nil,
		SetId:       nil,
		FieldTypeData: &pb.CreatePropertyRequest_SelectData_{
			SelectData: &pb.CreatePropertyRequest_SelectData{
				Options: []*pb.CreatePropertyRequest_SelectData_SelectOption{
					{
						Name:        t.Name() + " A",
						Description: nil,
					},
					{
						Name:        t.Name() + " B",
						Description: nil,
					},
					{
						Name:        t.Name() + " C",
						Description: nil,
					},
				},
			},
		},
	}

	createRes, err := propertyClient.CreateProperty(ctx, createPropertyRequest)
	assert.NoError(t, err)
	hwtesting.WaitForProjectionsToSettle()

	propertyID := createRes.PropertyId
	subjectID := uuid.New().String()

	prop, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id:         propertyID,
		ViewSource: nil,
	})
	assert.NoError(t, err)
	opts := prop.GetSelectData().Options
	was := opts[0].Id
	is := opts[1].Id
	want := opts[2].Id

	// WAS

	wasRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_SelectValue{
			SelectValue: was,
		},
		Consistency: nil,
	})

	assert.NoError(t, err)
	assert.Nil(t, wasRes.Conflict)

	initialConsistency := wasRes.Consistency
	hwtesting.WaitForProjectionsToSettle()

	// IS

	isRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_SelectValue{
			SelectValue: is,
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Nil(t, isRes.Conflict)
	hwtesting.WaitForProjectionsToSettle()

	// WANT

	wantRes, err := propertyValueClient.AttachPropertyValue(ctx, &pb.AttachPropertyValueRequest{
		SubjectId:  subjectID,
		PropertyId: propertyID,
		Value: &pb.AttachPropertyValueRequest_SelectValue{
			SelectValue: want,
		},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.NotNil(t, wantRes.Conflict)

	s := "conflicting_attributes:{key:\"value\" " +
		"value:{is:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"" + is + "\"}} " +
		"want:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"" + want + "\"}}}}"

	assert.Equal(t, s, strings.ReplaceAll(wantRes.Conflict.String(), "  ", " "))

}
