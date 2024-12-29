//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/task_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'task_svc.pb.dart' as $3;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$3.CreateTaskRequest, $3.CreateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateTask',
      ($3.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateTaskResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$3.UpdateTaskRequest, $3.UpdateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateTask',
      ($3.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$3.GetTaskRequest, $3.GetTaskResponse>(
      '/services.tasks_svc.v1.TaskService/GetTask',
      ($3.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$3.GetTasksByPatientRequest, $3.GetTasksByPatientResponse>(
      '/services.tasks_svc.v1.TaskService/GetTasksByPatient',
      ($3.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$3.GetTasksByPatientSortedByStatusRequest, $3.GetTasksByPatientSortedByStatusResponse>(
      '/services.tasks_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($3.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$3.GetAssignedTasksRequest, $3.GetAssignedTasksResponse>(
      '/services.tasks_svc.v1.TaskService/GetAssignedTasks',
      ($3.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetAssignedTasksResponse.fromBuffer(value));
  static final _$assignTask = $grpc.ClientMethod<$3.AssignTaskRequest, $3.AssignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/AssignTask',
      ($3.AssignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AssignTaskResponse.fromBuffer(value));
  static final _$unassignTask = $grpc.ClientMethod<$3.UnassignTaskRequest, $3.UnassignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UnassignTask',
      ($3.UnassignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UnassignTaskResponse.fromBuffer(value));
  static final _$createSubtask = $grpc.ClientMethod<$3.CreateSubtaskRequest, $3.CreateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateSubtask',
      ($3.CreateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateSubtaskResponse.fromBuffer(value));
  static final _$updateSubtask = $grpc.ClientMethod<$3.UpdateSubtaskRequest, $3.UpdateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateSubtask',
      ($3.UpdateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateSubtaskResponse.fromBuffer(value));
  static final _$deleteSubtask = $grpc.ClientMethod<$3.DeleteSubtaskRequest, $3.DeleteSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/DeleteSubtask',
      ($3.DeleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteSubtaskResponse.fromBuffer(value));
  static final _$removeTaskDueDate = $grpc.ClientMethod<$3.RemoveTaskDueDateRequest, $3.RemoveTaskDueDateResponse>(
      '/services.tasks_svc.v1.TaskService/RemoveTaskDueDate',
      ($3.RemoveTaskDueDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.RemoveTaskDueDateResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$3.DeleteTaskRequest, $3.DeleteTaskResponse>(
      '/services.tasks_svc.v1.TaskService/DeleteTask',
      ($3.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateTaskResponse> createTask($3.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateTaskResponse> updateTask($3.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetTaskResponse> getTask($3.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetTasksByPatientResponse> getTasksByPatient($3.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($3.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetAssignedTasksResponse> getAssignedTasks($3.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$3.AssignTaskResponse> assignTask($3.AssignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }

  $grpc.ResponseFuture<$3.UnassignTaskResponse> unassignTask($3.UnassignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTask, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateSubtaskResponse> createSubtask($3.CreateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateSubtaskResponse> updateSubtask($3.UpdateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteSubtaskResponse> deleteSubtask($3.DeleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$3.RemoveTaskDueDateResponse> removeTaskDueDate($3.RemoveTaskDueDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeTaskDueDate, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteTaskResponse> deleteTask($3.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateTaskRequest, $3.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateTaskRequest.fromBuffer(value),
        ($3.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateTaskRequest, $3.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateTaskRequest.fromBuffer(value),
        ($3.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetTaskRequest, $3.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetTaskRequest.fromBuffer(value),
        ($3.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetTasksByPatientRequest, $3.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetTasksByPatientRequest.fromBuffer(value),
        ($3.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetTasksByPatientSortedByStatusRequest, $3.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($3.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetAssignedTasksRequest, $3.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetAssignedTasksRequest.fromBuffer(value),
        ($3.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AssignTaskRequest, $3.AssignTaskResponse>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AssignTaskRequest.fromBuffer(value),
        ($3.AssignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UnassignTaskRequest, $3.UnassignTaskResponse>(
        'UnassignTask',
        unassignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UnassignTaskRequest.fromBuffer(value),
        ($3.UnassignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateSubtaskRequest, $3.CreateSubtaskResponse>(
        'CreateSubtask',
        createSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateSubtaskRequest.fromBuffer(value),
        ($3.CreateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateSubtaskRequest, $3.UpdateSubtaskResponse>(
        'UpdateSubtask',
        updateSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateSubtaskRequest.fromBuffer(value),
        ($3.UpdateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteSubtaskRequest, $3.DeleteSubtaskResponse>(
        'DeleteSubtask',
        deleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteSubtaskRequest.fromBuffer(value),
        ($3.DeleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.RemoveTaskDueDateRequest, $3.RemoveTaskDueDateResponse>(
        'RemoveTaskDueDate',
        removeTaskDueDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.RemoveTaskDueDateRequest.fromBuffer(value),
        ($3.RemoveTaskDueDateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteTaskRequest, $3.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteTaskRequest.fromBuffer(value),
        ($3.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$3.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$3.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$3.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$3.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$3.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$3.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$3.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$3.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$3.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$3.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$3.AssignTaskResponse> assignTask_Pre($grpc.ServiceCall call, $async.Future<$3.AssignTaskRequest> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$3.UnassignTaskResponse> unassignTask_Pre($grpc.ServiceCall call, $async.Future<$3.UnassignTaskRequest> request) async {
    return unassignTask(call, await request);
  }

  $async.Future<$3.CreateSubtaskResponse> createSubtask_Pre($grpc.ServiceCall call, $async.Future<$3.CreateSubtaskRequest> request) async {
    return createSubtask(call, await request);
  }

  $async.Future<$3.UpdateSubtaskResponse> updateSubtask_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateSubtaskRequest> request) async {
    return updateSubtask(call, await request);
  }

  $async.Future<$3.DeleteSubtaskResponse> deleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteSubtaskRequest> request) async {
    return deleteSubtask(call, await request);
  }

  $async.Future<$3.RemoveTaskDueDateResponse> removeTaskDueDate_Pre($grpc.ServiceCall call, $async.Future<$3.RemoveTaskDueDateRequest> request) async {
    return removeTaskDueDate(call, await request);
  }

  $async.Future<$3.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$3.CreateTaskResponse> createTask($grpc.ServiceCall call, $3.CreateTaskRequest request);
  $async.Future<$3.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $3.UpdateTaskRequest request);
  $async.Future<$3.GetTaskResponse> getTask($grpc.ServiceCall call, $3.GetTaskRequest request);
  $async.Future<$3.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $3.GetTasksByPatientRequest request);
  $async.Future<$3.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $3.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$3.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $3.GetAssignedTasksRequest request);
  $async.Future<$3.AssignTaskResponse> assignTask($grpc.ServiceCall call, $3.AssignTaskRequest request);
  $async.Future<$3.UnassignTaskResponse> unassignTask($grpc.ServiceCall call, $3.UnassignTaskRequest request);
  $async.Future<$3.CreateSubtaskResponse> createSubtask($grpc.ServiceCall call, $3.CreateSubtaskRequest request);
  $async.Future<$3.UpdateSubtaskResponse> updateSubtask($grpc.ServiceCall call, $3.UpdateSubtaskRequest request);
  $async.Future<$3.DeleteSubtaskResponse> deleteSubtask($grpc.ServiceCall call, $3.DeleteSubtaskRequest request);
  $async.Future<$3.RemoveTaskDueDateResponse> removeTaskDueDate($grpc.ServiceCall call, $3.RemoveTaskDueDateRequest request);
  $async.Future<$3.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $3.DeleteTaskRequest request);
}
