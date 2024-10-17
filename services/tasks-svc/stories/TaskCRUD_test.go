package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"google.golang.org/protobuf/types/known/timestamppb"
	"hwtesting"
	"hwutil"
	"strconv"
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

	hwtesting.WaitForProjectionsToSettle()

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
	assert.NoError(t, err, "could not update task after creation")

	assert.NotEqual(t, task.Consistency, updateRes.Consistency, "consistency has not changed in update")

	hwtesting.WaitForProjectionsToSettle()

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

	hwtesting.WaitForProjectionsToSettle()

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

	hwtesting.WaitForProjectionsToSettle()

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
	hwtesting.WaitForProjectionsToSettle()

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
	hwtesting.WaitForProjectionsToSettle()

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
	hwtesting.WaitForProjectionsToSettle()

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	assert.NoError(t, err)

	assert.Nil(t, task.DueAt)
	assert.Equal(t, rmDueRes.Consistency, task.Consistency)

}

func TestGetTasksByPatient(t *testing.T) {
	taskClient := taskServiceClient()
	ctx := context.Background()

	patientId := preparePatient(t, ctx, "")

	suffixMap := [][]string{
		{"1 A", "1 B", "1 C"}, // Task 1
		{"2 A", "2 B"},        // Task 2
		{},                    // Task 3
	}

	taskIds := make([]string, 0, len(suffixMap))
	taskConsistencies := make(map[string]string)
	subtaskMap := make(map[string][]*pb.CreateTaskRequest_SubTask)

	for i, stSuffixes := range suffixMap {
		taskSuffix := strconv.Itoa(i + 1)

		sts := hwutil.Map(stSuffixes, func(s string) *pb.CreateTaskRequest_SubTask {
			return &pb.CreateTaskRequest_SubTask{
				Name: t.Name() + " ST " + s,
			}
		})

		taskRes, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
			Name:           t.Name() + " task " + taskSuffix,
			Description:    nil,
			PatientId:      patientId,
			Public:         hwutil.PtrTo(true),
			DueAt:          nil,
			InitialStatus:  hwutil.PtrTo(pb.TaskStatus(i + 1)), // this is dirty, lol
			AssignedUserId: nil,
			Subtasks:       sts,
		})
		assert.NoError(t, err)
		taskIds = append(taskIds, taskRes.Id)
		taskConsistencies[taskRes.Id] = taskRes.Consistency
		subtaskMap[taskRes.Id] = sts
	}

	hwtesting.WaitForProjectionsToSettle()

	res, err := taskClient.GetTasksByPatient(ctx, &pb.GetTasksByPatientRequest{PatientId: patientId})
	assert.NoError(t, err)

	assert.Len(t, res.Tasks, len(suffixMap))
	assert.Subset(t, taskIds, hwutil.Map(res.Tasks, func(tsk *pb.GetTasksByPatientResponse_Task) string {
		assert.Equal(t, taskConsistencies[tsk.Id], tsk.Consistency)
		assert.Equal(t, hwtesting.FakeTokenUser, tsk.CreatedBy)
		assert.Len(t, tsk.Subtasks, len(subtaskMap[tsk.Id]))
		exp := hwutil.Map(subtaskMap[tsk.Id], func(st *pb.CreateTaskRequest_SubTask) string {
			return st.GetName()
		})
		have := hwutil.Map(tsk.Subtasks, func(st *pb.GetTasksByPatientResponse_Task_SubTask) string {
			return st.GetName()
		})
		assert.Subset(t, exp, have)
		return tsk.Id
	}))

	// GetTasksByPatientSortedByStatus

	resByStatus, err := taskClient.GetTasksByPatientSortedByStatus(ctx, &pb.GetTasksByPatientSortedByStatusRequest{
		PatientId: patientId,
	})
	assert.NoError(t, err)

	assert.Len(t, resByStatus.Todo, 1)
	assert.Equal(t, taskConsistencies[resByStatus.Todo[0].Id], resByStatus.Todo[0].Consistency)
	assert.Equal(t, hwtesting.FakeTokenUser, resByStatus.Todo[0].CreatedBy)
	assert.Len(t, resByStatus.Todo[0].Subtasks, len(subtaskMap[resByStatus.Todo[0].Id]))

	assert.Len(t, resByStatus.InProgress, 1)
	assert.Equal(t, taskConsistencies[resByStatus.InProgress[0].Id], resByStatus.InProgress[0].Consistency)
	assert.Equal(t, hwtesting.FakeTokenUser, resByStatus.InProgress[0].CreatedBy)
	assert.Len(t, resByStatus.InProgress[0].Subtasks, len(subtaskMap[resByStatus.InProgress[0].Id]))

	assert.Len(t, resByStatus.Done, 1)
	assert.Equal(t, taskConsistencies[resByStatus.Done[0].Id], resByStatus.Done[0].Consistency)
	assert.Equal(t, hwtesting.FakeTokenUser, resByStatus.Done[0].CreatedBy)
	assert.Len(t, resByStatus.Done[0].Subtasks, len(subtaskMap[resByStatus.Done[0].Id]))

}

