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

import 'task_svc.pb.dart' as $13;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$13.CreateTaskRequest, $13.CreateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateTask',
      ($13.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateTaskResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$13.UpdateTaskRequest, $13.UpdateTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateTask',
      ($13.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$13.GetTaskRequest, $13.GetTaskResponse>(
      '/services.tasks_svc.v1.TaskService/GetTask',
      ($13.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$13.GetTasksByPatientRequest, $13.GetTasksByPatientResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetTasksByPatient',
      ($13.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$13.GetTasksByPatientSortedByStatusRequest, $13.GetTasksByPatientSortedByStatusResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($13.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$13.GetAssignedTasksRequest, $13.GetAssignedTasksResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetAssignedTasks',
      ($13.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetAssignedTasksResponse.fromBuffer(value));
  static final _$assignTask = $grpc.ClientMethod<$13.AssignTaskRequest, $13.AssignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/AssignTask',
      ($13.AssignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AssignTaskResponse.fromBuffer(value));
  static final _$unassignTask = $grpc.ClientMethod<$13.UnassignTaskRequest, $13.UnassignTaskResponse>(
      '/services.tasks_svc.v1.TaskService/UnassignTask',
      ($13.UnassignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UnassignTaskResponse.fromBuffer(value));
  static final _$createSubtask = $grpc.ClientMethod<$13.CreateSubtaskRequest, $13.CreateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/CreateSubtask',
      ($13.CreateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateSubtaskResponse.fromBuffer(value));
  static final _$updateSubtask = $grpc.ClientMethod<$13.UpdateSubtaskRequest, $13.UpdateSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/UpdateSubtask',
      ($13.UpdateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateSubtaskResponse.fromBuffer(value));
  static final _$completeSubtask = $grpc.ClientMethod<$13.CompleteSubtaskRequest, $13.CompleteSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/CompleteSubtask',
      ($13.CompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CompleteSubtaskResponse.fromBuffer(value));
  static final _$uncompleteSubtask = $grpc.ClientMethod<$13.UncompleteSubtaskRequest, $13.UncompleteSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/UncompleteSubtask',
      ($13.UncompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UncompleteSubtaskResponse.fromBuffer(value));
  static final _$deleteSubtask = $grpc.ClientMethod<$13.DeleteSubtaskRequest, $13.DeleteSubtaskResponse>(
      '/services.tasks_svc.v1.TaskService/DeleteSubtask',
      ($13.DeleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteSubtaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateTaskResponse> createTask($13.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateTaskResponse> updateTask($13.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetTaskResponse> getTask($13.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetTasksByPatientResponse> getTasksByPatient($13.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($13.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetAssignedTasksResponse> getAssignedTasks($13.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$13.AssignTaskResponse> assignTask($13.AssignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }

  $grpc.ResponseFuture<$13.UnassignTaskResponse> unassignTask($13.UnassignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTask, request, options: options);
  }

  $grpc.ResponseFuture<$13.CreateSubtaskResponse> createSubtask($13.CreateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateSubtaskResponse> updateSubtask($13.UpdateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$13.CompleteSubtaskResponse> completeSubtask($13.CompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completeSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$13.UncompleteSubtaskResponse> uncompleteSubtask($13.UncompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uncompleteSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteSubtaskResponse> deleteSubtask($13.DeleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSubtask, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateTaskRequest, $13.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateTaskRequest.fromBuffer(value),
        ($13.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateTaskRequest, $13.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateTaskRequest.fromBuffer(value),
        ($13.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetTaskRequest, $13.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetTaskRequest.fromBuffer(value),
        ($13.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetTasksByPatientRequest, $13.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetTasksByPatientRequest.fromBuffer(value),
        ($13.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetTasksByPatientSortedByStatusRequest, $13.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($13.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetAssignedTasksRequest, $13.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetAssignedTasksRequest.fromBuffer(value),
        ($13.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AssignTaskRequest, $13.AssignTaskResponse>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AssignTaskRequest.fromBuffer(value),
        ($13.AssignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UnassignTaskRequest, $13.UnassignTaskResponse>(
        'UnassignTask',
        unassignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UnassignTaskRequest.fromBuffer(value),
        ($13.UnassignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CreateSubtaskRequest, $13.CreateSubtaskResponse>(
        'CreateSubtask',
        createSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateSubtaskRequest.fromBuffer(value),
        ($13.CreateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateSubtaskRequest, $13.UpdateSubtaskResponse>(
        'UpdateSubtask',
        updateSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateSubtaskRequest.fromBuffer(value),
        ($13.UpdateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.CompleteSubtaskRequest, $13.CompleteSubtaskResponse>(
        'CompleteSubtask',
        completeSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CompleteSubtaskRequest.fromBuffer(value),
        ($13.CompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UncompleteSubtaskRequest, $13.UncompleteSubtaskResponse>(
        'UncompleteSubtask',
        uncompleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UncompleteSubtaskRequest.fromBuffer(value),
        ($13.UncompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteSubtaskRequest, $13.DeleteSubtaskResponse>(
        'DeleteSubtask',
        deleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteSubtaskRequest.fromBuffer(value),
        ($13.DeleteSubtaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$13.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$13.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$13.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$13.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$13.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$13.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$13.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$13.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$13.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$13.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$13.AssignTaskResponse> assignTask_Pre($grpc.ServiceCall call, $async.Future<$13.AssignTaskRequest> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$13.UnassignTaskResponse> unassignTask_Pre($grpc.ServiceCall call, $async.Future<$13.UnassignTaskRequest> request) async {
    return unassignTask(call, await request);
  }

  $async.Future<$13.CreateSubtaskResponse> createSubtask_Pre($grpc.ServiceCall call, $async.Future<$13.CreateSubtaskRequest> request) async {
    return createSubtask(call, await request);
  }

  $async.Future<$13.UpdateSubtaskResponse> updateSubtask_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateSubtaskRequest> request) async {
    return updateSubtask(call, await request);
  }

  $async.Future<$13.CompleteSubtaskResponse> completeSubtask_Pre($grpc.ServiceCall call, $async.Future<$13.CompleteSubtaskRequest> request) async {
    return completeSubtask(call, await request);
  }

  $async.Future<$13.UncompleteSubtaskResponse> uncompleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$13.UncompleteSubtaskRequest> request) async {
    return uncompleteSubtask(call, await request);
  }

  $async.Future<$13.DeleteSubtaskResponse> deleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteSubtaskRequest> request) async {
    return deleteSubtask(call, await request);
  }

  $async.Future<$13.CreateTaskResponse> createTask($grpc.ServiceCall call, $13.CreateTaskRequest request);
  $async.Future<$13.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $13.UpdateTaskRequest request);
  $async.Future<$13.GetTaskResponse> getTask($grpc.ServiceCall call, $13.GetTaskRequest request);
  $async.Future<$13.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $13.GetTasksByPatientRequest request);
  $async.Future<$13.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $13.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$13.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $13.GetAssignedTasksRequest request);
  $async.Future<$13.AssignTaskResponse> assignTask($grpc.ServiceCall call, $13.AssignTaskRequest request);
  $async.Future<$13.UnassignTaskResponse> unassignTask($grpc.ServiceCall call, $13.UnassignTaskRequest request);
  $async.Future<$13.CreateSubtaskResponse> createSubtask($grpc.ServiceCall call, $13.CreateSubtaskRequest request);
  $async.Future<$13.UpdateSubtaskResponse> updateSubtask($grpc.ServiceCall call, $13.UpdateSubtaskRequest request);
  $async.Future<$13.CompleteSubtaskResponse> completeSubtask($grpc.ServiceCall call, $13.CompleteSubtaskRequest request);
  $async.Future<$13.UncompleteSubtaskResponse> uncompleteSubtask($grpc.ServiceCall call, $13.UncompleteSubtaskRequest request);
  $async.Future<$13.DeleteSubtaskResponse> deleteSubtask($grpc.ServiceCall call, $13.DeleteSubtaskRequest request);
}
