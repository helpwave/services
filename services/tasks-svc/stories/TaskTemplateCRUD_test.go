package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwtesting"
	"hwutil"
	"testing"

	"github.com/stretchr/testify/assert"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/stretchr/testify/require"
)

func getTaskTemplate(t *testing.T, ctx context.Context, id string) *pb.GetTaskTemplateResponse {
	t.Helper()

	taskTemplate, err := taskTemplateServiceClient().GetTaskTemplate(ctx, &pb.GetTaskTemplateRequest{
		Id: id,
	})
	require.NoError(t, err, "could not get all task templates")
	assert.NotNil(t, taskTemplate)
	return taskTemplate
}

func TestCreateUpdateGetTaskTemplate(t *testing.T) {
	ctx := context.Background()
	taskTemplateClient := taskTemplateServiceClient()
	wardServiceClient := wardServiceClient()

	//
	// Create Ward for scoping
	//
	createWardReq := &pb.CreateWardRequest{
		Name: "occupy",
	}
	wardRes, err := wardServiceClient.CreateWard(ctx, createWardReq)
	require.NoError(t, err, "could not create ward")

	// wardId will be used for scoping
	wardId := wardRes.GetId()

	//
	// create new template
	//
	createReq := &pb.CreateTaskTemplateRequest{
		WardId:      &wardId,
		Description: hwutil.PtrTo("Some Description"),
		Subtasks:    make([]*pb.CreateTaskTemplateRequest_SubTask, 0),
		Name:        t.Name() + " tt",
	}
	createRes, err := taskTemplateClient.CreateTaskTemplate(ctx, createReq)

	require.NoError(t, err, "could not create task template")

	templateId := createRes.GetId()

	hwtesting.WaitForProjectionsToSettle()

	//
	// get new template
	//

	template := getTaskTemplate(t, ctx, templateId)

	assert.Equal(t, createReq.Name, template.Name)
	assert.Equal(t, *createReq.Description, template.Description)
	assert.Equal(t, hwtesting.FakeTokenUser, template.CreatedBy)
	assert.True(t, template.IsPublic)
	assert.Equal(t, createRes.Consistency, template.Consistency)

	//
	// update template
	//

	updateReq := &pb.UpdateTaskTemplateRequest{
		Id:          templateId,
		Name:        hwutil.PtrTo("New Name"),
		Description: nil,
		Consistency: &createRes.Consistency,
	}
	updateRes, err := taskTemplateClient.UpdateTaskTemplate(ctx, updateReq)
	require.NoError(t, err, "could not update task template after creation")

	assert.NotEqual(t, template.Consistency, updateRes.Consistency, "consistency has not changed in update")

	hwtesting.WaitForProjectionsToSettle()

	//
	// get updated template
	//

	template = getTaskTemplate(t, ctx, templateId)

	assert.Equal(t, *updateReq.Name, template.Name)
	assert.Equal(t, updateRes.Consistency, template.Consistency)

	//
	// add subtask
	//

	createStRes, err := taskTemplateClient.CreateTaskTemplateSubTask(ctx, &pb.CreateTaskTemplateSubTaskRequest{
		TaskTemplateId: templateId,
		Name:           t.Name() + " ST 1",
	})
	require.NoError(t, err)
	assert.NotEqual(t, template.Consistency, createStRes.TaskTemplateConsistency, "consistency was not updated")

	//
	// get updated template
	//

	template = getTaskTemplate(t, ctx, templateId)

	assert.Len(t, template.Subtasks, 1)
	assert.Equal(t, createStRes.Id, template.Subtasks[0].Id)
	assert.Equal(t, t.Name()+" ST 1", template.Subtasks[0].Name)
	assert.Equal(t, createStRes.TaskTemplateConsistency, template.Consistency)

	//
	// update subtask
	//

	updateStRes, err := taskTemplateClient.UpdateTaskTemplateSubTask(ctx, &pb.UpdateTaskTemplateSubTaskRequest{
		SubtaskId: createStRes.Id,
		Name:      hwutil.PtrTo(t.Name() + " ST 2"),
	})
	require.NoError(t, err)

	//
	// get updated template
	//

	template = getTaskTemplate(t, ctx, templateId)

	assert.Len(t, template.Subtasks, 1)
	assert.Equal(t, createStRes.Id, template.Subtasks[0].Id)
	assert.Equal(t, t.Name()+" ST 2", template.Subtasks[0].Name)
	assert.Equal(t, updateStRes.TaskTemplateConsistency, template.Consistency)

	//
	// create another template
	//
	createReq = &pb.CreateTaskTemplateRequest{
		WardId:      &wardId,
		Description: hwutil.PtrTo("Some Description"),
		Subtasks:    make([]*pb.CreateTaskTemplateRequest_SubTask, 0),
		Name:        t.Name() + " tt",
	}
	_, err = taskTemplateClient.CreateTaskTemplate(ctx, createReq)
	require.NoError(t, err, "could not create task template")
	hwtesting.WaitForProjectionsToSettle()

	//
	// get all templates
	//

	templates, err := taskTemplateClient.GetAllTaskTemplates(ctx, &pb.GetAllTaskTemplatesRequest{
		WardId: &wardId,
	})

	require.NoError(t, err)
	assert.Len(t, templates.Templates, 2)
}

