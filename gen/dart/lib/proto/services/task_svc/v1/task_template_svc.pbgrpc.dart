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

import 'task_template_svc.pb.dart' as $7;

export 'task_template_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskTemplateService')
class TaskTemplateServiceClient extends $grpc.Client {
  static final _$createTaskTemplate = $grpc.ClientMethod<$7.CreateTaskTemplateRequest, $7.CreateTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      ($7.CreateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateTaskTemplateResponse.fromBuffer(value));
  static final _$getAllTaskTemplates = $grpc.ClientMethod<$7.GetAllTaskTemplatesRequest, $7.GetAllTaskTemplatesResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      ($7.GetAllTaskTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetAllTaskTemplatesResponse.fromBuffer(value));
  static final _$deleteTaskTemplate = $grpc.ClientMethod<$7.DeleteTaskTemplateRequest, $7.DeleteTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      ($7.DeleteTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplateSubTask = $grpc.ClientMethod<$7.DeleteTaskTemplateSubTaskRequest, $7.DeleteTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      ($7.DeleteTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$updateTaskTemplate = $grpc.ClientMethod<$7.UpdateTaskTemplateRequest, $7.UpdateTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      ($7.UpdateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateTaskTemplateResponse.fromBuffer(value));
  static final _$updateTaskTemplateSubTask = $grpc.ClientMethod<$7.UpdateTaskTemplateSubTaskRequest, $7.UpdateTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      ($7.UpdateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$createTaskTemplateSubTask = $grpc.ClientMethod<$7.CreateTaskTemplateSubTaskRequest, $7.CreateTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      ($7.CreateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByCreator = $grpc.ClientMethod<$7.GetAllTaskTemplatesByCreatorRequest, $7.GetAllTaskTemplatesByCreatorResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByCreator',
      ($7.GetAllTaskTemplatesByCreatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetAllTaskTemplatesByCreatorResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByWard = $grpc.ClientMethod<$7.GetAllTaskTemplatesByWardRequest, $7.GetAllTaskTemplatesByWardResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByWard',
      ($7.GetAllTaskTemplatesByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetAllTaskTemplatesByWardResponse.fromBuffer(value));

  TaskTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateTaskTemplateResponse> createTaskTemplate($7.CreateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetAllTaskTemplatesResponse> getAllTaskTemplates($7.GetAllTaskTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteTaskTemplateResponse> deleteTaskTemplate($7.DeleteTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($7.DeleteTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateTaskTemplateResponse> updateTaskTemplate($7.UpdateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($7.UpdateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($7.CreateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($7.GetAllTaskTemplatesByCreatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByCreator, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($7.GetAllTaskTemplatesByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskTemplateService')
abstract class TaskTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.TaskTemplateService';

  TaskTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateTaskTemplateRequest, $7.CreateTaskTemplateResponse>(
        'CreateTaskTemplate',
        createTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateTaskTemplateRequest.fromBuffer(value),
        ($7.CreateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetAllTaskTemplatesRequest, $7.GetAllTaskTemplatesResponse>(
        'GetAllTaskTemplates',
        getAllTaskTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetAllTaskTemplatesRequest.fromBuffer(value),
        ($7.GetAllTaskTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteTaskTemplateRequest, $7.DeleteTaskTemplateResponse>(
        'DeleteTaskTemplate',
        deleteTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteTaskTemplateRequest.fromBuffer(value),
        ($7.DeleteTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteTaskTemplateSubTaskRequest, $7.DeleteTaskTemplateSubTaskResponse>(
        'DeleteTaskTemplateSubTask',
        deleteTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteTaskTemplateSubTaskRequest.fromBuffer(value),
        ($7.DeleteTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateTaskTemplateRequest, $7.UpdateTaskTemplateResponse>(
        'UpdateTaskTemplate',
        updateTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateTaskTemplateRequest.fromBuffer(value),
        ($7.UpdateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateTaskTemplateSubTaskRequest, $7.UpdateTaskTemplateSubTaskResponse>(
        'UpdateTaskTemplateSubTask',
        updateTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($7.UpdateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateTaskTemplateSubTaskRequest, $7.CreateTaskTemplateSubTaskResponse>(
        'CreateTaskTemplateSubTask',
        createTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($7.CreateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetAllTaskTemplatesByCreatorRequest, $7.GetAllTaskTemplatesByCreatorResponse>(
        'GetAllTaskTemplatesByCreator',
        getAllTaskTemplatesByCreator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetAllTaskTemplatesByCreatorRequest.fromBuffer(value),
        ($7.GetAllTaskTemplatesByCreatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetAllTaskTemplatesByWardRequest, $7.GetAllTaskTemplatesByWardResponse>(
        'GetAllTaskTemplatesByWard',
        getAllTaskTemplatesByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetAllTaskTemplatesByWardRequest.fromBuffer(value),
        ($7.GetAllTaskTemplatesByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateTaskTemplateResponse> createTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$7.CreateTaskTemplateRequest> request) async {
    return createTaskTemplate(call, await request);
  }

  $async.Future<$7.GetAllTaskTemplatesResponse> getAllTaskTemplates_Pre($grpc.ServiceCall call, $async.Future<$7.GetAllTaskTemplatesRequest> request) async {
    return getAllTaskTemplates(call, await request);
  }

  $async.Future<$7.DeleteTaskTemplateResponse> deleteTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteTaskTemplateRequest> request) async {
    return deleteTaskTemplate(call, await request);
  }

  $async.Future<$7.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteTaskTemplateSubTaskRequest> request) async {
    return deleteTaskTemplateSubTask(call, await request);
  }

  $async.Future<$7.UpdateTaskTemplateResponse> updateTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateTaskTemplateRequest> request) async {
    return updateTaskTemplate(call, await request);
  }

  $async.Future<$7.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateTaskTemplateSubTaskRequest> request) async {
    return updateTaskTemplateSubTask(call, await request);
  }

  $async.Future<$7.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$7.CreateTaskTemplateSubTaskRequest> request) async {
    return createTaskTemplateSubTask(call, await request);
  }

  $async.Future<$7.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator_Pre($grpc.ServiceCall call, $async.Future<$7.GetAllTaskTemplatesByCreatorRequest> request) async {
    return getAllTaskTemplatesByCreator(call, await request);
  }

  $async.Future<$7.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard_Pre($grpc.ServiceCall call, $async.Future<$7.GetAllTaskTemplatesByWardRequest> request) async {
    return getAllTaskTemplatesByWard(call, await request);
  }

  $async.Future<$7.CreateTaskTemplateResponse> createTaskTemplate($grpc.ServiceCall call, $7.CreateTaskTemplateRequest request);
  $async.Future<$7.GetAllTaskTemplatesResponse> getAllTaskTemplates($grpc.ServiceCall call, $7.GetAllTaskTemplatesRequest request);
  $async.Future<$7.DeleteTaskTemplateResponse> deleteTaskTemplate($grpc.ServiceCall call, $7.DeleteTaskTemplateRequest request);
  $async.Future<$7.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($grpc.ServiceCall call, $7.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$7.UpdateTaskTemplateResponse> updateTaskTemplate($grpc.ServiceCall call, $7.UpdateTaskTemplateRequest request);
  $async.Future<$7.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($grpc.ServiceCall call, $7.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$7.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($grpc.ServiceCall call, $7.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$7.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($grpc.ServiceCall call, $7.GetAllTaskTemplatesByCreatorRequest request);
  $async.Future<$7.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($grpc.ServiceCall call, $7.GetAllTaskTemplatesByWardRequest request);
}
