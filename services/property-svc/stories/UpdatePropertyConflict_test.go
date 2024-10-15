package stories

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/stretchr/testify/assert"
	"hwtesting"
	"hwutil"
	"strconv"
	"strings"
	"testing"
)

func TestUpdatePropertyConflict(t *testing.T) {
	propertyClient := propertyServiceClient()

	ctx := context.Background()

	// Preparations

	createPropertyRequest := &pb.CreatePropertyRequest{
		SubjectType: pb.SubjectType_SUBJECT_TYPE_TASK,
		FieldType:   pb.FieldType_FIELD_TYPE_SELECT,
		Name:        t.Name() + " WAS",
		Description: nil,
		SetId:       nil,
		FieldTypeData: &pb.CreatePropertyRequest_SelectData_{SelectData: &pb.CreatePropertyRequest_SelectData{
			Options: []*pb.CreatePropertyRequest_SelectData_SelectOption{
				{
					Name:        "Option WAS",
					Description: hwutil.PtrTo("Option WAS Descr"),
				},
			},
		}},
	}

	createRes, err := propertyClient.CreateProperty(ctx, createPropertyRequest)
	assert.NoError(t, err)
	hwtesting.WaitForProjectionsToSettle()

	propertyID := createRes.PropertyId
	initialConsistency := createRes.Consistency

	getRes, err := propertyClient.GetProperty(ctx, &pb.GetPropertyRequest{
		Id: propertyID,
	})
	assert.NoError(t, err)

	initialOpts := getRes.GetSelectData().Options
	assert.Len(t, initialOpts, 1)
	optionID := initialOpts[0].Id

	// First Update
	is, err := propertyClient.UpdateProperty(ctx, &pb.UpdatePropertyRequest{
		Id:          propertyID,
		SubjectType: hwutil.PtrTo(pb.SubjectType_SUBJECT_TYPE_PATIENT),
		Name:        hwutil.PtrTo(t.Name() + " IS"),
		Description: hwutil.PtrTo(t.Name() + " Description IS"),
		FieldTypeData: &pb.UpdatePropertyRequest_SelectData_{SelectData: &pb.UpdatePropertyRequest_SelectData{
			UpsertOptions: []*pb.UpdatePropertyRequest_SelectData_SelectOption{
				{
					Id:          optionID,
					Name:        hwutil.PtrTo("Option IS"),
					Description: hwutil.PtrTo("Option IS Descr"),
				},
			},
		}},
		Consistency: &initialConsistency,
	})

	assert.NoError(t, err)
	assert.Nil(t, is.Conflict)
	hwtesting.WaitForProjectionsToSettle()

	// Second Update
	want, err := propertyClient.UpdateProperty(ctx, &pb.UpdatePropertyRequest{
		Id:          propertyID,
		SubjectType: hwutil.PtrTo(pb.SubjectType_SUBJECT_TYPE_TASK),
		Name:        hwutil.PtrTo(t.Name() + " WANT"),
		Description: hwutil.PtrTo(t.Name() + " Description WANT"),
		FieldTypeData: &pb.UpdatePropertyRequest_SelectData_{SelectData: &pb.UpdatePropertyRequest_SelectData{
			UpsertOptions: []*pb.UpdatePropertyRequest_SelectData_SelectOption{
				{
					Id:          optionID,
					Name:        hwutil.PtrTo("Option WANT"),
					Description: hwutil.PtrTo("Option WANT Descr"),
				},
			},
		}},
		Consistency: &initialConsistency,
	})
	assert.NoError(t, err)

	// Assertions
	assert.NotNil(t, want.Conflict)
	assert.False(t, want.Conflict.HistoryMissing)

	keys := hwutil.Keys(want.Conflict.ConflictingAttributes)
	expKeys := []string{
		"name",
		"description",
		"subject_type",
		"select_data.upsert_options." + optionID + ".name",
		"select_data.upsert_options." + optionID + ".description",
	}

	expValues := []interface{}{
		// name
		"is:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"" + t.Name() + " IS\"}} " +
			"want:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"" + t.Name() + " WANT\"}}",
		// description
		"is:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"" + t.Name() + " Description IS\"}} " +
			"want:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"" + t.Name() + " Description WANT\"}}",
		// subject_type
		"is:{[type.googleapis.com/google.protobuf.Int32Value]:{value:" + strconv.Itoa(int(pb.SubjectType_SUBJECT_TYPE_PATIENT.Number())) + "}} " +
			"want:{[type.googleapis.com/google.protobuf.Int32Value]:{value:" + strconv.Itoa(int(pb.SubjectType_SUBJECT_TYPE_TASK.Number())) + "}}",
		// .name
		"is:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"Option IS\"}} " +
			"want:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"Option WANT\"}}",
		// .description
		"is:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"Option IS Descr\"}} " +
			"want:{[type.googleapis.com/google.protobuf.StringValue]:{value:\"Option WANT Descr\"}}",
	}

	assert.Len(t, keys, len(expKeys))
	assert.Subset(t, expKeys, keys)

	for i, key := range expKeys {
		assert.Equal(t,
			expValues[i],
			strings.ReplaceAll(want.Conflict.ConflictingAttributes[key].String(), "  ", " "),
		)
	}

}
