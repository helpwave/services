package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"hwtesting"
	"hwutil"
	"testing"
)

func getTaskTemplate(t *testing.T, ctx context.Context, id string) *pb.GetAllTaskTemplatesResponse_TaskTemplate {
	getAll, err := taskTemplateServiceClient().GetAllTaskTemplates(ctx, &pb.GetAllTaskTemplatesRequest{})
	assert.NoError(t, err, "could not get all task templates")

	var template *pb.GetAllTaskTemplatesResponse_TaskTemplate
	for _, templ := range getAll.Templates {
		if templ.Id == id {
			template = templ
			break
		}
	}
	assert.NotNil(t, template)
	return template
}

func TestCreateUpdateGetTaskTemplate(t *testing.T) {
	ctx := context.Background()
	taskTemplateClient := taskTemplateServiceClient()

	//
	// create new template
	//
	createReq := &pb.CreateTaskTemplateRequest{
		WardId:      nil,
		Description: hwutil.PtrTo("Some Description"),
		Subtasks:    make([]*pb.CreateTaskTemplateRequest_SubTask, 0),
		Name:        t.Name() + " tt",
	}
	createRes, err := taskTemplateClient.CreateTaskTemplate(ctx, createReq)

	assert.NoError(t, err, "could not create task template")

	templateId := createRes.GetId()

	hwtesting.WaitForProjectionsToSettle()

	//
	// get new template
	//

	template := getTaskTemplate(t, ctx, templateId)

	assert.Equal(t, createReq.Name, template.Name)
	assert.Equal(t, *createReq.Description, template.Description)
	assert.Equal(t, hwtesting.FakeTokenUser, template.CreatedBy)
	assert.Equal(t, false, template.IsPublic)
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
	assert.NoError(t, err, "could not update task template after creation")

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
	assert.NoError(t, err)
	assert.NotEqual(t, template.Consistency, createStRes.TaskTemplateConsistency, "consitency was not updated")

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
	assert.NoError(t, err)

	//
	// get updated template
	//

	template = getTaskTemplate(t, ctx, templateId)

	assert.Len(t, template.Subtasks, 1)
	assert.Equal(t, createStRes.Id, template.Subtasks[0].Id)
	assert.Equal(t, t.Name()+" ST 2", template.Subtasks[0].Name)
	assert.Equal(t, updateStRes.TaskTemplateConsistency, template.Consistency)

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
	assert.NoError(t, err)

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
	assert.NoError(t, err)
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
	assert.NoError(t, err)
	assert.Equal(t, update1Res.Consistency, update2Res.Consistency)
	assert.NotNil(t, update2Res.Conflict)

	nameRes := update2Res.Conflict.ConflictingAttributes["name"]
	assert.NotNil(t, nameRes)

	nameIs := &wrapperspb.StringValue{}
	assert.NoError(t, nameRes.Is.UnmarshalTo(nameIs))
	assert.Equal(t, name1, nameIs.Value)

	nameWant := &wrapperspb.StringValue{}
	assert.NoError(t, nameRes.Want.UnmarshalTo(nameWant))
	assert.Equal(t, name2, nameWant.Value)

	descrRes := update2Res.Conflict.ConflictingAttributes["description"]
	assert.NotNil(t, descrRes)

	descrIs := &wrapperspb.StringValue{}
	assert.NoError(t, descrRes.Is.UnmarshalTo(descrIs))
	assert.Equal(t, name1, descrIs.Value)

	descrWant := &wrapperspb.StringValue{}
	assert.NoError(t, descrRes.Want.UnmarshalTo(descrWant))
	assert.Equal(t, name2, descrWant.Value)

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
	assert.NoError(t, err)

	stRes, err := taskTemplateClient.CreateTaskTemplateSubTask(ctx, &pb.CreateTaskTemplateSubTaskRequest{
		TaskTemplateId: ttRes.Id,
		Name:           t.Name(),
	})
	assert.NoError(t, err)

	stId := stRes.Id
	initialConsistency := stRes.TaskTemplateConsistency

	name1 := "This came first"

	// update 1
	update1Res, err := taskTemplateClient.UpdateTaskTemplateSubTask(ctx, &pb.UpdateTaskTemplateSubTaskRequest{
		SubtaskId:               stId,
		Name:                    &name1,
		TaskTemplateConsistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Nil(t, update1Res.Conflict)
	assert.NotEqual(t, initialConsistency, update1Res.TaskTemplateConsistency)

	name2 := "This came second"

	// racing update 2
	update2Res, err := taskTemplateClient.UpdateTaskTemplateSubTask(ctx, &pb.UpdateTaskTemplateSubTaskRequest{
		SubtaskId:               stId,
		Name:                    &name2,
		TaskTemplateConsistency: &initialConsistency,
	})
	assert.NoError(t, err)
	assert.Equal(t, update1Res.TaskTemplateConsistency, update2Res.TaskTemplateConsistency)
	assert.NotNil(t, update2Res.Conflict)

	nameRes := update2Res.Conflict.ConflictingAttributes["name"]
	assert.NotNil(t, nameRes)

	nameIs := &wrapperspb.StringValue{}
	assert.NoError(t, nameRes.Is.UnmarshalTo(nameIs))
	assert.Equal(t, name1, nameIs.Value)

	nameWant := &wrapperspb.StringValue{}
	assert.NoError(t, nameRes.Want.UnmarshalTo(nameWant))
	assert.Equal(t, name2, nameWant.Value)

}
