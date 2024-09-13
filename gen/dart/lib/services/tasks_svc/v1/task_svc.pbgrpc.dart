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

import 'task_svc.pb.dart' as $14;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$14.CreateTaskRequest, $14.CreateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateTask',
      ($14.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateTaskResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$14.UpdateTaskRequest, $14.UpdateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateTask',
      ($14.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$14.GetTaskRequest, $14.GetTaskResponse>(
      '/services.tasks_svc.v1.TaskService/GetTask',
      ($14.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$14.GetTasksByPatientRequest, $14.GetTasksByPatientResponse>(
      '/services.tasks_svc.v1.TaskService/GetTasksByPatient',
      ($14.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$14.GetTasksByPatientSortedByStatusRequest, $14.GetTasksByPatientSortedByStatusResponse>(
      '/services.tasks_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($14.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$14.GetAssignedTasksRequest, $14.GetAssignedTasksResponse>(
      '/services.tasks_svc.v1.TaskService/GetAssignedTasks',
      ($14.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetAssignedTasksResponse.fromBuffer(value));
  static final _$assignTask = $grpc.ClientMethod<$14.AssignTaskRequest, $14.AssignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/AssignTask',
      ($14.AssignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.AssignTaskResponse.fromBuffer(value));
  static final _$unassignTask = $grpc.ClientMethod<$14.UnassignTaskRequest, $14.UnassignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UnassignTask',
      ($14.UnassignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UnassignTaskResponse.fromBuffer(value));
  static final _$createSubtask = $grpc.ClientMethod<$14.CreateSubtaskRequest, $14.CreateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateSubtask',
      ($14.CreateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateSubtaskResponse.fromBuffer(value));
  static final _$updateSubtask = $grpc.ClientMethod<$14.UpdateSubtaskRequest, $14.UpdateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateSubtask',
      ($14.UpdateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateSubtaskResponse.fromBuffer(value));
  static final _$deleteSubtask = $grpc.ClientMethod<$14.DeleteSubtaskRequest, $14.DeleteSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/DeleteSubtask',
      ($14.DeleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteSubtaskResponse.fromBuffer(value));
  static final _$removeTaskDueDate = $grpc.ClientMethod<$14.RemoveTaskDueDateRequest, $14.RemoveTaskDueDateResponse>(
      '/services.tasks_svc.v1.TaskService/RemoveTaskDueDate',
      ($14.RemoveTaskDueDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.RemoveTaskDueDateResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$14.DeleteTaskRequest, $14.DeleteTaskResponse>(
      '/services.tasks_svc.v1.TaskService/DeleteTask',
      ($14.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.CreateTaskResponse> createTask($14.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateTaskResponse> updateTask($14.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetTaskResponse> getTask($14.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetTasksByPatientResponse> getTasksByPatient($14.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($14.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetAssignedTasksResponse> getAssignedTasks($14.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$14.AssignTaskResponse> assignTask($14.AssignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }

  $grpc.ResponseFuture<$14.UnassignTaskResponse> unassignTask($14.UnassignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTask, request, options: options);
  }

  $grpc.ResponseFuture<$14.CreateSubtaskResponse> createSubtask($14.CreateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateSubtaskResponse> updateSubtask($14.UpdateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteSubtaskResponse> deleteSubtask($14.DeleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$14.RemoveTaskDueDateResponse> removeTaskDueDate($14.RemoveTaskDueDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeTaskDueDate, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteTaskResponse> deleteTask($14.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.CreateTaskRequest, $14.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateTaskRequest.fromBuffer(value),
        ($14.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateTaskRequest, $14.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateTaskRequest.fromBuffer(value),
        ($14.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetTaskRequest, $14.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetTaskRequest.fromBuffer(value),
        ($14.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetTasksByPatientRequest, $14.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetTasksByPatientRequest.fromBuffer(value),
        ($14.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetTasksByPatientSortedByStatusRequest, $14.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($14.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetAssignedTasksRequest, $14.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetAssignedTasksRequest.fromBuffer(value),
        ($14.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.AssignTaskRequest, $14.AssignTaskResponse>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.AssignTaskRequest.fromBuffer(value),
        ($14.AssignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UnassignTaskRequest, $14.UnassignTaskResponse>(
        'UnassignTask',
        unassignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UnassignTaskRequest.fromBuffer(value),
        ($14.UnassignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.CreateSubtaskRequest, $14.CreateSubtaskResponse>(
        'CreateSubtask',
        createSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateSubtaskRequest.fromBuffer(value),
        ($14.CreateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateSubtaskRequest, $14.UpdateSubtaskResponse>(
        'UpdateSubtask',
        updateSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateSubtaskRequest.fromBuffer(value),
        ($14.UpdateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteSubtaskRequest, $14.DeleteSubtaskResponse>(
        'DeleteSubtask',
        deleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteSubtaskRequest.fromBuffer(value),
        ($14.DeleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.RemoveTaskDueDateRequest, $14.RemoveTaskDueDateResponse>(
        'RemoveTaskDueDate',
        removeTaskDueDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.RemoveTaskDueDateRequest.fromBuffer(value),
        ($14.RemoveTaskDueDateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteTaskRequest, $14.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteTaskRequest.fromBuffer(value),
        ($14.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$14.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$14.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$14.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$14.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$14.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$14.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$14.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$14.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$14.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$14.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$14.AssignTaskResponse> assignTask_Pre($grpc.ServiceCall call, $async.Future<$14.AssignTaskRequest> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$14.UnassignTaskResponse> unassignTask_Pre($grpc.ServiceCall call, $async.Future<$14.UnassignTaskRequest> request) async {
    return unassignTask(call, await request);
  }

  $async.Future<$14.CreateSubtaskResponse> createSubtask_Pre($grpc.ServiceCall call, $async.Future<$14.CreateSubtaskRequest> request) async {
    return createSubtask(call, await request);
  }

  $async.Future<$14.UpdateSubtaskResponse> updateSubtask_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateSubtaskRequest> request) async {
    return updateSubtask(call, await request);
  }

  $async.Future<$14.DeleteSubtaskResponse> deleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteSubtaskRequest> request) async {
    return deleteSubtask(call, await request);
  }

  $async.Future<$14.RemoveTaskDueDateResponse> removeTaskDueDate_Pre($grpc.ServiceCall call, $async.Future<$14.RemoveTaskDueDateRequest> request) async {
    return removeTaskDueDate(call, await request);
  }

  $async.Future<$14.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$14.CreateTaskResponse> createTask($grpc.ServiceCall call, $14.CreateTaskRequest request);
  $async.Future<$14.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $14.UpdateTaskRequest request);
  $async.Future<$14.GetTaskResponse> getTask($grpc.ServiceCall call, $14.GetTaskRequest request);
  $async.Future<$14.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $14.GetTasksByPatientRequest request);
  $async.Future<$14.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $14.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$14.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $14.GetAssignedTasksRequest request);
  $async.Future<$14.AssignTaskResponse> assignTask($grpc.ServiceCall call, $14.AssignTaskRequest request);
  $async.Future<$14.UnassignTaskResponse> unassignTask($grpc.ServiceCall call, $14.UnassignTaskRequest request);
  $async.Future<$14.CreateSubtaskResponse> createSubtask($grpc.ServiceCall call, $14.CreateSubtaskRequest request);
  $async.Future<$14.UpdateSubtaskResponse> updateSubtask($grpc.ServiceCall call, $14.UpdateSubtaskRequest request);
  $async.Future<$14.DeleteSubtaskResponse> deleteSubtask($grpc.ServiceCall call, $14.DeleteSubtaskRequest request);
  $async.Future<$14.RemoveTaskDueDateResponse> removeTaskDueDate($grpc.ServiceCall call, $14.RemoveTaskDueDateRequest request);
  $async.Future<$14.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $14.DeleteTaskRequest request);
}
