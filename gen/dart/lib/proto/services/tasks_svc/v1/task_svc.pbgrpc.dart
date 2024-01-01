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

import 'task_svc.pb.dart' as $9;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$9.CreateTaskRequest, $9.CreateTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CreateTask',
      ($9.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateTaskResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$9.UpdateTaskRequest, $9.UpdateTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UpdateTask',
      ($9.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$9.GetTaskRequest, $9.GetTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetTask',
      ($9.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetTaskResponse.fromBuffer(value));
  static final _$assignTask = $grpc.ClientMethod<$9.AssignTaskRequest, $9.AssignTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/AssignTask',
      ($9.AssignTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AssignTaskResponse.fromBuffer(value));
  static final _$createSubtask = $grpc.ClientMethod<$9.CreateSubtaskRequest, $9.CreateSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CreateSubtask',
      ($9.CreateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateSubtaskResponse.fromBuffer(value));
  static final _$updateSubtask = $grpc.ClientMethod<$9.UpdateSubtaskRequest, $9.UpdateSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UpdateSubtask',
      ($9.UpdateSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSubtaskResponse.fromBuffer(value));
  static final _$completeSubtask = $grpc.ClientMethod<$9.CompleteSubtaskRequest, $9.CompleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/CompleteSubtask',
      ($9.CompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CompleteSubtaskResponse.fromBuffer(value));
  static final _$uncompleteSubtask = $grpc.ClientMethod<$9.UncompleteSubtaskRequest, $9.UncompleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/UncompleteSubtask',
      ($9.UncompleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UncompleteSubtaskResponse.fromBuffer(value));
  static final _$deleteSubtask = $grpc.ClientMethod<$9.DeleteSubtaskRequest, $9.DeleteSubtaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/DeleteSubtask',
      ($9.DeleteSubtaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteSubtaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateTaskResponse> createTask($9.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateTaskResponse> updateTask($9.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetTaskResponse> getTask($9.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.AssignTaskResponse> assignTask($9.AssignTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreateSubtaskResponse> createSubtask($9.CreateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSubtaskResponse> updateSubtask($9.UpdateSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$9.CompleteSubtaskResponse> completeSubtask($9.CompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$completeSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$9.UncompleteSubtaskResponse> uncompleteSubtask($9.UncompleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uncompleteSubtask, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteSubtaskResponse> deleteSubtask($9.DeleteSubtaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSubtask, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.tasks_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateTaskRequest, $9.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateTaskRequest.fromBuffer(value),
        ($9.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateTaskRequest, $9.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateTaskRequest.fromBuffer(value),
        ($9.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetTaskRequest, $9.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetTaskRequest.fromBuffer(value),
        ($9.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AssignTaskRequest, $9.AssignTaskResponse>(
        'AssignTask',
        assignTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AssignTaskRequest.fromBuffer(value),
        ($9.AssignTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreateSubtaskRequest, $9.CreateSubtaskResponse>(
        'CreateSubtask',
        createSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateSubtaskRequest.fromBuffer(value),
        ($9.CreateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSubtaskRequest, $9.UpdateSubtaskResponse>(
        'UpdateSubtask',
        updateSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSubtaskRequest.fromBuffer(value),
        ($9.UpdateSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CompleteSubtaskRequest, $9.CompleteSubtaskResponse>(
        'CompleteSubtask',
        completeSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CompleteSubtaskRequest.fromBuffer(value),
        ($9.CompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UncompleteSubtaskRequest, $9.UncompleteSubtaskResponse>(
        'UncompleteSubtask',
        uncompleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UncompleteSubtaskRequest.fromBuffer(value),
        ($9.UncompleteSubtaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteSubtaskRequest, $9.DeleteSubtaskResponse>(
        'DeleteSubtask',
        deleteSubtask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteSubtaskRequest.fromBuffer(value),
        ($9.DeleteSubtaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$9.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$9.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$9.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$9.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$9.AssignTaskResponse> assignTask_Pre($grpc.ServiceCall call, $async.Future<$9.AssignTaskRequest> request) async {
    return assignTask(call, await request);
  }

  $async.Future<$9.CreateSubtaskResponse> createSubtask_Pre($grpc.ServiceCall call, $async.Future<$9.CreateSubtaskRequest> request) async {
    return createSubtask(call, await request);
  }

  $async.Future<$9.UpdateSubtaskResponse> updateSubtask_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSubtaskRequest> request) async {
    return updateSubtask(call, await request);
  }

  $async.Future<$9.CompleteSubtaskResponse> completeSubtask_Pre($grpc.ServiceCall call, $async.Future<$9.CompleteSubtaskRequest> request) async {
    return completeSubtask(call, await request);
  }

  $async.Future<$9.UncompleteSubtaskResponse> uncompleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$9.UncompleteSubtaskRequest> request) async {
    return uncompleteSubtask(call, await request);
  }

  $async.Future<$9.DeleteSubtaskResponse> deleteSubtask_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteSubtaskRequest> request) async {
    return deleteSubtask(call, await request);
  }

  $async.Future<$9.CreateTaskResponse> createTask($grpc.ServiceCall call, $9.CreateTaskRequest request);
  $async.Future<$9.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $9.UpdateTaskRequest request);
  $async.Future<$9.GetTaskResponse> getTask($grpc.ServiceCall call, $9.GetTaskRequest request);
  $async.Future<$9.AssignTaskResponse> assignTask($grpc.ServiceCall call, $9.AssignTaskRequest request);
  $async.Future<$9.CreateSubtaskResponse> createSubtask($grpc.ServiceCall call, $9.CreateSubtaskRequest request);
  $async.Future<$9.UpdateSubtaskResponse> updateSubtask($grpc.ServiceCall call, $9.UpdateSubtaskRequest request);
  $async.Future<$9.CompleteSubtaskResponse> completeSubtask($grpc.ServiceCall call, $9.CompleteSubtaskRequest request);
  $async.Future<$9.UncompleteSubtaskResponse> uncompleteSubtask($grpc.ServiceCall call, $9.UncompleteSubtaskRequest request);
  $async.Future<$9.DeleteSubtaskResponse> deleteSubtask($grpc.ServiceCall call, $9.DeleteSubtaskRequest request);
}
