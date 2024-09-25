package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"google.golang.org/protobuf/types/known/timestamppb"
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

	dueDate := time.Now().Add(time.Hour).UTC()

	//
	// create new task
	//
	createReq := &pb.CreateTaskRequest{
		Name:           t.Name() + " task",
		Description:    hwutil.PtrTo("Some Description"),
		PatientId:      patientId,
		Public:         hwutil.PtrTo(true),
		DueAt:          timestamppb.New(dueDate),
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

	// get new task

	task, err := taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	assert.Equal(t, createReq.Name, task.Name)
	assert.Equal(t, *createReq.Description, task.Description)
	assert.Equal(t, true, task.Public)
	assert.Equal(t, hwtesting.FakeTokenUser, task.CreatedBy)
	assert.Equal(t, true, task.Public)
	assert.Equal(t, pb.TaskStatus_TASK_STATUS_TODO, task.Status)
	assert.WithinDuration(t, dueDate, task.DueAt.AsTime(), time.Second) // actually we differ by some microseconds
	assert.Nil(t, task.AssignedUserId)

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

	// get updated task

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

	// get updated task

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

	// update subtask

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

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	assert.Contains(t, hwutil.Map(task.Subtasks, func(st *pb.GetTaskResponse_SubTask) string {
		if st.Id == createStRes.SubtaskId {
			assert.True(t, st.Done)
		}
		return st.Id
	}), createStRes.SubtaskId)
	assert.Equal(t, updateStRes.TaskConsistency, task.Consistency)

	//
	// AssignTask
	//

	assignedUser := uuid.New()

	assignRes, err := taskClient.AssignTask(ctx, &pb.AssignTaskRequest{
		TaskId:      taskId,
		UserId:      assignedUser.String(),
		Consistency: &task.Consistency,
	})
	assert.NoError(t, err)

	assert.NotEqual(t, task.Consistency, assignRes.Consistency, "consistency was not updated")

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	assert.Equal(t, assignedUser.String(), *task.AssignedUserId)
	assert.Equal(t, assignRes.Consistency, task.Consistency)

	//
	// UnassignTask
	//

	unassignRes, err := taskClient.UnassignTask(ctx, &pb.UnassignTaskRequest{
		TaskId:      taskId,
		UserId:      assignedUser.String(),
		Consistency: &task.Consistency,
	})
	assert.NoError(t, err)

	assert.NotEqual(t, task.Consistency, unassignRes.Consistency, "consistency was not updated")

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	assert.Nil(t, task.AssignedUserId)
	assert.Equal(t, unassignRes.Consistency, task.Consistency)

	//
	// RemoveTaskDueDate
	//

	rmDueRes, err := taskClient.RemoveTaskDueDate(ctx, &pb.RemoveTaskDueDateRequest{
		TaskId: taskId,
	})
	assert.NoError(t, err)

	assert.NotEqual(t, task.Consistency, rmDueRes.Consistency, "consistency was not updated")

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	assert.Nil(t, task.DueAt)
	assert.Equal(t, rmDueRes.Consistency, task.Consistency)

}
