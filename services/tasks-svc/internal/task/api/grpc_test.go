package api_test

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/test/bufconn"
	hwes_test "hwes/test"
	"hwutil"
	"log"
	"net"
	"tasks-svc/internal/task/api"
	"tasks-svc/internal/task/service"
	"testing"
)

func server(ctx context.Context) (pb.TaskServiceClient, func()) {
	buffer := 1024 * 1024
	listener := bufconn.Listen(buffer)

	aggregateStore := hwes_test.NewAggregateStore()
	taskService := service.NewTaskService(aggregateStore)
	taskGrpcService := api.NewTaskGrpcService(taskService)

	grpcServer := grpc.NewServer()

	pb.RegisterTaskServiceServer(grpcServer, taskGrpcService)
	go func() {
		if err := grpcServer.Serve(listener); err != nil {
			log.Fatal(err)
		}
	}()

	conn, err := grpc.DialContext(ctx, "",
		grpc.WithContextDialer(func(ctx context.Context, s string) (net.Conn, error) {
			return listener.Dial()
		}),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		log.Fatal(err)
	}

	closer := func() {
		err := listener.Close()
		if err != nil {
			log.Fatal(err)
		}
		grpcServer.Stop()
	}

	client := pb.NewTaskServiceClient(conn)

	return client, closer
}

func TestTaskGrpcService_CreateTask(t *testing.T) {
	ctx := context.Background()
	client, closer := server(ctx)
	defer closer()

	patientID := uuid.New()
	taskName := "Test task"

	createTaskResponse, err := client.CreateTask(ctx, &pb.CreateTaskRequest{Name: taskName, PatientId: patientID.String(), Public: hwutil.PtrTo(true)})
	if err != nil {
		t.Error(err)
	}

	if _, err := uuid.Parse(createTaskResponse.GetId()); err != nil {
		t.Error(err)
	}

	getTaskResponse, err := client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if getTaskResponse.GetName() != taskName {
		t.Errorf("Task name: expected '%s' got '%s'", taskName, getTaskResponse.GetName())
	}
}

func TestTaskGrpcService_UpdateTask(t *testing.T) {
	ctx := context.Background()
	client, closer := server(ctx)
	defer closer()

	patientID := uuid.New()
	taskName1 := "Test task"
	taskDescription1 := ""

	createTaskResponse, err := client.CreateTask(ctx, &pb.CreateTaskRequest{Name: taskName1, PatientId: patientID.String()})
	if err != nil {
		t.Error(err)
	}

	if _, err := uuid.Parse(createTaskResponse.GetId()); err != nil {
		t.Error(err)
	}

	getTaskResponse, err := client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if getTaskResponse.GetName() != taskName1 {
		t.Errorf("Task name: expected '%s' got '%s'", taskName1, getTaskResponse.GetName())
	}

	if getTaskResponse.GetDescription() != taskDescription1 {
		t.Errorf("Task description: expected '%s' got '%s'", taskDescription1, getTaskResponse.GetDescription())
	}

	taskName2 := "Test task update"
	taskDescription2 := "..."

	_, err = client.UpdateTask(ctx, &pb.UpdateTaskRequest{
		Id:          createTaskResponse.GetId(),
		Name:        &taskName2,
		Description: &taskDescription2,
	})
	if err != nil {
		t.Error(err)
	}

	getTaskResponse, err = client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if getTaskResponse.GetName() != taskName2 {
		t.Errorf("Task name: expected '%s' got '%s'", taskName2, getTaskResponse.GetName())
	}

	if getTaskResponse.GetDescription() != taskDescription2 {
		t.Errorf("Task description: expected '%s' got '%s'", taskDescription2, getTaskResponse.GetDescription())
	}
}

func TestTaskGrpcService_AssignTask(t *testing.T) {
	ctx := context.Background()
	client, closer := server(ctx)
	defer closer()

	patientID := uuid.New()
	userID := uuid.New()

	createTaskResponse, err := client.CreateTask(ctx, &pb.CreateTaskRequest{Name: "Test task", PatientId: patientID.String()})
	if err != nil {
		t.Error(err)
	}

	_, err = client.AssignTask(ctx, &pb.AssignTaskRequest{TaskId: "123", UserId: userID.String()})
	if err == nil {
		t.Error("Invalid TaskID should be checked")
	}

	_, err = client.AssignTask(ctx, &pb.AssignTaskRequest{TaskId: createTaskResponse.GetId(), UserId: "123"})
	if err == nil {
		t.Error("Invalid UserID should be checked")
	}

	_, err = client.AssignTask(ctx, &pb.AssignTaskRequest{TaskId: createTaskResponse.GetId(), UserId: userID.String()})
	if err != nil {
		t.Error(err)
	}

	getTaskResponse, err := client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if len(getTaskResponse.AssignedUsers) != 1 {
		t.Errorf("Invalid length of assigned users. Expected 1 got %d", len(getTaskResponse.AssignedUsers))
	}

	if getTaskResponse.AssignedUsers[0] != userID.String() {
		t.Errorf("Invalid user was assigned. Expected '%s' got '%s'.", userID, getTaskResponse.AssignedUsers[0])
	}
}