func TestUpdateTaskTemplateConflict(t *testing.T) {
	ctx := context.Background()
	taskTemplateClient := taskTemplateServiceClient()

	ttRes, err := taskTemplateClient.CreateTaskTemplate(ctx, &pb.CreateTaskTemplateRequest{
		Name:        t.Name(),
		Description: nil,
		WardId:      nil,
		Subtasks:    nil,
	})
	require.NoError(t, err)

	ttId := ttRes.Id
	initialConsistency := ttRes.Consistency

	name1 := "This came first"

	// update 1
	update1Res, err := taskTemplateClient.UpdateTaskTemplate(ctx, &pb.UpdateTaskTemplateRequest{
		Id:          ttId,
		Name:        &name1,
		Description: &name1,
		Consistency: &initialConsistency,
	})
	require.NoError(t, err)
	assert.Nil(t, update1Res.Conflict)
	assert.NotEqual(t, initialConsistency, update1Res.Consistency)

	name2 := "This came second"

	// racing update 2
	update2Res, err := taskTemplateClient.UpdateTaskTemplate(ctx, &pb.UpdateTaskTemplateRequest{
		Id:          ttId,
		Name:        &name2,
		Description: &name2,
		Consistency: &initialConsistency,
	})
	require.NoError(t, err)
	assert.Equal(t, update1Res.Consistency, update2Res.Consistency)
	assert.NotNil(t, update2Res.Conflict)

	nameRes := update2Res.Conflict.ConflictingAttributes["name"]
	assert.NotNil(t, nameRes)

	nameIs := &wrapperspb.StringValue{}
	require.NoError(t, nameRes.Is.UnmarshalTo(nameIs))
	assert.Equal(t, name1, nameIs.Value)

	nameWant := &wrapperspb.StringValue{}
	require.NoError(t, nameRes.Want.UnmarshalTo(nameWant))
	assert.Equal(t, name2, nameWant.Value) //nolint:testifylint // false positive

	descrRes := update2Res.Conflict.ConflictingAttributes["description"]
	assert.NotNil(t, descrRes)

	descrIs := &wrapperspb.StringValue{}
	require.NoError(t, descrRes.Is.UnmarshalTo(descrIs))
	assert.Equal(t, name1, descrIs.Value)

	descrWant := &wrapperspb.StringValue{}
	require.NoError(t, descrRes.Want.UnmarshalTo(descrWant))
	assert.Equal(t, name2, descrWant.Value) //nolint:testifylint // false positive
}

func TestUpdateTaskTemplateSubTaskConflict(t *testing.T) {
	ctx := context.Background()
	taskTemplateClient := taskTemplateServiceClient()

	ttRes, err := taskTemplateClient.CreateTaskTemplate(ctx, &pb.CreateTaskTemplateRequest{
		Name:        t.Name(),
		Description: nil,
		WardId:      nil,
		Subtasks:    nil,
	})
	require.NoError(t, err)

	stRes, err := taskTemplateClient.CreateTaskTemplateSubTask(ctx, &pb.CreateTaskTemplateSubTaskRequest{
		TaskTemplateId: ttRes.Id,
		Name:           t.Name(),
	})
	require.NoError(t, err)

	stId := stRes.Id
	initialConsistency := stRes.TaskTemplateConsistency

	name1 := "This came first"

	// update 1
	update1Res, err := taskTemplateClient.UpdateTaskTemplateSubTask(ctx, &pb.UpdateTaskTemplateSubTaskRequest{
		SubtaskId:               stId,
		Name:                    &name1,
		TaskTemplateConsistency: &initialConsistency,
	})
	require.NoError(t, err)
	assert.Nil(t, update1Res.Conflict)
	assert.NotEqual(t, initialConsistency, update1Res.TaskTemplateConsistency)

	name2 := "This came second"

	// racing update 2
	update2Res, err := taskTemplateClient.UpdateTaskTemplateSubTask(ctx, &pb.UpdateTaskTemplateSubTaskRequest{
		SubtaskId:               stId,
		Name:                    &name2,
		TaskTemplateConsistency: &initialConsistency,
	})
	require.NoError(t, err)
	assert.Equal(t, update1Res.TaskTemplateConsistency, update2Res.TaskTemplateConsistency)
	assert.NotNil(t, update2Res.Conflict)

	nameRes := update2Res.Conflict.ConflictingAttributes["name"]
	assert.NotNil(t, nameRes)

	nameIs := &wrapperspb.StringValue{}
	require.NoError(t, nameRes.Is.UnmarshalTo(nameIs))
	assert.Equal(t, name1, nameIs.Value)

	nameWant := &wrapperspb.StringValue{}
	require.NoError(t, nameRes.Want.UnmarshalTo(nameWant))
	assert.Equal(t, name2, nameWant.Value) //nolint:testifylint // false positive
}
