package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwtesting"
	"hwutil"
	"testing"

	"github.com/stretchr/testify/assert"
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
