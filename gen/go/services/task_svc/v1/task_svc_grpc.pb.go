// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.4.0
// - protoc             (unknown)
// source: services/task_svc/v1/task_svc.proto

package task_svc

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.62.0 or later.
const _ = grpc.SupportPackageIsVersion8

const (
	TaskService_CreateTask_FullMethodName                      = "/services.task_svc.v1.TaskService/CreateTask"
	TaskService_GetTask_FullMethodName                         = "/services.task_svc.v1.TaskService/GetTask"
	TaskService_GetTasksByPatient_FullMethodName               = "/services.task_svc.v1.TaskService/GetTasksByPatient"
	TaskService_GetTasksByPatientSortedByStatus_FullMethodName = "/services.task_svc.v1.TaskService/GetTasksByPatientSortedByStatus"
	TaskService_GetAssignedTasks_FullMethodName                = "/services.task_svc.v1.TaskService/GetAssignedTasks"
	TaskService_UpdateTask_FullMethodName                      = "/services.task_svc.v1.TaskService/UpdateTask"
	TaskService_AddSubTask_FullMethodName                      = "/services.task_svc.v1.TaskService/AddSubTask"
	TaskService_RemoveSubTask_FullMethodName                   = "/services.task_svc.v1.TaskService/RemoveSubTask"
	TaskService_UpdateSubTask_FullMethodName                   = "/services.task_svc.v1.TaskService/UpdateSubTask"
	TaskService_SubTaskToToDo_FullMethodName                   = "/services.task_svc.v1.TaskService/SubTaskToToDo"
	TaskService_SubTaskToDone_FullMethodName                   = "/services.task_svc.v1.TaskService/SubTaskToDone"
	TaskService_TaskToToDo_FullMethodName                      = "/services.task_svc.v1.TaskService/TaskToToDo"
	TaskService_TaskToInProgress_FullMethodName                = "/services.task_svc.v1.TaskService/TaskToInProgress"
	TaskService_TaskToDone_FullMethodName                      = "/services.task_svc.v1.TaskService/TaskToDone"
	TaskService_AssignTaskToUser_FullMethodName                = "/services.task_svc.v1.TaskService/AssignTaskToUser"
	TaskService_UnassignTaskFromUser_FullMethodName            = "/services.task_svc.v1.TaskService/UnassignTaskFromUser"
	TaskService_PublishTask_FullMethodName                     = "/services.task_svc.v1.TaskService/PublishTask"
	TaskService_UnpublishTask_FullMethodName                   = "/services.task_svc.v1.TaskService/UnpublishTask"
	TaskService_DeleteTask_FullMethodName                      = "/services.task_svc.v1.TaskService/DeleteTask"
)

