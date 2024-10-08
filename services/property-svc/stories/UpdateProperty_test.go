package stories

import (
	"context"
	pb "gen/services/property_svc/v1"
	"github.com/stretchr/testify/assert"
	"hwtesting"
	"hwutil"
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
	// TODO
}
