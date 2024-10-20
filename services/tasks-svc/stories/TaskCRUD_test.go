package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwtesting"
	"hwutil"
	"strconv"
	"testing"
	"time"

	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/protobuf/types/known/timestamppb"
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

	require.NoError(t, err, "could not create")

	taskId := createRes.GetId()

	hwtesting.WaitForProjectionsToSettle()

	// get new task

	task, err := taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	require.NoError(t, err)

	assert.Equal(t, createReq.GetName(), task.GetName())
	assert.Equal(t, createReq.GetDescription(), task.GetDescription())
	assert.True(t, task.GetPublic())
	assert.Equal(t, hwtesting.FakeTokenUser, task.GetCreatedBy())
	assert.True(t, task.GetPublic())
	assert.Equal(t, pb.TaskStatus_TASK_STATUS_TODO, task.GetStatus())
	assert.WithinDuration(t, dueDate, task.GetDueAt().AsTime(), time.Second) // actually we differ by some microseconds
	assert.Equal(t, "", task.GetAssignedUserId())

	assert.Equal(t, patientId, task.GetPatient().GetId())

	assert.Len(t, task.GetSubtasks(), 2)
	found := 0
	for _, st := range task.GetSubtasks() {
		if st.Name == "ST 1" {
			found++
			assert.False(t, st.GetDone())
			assert.Equal(t, hwtesting.FakeTokenUser, st.GetCreatedBy())
		}
		if st.Name == "ST 2" {
			found++
			assert.True(t, st.GetDone())
			assert.Equal(t, hwtesting.FakeTokenUser, st.GetCreatedBy())
		}
	}
	assert.Equal(t, 2, found)

	assert.Equal(t, createRes.GetConsistency(), task.GetConsistency())

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
	require.NoError(t, err, "could not update task after creation")

	assert.NotEqual(t, task.GetConsistency(), updateRes.GetConsistency(), "consistency has not changed in update")

	hwtesting.WaitForProjectionsToSettle()

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	require.NoError(t, err)

	assert.Equal(t, updateReq.GetName(), task.GetName())
	assert.Equal(t, pb.TaskStatus_TASK_STATUS_DONE, task.GetStatus())
	assert.Equal(t, updateRes.GetConsistency(), task.GetConsistency())

	//
	// add subtask
	//

	createStRes, err := taskClient.CreateSubtask(ctx, &pb.CreateSubtaskRequest{
		TaskId: taskId,
		Subtask: &pb.CreateSubtaskRequest_Subtask{
			Name: "ST 3",
		},
	})
	require.NoError(t, err)
	assert.NotEqual(t, task.Consistency, createStRes.TaskConsistency, "consistency was not updated")

	hwtesting.WaitForProjectionsToSettle()

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	require.NoError(t, err)

	assert.Len(t, task.GetSubtasks(), 3)

	found = 0
	for _, st := range task.GetSubtasks() {
		if st.GetName() == "ST 3" {
			found++
			assert.Equal(t, createStRes.GetSubtaskId(), st.GetId())
			assert.False(t, st.GetDone())
			assert.Equal(t, hwtesting.FakeTokenUser, st.GetCreatedBy())
			break
		}
	}
	assert.Equal(t, 1, found)

	assert.Equal(t, createStRes.GetTaskConsistency(), task.GetConsistency())

	// update subtask

	updateStRes, err := taskClient.UpdateSubtask(ctx, &pb.UpdateSubtaskRequest{
		TaskId:    taskId,
		SubtaskId: createStRes.GetSubtaskId(),
		Subtask: &pb.UpdateSubtaskRequest_Subtask{
			Done: hwutil.PtrTo(true),
		},
		TaskConsistency: &task.Consistency,
	})
	require.NoError(t, err)

	hwtesting.WaitForProjectionsToSettle()

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	require.NoError(t, err)

	assert.Contains(t, hwutil.Map(task.Subtasks, func(st *pb.GetTaskResponse_SubTask) string {
		if st.GetId() == createStRes.GetSubtaskId() {
			assert.True(t, st.GetDone())
		}
		return st.GetId()
	}), createStRes.GetSubtaskId())
	assert.Equal(t, updateStRes.GetTaskConsistency(), task.GetConsistency())

	//
	// AssignTask
	//

	assignedUser := uuid.New()

	assignRes, err := taskClient.AssignTask(ctx, &pb.AssignTaskRequest{
		TaskId:      taskId,
		UserId:      assignedUser.String(),
		Consistency: &task.Consistency,
	})
	require.NoError(t, err)

	assert.NotEqual(t, task.GetConsistency(), assignRes.GetConsistency(), "consistency was not updated")
	hwtesting.WaitForProjectionsToSettle()

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	require.NoError(t, err)

	assert.Equal(t, assignedUser.String(), task.GetAssignedUserId())
	assert.Equal(t, assignRes.GetConsistency(), task.GetConsistency())

	//
	// UnassignTask
	//

	unassignRes, err := taskClient.UnassignTask(ctx, &pb.UnassignTaskRequest{
		TaskId:      taskId,
		UserId:      assignedUser.String(),
		Consistency: &task.Consistency,
	})
	require.NoError(t, err)

	assert.NotEqual(t, task.GetConsistency(), unassignRes.GetConsistency(), "consistency was not updated")
	hwtesting.WaitForProjectionsToSettle()

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	require.NoError(t, err)

	assert.Equal(t, "", task.GetAssignedUserId())
	assert.Equal(t, unassignRes.GetConsistency(), task.GetConsistency())

	//
	// RemoveTaskDueDate
	//

	rmDueRes, err := taskClient.RemoveTaskDueDate(ctx, &pb.RemoveTaskDueDateRequest{
		TaskId: taskId,
	})
	require.NoError(t, err)

	assert.NotEqual(t, task.GetConsistency(), rmDueRes.GetConsistency(), "consistency was not updated")
	hwtesting.WaitForProjectionsToSettle()

	// get updated task

	task, err = taskClient.GetTask(ctx, &pb.GetTaskRequest{Id: taskId})
	require.NoError(t, err)

	assert.Nil(t, task.GetDueAt())
	assert.Equal(t, rmDueRes.GetConsistency(), task.GetConsistency())
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
			Name:        t.Name() + " task " + taskSuffix,
			Description: nil,
			PatientId:   patientId,
			Public:      hwutil.PtrTo(true),
			DueAt:       nil,
			// behold: peak enginering:
			InitialStatus:  hwutil.PtrTo(pb.TaskStatus(i + 1)), //nolint:gosec
			AssignedUserId: nil,
			Subtasks:       sts,
		})
		require.NoError(t, err)
		taskIds = append(taskIds, taskRes.Id)
		taskConsistencies[taskRes.Id] = taskRes.Consistency
		subtaskMap[taskRes.Id] = sts
	}

	hwtesting.WaitForProjectionsToSettle()

	res, err := taskClient.GetTasksByPatient(ctx, &pb.GetTasksByPatientRequest{PatientId: patientId})
	require.NoError(t, err)

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
	require.NoError(t, err)

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
			Name:        t.Name() + " task " + taskSuffix,
			Description: nil,
			PatientId:   patientId,
			Public:      hwutil.PtrTo(true),
			DueAt:       nil,
			// behold: peak enginering:
			InitialStatus:  hwutil.PtrTo(pb.TaskStatus(i + 1)), //nolint:gosec
			AssignedUserId: hwutil.PtrTo(userID.String()),
			Subtasks:       sts,
		})
		require.NoError(t, err)
		taskIds = append(taskIds, taskRes.Id)
		taskConsistencies[taskRes.Id] = taskRes.Consistency
		subtaskMap[taskRes.Id] = sts
	}

	hwtesting.WaitForProjectionsToSettle()

	// client for userid
	customTaskClient := pb.NewTaskServiceClient(hwtesting.GetGrpcConn(userID.String()))

	res, err := customTaskClient.GetAssignedTasks(ctx, &pb.GetAssignedTasksRequest{})
	require.NoError(t, err)

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