// TaskServiceClient is the client API for TaskService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type TaskServiceClient interface {
	CreateTask(ctx context.Context, in *CreateTaskRequest, opts ...grpc.CallOption) (*CreateTaskResponse, error)
	GetTask(ctx context.Context, in *GetTaskRequest, opts ...grpc.CallOption) (*GetTaskResponse, error)
	GetTasksByPatient(ctx context.Context, in *GetTasksByPatientRequest, opts ...grpc.CallOption) (*GetTasksByPatientResponse, error)
	GetTasksByPatientSortedByStatus(ctx context.Context, in *GetTasksByPatientSortedByStatusRequest, opts ...grpc.CallOption) (*GetTasksByPatientSortedByStatusResponse, error)
	GetAssignedTasks(ctx context.Context, in *GetAssignedTasksRequest, opts ...grpc.CallOption) (*GetAssignedTasksResponse, error)
	UpdateTask(ctx context.Context, in *UpdateTaskRequest, opts ...grpc.CallOption) (*UpdateTaskResponse, error)
	AddSubTask(ctx context.Context, in *AddSubTaskRequest, opts ...grpc.CallOption) (*AddSubTaskResponse, error)
	RemoveSubTask(ctx context.Context, in *RemoveSubTaskRequest, opts ...grpc.CallOption) (*RemoveSubTaskResponse, error)
	UpdateSubTask(ctx context.Context, in *UpdateSubTaskRequest, opts ...grpc.CallOption) (*UpdateSubTaskResponse, error)
	SubTaskToToDo(ctx context.Context, in *SubTaskToToDoRequest, opts ...grpc.CallOption) (*SubTaskToToDoResponse, error)
	SubTaskToDone(ctx context.Context, in *SubTaskToDoneRequest, opts ...grpc.CallOption) (*SubTaskToDoneResponse, error)
	TaskToToDo(ctx context.Context, in *TaskToToDoRequest, opts ...grpc.CallOption) (*TaskToToDoResponse, error)
	TaskToInProgress(ctx context.Context, in *TaskToInProgressRequest, opts ...grpc.CallOption) (*TaskToInProgressResponse, error)
	TaskToDone(ctx context.Context, in *TaskToDoneRequest, opts ...grpc.CallOption) (*TaskToDoneResponse, error)
	AssignTaskToUser(ctx context.Context, in *AssignTaskToUserRequest, opts ...grpc.CallOption) (*AssignTaskToUserResponse, error)
	UnassignTaskFromUser(ctx context.Context, in *UnassignTaskFromUserRequest, opts ...grpc.CallOption) (*UnassignTaskFromUserResponse, error)
	PublishTask(ctx context.Context, in *PublishTaskRequest, opts ...grpc.CallOption) (*PublishTaskResponse, error)
	UnpublishTask(ctx context.Context, in *UnpublishTaskRequest, opts ...grpc.CallOption) (*UnpublishTaskResponse, error)
	DeleteTask(ctx context.Context, in *DeleteTaskRequest, opts ...grpc.CallOption) (*DeleteTaskResponse, error)
}

type taskServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewTaskServiceClient(cc grpc.ClientConnInterface) TaskServiceClient {
	return &taskServiceClient{cc}
}

