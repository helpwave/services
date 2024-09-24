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

func TestCreateUpdateGetTaskTemplateWithWard(t *testing.T) {
	ctx := context.Background()
	taskTemplateClient := taskTemplateServiceClient()

	wardId, _ := prepareWard(t, ctx, "")

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

	assert.NoError(t, err, "could not create tt")

	templateId := createRes.GetId()

	time.Sleep(time.Millisecond * 200)

	//
	// get new template
	//

	getAll, err := taskTemplateClient.GetAllTaskTemplates(ctx, &pb.GetAllTaskTemplatesRequest{})
	assert.NoError(t, err, "could not get all tt after creation")

	var template *pb.GetAllTaskTemplatesResponse_TaskTemplate
	for _, templ := range getAll.Templates {
		if templ.Id == createRes.Id {
			template = templ
			break
		}
	}
	assert.NotNil(t, template)
	if template == nil {
		panic("template is nil")
	}

	assert.Equal(t, createReq.Name, template.Name)
	assert.Equal(t, *createReq.Description, template.Description)
	assert.Equal(t, hwtesting.FakeTokenUser, template.CreatedBy)
	assert.Equal(t, true, template.IsPublic)
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

	getAll, err = taskTemplateClient.GetAllTaskTemplates(ctx, &pb.GetAllTaskTemplatesRequest{})
	assert.NoError(t, err, "could not get all tt after creation")

	template = nil
	for _, templ := range getAll.Templates {
		if templ.Id == createRes.Id {
			template = templ
			break
		}
	}
	assert.NotNil(t, template)
	if template == nil {
		panic("template is nil")
	}

	assert.Equal(t, *updateReq.Name, template.Name)
	assert.Equal(t, updateRes.Consistency, template.Consistency)

}
