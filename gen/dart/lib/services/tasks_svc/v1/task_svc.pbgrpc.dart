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

import 'task_svc.pb.dart' as $15;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$15.CreateTaskRequest, $15.CreateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateTask',
      ($15.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateTaskResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$15.UpdateTaskRequest, $15.UpdateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateTask',
      ($15.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$15.GetTaskRequest, $15.GetTaskResponse>(
      '/services.tasks_svc.v1.TaskService/GetTask',
      ($15.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$15.GetTasksByPatientRequest, $15.GetTasksByPatientResponse>(
      '/services.tasks_svc.v1.TaskService/GetTasksByPatient',
      ($15.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$15.GetTasksByPatientSortedByStatusRequest, $15.GetTasksByPatientSortedByStatusResponse>(
      '/services.tasks_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($15.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$15.GetAssignedTasksRequest, $15.GetAssignedTasksResponse>(
      '/services.tasks_svc.v1.TaskService/GetAssignedTasks',
      ($15.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetAssignedTasksResponse.fromBuffer(value));
  static final _$assignTask = $grpc.ClientMethod<$15.AssignTaskRequest, $15.AssignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/AssignTask',
      ($15.AssignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.AssignTaskResponse.fromBuffer(value));
  static final _$unassignTask = $grpc.ClientMethod<$15.UnassignTaskRequest, $15.UnassignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UnassignTask',
      ($15.UnassignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UnassignTaskResponse.fromBuffer(value));
  static final _$createSubtask = $grpc.ClientMethod<$15.CreateSubtaskRequest, $15.CreateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateSubtask',
      ($15.CreateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateSubtaskResponse.fromBuffer(value));
  static final _$updateSubtask = $grpc.ClientMethod<$15.UpdateSubtaskRequest, $15.UpdateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateSubtask',
      ($15.UpdateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateSubtaskResponse.fromBuffer(value));
  static final _$deleteSubtask = $grpc.ClientMethod<$15.DeleteSubtaskRequest, $15.DeleteSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/DeleteSubtask',
      ($15.DeleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteSubtaskResponse.fromBuffer(value));
  static final _$removeTaskDueDate = $grpc.ClientMethod<$15.RemoveTaskDueDateRequest, $15.RemoveTaskDueDateResponse>(
      '/services.tasks_svc.v1.TaskService/RemoveTaskDueDate',
      ($15.RemoveTaskDueDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.RemoveTaskDueDateResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$15.DeleteTaskRequest, $15.DeleteTaskResponse>(
      '/services.tasks_svc.v1.TaskService/DeleteTask',
      ($15.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.CreateTaskResponse> createTask($15.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateTaskResponse> updateTask($15.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetTaskResponse> getTask($15.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetTasksByPatientResponse> getTasksByPatient($15.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($15.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetAssignedTasksResponse> getAssignedTasks($15.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$15.AssignTaskResponse> assignTask($15.AssignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }

  $grpc.ResponseFuture<$15.UnassignTaskResponse> unassignTask($15.UnassignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTask, request, options: options);
  }

  $grpc.ResponseFuture<$15.CreateSubtaskResponse> createSubtask($15.CreateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateSubtaskResponse> updateSubtask($15.UpdateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteSubtaskResponse> deleteSubtask($15.DeleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$15.RemoveTaskDueDateResponse> removeTaskDueDate($15.RemoveTaskDueDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeTaskDueDate, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteTaskResponse> deleteTask($15.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.CreateTaskRequest, $15.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateTaskRequest.fromBuffer(value),
        ($15.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateTaskRequest, $15.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateTaskRequest.fromBuffer(value),
        ($15.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetTaskRequest, $15.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetTaskRequest.fromBuffer(value),
        ($15.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetTasksByPatientRequest, $15.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetTasksByPatientRequest.fromBuffer(value),
        ($15.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetTasksByPatientSortedByStatusRequest, $15.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($15.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetAssignedTasksRequest, $15.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetAssignedTasksRequest.fromBuffer(value),
        ($15.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.AssignTaskRequest, $15.AssignTaskResponse>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.AssignTaskRequest.fromBuffer(value),
        ($15.AssignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UnassignTaskRequest, $15.UnassignTaskResponse>(
        'UnassignTask',
        unassignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UnassignTaskRequest.fromBuffer(value),
        ($15.UnassignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.CreateSubtaskRequest, $15.CreateSubtaskResponse>(
        'CreateSubtask',
        createSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateSubtaskRequest.fromBuffer(value),
        ($15.CreateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateSubtaskRequest, $15.UpdateSubtaskResponse>(
        'UpdateSubtask',
        updateSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateSubtaskRequest.fromBuffer(value),
        ($15.UpdateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteSubtaskRequest, $15.DeleteSubtaskResponse>(
        'DeleteSubtask',
        deleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteSubtaskRequest.fromBuffer(value),
        ($15.DeleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.RemoveTaskDueDateRequest, $15.RemoveTaskDueDateResponse>(
        'RemoveTaskDueDate',
        removeTaskDueDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.RemoveTaskDueDateRequest.fromBuffer(value),
        ($15.RemoveTaskDueDateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteTaskRequest, $15.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteTaskRequest.fromBuffer(value),
        ($15.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$15.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$15.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$15.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$15.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$15.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$15.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$15.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$15.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$15.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$15.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$15.AssignTaskResponse> assignTask_Pre($grpc.ServiceCall call, $async.Future<$15.AssignTaskRequest> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$15.UnassignTaskResponse> unassignTask_Pre($grpc.ServiceCall call, $async.Future<$15.UnassignTaskRequest> request) async {
    return unassignTask(call, await request);
  }

  $async.Future<$15.CreateSubtaskResponse> createSubtask_Pre($grpc.ServiceCall call, $async.Future<$15.CreateSubtaskRequest> request) async {
    return createSubtask(call, await request);
  }

  $async.Future<$15.UpdateSubtaskResponse> updateSubtask_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateSubtaskRequest> request) async {
    return updateSubtask(call, await request);
  }

  $async.Future<$15.DeleteSubtaskResponse> deleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteSubtaskRequest> request) async {
    return deleteSubtask(call, await request);
  }

  $async.Future<$15.RemoveTaskDueDateResponse> removeTaskDueDate_Pre($grpc.ServiceCall call, $async.Future<$15.RemoveTaskDueDateRequest> request) async {
    return removeTaskDueDate(call, await request);
  }

  $async.Future<$15.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$15.CreateTaskResponse> createTask($grpc.ServiceCall call, $15.CreateTaskRequest request);
  $async.Future<$15.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $15.UpdateTaskRequest request);
  $async.Future<$15.GetTaskResponse> getTask($grpc.ServiceCall call, $15.GetTaskRequest request);
  $async.Future<$15.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $15.GetTasksByPatientRequest request);
  $async.Future<$15.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $15.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$15.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $15.GetAssignedTasksRequest request);
  $async.Future<$15.AssignTaskResponse> assignTask($grpc.ServiceCall call, $15.AssignTaskRequest request);
  $async.Future<$15.UnassignTaskResponse> unassignTask($grpc.ServiceCall call, $15.UnassignTaskRequest request);
  $async.Future<$15.CreateSubtaskResponse> createSubtask($grpc.ServiceCall call, $15.CreateSubtaskRequest request);
  $async.Future<$15.UpdateSubtaskResponse> updateSubtask($grpc.ServiceCall call, $15.UpdateSubtaskRequest request);
  $async.Future<$15.DeleteSubtaskResponse> deleteSubtask($grpc.ServiceCall call, $15.DeleteSubtaskRequest request);
  $async.Future<$15.RemoveTaskDueDateResponse> removeTaskDueDate($grpc.ServiceCall call, $15.RemoveTaskDueDateRequest request);
  $async.Future<$15.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $15.DeleteTaskRequest request);
}
