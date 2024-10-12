package api_test

import (
	"common"
	common_test "common/test"
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	hwes_test "hwes/test"
	"hwutil"
	"tasks-svc/internal/task/api"
	"tasks-svc/internal/task/handlers"
	"testing"
)

func server() (context.Context, pb.TaskServiceClient, func()) {
	aggregateStore := hwes_test.NewAggregateStore()
	taskHandlers := handlers.NewTaskHandlers(aggregateStore)
	taskGrpcService := api.NewTaskGrpcService(aggregateStore, taskHandlers)

	ctx := common.Setup("tasks-svc", "test", common.WithFakeAuthOnly())

	// Start Server
	grpcServer := grpc.NewServer(common.DefaultServerOptions()...)
	pb.RegisterTaskServiceServer(grpcServer, taskGrpcService)
	conn, closer := common_test.StartGRPCServer(ctx, grpcServer)

	client := pb.NewTaskServiceClient(conn)
	return ctx, client, closer
}

func setup() (ctx context.Context, client pb.TaskServiceClient, teardown func()) {
	ctx, client, teardown = server()
	ctx = common_test.AuthenticatedUserContext(ctx, uuid.NewString())

	return ctx, client, teardown
}

func TestTaskGrpcService_CreateTask_Validation(t *testing.T) {
	ctx, client, teardown := setup()
	defer teardown()

	taskName := "Test task"

	// patientID empty -> Error
	_, err := client.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:      taskName,
		PatientId: "",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts emtpy patientID")

	// patientID invalid -> error
	_, err = client.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:      taskName,
		PatientId: "gockel",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid patientID")

	// assignedUserId pseudo empty
	_, err = client.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:           taskName,
		PatientId:      uuid.NewString(),
		AssignedUserId: hwutil.PtrTo(""),
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty assignedUserId")

	// assignedUserId invalid.
	_, err = client.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:           taskName,
		PatientId:      uuid.NewString(),
		AssignedUserId: hwutil.PtrTo("asdfasdfasdfasdfas"),
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid assignedUserId")

	// name pseudo empty
	_, err = client.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:      "",
		PatientId: uuid.NewString(),
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty name")

	// subtask empty
	_, err = client.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:      taskName,
		PatientId: uuid.NewString(),
		Subtasks: []*pb.CreateTaskRequest_SubTask{
			{},
		},
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty subtask")

	// subtask pseudo empty
	_, err = client.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:      taskName,
		PatientId: uuid.NewString(),
		Subtasks: []*pb.CreateTaskRequest_SubTask{
			{},
		},
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts subtask with empty name")

	// all good -> no error
	_, err = client.CreateTask(ctx, &pb.CreateTaskRequest{
		Name:           taskName,
		PatientId:      uuid.NewString(),
		AssignedUserId: hwutil.PtrTo(uuid.NewString()),
		Subtasks: []*pb.CreateTaskRequest_SubTask{
			{
				Name: "testsubtask",
			},
		},
	})
	assert.NoError(t, err, codes.InvalidArgument, "rejects fully valid request")

}

