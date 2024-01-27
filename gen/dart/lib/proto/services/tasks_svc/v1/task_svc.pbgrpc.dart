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

import 'task_svc.pb.dart' as $10;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$10.CreateTaskRequest, $10.CreateTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CreateTask',
      ($10.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateTaskResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$10.UpdateTaskRequest, $10.UpdateTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UpdateTask',
      ($10.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$10.GetTaskRequest, $10.GetTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetTask',
      ($10.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetTaskResponse.fromBuffer(value));
  static final _$assignTask = $grpc.ClientMethod<$10.AssignTaskRequest, $10.AssignTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/AssignTask',
      ($10.AssignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.AssignTaskResponse.fromBuffer(value));
  static final _$unassignTask = $grpc.ClientMethod<$10.UnassignTaskRequest, $10.UnassignTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UnassignTask',
      ($10.UnassignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UnassignTaskResponse.fromBuffer(value));
  static final _$createSubtask = $grpc.ClientMethod<$10.CreateSubtaskRequest, $10.CreateSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CreateSubtask',
      ($10.CreateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateSubtaskResponse.fromBuffer(value));
  static final _$updateSubtask = $grpc.ClientMethod<$10.UpdateSubtaskRequest, $10.UpdateSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UpdateSubtask',
      ($10.UpdateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateSubtaskResponse.fromBuffer(value));
  static final _$completeSubtask = $grpc.ClientMethod<$10.CompleteSubtaskRequest, $10.CompleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CompleteSubtask',
      ($10.CompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CompleteSubtaskResponse.fromBuffer(value));
  static final _$uncompleteSubtask = $grpc.ClientMethod<$10.UncompleteSubtaskRequest, $10.UncompleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UncompleteSubtask',
      ($10.UncompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UncompleteSubtaskResponse.fromBuffer(value));
  static final _$deleteSubtask = $grpc.ClientMethod<$10.DeleteSubtaskRequest, $10.DeleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/DeleteSubtask',
      ($10.DeleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteSubtaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateTaskResponse> createTask($10.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateTaskResponse> updateTask($10.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetTaskResponse> getTask($10.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.AssignTaskResponse> assignTask($10.AssignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.UnassignTaskResponse> unassignTask($10.UnassignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.CreateSubtaskResponse> createSubtask($10.CreateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateSubtaskResponse> updateSubtask($10.UpdateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$10.CompleteSubtaskResponse> completeSubtask($10.CompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completeSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$10.UncompleteSubtaskResponse> uncompleteSubtask($10.UncompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uncompleteSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteSubtaskResponse> deleteSubtask($10.DeleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSubtask, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.tasks_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateTaskRequest, $10.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateTaskRequest.fromBuffer(value),
        ($10.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateTaskRequest, $10.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateTaskRequest.fromBuffer(value),
        ($10.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetTaskRequest, $10.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetTaskRequest.fromBuffer(value),
        ($10.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.AssignTaskRequest, $10.AssignTaskResponse>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.AssignTaskRequest.fromBuffer(value),
        ($10.AssignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UnassignTaskRequest, $10.UnassignTaskResponse>(
        'UnassignTask',
        unassignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UnassignTaskRequest.fromBuffer(value),
        ($10.UnassignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.CreateSubtaskRequest, $10.CreateSubtaskResponse>(
        'CreateSubtask',
        createSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateSubtaskRequest.fromBuffer(value),
        ($10.CreateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateSubtaskRequest, $10.UpdateSubtaskResponse>(
        'UpdateSubtask',
        updateSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateSubtaskRequest.fromBuffer(value),
        ($10.UpdateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.CompleteSubtaskRequest, $10.CompleteSubtaskResponse>(
        'CompleteSubtask',
        completeSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CompleteSubtaskRequest.fromBuffer(value),
        ($10.CompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UncompleteSubtaskRequest, $10.UncompleteSubtaskResponse>(
        'UncompleteSubtask',
        uncompleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UncompleteSubtaskRequest.fromBuffer(value),
        ($10.UncompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteSubtaskRequest, $10.DeleteSubtaskResponse>(
        'DeleteSubtask',
        deleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteSubtaskRequest.fromBuffer(value),
        ($10.DeleteSubtaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$10.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$10.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$10.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$10.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$10.AssignTaskResponse> assignTask_Pre($grpc.ServiceCall call, $async.Future<$10.AssignTaskRequest> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$10.UnassignTaskResponse> unassignTask_Pre($grpc.ServiceCall call, $async.Future<$10.UnassignTaskRequest> request) async {
    return unassignTask(call, await request);
  }

  $async.Future<$10.CreateSubtaskResponse> createSubtask_Pre($grpc.ServiceCall call, $async.Future<$10.CreateSubtaskRequest> request) async {
    return createSubtask(call, await request);
  }

  $async.Future<$10.UpdateSubtaskResponse> updateSubtask_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateSubtaskRequest> request) async {
    return updateSubtask(call, await request);
  }

  $async.Future<$10.CompleteSubtaskResponse> completeSubtask_Pre($grpc.ServiceCall call, $async.Future<$10.CompleteSubtaskRequest> request) async {
    return completeSubtask(call, await request);
  }

  $async.Future<$10.UncompleteSubtaskResponse> uncompleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$10.UncompleteSubtaskRequest> request) async {
    return uncompleteSubtask(call, await request);
  }

  $async.Future<$10.DeleteSubtaskResponse> deleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteSubtaskRequest> request) async {
    return deleteSubtask(call, await request);
  }

  $async.Future<$10.CreateTaskResponse> createTask($grpc.ServiceCall call, $10.CreateTaskRequest request);
  $async.Future<$10.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $10.UpdateTaskRequest request);
  $async.Future<$10.GetTaskResponse> getTask($grpc.ServiceCall call, $10.GetTaskRequest request);
  $async.Future<$10.AssignTaskResponse> assignTask($grpc.ServiceCall call, $10.AssignTaskRequest request);
  $async.Future<$10.UnassignTaskResponse> unassignTask($grpc.ServiceCall call, $10.UnassignTaskRequest request);
  $async.Future<$10.CreateSubtaskResponse> createSubtask($grpc.ServiceCall call, $10.CreateSubtaskRequest request);
  $async.Future<$10.UpdateSubtaskResponse> updateSubtask($grpc.ServiceCall call, $10.UpdateSubtaskRequest request);
  $async.Future<$10.CompleteSubtaskResponse> completeSubtask($grpc.ServiceCall call, $10.CompleteSubtaskRequest request);
  $async.Future<$10.UncompleteSubtaskResponse> uncompleteSubtask($grpc.ServiceCall call, $10.UncompleteSubtaskRequest request);
  $async.Future<$10.DeleteSubtaskResponse> deleteSubtask($grpc.ServiceCall call, $10.DeleteSubtaskRequest request);
}