func (c *taskServiceClient) CreateTask(ctx context.Context, in *CreateTaskRequest, opts ...grpc.CallOption) (*CreateTaskResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(CreateTaskResponse)
	err := c.cc.Invoke(ctx, TaskService_CreateTask_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) GetTask(ctx context.Context, in *GetTaskRequest, opts ...grpc.CallOption) (*GetTaskResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetTaskResponse)
	err := c.cc.Invoke(ctx, TaskService_GetTask_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) GetTasksByPatient(ctx context.Context, in *GetTasksByPatientRequest, opts ...grpc.CallOption) (*GetTasksByPatientResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetTasksByPatientResponse)
	err := c.cc.Invoke(ctx, TaskService_GetTasksByPatient_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) GetTasksByPatientSortedByStatus(ctx context.Context, in *GetTasksByPatientSortedByStatusRequest, opts ...grpc.CallOption) (*GetTasksByPatientSortedByStatusResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetTasksByPatientSortedByStatusResponse)
	err := c.cc.Invoke(ctx, TaskService_GetTasksByPatientSortedByStatus_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) GetAssignedTasks(ctx context.Context, in *GetAssignedTasksRequest, opts ...grpc.CallOption) (*GetAssignedTasksResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetAssignedTasksResponse)
	err := c.cc.Invoke(ctx, TaskService_GetAssignedTasks_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) UpdateTask(ctx context.Context, in *UpdateTaskRequest, opts ...grpc.CallOption) (*UpdateTaskResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(UpdateTaskResponse)
	err := c.cc.Invoke(ctx, TaskService_UpdateTask_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) AddSubTask(ctx context.Context, in *AddSubTaskRequest, opts ...grpc.CallOption) (*AddSubTaskResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(AddSubTaskResponse)
	err := c.cc.Invoke(ctx, TaskService_AddSubTask_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) RemoveSubTask(ctx context.Context, in *RemoveSubTaskRequest, opts ...grpc.CallOption) (*RemoveSubTaskResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(RemoveSubTaskResponse)
	err := c.cc.Invoke(ctx, TaskService_RemoveSubTask_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) UpdateSubTask(ctx context.Context, in *UpdateSubTaskRequest, opts ...grpc.CallOption) (*UpdateSubTaskResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(UpdateSubTaskResponse)
	err := c.cc.Invoke(ctx, TaskService_UpdateSubTask_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) SubTaskToToDo(ctx context.Context, in *SubTaskToToDoRequest, opts ...grpc.CallOption) (*SubTaskToToDoResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(SubTaskToToDoResponse)
	err := c.cc.Invoke(ctx, TaskService_SubTaskToToDo_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) SubTaskToDone(ctx context.Context, in *SubTaskToDoneRequest, opts ...grpc.CallOption) (*SubTaskToDoneResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(SubTaskToDoneResponse)
	err := c.cc.Invoke(ctx, TaskService_SubTaskToDone_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) TaskToToDo(ctx context.Context, in *TaskToToDoRequest, opts ...grpc.CallOption) (*TaskToToDoResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(TaskToToDoResponse)
	err := c.cc.Invoke(ctx, TaskService_TaskToToDo_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) TaskToInProgress(ctx context.Context, in *TaskToInProgressRequest, opts ...grpc.CallOption) (*TaskToInProgressResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(TaskToInProgressResponse)
	err := c.cc.Invoke(ctx, TaskService_TaskToInProgress_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) TaskToDone(ctx context.Context, in *TaskToDoneRequest, opts ...grpc.CallOption) (*TaskToDoneResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(TaskToDoneResponse)
	err := c.cc.Invoke(ctx, TaskService_TaskToDone_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) AssignTaskToUser(ctx context.Context, in *AssignTaskToUserRequest, opts ...grpc.CallOption) (*AssignTaskToUserResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(AssignTaskToUserResponse)
	err := c.cc.Invoke(ctx, TaskService_AssignTaskToUser_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) UnassignTaskFromUser(ctx context.Context, in *UnassignTaskFromUserRequest, opts ...grpc.CallOption) (*UnassignTaskFromUserResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(UnassignTaskFromUserResponse)
	err := c.cc.Invoke(ctx, TaskService_UnassignTaskFromUser_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) PublishTask(ctx context.Context, in *PublishTaskRequest, opts ...grpc.CallOption) (*PublishTaskResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(PublishTaskResponse)
	err := c.cc.Invoke(ctx, TaskService_PublishTask_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) UnpublishTask(ctx context.Context, in *UnpublishTaskRequest, opts ...grpc.CallOption) (*UnpublishTaskResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(UnpublishTaskResponse)
	err := c.cc.Invoke(ctx, TaskService_UnpublishTask_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *taskServiceClient) DeleteTask(ctx context.Context, in *DeleteTaskRequest, opts ...grpc.CallOption) (*DeleteTaskResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(DeleteTaskResponse)
	err := c.cc.Invoke(ctx, TaskService_DeleteTask_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// TaskServiceServer is the server API for TaskService service.
// All implementations must embed UnimplementedTaskServiceServer
// for forward compatibility
type TaskServiceServer interface {
	CreateTask(context.Context, *CreateTaskRequest) (*CreateTaskResponse, error)
	GetTask(context.Context, *GetTaskRequest) (*GetTaskResponse, error)
	GetTasksByPatient(context.Context, *GetTasksByPatientRequest) (*GetTasksByPatientResponse, error)
	GetTasksByPatientSortedByStatus(context.Context, *GetTasksByPatientSortedByStatusRequest) (*GetTasksByPatientSortedByStatusResponse, error)
	GetAssignedTasks(context.Context, *GetAssignedTasksRequest) (*GetAssignedTasksResponse, error)
	UpdateTask(context.Context, *UpdateTaskRequest) (*UpdateTaskResponse, error)
	AddSubTask(context.Context, *AddSubTaskRequest) (*AddSubTaskResponse, error)
	RemoveSubTask(context.Context, *RemoveSubTaskRequest) (*RemoveSubTaskResponse, error)
	UpdateSubTask(context.Context, *UpdateSubTaskRequest) (*UpdateSubTaskResponse, error)
	SubTaskToToDo(context.Context, *SubTaskToToDoRequest) (*SubTaskToToDoResponse, error)
	SubTaskToDone(context.Context, *SubTaskToDoneRequest) (*SubTaskToDoneResponse, error)
	TaskToToDo(context.Context, *TaskToToDoRequest) (*TaskToToDoResponse, error)
	TaskToInProgress(context.Context, *TaskToInProgressRequest) (*TaskToInProgressResponse, error)
	TaskToDone(context.Context, *TaskToDoneRequest) (*TaskToDoneResponse, error)
	AssignTaskToUser(context.Context, *AssignTaskToUserRequest) (*AssignTaskToUserResponse, error)
	UnassignTaskFromUser(context.Context, *UnassignTaskFromUserRequest) (*UnassignTaskFromUserResponse, error)
	PublishTask(context.Context, *PublishTaskRequest) (*PublishTaskResponse, error)
	UnpublishTask(context.Context, *UnpublishTaskRequest) (*UnpublishTaskResponse, error)
	DeleteTask(context.Context, *DeleteTaskRequest) (*DeleteTaskResponse, error)
	mustEmbedUnimplementedTaskServiceServer()
}

// UnimplementedTaskServiceServer must be embedded to have forward compatible implementations.
type UnimplementedTaskServiceServer struct {
}

func (UnimplementedTaskServiceServer) CreateTask(context.Context, *CreateTaskRequest) (*CreateTaskResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateTask not implemented")
}
func (UnimplementedTaskServiceServer) GetTask(context.Context, *GetTaskRequest) (*GetTaskResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetTask not implemented")
}
func (UnimplementedTaskServiceServer) GetTasksByPatient(context.Context, *GetTasksByPatientRequest) (*GetTasksByPatientResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetTasksByPatient not implemented")
}
func (UnimplementedTaskServiceServer) GetTasksByPatientSortedByStatus(context.Context, *GetTasksByPatientSortedByStatusRequest) (*GetTasksByPatientSortedByStatusResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetTasksByPatientSortedByStatus not implemented")
}
func (UnimplementedTaskServiceServer) GetAssignedTasks(context.Context, *GetAssignedTasksRequest) (*GetAssignedTasksResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetAssignedTasks not implemented")
}
func (UnimplementedTaskServiceServer) UpdateTask(context.Context, *UpdateTaskRequest) (*UpdateTaskResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateTask not implemented")
}
func (UnimplementedTaskServiceServer) AddSubTask(context.Context, *AddSubTaskRequest) (*AddSubTaskResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AddSubTask not implemented")
}
func (UnimplementedTaskServiceServer) RemoveSubTask(context.Context, *RemoveSubTaskRequest) (*RemoveSubTaskResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RemoveSubTask not implemented")
}
func (UnimplementedTaskServiceServer) UpdateSubTask(context.Context, *UpdateSubTaskRequest) (*UpdateSubTaskResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateSubTask not implemented")
}
func (UnimplementedTaskServiceServer) SubTaskToToDo(context.Context, *SubTaskToToDoRequest) (*SubTaskToToDoResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SubTaskToToDo not implemented")
}
func (UnimplementedTaskServiceServer) SubTaskToDone(context.Context, *SubTaskToDoneRequest) (*SubTaskToDoneResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SubTaskToDone not implemented")
}
func (UnimplementedTaskServiceServer) TaskToToDo(context.Context, *TaskToToDoRequest) (*TaskToToDoResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method TaskToToDo not implemented")
}
func (UnimplementedTaskServiceServer) TaskToInProgress(context.Context, *TaskToInProgressRequest) (*TaskToInProgressResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method TaskToInProgress not implemented")
}
func (UnimplementedTaskServiceServer) TaskToDone(context.Context, *TaskToDoneRequest) (*TaskToDoneResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method TaskToDone not implemented")
}
func (UnimplementedTaskServiceServer) AssignTaskToUser(context.Context, *AssignTaskToUserRequest) (*AssignTaskToUserResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AssignTaskToUser not implemented")
}
func (UnimplementedTaskServiceServer) UnassignTaskFromUser(context.Context, *UnassignTaskFromUserRequest) (*UnassignTaskFromUserResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UnassignTaskFromUser not implemented")
}
func (UnimplementedTaskServiceServer) PublishTask(context.Context, *PublishTaskRequest) (*PublishTaskResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method PublishTask not implemented")
}
func (UnimplementedTaskServiceServer) UnpublishTask(context.Context, *UnpublishTaskRequest) (*UnpublishTaskResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UnpublishTask not implemented")
}
func (UnimplementedTaskServiceServer) DeleteTask(context.Context, *DeleteTaskRequest) (*DeleteTaskResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeleteTask not implemented")
}
func (UnimplementedTaskServiceServer) mustEmbedUnimplementedTaskServiceServer() {}

// UnsafeTaskServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to TaskServiceServer will
// result in compilation errors.
type UnsafeTaskServiceServer interface {
	mustEmbedUnimplementedTaskServiceServer()
}

func RegisterTaskServiceServer(s grpc.ServiceRegistrar, srv TaskServiceServer) {
	s.RegisterService(&TaskService_ServiceDesc, srv)
}

func _TaskService_CreateTask_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateTaskRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).CreateTask(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_CreateTask_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).CreateTask(ctx, req.(*CreateTaskRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_GetTask_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetTaskRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).GetTask(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_GetTask_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).GetTask(ctx, req.(*GetTaskRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_GetTasksByPatient_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetTasksByPatientRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).GetTasksByPatient(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_GetTasksByPatient_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).GetTasksByPatient(ctx, req.(*GetTasksByPatientRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_GetTasksByPatientSortedByStatus_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetTasksByPatientSortedByStatusRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).GetTasksByPatientSortedByStatus(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_GetTasksByPatientSortedByStatus_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).GetTasksByPatientSortedByStatus(ctx, req.(*GetTasksByPatientSortedByStatusRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_GetAssignedTasks_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetAssignedTasksRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).GetAssignedTasks(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_GetAssignedTasks_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).GetAssignedTasks(ctx, req.(*GetAssignedTasksRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_UpdateTask_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateTaskRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).UpdateTask(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_UpdateTask_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).UpdateTask(ctx, req.(*UpdateTaskRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_AddSubTask_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AddSubTaskRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).AddSubTask(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_AddSubTask_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).AddSubTask(ctx, req.(*AddSubTaskRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_RemoveSubTask_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RemoveSubTaskRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).RemoveSubTask(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_RemoveSubTask_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).RemoveSubTask(ctx, req.(*RemoveSubTaskRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_UpdateSubTask_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateSubTaskRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).UpdateSubTask(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_UpdateSubTask_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).UpdateSubTask(ctx, req.(*UpdateSubTaskRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_SubTaskToToDo_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SubTaskToToDoRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).SubTaskToToDo(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_SubTaskToToDo_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).SubTaskToToDo(ctx, req.(*SubTaskToToDoRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_SubTaskToDone_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SubTaskToDoneRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).SubTaskToDone(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_SubTaskToDone_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).SubTaskToDone(ctx, req.(*SubTaskToDoneRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_TaskToToDo_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(TaskToToDoRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).TaskToToDo(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_TaskToToDo_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).TaskToToDo(ctx, req.(*TaskToToDoRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_TaskToInProgress_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(TaskToInProgressRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).TaskToInProgress(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_TaskToInProgress_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).TaskToInProgress(ctx, req.(*TaskToInProgressRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_TaskToDone_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(TaskToDoneRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).TaskToDone(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_TaskToDone_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).TaskToDone(ctx, req.(*TaskToDoneRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_AssignTaskToUser_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(AssignTaskToUserRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).AssignTaskToUser(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_AssignTaskToUser_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).AssignTaskToUser(ctx, req.(*AssignTaskToUserRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_UnassignTaskFromUser_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UnassignTaskFromUserRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).UnassignTaskFromUser(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_UnassignTaskFromUser_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).UnassignTaskFromUser(ctx, req.(*UnassignTaskFromUserRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_PublishTask_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(PublishTaskRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).PublishTask(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_PublishTask_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).PublishTask(ctx, req.(*PublishTaskRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_UnpublishTask_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UnpublishTaskRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).UnpublishTask(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_UnpublishTask_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).UnpublishTask(ctx, req.(*UnpublishTaskRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _TaskService_DeleteTask_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteTaskRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TaskServiceServer).DeleteTask(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: TaskService_DeleteTask_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TaskServiceServer).DeleteTask(ctx, req.(*DeleteTaskRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// TaskService_ServiceDesc is the grpc.ServiceDesc for TaskService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var TaskService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "services.task_svc.v1.TaskService",
	HandlerType: (*TaskServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "CreateTask",
			Handler:    _TaskService_CreateTask_Handler,
		},
		{
			MethodName: "GetTask",
			Handler:    _TaskService_GetTask_Handler,
		},
		{
			MethodName: "GetTasksByPatient",
			Handler:    _TaskService_GetTasksByPatient_Handler,
		},
		{
			MethodName: "GetTasksByPatientSortedByStatus",
			Handler:    _TaskService_GetTasksByPatientSortedByStatus_Handler,
		},
		{
			MethodName: "GetAssignedTasks",
			Handler:    _TaskService_GetAssignedTasks_Handler,
		},
		{
			MethodName: "UpdateTask",
			Handler:    _TaskService_UpdateTask_Handler,
		},
		{
			MethodName: "AddSubTask",
			Handler:    _TaskService_AddSubTask_Handler,
		},
		{
			MethodName: "RemoveSubTask",
			Handler:    _TaskService_RemoveSubTask_Handler,
		},
		{
			MethodName: "UpdateSubTask",
			Handler:    _TaskService_UpdateSubTask_Handler,
		},
		{
			MethodName: "SubTaskToToDo",
			Handler:    _TaskService_SubTaskToToDo_Handler,
		},
		{
			MethodName: "SubTaskToDone",
			Handler:    _TaskService_SubTaskToDone_Handler,
		},
		{
			MethodName: "TaskToToDo",
			Handler:    _TaskService_TaskToToDo_Handler,
		},
		{
			MethodName: "TaskToInProgress",
			Handler:    _TaskService_TaskToInProgress_Handler,
		},
		{
			MethodName: "TaskToDone",
			Handler:    _TaskService_TaskToDone_Handler,
		},
		{
			MethodName: "AssignTaskToUser",
			Handler:    _TaskService_AssignTaskToUser_Handler,
		},
		{
			MethodName: "UnassignTaskFromUser",
			Handler:    _TaskService_UnassignTaskFromUser_Handler,
		},
		{
			MethodName: "PublishTask",
			Handler:    _TaskService_PublishTask_Handler,
		},
		{
			MethodName: "UnpublishTask",
			Handler:    _TaskService_UnpublishTask_Handler,
		},
		{
			MethodName: "DeleteTask",
			Handler:    _TaskService_DeleteTask_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "services/task_svc/v1/task_svc.proto",
}
