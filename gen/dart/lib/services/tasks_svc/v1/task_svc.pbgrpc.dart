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

import 'task_svc.pb.dart' as $8;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$8.CreateTaskRequest, $8.CreateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateTask',
      ($8.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateTaskResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$8.UpdateTaskRequest, $8.UpdateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateTask',
      ($8.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$8.GetTaskRequest, $8.GetTaskResponse>(
      '/services.tasks_svc.v1.TaskService/GetTask',
      ($8.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$8.GetTasksByPatientRequest, $8.GetTasksByPatientResponse>(
      '/services.tasks_svc.v1.TaskService/GetTasksByPatient',
      ($8.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$8.GetTasksByPatientSortedByStatusRequest, $8.GetTasksByPatientSortedByStatusResponse>(
      '/services.tasks_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($8.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$8.GetAssignedTasksRequest, $8.GetAssignedTasksResponse>(
      '/services.tasks_svc.v1.TaskService/GetAssignedTasks',
      ($8.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetAssignedTasksResponse.fromBuffer(value));
  static final _$assignTask = $grpc.ClientMethod<$8.AssignTaskRequest, $8.AssignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/AssignTask',
      ($8.AssignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.AssignTaskResponse.fromBuffer(value));
  static final _$unassignTask = $grpc.ClientMethod<$8.UnassignTaskRequest, $8.UnassignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UnassignTask',
      ($8.UnassignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UnassignTaskResponse.fromBuffer(value));
  static final _$createSubtask = $grpc.ClientMethod<$8.CreateSubtaskRequest, $8.CreateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateSubtask',
      ($8.CreateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateSubtaskResponse.fromBuffer(value));
  static final _$updateSubtask = $grpc.ClientMethod<$8.UpdateSubtaskRequest, $8.UpdateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateSubtask',
      ($8.UpdateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateSubtaskResponse.fromBuffer(value));
  static final _$deleteSubtask = $grpc.ClientMethod<$8.DeleteSubtaskRequest, $8.DeleteSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/DeleteSubtask',
      ($8.DeleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteSubtaskResponse.fromBuffer(value));
  static final _$removeTaskDueDate = $grpc.ClientMethod<$8.RemoveTaskDueDateRequest, $8.RemoveTaskDueDateResponse>(
      '/services.tasks_svc.v1.TaskService/RemoveTaskDueDate',
      ($8.RemoveTaskDueDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.RemoveTaskDueDateResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$8.DeleteTaskRequest, $8.DeleteTaskResponse>(
      '/services.tasks_svc.v1.TaskService/DeleteTask',
      ($8.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateTaskResponse> createTask($8.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateTaskResponse> updateTask($8.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetTaskResponse> getTask($8.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetTasksByPatientResponse> getTasksByPatient($8.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($8.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetAssignedTasksResponse> getAssignedTasks($8.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$8.AssignTaskResponse> assignTask($8.AssignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.UnassignTaskResponse> unassignTask($8.UnassignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.CreateSubtaskResponse> createSubtask($8.CreateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateSubtaskResponse> updateSubtask($8.UpdateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteSubtaskResponse> deleteSubtask($8.DeleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$8.RemoveTaskDueDateResponse> removeTaskDueDate($8.RemoveTaskDueDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeTaskDueDate, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteTaskResponse> deleteTask($8.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateTaskRequest, $8.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateTaskRequest.fromBuffer(value),
        ($8.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateTaskRequest, $8.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateTaskRequest.fromBuffer(value),
        ($8.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetTaskRequest, $8.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetTaskRequest.fromBuffer(value),
        ($8.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetTasksByPatientRequest, $8.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetTasksByPatientRequest.fromBuffer(value),
        ($8.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetTasksByPatientSortedByStatusRequest, $8.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($8.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetAssignedTasksRequest, $8.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetAssignedTasksRequest.fromBuffer(value),
        ($8.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AssignTaskRequest, $8.AssignTaskResponse>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.AssignTaskRequest.fromBuffer(value),
        ($8.AssignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UnassignTaskRequest, $8.UnassignTaskResponse>(
        'UnassignTask',
        unassignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UnassignTaskRequest.fromBuffer(value),
        ($8.UnassignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CreateSubtaskRequest, $8.CreateSubtaskResponse>(
        'CreateSubtask',
        createSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateSubtaskRequest.fromBuffer(value),
        ($8.CreateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateSubtaskRequest, $8.UpdateSubtaskResponse>(
        'UpdateSubtask',
        updateSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateSubtaskRequest.fromBuffer(value),
        ($8.UpdateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteSubtaskRequest, $8.DeleteSubtaskResponse>(
        'DeleteSubtask',
        deleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteSubtaskRequest.fromBuffer(value),
        ($8.DeleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RemoveTaskDueDateRequest, $8.RemoveTaskDueDateResponse>(
        'RemoveTaskDueDate',
        removeTaskDueDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.RemoveTaskDueDateRequest.fromBuffer(value),
        ($8.RemoveTaskDueDateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteTaskRequest, $8.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteTaskRequest.fromBuffer(value),
        ($8.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$8.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$8.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$8.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$8.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$8.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$8.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$8.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$8.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$8.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$8.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$8.AssignTaskResponse> assignTask_Pre($grpc.ServiceCall call, $async.Future<$8.AssignTaskRequest> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$8.UnassignTaskResponse> unassignTask_Pre($grpc.ServiceCall call, $async.Future<$8.UnassignTaskRequest> request) async {
    return unassignTask(call, await request);
  }

  $async.Future<$8.CreateSubtaskResponse> createSubtask_Pre($grpc.ServiceCall call, $async.Future<$8.CreateSubtaskRequest> request) async {
    return createSubtask(call, await request);
  }

  $async.Future<$8.UpdateSubtaskResponse> updateSubtask_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateSubtaskRequest> request) async {
    return updateSubtask(call, await request);
  }

  $async.Future<$8.DeleteSubtaskResponse> deleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteSubtaskRequest> request) async {
    return deleteSubtask(call, await request);
  }

  $async.Future<$8.RemoveTaskDueDateResponse> removeTaskDueDate_Pre($grpc.ServiceCall call, $async.Future<$8.RemoveTaskDueDateRequest> request) async {
    return removeTaskDueDate(call, await request);
  }

  $async.Future<$8.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$8.CreateTaskResponse> createTask($grpc.ServiceCall call, $8.CreateTaskRequest request);
  $async.Future<$8.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $8.UpdateTaskRequest request);
  $async.Future<$8.GetTaskResponse> getTask($grpc.ServiceCall call, $8.GetTaskRequest request);
  $async.Future<$8.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $8.GetTasksByPatientRequest request);
  $async.Future<$8.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $8.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$8.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $8.GetAssignedTasksRequest request);
  $async.Future<$8.AssignTaskResponse> assignTask($grpc.ServiceCall call, $8.AssignTaskRequest request);
  $async.Future<$8.UnassignTaskResponse> unassignTask($grpc.ServiceCall call, $8.UnassignTaskRequest request);
  $async.Future<$8.CreateSubtaskResponse> createSubtask($grpc.ServiceCall call, $8.CreateSubtaskRequest request);
  $async.Future<$8.UpdateSubtaskResponse> updateSubtask($grpc.ServiceCall call, $8.UpdateSubtaskRequest request);
  $async.Future<$8.DeleteSubtaskResponse> deleteSubtask($grpc.ServiceCall call, $8.DeleteSubtaskRequest request);
  $async.Future<$8.RemoveTaskDueDateResponse> removeTaskDueDate($grpc.ServiceCall call, $8.RemoveTaskDueDateRequest request);
  $async.Future<$8.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $8.DeleteTaskRequest request);
}
