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

import 'task_template_svc.pb.dart' as $6;

export 'task_template_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskTemplateService')
class TaskTemplateServiceClient extends $grpc.Client {
  static final _$createTaskTemplate = $grpc.ClientMethod<$6.CreateTaskTemplateRequest, $6.CreateTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      ($6.CreateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateTaskTemplateResponse.fromBuffer(value));
  static final _$getAllTaskTemplates = $grpc.ClientMethod<$6.GetAllTaskTemplatesRequest, $6.GetAllTaskTemplatesResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      ($6.GetAllTaskTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetAllTaskTemplatesResponse.fromBuffer(value));
  static final _$deleteTaskTemplate = $grpc.ClientMethod<$6.DeleteTaskTemplateRequest, $6.DeleteTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      ($6.DeleteTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplateSubTask = $grpc.ClientMethod<$6.DeleteTaskTemplateSubTaskRequest, $6.DeleteTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      ($6.DeleteTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$updateTaskTemplate = $grpc.ClientMethod<$6.UpdateTaskTemplateRequest, $6.UpdateTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      ($6.UpdateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateTaskTemplateResponse.fromBuffer(value));
  static final _$updateTaskTemplateSubTask = $grpc.ClientMethod<$6.UpdateTaskTemplateSubTaskRequest, $6.UpdateTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      ($6.UpdateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$createTaskTemplateSubTask = $grpc.ClientMethod<$6.CreateTaskTemplateSubTaskRequest, $6.CreateTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      ($6.CreateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByCreator = $grpc.ClientMethod<$6.GetAllTaskTemplatesByCreatorRequest, $6.GetAllTaskTemplatesByCreatorResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByCreator',
      ($6.GetAllTaskTemplatesByCreatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetAllTaskTemplatesByCreatorResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByWard = $grpc.ClientMethod<$6.GetAllTaskTemplatesByWardRequest, $6.GetAllTaskTemplatesByWardResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByWard',
      ($6.GetAllTaskTemplatesByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetAllTaskTemplatesByWardResponse.fromBuffer(value));

  TaskTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateTaskTemplateResponse> createTaskTemplate($6.CreateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetAllTaskTemplatesResponse> getAllTaskTemplates($6.GetAllTaskTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteTaskTemplateResponse> deleteTaskTemplate($6.DeleteTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($6.DeleteTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateTaskTemplateResponse> updateTaskTemplate($6.UpdateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($6.UpdateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($6.CreateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($6.GetAllTaskTemplatesByCreatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByCreator, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($6.GetAllTaskTemplatesByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskTemplateService')
abstract class TaskTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.TaskTemplateService';

  TaskTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateTaskTemplateRequest, $6.CreateTaskTemplateResponse>(
        'CreateTaskTemplate',
        createTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateTaskTemplateRequest.fromBuffer(value),
        ($6.CreateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetAllTaskTemplatesRequest, $6.GetAllTaskTemplatesResponse>(
        'GetAllTaskTemplates',
        getAllTaskTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetAllTaskTemplatesRequest.fromBuffer(value),
        ($6.GetAllTaskTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteTaskTemplateRequest, $6.DeleteTaskTemplateResponse>(
        'DeleteTaskTemplate',
        deleteTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteTaskTemplateRequest.fromBuffer(value),
        ($6.DeleteTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteTaskTemplateSubTaskRequest, $6.DeleteTaskTemplateSubTaskResponse>(
        'DeleteTaskTemplateSubTask',
        deleteTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteTaskTemplateSubTaskRequest.fromBuffer(value),
        ($6.DeleteTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateTaskTemplateRequest, $6.UpdateTaskTemplateResponse>(
        'UpdateTaskTemplate',
        updateTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateTaskTemplateRequest.fromBuffer(value),
        ($6.UpdateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateTaskTemplateSubTaskRequest, $6.UpdateTaskTemplateSubTaskResponse>(
        'UpdateTaskTemplateSubTask',
        updateTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($6.UpdateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateTaskTemplateSubTaskRequest, $6.CreateTaskTemplateSubTaskResponse>(
        'CreateTaskTemplateSubTask',
        createTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($6.CreateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetAllTaskTemplatesByCreatorRequest, $6.GetAllTaskTemplatesByCreatorResponse>(
        'GetAllTaskTemplatesByCreator',
        getAllTaskTemplatesByCreator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetAllTaskTemplatesByCreatorRequest.fromBuffer(value),
        ($6.GetAllTaskTemplatesByCreatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetAllTaskTemplatesByWardRequest, $6.GetAllTaskTemplatesByWardResponse>(
        'GetAllTaskTemplatesByWard',
        getAllTaskTemplatesByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetAllTaskTemplatesByWardRequest.fromBuffer(value),
        ($6.GetAllTaskTemplatesByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateTaskTemplateResponse> createTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$6.CreateTaskTemplateRequest> request) async {
    return createTaskTemplate(call, await request);
  }

  $async.Future<$6.GetAllTaskTemplatesResponse> getAllTaskTemplates_Pre($grpc.ServiceCall call, $async.Future<$6.GetAllTaskTemplatesRequest> request) async {
    return getAllTaskTemplates(call, await request);
  }

  $async.Future<$6.DeleteTaskTemplateResponse> deleteTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteTaskTemplateRequest> request) async {
    return deleteTaskTemplate(call, await request);
  }

  $async.Future<$6.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteTaskTemplateSubTaskRequest> request) async {
    return deleteTaskTemplateSubTask(call, await request);
  }

  $async.Future<$6.UpdateTaskTemplateResponse> updateTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateTaskTemplateRequest> request) async {
    return updateTaskTemplate(call, await request);
  }

  $async.Future<$6.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateTaskTemplateSubTaskRequest> request) async {
    return updateTaskTemplateSubTask(call, await request);
  }

  $async.Future<$6.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$6.CreateTaskTemplateSubTaskRequest> request) async {
    return createTaskTemplateSubTask(call, await request);
  }

  $async.Future<$6.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator_Pre($grpc.ServiceCall call, $async.Future<$6.GetAllTaskTemplatesByCreatorRequest> request) async {
    return getAllTaskTemplatesByCreator(call, await request);
  }

  $async.Future<$6.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard_Pre($grpc.ServiceCall call, $async.Future<$6.GetAllTaskTemplatesByWardRequest> request) async {
    return getAllTaskTemplatesByWard(call, await request);
  }

  $async.Future<$6.CreateTaskTemplateResponse> createTaskTemplate($grpc.ServiceCall call, $6.CreateTaskTemplateRequest request);
  $async.Future<$6.GetAllTaskTemplatesResponse> getAllTaskTemplates($grpc.ServiceCall call, $6.GetAllTaskTemplatesRequest request);
  $async.Future<$6.DeleteTaskTemplateResponse> deleteTaskTemplate($grpc.ServiceCall call, $6.DeleteTaskTemplateRequest request);
  $async.Future<$6.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($grpc.ServiceCall call, $6.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$6.UpdateTaskTemplateResponse> updateTaskTemplate($grpc.ServiceCall call, $6.UpdateTaskTemplateRequest request);
  $async.Future<$6.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($grpc.ServiceCall call, $6.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$6.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($grpc.ServiceCall call, $6.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$6.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($grpc.ServiceCall call, $6.GetAllTaskTemplatesByCreatorRequest request);
  $async.Future<$6.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($grpc.ServiceCall call, $6.GetAllTaskTemplatesByWardRequest request);
}
