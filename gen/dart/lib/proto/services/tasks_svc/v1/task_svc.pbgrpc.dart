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
  static final _$getTask = $grpc.ClientMethod<$9.GetTaskRequest, $9.GetTaskResponse>(
      '/proto.services.tasks_svc.v1.TaskService/GetTask',
      ($9.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateTaskResponse> createTask($9.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetTaskResponse> getTask($9.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$9.GetTaskRequest, $9.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetTaskRequest.fromBuffer(value),
        ($9.GetTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$9.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$9.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$9.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$9.CreateTaskResponse> createTask($grpc.ServiceCall call, $9.CreateTaskRequest request);
  $async.Future<$9.GetTaskResponse> getTask($grpc.ServiceCall call, $9.GetTaskRequest request);
}
