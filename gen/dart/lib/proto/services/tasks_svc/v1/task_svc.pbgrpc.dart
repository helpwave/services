//
//  Generated code. Do not modify.
//  source: proto/services/tasks_svc/v1/task_svc.proto
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

import 'task_svc.pb.dart' as $12;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$12.CreateTaskRequest, $12.CreateTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CreateTask',
      ($12.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateTaskResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$12.UpdateTaskRequest, $12.UpdateTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UpdateTask',
      ($12.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$12.GetTaskRequest, $12.GetTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetTask',
      ($12.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$12.GetTasksByPatientRequest, $12.GetTasksByPatientResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetTasksByPatient',
      ($12.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$12.GetTasksByPatientSortedByStatusRequest, $12.GetTasksByPatientSortedByStatusResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($12.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$12.GetAssignedTasksRequest, $12.GetAssignedTasksResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetAssignedTasks',
      ($12.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetAssignedTasksResponse.fromBuffer(value));
  static final _$assignTask = $grpc.ClientMethod<$12.AssignTaskRequest, $12.AssignTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/AssignTask',
      ($12.AssignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AssignTaskResponse.fromBuffer(value));
  static final _$unassignTask = $grpc.ClientMethod<$12.UnassignTaskRequest, $12.UnassignTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UnassignTask',
      ($12.UnassignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UnassignTaskResponse.fromBuffer(value));
  static final _$createSubtask = $grpc.ClientMethod<$12.CreateSubtaskRequest, $12.CreateSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CreateSubtask',
      ($12.CreateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateSubtaskResponse.fromBuffer(value));
  static final _$updateSubtask = $grpc.ClientMethod<$12.UpdateSubtaskRequest, $12.UpdateSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UpdateSubtask',
      ($12.UpdateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateSubtaskResponse.fromBuffer(value));
  static final _$completeSubtask = $grpc.ClientMethod<$12.CompleteSubtaskRequest, $12.CompleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CompleteSubtask',
      ($12.CompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CompleteSubtaskResponse.fromBuffer(value));
  static final _$uncompleteSubtask = $grpc.ClientMethod<$12.UncompleteSubtaskRequest, $12.UncompleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UncompleteSubtask',
      ($12.UncompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UncompleteSubtaskResponse.fromBuffer(value));
  static final _$deleteSubtask = $grpc.ClientMethod<$12.DeleteSubtaskRequest, $12.DeleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/DeleteSubtask',
      ($12.DeleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteSubtaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreateTaskResponse> createTask($12.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateTaskResponse> updateTask($12.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetTaskResponse> getTask($12.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetTasksByPatientResponse> getTasksByPatient($12.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($12.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetAssignedTasksResponse> getAssignedTasks($12.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$12.AssignTaskResponse> assignTask($12.AssignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }

  $grpc.ResponseFuture<$12.UnassignTaskResponse> unassignTask($12.UnassignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTask, request, options: options);
  }

  $grpc.ResponseFuture<$12.CreateSubtaskResponse> createSubtask($12.CreateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateSubtaskResponse> updateSubtask($12.UpdateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$12.CompleteSubtaskResponse> completeSubtask($12.CompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completeSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$12.UncompleteSubtaskResponse> uncompleteSubtask($12.UncompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uncompleteSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteSubtaskResponse> deleteSubtask($12.DeleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSubtask, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.tasks_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreateTaskRequest, $12.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateTaskRequest.fromBuffer(value),
        ($12.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateTaskRequest, $12.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateTaskRequest.fromBuffer(value),
        ($12.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetTaskRequest, $12.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetTaskRequest.fromBuffer(value),
        ($12.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetTasksByPatientRequest, $12.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetTasksByPatientRequest.fromBuffer(value),
        ($12.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetTasksByPatientSortedByStatusRequest, $12.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($12.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetAssignedTasksRequest, $12.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetAssignedTasksRequest.fromBuffer(value),
        ($12.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AssignTaskRequest, $12.AssignTaskResponse>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AssignTaskRequest.fromBuffer(value),
        ($12.AssignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UnassignTaskRequest, $12.UnassignTaskResponse>(
        'UnassignTask',
        unassignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UnassignTaskRequest.fromBuffer(value),
        ($12.UnassignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.CreateSubtaskRequest, $12.CreateSubtaskResponse>(
        'CreateSubtask',
        createSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateSubtaskRequest.fromBuffer(value),
        ($12.CreateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateSubtaskRequest, $12.UpdateSubtaskResponse>(
        'UpdateSubtask',
        updateSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateSubtaskRequest.fromBuffer(value),
        ($12.UpdateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.CompleteSubtaskRequest, $12.CompleteSubtaskResponse>(
        'CompleteSubtask',
        completeSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CompleteSubtaskRequest.fromBuffer(value),
        ($12.CompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UncompleteSubtaskRequest, $12.UncompleteSubtaskResponse>(
        'UncompleteSubtask',
        uncompleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UncompleteSubtaskRequest.fromBuffer(value),
        ($12.UncompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteSubtaskRequest, $12.DeleteSubtaskResponse>(
        'DeleteSubtask',
        deleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteSubtaskRequest.fromBuffer(value),
        ($12.DeleteSubtaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$12.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$12.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$12.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$12.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$12.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$12.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$12.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$12.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$12.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$12.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$12.AssignTaskResponse> assignTask_Pre($grpc.ServiceCall call, $async.Future<$12.AssignTaskRequest> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$12.UnassignTaskResponse> unassignTask_Pre($grpc.ServiceCall call, $async.Future<$12.UnassignTaskRequest> request) async {
    return unassignTask(call, await request);
  }

  $async.Future<$12.CreateSubtaskResponse> createSubtask_Pre($grpc.ServiceCall call, $async.Future<$12.CreateSubtaskRequest> request) async {
    return createSubtask(call, await request);
  }

  $async.Future<$12.UpdateSubtaskResponse> updateSubtask_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateSubtaskRequest> request) async {
    return updateSubtask(call, await request);
  }

  $async.Future<$12.CompleteSubtaskResponse> completeSubtask_Pre($grpc.ServiceCall call, $async.Future<$12.CompleteSubtaskRequest> request) async {
    return completeSubtask(call, await request);
  }

  $async.Future<$12.UncompleteSubtaskResponse> uncompleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$12.UncompleteSubtaskRequest> request) async {
    return uncompleteSubtask(call, await request);
  }

  $async.Future<$12.DeleteSubtaskResponse> deleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteSubtaskRequest> request) async {
    return deleteSubtask(call, await request);
  }

  $async.Future<$12.CreateTaskResponse> createTask($grpc.ServiceCall call, $12.CreateTaskRequest request);
  $async.Future<$12.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $12.UpdateTaskRequest request);
  $async.Future<$12.GetTaskResponse> getTask($grpc.ServiceCall call, $12.GetTaskRequest request);
  $async.Future<$12.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $12.GetTasksByPatientRequest request);
  $async.Future<$12.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $12.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$12.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $12.GetAssignedTasksRequest request);
  $async.Future<$12.AssignTaskResponse> assignTask($grpc.ServiceCall call, $12.AssignTaskRequest request);
  $async.Future<$12.UnassignTaskResponse> unassignTask($grpc.ServiceCall call, $12.UnassignTaskRequest request);
  $async.Future<$12.CreateSubtaskResponse> createSubtask($grpc.ServiceCall call, $12.CreateSubtaskRequest request);
  $async.Future<$12.UpdateSubtaskResponse> updateSubtask($grpc.ServiceCall call, $12.UpdateSubtaskRequest request);
  $async.Future<$12.CompleteSubtaskResponse> completeSubtask($grpc.ServiceCall call, $12.CompleteSubtaskRequest request);
  $async.Future<$12.UncompleteSubtaskResponse> uncompleteSubtask($grpc.ServiceCall call, $12.UncompleteSubtaskRequest request);
  $async.Future<$12.DeleteSubtaskResponse> deleteSubtask($grpc.ServiceCall call, $12.DeleteSubtaskRequest request);
}
