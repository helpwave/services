package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/stretchr/testify/assert"
	"hwtesting"
	"hwutil"
	"testing"
	"time"
)

func getTaskTemplate(t *testing.T, ctx context.Context, id string) *pb.GetAllTaskTemplatesResponse_TaskTemplate {
	getAll, err := taskTemplateServiceClient().GetAllTaskTemplates(ctx, &pb.GetAllTaskTemplatesRequest{})
	assert.NoError(t, err, "could not get all tt after creation")

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

	assert.NoError(t, err, "could not create tt")

	templateId := createRes.GetId()

	time.Sleep(time.Millisecond * 200)

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
	assert.NoError(t, err, "could not update tt after creation")

	assert.NotEqual(t, template.Consistency, updateRes.Consistency, "consistency has not changed in update")

	time.Sleep(time.Second)

	//
	// get updated template
	//

	template = getTaskTemplate(t, ctx, templateId)

	assert.Equal(t, *updateReq.Name, template.Name)
	assert.Equal(t, updateRes.Consistency, template.Consistency)

	//
	// add subtask
	//

	res, err := taskTemplateClient.CreateTaskTemplateSubTask(ctx, &pb.CreateTaskTemplateSubTaskRequest{
		TaskTemplateId: templateId,
		Name:           t.Name() + " ST 1",
	})
	assert.NoError(t, err)
	assert.NotEqual(t, template.Consistency, res.TaskTemplateConsistency, "consitency was not updated")

	//
	// get updated template
	//

	template = getTaskTemplate(t, ctx, templateId)

	assert.Equal(t, res.TaskTemplateConsistency, template.Consistency)

}
