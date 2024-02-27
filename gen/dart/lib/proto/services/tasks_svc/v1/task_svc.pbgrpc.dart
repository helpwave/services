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

import 'task_svc.pb.dart' as $11;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$11.CreateTaskRequest, $11.CreateTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CreateTask',
      ($11.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateTaskResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$11.UpdateTaskRequest, $11.UpdateTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UpdateTask',
      ($11.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$11.GetTaskRequest, $11.GetTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetTask',
      ($11.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetTaskResponse.fromBuffer(value));
  static final _$assignTask = $grpc.ClientMethod<$11.AssignTaskRequest, $11.AssignTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/AssignTask',
      ($11.AssignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AssignTaskResponse.fromBuffer(value));
  static final _$unassignTask = $grpc.ClientMethod<$11.UnassignTaskRequest, $11.UnassignTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UnassignTask',
      ($11.UnassignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UnassignTaskResponse.fromBuffer(value));
  static final _$createSubtask = $grpc.ClientMethod<$11.CreateSubtaskRequest, $11.CreateSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CreateSubtask',
      ($11.CreateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateSubtaskResponse.fromBuffer(value));
  static final _$updateSubtask = $grpc.ClientMethod<$11.UpdateSubtaskRequest, $11.UpdateSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UpdateSubtask',
      ($11.UpdateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateSubtaskResponse.fromBuffer(value));
  static final _$completeSubtask = $grpc.ClientMethod<$11.CompleteSubtaskRequest, $11.CompleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CompleteSubtask',
      ($11.CompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CompleteSubtaskResponse.fromBuffer(value));
  static final _$uncompleteSubtask = $grpc.ClientMethod<$11.UncompleteSubtaskRequest, $11.UncompleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UncompleteSubtask',
      ($11.UncompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UncompleteSubtaskResponse.fromBuffer(value));
  static final _$deleteSubtask = $grpc.ClientMethod<$11.DeleteSubtaskRequest, $11.DeleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/DeleteSubtask',
      ($11.DeleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteSubtaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateTaskResponse> createTask($11.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateTaskResponse> updateTask($11.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetTaskResponse> getTask($11.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$11.AssignTaskResponse> assignTask($11.AssignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }

  $grpc.ResponseFuture<$11.UnassignTaskResponse> unassignTask($11.UnassignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTask, request, options: options);
  }

  $grpc.ResponseFuture<$11.CreateSubtaskResponse> createSubtask($11.CreateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateSubtaskResponse> updateSubtask($11.UpdateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$11.CompleteSubtaskResponse> completeSubtask($11.CompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completeSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$11.UncompleteSubtaskResponse> uncompleteSubtask($11.UncompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uncompleteSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteSubtaskResponse> deleteSubtask($11.DeleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSubtask, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.tasks_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateTaskRequest, $11.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateTaskRequest.fromBuffer(value),
        ($11.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateTaskRequest, $11.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateTaskRequest.fromBuffer(value),
        ($11.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetTaskRequest, $11.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetTaskRequest.fromBuffer(value),
        ($11.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AssignTaskRequest, $11.AssignTaskResponse>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AssignTaskRequest.fromBuffer(value),
        ($11.AssignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UnassignTaskRequest, $11.UnassignTaskResponse>(
        'UnassignTask',
        unassignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UnassignTaskRequest.fromBuffer(value),
        ($11.UnassignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreateSubtaskRequest, $11.CreateSubtaskResponse>(
        'CreateSubtask',
        createSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateSubtaskRequest.fromBuffer(value),
        ($11.CreateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateSubtaskRequest, $11.UpdateSubtaskResponse>(
        'UpdateSubtask',
        updateSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateSubtaskRequest.fromBuffer(value),
        ($11.UpdateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CompleteSubtaskRequest, $11.CompleteSubtaskResponse>(
        'CompleteSubtask',
        completeSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CompleteSubtaskRequest.fromBuffer(value),
        ($11.CompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UncompleteSubtaskRequest, $11.UncompleteSubtaskResponse>(
        'UncompleteSubtask',
        uncompleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UncompleteSubtaskRequest.fromBuffer(value),
        ($11.UncompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteSubtaskRequest, $11.DeleteSubtaskResponse>(
        'DeleteSubtask',
        deleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteSubtaskRequest.fromBuffer(value),
        ($11.DeleteSubtaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$11.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$11.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$11.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$11.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$11.AssignTaskResponse> assignTask_Pre($grpc.ServiceCall call, $async.Future<$11.AssignTaskRequest> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$11.UnassignTaskResponse> unassignTask_Pre($grpc.ServiceCall call, $async.Future<$11.UnassignTaskRequest> request) async {
    return unassignTask(call, await request);
  }

  $async.Future<$11.CreateSubtaskResponse> createSubtask_Pre($grpc.ServiceCall call, $async.Future<$11.CreateSubtaskRequest> request) async {
    return createSubtask(call, await request);
  }

  $async.Future<$11.UpdateSubtaskResponse> updateSubtask_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateSubtaskRequest> request) async {
    return updateSubtask(call, await request);
  }

  $async.Future<$11.CompleteSubtaskResponse> completeSubtask_Pre($grpc.ServiceCall call, $async.Future<$11.CompleteSubtaskRequest> request) async {
    return completeSubtask(call, await request);
  }

  $async.Future<$11.UncompleteSubtaskResponse> uncompleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$11.UncompleteSubtaskRequest> request) async {
    return uncompleteSubtask(call, await request);
  }

  $async.Future<$11.DeleteSubtaskResponse> deleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteSubtaskRequest> request) async {
    return deleteSubtask(call, await request);
  }

  $async.Future<$11.CreateTaskResponse> createTask($grpc.ServiceCall call, $11.CreateTaskRequest request);
  $async.Future<$11.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $11.UpdateTaskRequest request);
  $async.Future<$11.GetTaskResponse> getTask($grpc.ServiceCall call, $11.GetTaskRequest request);
  $async.Future<$11.AssignTaskResponse> assignTask($grpc.ServiceCall call, $11.AssignTaskRequest request);
  $async.Future<$11.UnassignTaskResponse> unassignTask($grpc.ServiceCall call, $11.UnassignTaskRequest request);
  $async.Future<$11.CreateSubtaskResponse> createSubtask($grpc.ServiceCall call, $11.CreateSubtaskRequest request);
  $async.Future<$11.UpdateSubtaskResponse> updateSubtask($grpc.ServiceCall call, $11.UpdateSubtaskRequest request);
  $async.Future<$11.CompleteSubtaskResponse> completeSubtask($grpc.ServiceCall call, $11.CompleteSubtaskRequest request);
  $async.Future<$11.UncompleteSubtaskResponse> uncompleteSubtask($grpc.ServiceCall call, $11.UncompleteSubtaskRequest request);
  $async.Future<$11.DeleteSubtaskResponse> deleteSubtask($grpc.ServiceCall call, $11.DeleteSubtaskRequest request);
}