func TestTaskGrpcService_Subtask(t *testing.T) {
	ctx := context.Background()
	client, closer := server(ctx)
	defer closer()

	patientID := uuid.New()

	createTaskResponse, err := client.CreateTask(ctx, &pb.CreateTaskRequest{Name: "Test task", PatientId: patientID.String()})
	if err != nil {
		t.Error(err)
	}

	getTaskResponse, err := client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if len(getTaskResponse.Subtasks) != 0 {
		t.Error("subtasks should be 0")
	}

	subtaskName := "Test subtask"

	createSubtaskResponse, err := client.CreateSubtask(ctx, &pb.CreateSubtaskRequest{
		TaskId: createTaskResponse.GetId(),
		Subtask: &pb.CreateSubtaskRequest_Subtask{
			Name: subtaskName,
		},
	})
	if err != nil {
		t.Error(err)
	}

	getTaskResponse, err = client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if len(getTaskResponse.Subtasks) != 1 {
		t.Error("subtasks should be 1")
	}

	subtasks := hwutil.Filter(getTaskResponse.Subtasks, func(value *pb.GetTaskResponse_Subtask) bool {
		return value.Id == createSubtaskResponse.GetSubtaskId()
	})
	subtask := subtasks[0]

	if subtask.Name != subtaskName {
		t.Errorf("Invalid subtask name. Expected '%s' got '%s'", subtaskName, subtask.Name)
	}

	_, err = client.UpdateSubtask(ctx, &pb.UpdateSubtaskRequest{
		TaskId:    createTaskResponse.GetId(),
		SubtaskId: createSubtaskResponse.GetSubtaskId(),
		Subtask:   &pb.UpdateSubtaskRequest_Subtask{},
	})
	if err != nil {
		t.Error(err)
	}

	getTaskResponse, err = client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	subtasks = hwutil.Filter(getTaskResponse.Subtasks, func(value *pb.GetTaskResponse_Subtask) bool {
		return value.Id == createSubtaskResponse.GetSubtaskId()
	})
	subtask = subtasks[0]

	if subtask.Name != subtaskName {
		t.Errorf("Invalid subtask name. Expected '%s' got '%s'", subtaskName, subtask.Name)
	}

	// Update subtask with new name

	newSubtaskName := "Test subtask updated"

	_, err = client.UpdateSubtask(ctx, &pb.UpdateSubtaskRequest{
		TaskId:    createTaskResponse.GetId(),
		SubtaskId: createSubtaskResponse.GetSubtaskId(),
		Subtask: &pb.UpdateSubtaskRequest_Subtask{
			Name: &newSubtaskName,
		},
	})
	if err != nil {
		t.Error(err)
	}

	getTaskResponse, err = client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	subtasks = hwutil.Filter(getTaskResponse.Subtasks, func(value *pb.GetTaskResponse_Subtask) bool {
		return value.Id == createSubtaskResponse.GetSubtaskId()
	})
	subtask = subtasks[0]

	if subtask.Name != newSubtaskName {
		t.Errorf("Invalid subtask name. Expected '%s' got '%s'", newSubtaskName, subtask.Name)
	}

	_, err = client.CompleteSubtask(ctx, &pb.CompleteSubtaskRequest{
		TaskId:    createTaskResponse.GetId(),
		SubtaskId: createSubtaskResponse.GetSubtaskId(),
	})
	if err != nil {
		t.Error(err)
	}

	getTaskResponse, err = client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	subtasks = hwutil.Filter(getTaskResponse.Subtasks, func(value *pb.GetTaskResponse_Subtask) bool {
		return value.Id == createSubtaskResponse.GetSubtaskId()
	})
	subtask = subtasks[0]

	if !subtask.Done {
		t.Error("Subtask should be completed")
	}

	_, err = client.UncompleteSubtask(ctx, &pb.UncompleteSubtaskRequest{
		TaskId:    createTaskResponse.GetId(),
		SubtaskId: createSubtaskResponse.GetSubtaskId(),
	})
	if err != nil {
		t.Error(err)
	}

	getTaskResponse, err = client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	subtasks = hwutil.Filter(getTaskResponse.Subtasks, func(value *pb.GetTaskResponse_Subtask) bool {
		return value.Id == createSubtaskResponse.GetSubtaskId()
	})
	subtask = subtasks[0]

	if subtask.Done {
		t.Error("Subtask should be uncompleted")
	}

	_, err = client.DeleteSubtask(ctx, &pb.DeleteSubtaskRequest{
		TaskId:    createTaskResponse.GetId(),
		SubtaskId: createSubtaskResponse.GetSubtaskId(),
	})
	if err != nil {
		t.Error(err)
	}

	getTaskResponse, err = client.GetTask(ctx, &pb.GetTaskRequest{Id: createTaskResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if len(getTaskResponse.Subtasks) != 0 {
		t.Error("subtasks should be 0")
	}
}