func TestTaskGrpcService_UpdateTask_Validation(t *testing.T) {
	ctx, client, teardown := setup()
	defer teardown()

	// ID missing
	_, err := client.UpdateTask(ctx, &pb.UpdateTaskRequest{
		Id: "",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts missing id")

	// ID no uuid
	_, err = client.UpdateTask(ctx, &pb.UpdateTaskRequest{
		Id: "asdfas",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid id")

	// ID Valid no error
	_, err = client.UpdateTask(ctx, &pb.UpdateTaskRequest{
		Id: uuid.NewString(),
	})
	assert.NoError(t, err, codes.InvalidArgument, "rejects valid id")
}

func TestTaskGrpcService_AssignTask_Validation(t *testing.T) {
	ctx, client, teardown := setup()
	defer teardown()

	// IDs empty
	_, err := client.AssignTask(ctx, &pb.AssignTaskRequest{
		TaskId: "",
		UserId: "",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty ids")

	// ID no uuid
	_, err = client.AssignTask(ctx, &pb.AssignTaskRequest{
		TaskId: "asdfas",
		UserId: "sdfsdfsdf",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid ids")

	// ID Valid no error
	_, err = client.AssignTask(ctx, &pb.AssignTaskRequest{
		TaskId: uuid.NewString(),
		UserId: uuid.NewString(),
	})
	assert.NoError(t, err, codes.InvalidArgument, "rejects valid id")
}

func TestTaskGrpcService_UnassignTask_Validation(t *testing.T) {
	ctx, client, teardown := setup()
	defer teardown()

	// IDs empty
	_, err := client.UnassignTask(ctx, &pb.UnassignTaskRequest{
		TaskId: "",
		UserId: "",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty ids")

	// ID no uuid
	_, err = client.UnassignTask(ctx, &pb.UnassignTaskRequest{
		TaskId: "asdfas",
		UserId: "sdfsdfsdf",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid ids")

	// ID Valid no error
	_, err = client.UnassignTask(ctx, &pb.UnassignTaskRequest{
		TaskId: uuid.NewString(),
		UserId: uuid.NewString(),
	})
	assert.NoError(t, err, codes.InvalidArgument, "rejects valid id")
}

func TestTaskGrpcService_CreateSubtask_Validation(t *testing.T) {
	ctx, client, teardown := setup()
	defer teardown()

	// taskid empty
	_, err := client.CreateSubtask(ctx, &pb.CreateSubtaskRequest{
		TaskId: "",
		Subtask: &pb.CreateSubtaskRequest_Subtask{
			Name: "hallo",
		},
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty ids")

	// taskid invalid
	_, err = client.CreateSubtask(ctx, &pb.CreateSubtaskRequest{
		TaskId: "invalid",
		Subtask: &pb.CreateSubtaskRequest_Subtask{
			Name: "hallo",
		},
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid ids")

	// empty subtask
	_, err = client.CreateSubtask(ctx, &pb.CreateSubtaskRequest{
		TaskId:  uuid.NewString(),
		Subtask: &pb.CreateSubtaskRequest_Subtask{},
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty subtask")

	// pseudo-empty subtask
	_, err = client.CreateSubtask(ctx, &pb.CreateSubtaskRequest{
		TaskId: uuid.NewString(),
		Subtask: &pb.CreateSubtaskRequest_Subtask{
			Name: "",
		},
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts pseudo empty subtask")

	// pseudo-empty subtask
	_, err = client.CreateSubtask(ctx, &pb.CreateSubtaskRequest{
		TaskId: uuid.NewString(),
		Subtask: &pb.CreateSubtaskRequest_Subtask{
			Name: "subtask",
		},
	})
	assert.NoError(t, err, codes.InvalidArgument, "rejects fully valid request")
}

func TestTaskGrpcService_UpdateSubtask_Validation(t *testing.T) {
	ctx, client, teardown := setup()
	defer teardown()

	// ids empty
	_, err := client.UpdateSubtask(ctx, &pb.UpdateSubtaskRequest{
		TaskId:    "",
		SubtaskId: "",
		Subtask: &pb.UpdateSubtaskRequest_Subtask{
			Name: hwutil.PtrTo("hallo"),
		},
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty ids")

	// ids invalid
	_, err = client.UpdateSubtask(ctx, &pb.UpdateSubtaskRequest{
		TaskId:    "hallo",
		SubtaskId: "test",
		Subtask: &pb.UpdateSubtaskRequest_Subtask{
			Name: hwutil.PtrTo("hallo"),
		},
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid ids")

	// no subtask
	_, err = client.UpdateSubtask(ctx, &pb.UpdateSubtaskRequest{
		TaskId:    uuid.NewString(),
		SubtaskId: uuid.NewString(),
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty subtask")
}

func TestTaskGrpcService_DeleteSubtask_Validation(t *testing.T) {
	ctx, client, teardown := setup()
	defer teardown()

	// ids empty
	_, err := client.DeleteSubtask(ctx, &pb.DeleteSubtaskRequest{
		TaskId:    "",
		SubtaskId: "",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty ids")

	// ids invalid
	_, err = client.DeleteSubtask(ctx, &pb.DeleteSubtaskRequest{
		TaskId:    "hallo",
		SubtaskId: "test",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid ids")

	// empty subtask
	_, err = client.DeleteSubtask(ctx, &pb.DeleteSubtaskRequest{
		TaskId:    uuid.NewString(),
		SubtaskId: uuid.NewString(),
	})
	assert.NoError(t, err, "rejects fully valid request")
}

func TestTaskGrpcService_RemoveTaskDueDate_Validation(t *testing.T) {
	ctx, client, teardown := setup()
	defer teardown()

	// id empty
	_, err := client.RemoveTaskDueDate(ctx, &pb.RemoveTaskDueDateRequest{
		TaskId: "",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty id")

	// id invalid
	_, err = client.RemoveTaskDueDate(ctx, &pb.RemoveTaskDueDateRequest{
		TaskId: "hallo",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid ids")

	// id valid
	_, err = client.RemoveTaskDueDate(ctx, &pb.RemoveTaskDueDateRequest{
		TaskId: uuid.NewString(),
	})
	assert.NoError(t, err, "rejects fully valid request")
}

func TestTaskGrpcService_DeleteTask_Validation(t *testing.T) {
	ctx, client, teardown := setup()
	defer teardown()

	// id empty
	_, err := client.DeleteTask(ctx, &pb.DeleteTaskRequest{
		Id: "",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty id")

	// id invalid
	_, err = client.DeleteTask(ctx, &pb.DeleteTaskRequest{
		Id: "hallo",
	})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid ids")

	// id valid
	_, err = client.DeleteTask(ctx, &pb.DeleteTaskRequest{
		Id: uuid.NewString(),
	})
	assert.NoError(t, err, "rejects fully valid request")
}
