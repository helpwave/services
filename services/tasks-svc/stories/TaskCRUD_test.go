package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	zlog "github.com/rs/zerolog/log"
	"github.com/stretchr/testify/assert"
	"hwtesting"
	"hwutil"
	"testing"
	"time"
)

func TestCreateUpdateGetTask(t *testing.T) {
	ctx := context.Background()
	taskClient := taskServiceClient()

	// prepare patient
	patientId := preparePatient(t, ctx, "")

	//
	// create new task
	//
	createReq := &pb.CreateTaskRequest{
		Name:           t.Name() + " task",
		Description:    hwutil.PtrTo("Some Description"),
		PatientId:      patientId,
		Public:         hwutil.PtrTo(true),
		DueAt:          nil,
		InitialStatus:  nil,
		AssignedUserId: nil,
		Subtasks: []*pb.CreateTaskRequest_SubTask{
			{Name: "ST 1"},
			{Name: "ST 2", Done: hwutil.PtrTo(true)},
		},
	}
	createRes, err := taskClient.CreateTask(ctx, createReq)

	assert.NoError(t, err, "could not create")

	taskId := createRes.GetId()

	time.Sleep(time.Millisecond * 100)

	//
	// get new task
	//

	task, err := taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	assert.Equal(t, createReq.Name, task.Name)
	assert.Equal(t, *createReq.Description, task.Description)
	assert.Equal(t, true, task.Public)
	assert.Equal(t, hwtesting.FakeTokenUser, task.CreatedBy)
	assert.Equal(t, true, task.Public)
	assert.Equal(t, pb.TaskStatus_TASK_STATUS_TODO, task.Status)

	assert.Equal(t, patientId, task.Patient.Id)

	assert.Len(t, task.Subtasks, 2)
	found := 0
	for _, st := range task.Subtasks {
		if st.Name == "ST 1" {
			found++
			assert.Equal(t, false, st.Done)
			assert.Equal(t, hwtesting.FakeTokenUser, st.CreatedBy)
		}
		if st.Name == "ST 2" {
			found++
			assert.Equal(t, true, st.Done)
			assert.Equal(t, hwtesting.FakeTokenUser, st.CreatedBy)
		}
	}
	assert.Equal(t, 2, found)

	assert.Equal(t, createRes.Consistency, task.Consistency)

	//
	// update task
	//

	updateReq := &pb.UpdateTaskRequest{
		Id:          taskId,
		Name:        hwutil.PtrTo("New Name"),
		Description: nil,
		DueAt:       nil,
		Status:      hwutil.PtrTo(pb.TaskStatus_TASK_STATUS_DONE),
		Public:      nil,
		Consistency: &createRes.Consistency,
	}
	updateRes, err := taskClient.UpdateTask(ctx, updateReq)
	assert.NoError(t, err, "could not update tt after creation")

	assert.NotEqual(t, task.Consistency, updateRes.Consistency, "consistency has not changed in update")

	time.Sleep(time.Millisecond * 100)

	//
	// get updated task
	//

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	assert.Equal(t, *updateReq.Name, task.Name)
	assert.Equal(t, pb.TaskStatus_TASK_STATUS_DONE, task.Status)
	assert.Equal(t, updateRes.Consistency, task.Consistency)

	//
	// add subtask
	//

	createStRes, err := taskClient.CreateSubtask(ctx, &pb.CreateSubtaskRequest{
		TaskId: taskId,
		Subtask: &pb.CreateSubtaskRequest_Subtask{
			Name: "ST 3",
		},
	})
	assert.NoError(t, err)
	assert.NotEqual(t, task.Consistency, createStRes.TaskConsistency, "consistency was not updated")

	time.Sleep(time.Millisecond * 100)

	//
	// get updated task
	//

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	assert.Len(t, task.Subtasks, 3)

	found = 0
	for _, st := range task.Subtasks {
		if st.Name == "ST 3" {
			found++
			assert.Equal(t, createStRes.SubtaskId, st.Id)
			assert.Equal(t, false, st.Done)
			assert.Equal(t, hwtesting.FakeTokenUser, st.CreatedBy)
			break
		}
	}
	assert.Equal(t, 1, found)

	assert.Equal(t, createStRes.TaskConsistency, task.Consistency)

	//
	// update subtask
	//

	updateStRes, err := taskClient.UpdateSubtask(ctx, &pb.UpdateSubtaskRequest{
		TaskId:    taskId,
		SubtaskId: createStRes.SubtaskId,
		Subtask: &pb.UpdateSubtaskRequest_Subtask{
			Done: hwutil.PtrTo(true),
		},
		TaskConsistency: &task.Consistency,
	})
	assert.NoError(t, err)

	time.Sleep(time.Millisecond * 100)

	//
	// get updated task
	//

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	zlog.Trace().Interface("subtasts", task.Subtasks).Msg("remeremereme")

	assert.Equal(t, createStRes.SubtaskId, task.Subtasks[2].Id)
	assert.Equal(t, true, task.Subtasks[2].Done)
	assert.Equal(t, updateStRes.TaskConsistency, task.Consistency)

}
