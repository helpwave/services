//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_template_svc.proto
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

import 'task_template_svc.pb.dart' as $8;

export 'task_template_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskTemplateService')
class TaskTemplateServiceClient extends $grpc.Client {
  static final _$createTaskTemplate = $grpc.ClientMethod<$8.CreateTaskTemplateRequest, $8.CreateTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      ($8.CreateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateTaskTemplateResponse.fromBuffer(value));
  static final _$getAllTaskTemplates = $grpc.ClientMethod<$8.GetAllTaskTemplatesRequest, $8.GetAllTaskTemplatesResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      ($8.GetAllTaskTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetAllTaskTemplatesResponse.fromBuffer(value));
  static final _$deleteTaskTemplate = $grpc.ClientMethod<$8.DeleteTaskTemplateRequest, $8.DeleteTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      ($8.DeleteTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplateSubTask = $grpc.ClientMethod<$8.DeleteTaskTemplateSubTaskRequest, $8.DeleteTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      ($8.DeleteTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$updateTaskTemplate = $grpc.ClientMethod<$8.UpdateTaskTemplateRequest, $8.UpdateTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      ($8.UpdateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateTaskTemplateResponse.fromBuffer(value));
  static final _$updateTaskTemplateSubTask = $grpc.ClientMethod<$8.UpdateTaskTemplateSubTaskRequest, $8.UpdateTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      ($8.UpdateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$createTaskTemplateSubTask = $grpc.ClientMethod<$8.CreateTaskTemplateSubTaskRequest, $8.CreateTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      ($8.CreateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByCreator = $grpc.ClientMethod<$8.GetAllTaskTemplatesByCreatorRequest, $8.GetAllTaskTemplatesByCreatorResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByCreator',
      ($8.GetAllTaskTemplatesByCreatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetAllTaskTemplatesByCreatorResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByWard = $grpc.ClientMethod<$8.GetAllTaskTemplatesByWardRequest, $8.GetAllTaskTemplatesByWardResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByWard',
      ($8.GetAllTaskTemplatesByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetAllTaskTemplatesByWardResponse.fromBuffer(value));

  TaskTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateTaskTemplateResponse> createTaskTemplate($8.CreateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetAllTaskTemplatesResponse> getAllTaskTemplates($8.GetAllTaskTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteTaskTemplateResponse> deleteTaskTemplate($8.DeleteTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($8.DeleteTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateTaskTemplateResponse> updateTaskTemplate($8.UpdateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($8.UpdateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($8.CreateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($8.GetAllTaskTemplatesByCreatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByCreator, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($8.GetAllTaskTemplatesByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskTemplateService')
abstract class TaskTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.TaskTemplateService';

  TaskTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateTaskTemplateRequest, $8.CreateTaskTemplateResponse>(
        'CreateTaskTemplate',
        createTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateTaskTemplateRequest.fromBuffer(value),
        ($8.CreateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetAllTaskTemplatesRequest, $8.GetAllTaskTemplatesResponse>(
        'GetAllTaskTemplates',
        getAllTaskTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetAllTaskTemplatesRequest.fromBuffer(value),
        ($8.GetAllTaskTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteTaskTemplateRequest, $8.DeleteTaskTemplateResponse>(
        'DeleteTaskTemplate',
        deleteTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteTaskTemplateRequest.fromBuffer(value),
        ($8.DeleteTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteTaskTemplateSubTaskRequest, $8.DeleteTaskTemplateSubTaskResponse>(
        'DeleteTaskTemplateSubTask',
        deleteTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteTaskTemplateSubTaskRequest.fromBuffer(value),
        ($8.DeleteTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateTaskTemplateRequest, $8.UpdateTaskTemplateResponse>(
        'UpdateTaskTemplate',
        updateTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateTaskTemplateRequest.fromBuffer(value),
        ($8.UpdateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateTaskTemplateSubTaskRequest, $8.UpdateTaskTemplateSubTaskResponse>(
        'UpdateTaskTemplateSubTask',
        updateTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($8.UpdateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CreateTaskTemplateSubTaskRequest, $8.CreateTaskTemplateSubTaskResponse>(
        'CreateTaskTemplateSubTask',
        createTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($8.CreateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetAllTaskTemplatesByCreatorRequest, $8.GetAllTaskTemplatesByCreatorResponse>(
        'GetAllTaskTemplatesByCreator',
        getAllTaskTemplatesByCreator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetAllTaskTemplatesByCreatorRequest.fromBuffer(value),
        ($8.GetAllTaskTemplatesByCreatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetAllTaskTemplatesByWardRequest, $8.GetAllTaskTemplatesByWardResponse>(
        'GetAllTaskTemplatesByWard',
        getAllTaskTemplatesByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetAllTaskTemplatesByWardRequest.fromBuffer(value),
        ($8.GetAllTaskTemplatesByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateTaskTemplateResponse> createTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$8.CreateTaskTemplateRequest> request) async {
    return createTaskTemplate(call, await request);
  }

  $async.Future<$8.GetAllTaskTemplatesResponse> getAllTaskTemplates_Pre($grpc.ServiceCall call, $async.Future<$8.GetAllTaskTemplatesRequest> request) async {
    return getAllTaskTemplates(call, await request);
  }

  $async.Future<$8.DeleteTaskTemplateResponse> deleteTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteTaskTemplateRequest> request) async {
    return deleteTaskTemplate(call, await request);
  }

  $async.Future<$8.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteTaskTemplateSubTaskRequest> request) async {
    return deleteTaskTemplateSubTask(call, await request);
  }

  $async.Future<$8.UpdateTaskTemplateResponse> updateTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateTaskTemplateRequest> request) async {
    return updateTaskTemplate(call, await request);
  }

  $async.Future<$8.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateTaskTemplateSubTaskRequest> request) async {
    return updateTaskTemplateSubTask(call, await request);
  }

  $async.Future<$8.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$8.CreateTaskTemplateSubTaskRequest> request) async {
    return createTaskTemplateSubTask(call, await request);
  }

  $async.Future<$8.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator_Pre($grpc.ServiceCall call, $async.Future<$8.GetAllTaskTemplatesByCreatorRequest> request) async {
    return getAllTaskTemplatesByCreator(call, await request);
  }

  $async.Future<$8.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard_Pre($grpc.ServiceCall call, $async.Future<$8.GetAllTaskTemplatesByWardRequest> request) async {
    return getAllTaskTemplatesByWard(call, await request);
  }

  $async.Future<$8.CreateTaskTemplateResponse> createTaskTemplate($grpc.ServiceCall call, $8.CreateTaskTemplateRequest request);
  $async.Future<$8.GetAllTaskTemplatesResponse> getAllTaskTemplates($grpc.ServiceCall call, $8.GetAllTaskTemplatesRequest request);
  $async.Future<$8.DeleteTaskTemplateResponse> deleteTaskTemplate($grpc.ServiceCall call, $8.DeleteTaskTemplateRequest request);
  $async.Future<$8.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($grpc.ServiceCall call, $8.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$8.UpdateTaskTemplateResponse> updateTaskTemplate($grpc.ServiceCall call, $8.UpdateTaskTemplateRequest request);
  $async.Future<$8.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($grpc.ServiceCall call, $8.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$8.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($grpc.ServiceCall call, $8.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$8.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($grpc.ServiceCall call, $8.GetAllTaskTemplatesByCreatorRequest request);
  $async.Future<$8.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($grpc.ServiceCall call, $8.GetAllTaskTemplatesByWardRequest request);
}