func TestGetAssignedTasks(t *testing.T) {
	taskClient := taskServiceClient()
	ctx := context.Background()

	patientId := preparePatient(t, ctx, "")

	suffixMap := [][]string{
		{"1 A", "1 B", "1 C"}, // Task 1
		{"2 A", "2 B"},        // Task 2
		{},                    // Task 3
	}

	userID := uuid.New()

	taskIds := make([]string, 0, len(suffixMap))
	taskConsistencies := make(map[string]string)
	subtaskMap := make(map[string][]*pb.CreateTaskRequest_SubTask)

	for i, stSuffixes := range suffixMap {
		taskSuffix := strconv.Itoa(i + 1)

		sts := hwutil.Map(stSuffixes, func(s string) *pb.CreateTaskRequest_SubTask {
			return &pb.CreateTaskRequest_SubTask{
				Name: t.Name() + " ST " + s,
			}
		})

		taskRes, err := taskClient.CreateTask(ctx, &pb.CreateTaskRequest{
			Name:           t.Name() + " task " + taskSuffix,
			Description:    nil,
			PatientId:      patientId,
			Public:         hwutil.PtrTo(true),
			DueAt:          nil,
			InitialStatus:  hwutil.PtrTo(pb.TaskStatus(i + 1)), // this is dirty, lol
			AssignedUserId: hwutil.PtrTo(userID.String()),
			Subtasks:       sts,
		})
		assert.NoError(t, err)
		taskIds = append(taskIds, taskRes.Id)
		taskConsistencies[taskRes.Id] = taskRes.Consistency
		subtaskMap[taskRes.Id] = sts
	}

	hwtesting.WaitForProjectionsToSettle()

	// client for userid
	customTaskClient := pb.NewTaskServiceClient(hwtesting.GetGrpcConn(userID.String()))

	res, err := customTaskClient.GetAssignedTasks(ctx, &pb.GetAssignedTasksRequest{})
	assert.NoError(t, err)

	assert.Len(t, res.Tasks, len(suffixMap))
	assert.Subset(t, taskIds, hwutil.Map(res.Tasks, func(tsk *pb.GetAssignedTasksResponse_Task) string {
		assert.Equal(t, taskConsistencies[tsk.Id], tsk.Consistency)
		assert.Len(t, tsk.Subtasks, len(subtaskMap[tsk.Id]))
		exp := hwutil.Map(subtaskMap[tsk.Id], func(st *pb.CreateTaskRequest_SubTask) string {
			return st.GetName()
		})
		have := hwutil.Map(tsk.Subtasks, func(st *pb.GetAssignedTasksResponse_Task_SubTask) string {
			return st.GetName()
		})
		assert.Subset(t, exp, have)
		return tsk.Id
	}))

}
