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

import 'task_template_svc.pb.dart' as $11;

export 'task_template_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskTemplateService')
class TaskTemplateServiceClient extends $grpc.Client {
  static final _$createTaskTemplate = $grpc.ClientMethod<$11.CreateTaskTemplateRequest, $11.CreateTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      ($11.CreateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateTaskTemplateResponse.fromBuffer(value));
  static final _$getAllTaskTemplates = $grpc.ClientMethod<$11.GetAllTaskTemplatesRequest, $11.GetAllTaskTemplatesResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      ($11.GetAllTaskTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetAllTaskTemplatesResponse.fromBuffer(value));
  static final _$deleteTaskTemplate = $grpc.ClientMethod<$11.DeleteTaskTemplateRequest, $11.DeleteTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      ($11.DeleteTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplateSubTask = $grpc.ClientMethod<$11.DeleteTaskTemplateSubTaskRequest, $11.DeleteTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      ($11.DeleteTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$updateTaskTemplate = $grpc.ClientMethod<$11.UpdateTaskTemplateRequest, $11.UpdateTaskTemplateResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      ($11.UpdateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateTaskTemplateResponse.fromBuffer(value));
  static final _$updateTaskTemplateSubTask = $grpc.ClientMethod<$11.UpdateTaskTemplateSubTaskRequest, $11.UpdateTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      ($11.UpdateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$createTaskTemplateSubTask = $grpc.ClientMethod<$11.CreateTaskTemplateSubTaskRequest, $11.CreateTaskTemplateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      ($11.CreateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByCreator = $grpc.ClientMethod<$11.GetAllTaskTemplatesByCreatorRequest, $11.GetAllTaskTemplatesByCreatorResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByCreator',
      ($11.GetAllTaskTemplatesByCreatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetAllTaskTemplatesByCreatorResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByWard = $grpc.ClientMethod<$11.GetAllTaskTemplatesByWardRequest, $11.GetAllTaskTemplatesByWardResponse>(
      '/proto.services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByWard',
      ($11.GetAllTaskTemplatesByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetAllTaskTemplatesByWardResponse.fromBuffer(value));

  TaskTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateTaskTemplateResponse> createTaskTemplate($11.CreateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetAllTaskTemplatesResponse> getAllTaskTemplates($11.GetAllTaskTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteTaskTemplateResponse> deleteTaskTemplate($11.DeleteTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($11.DeleteTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateTaskTemplateResponse> updateTaskTemplate($11.UpdateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($11.UpdateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$11.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($11.CreateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($11.GetAllTaskTemplatesByCreatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByCreator, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($11.GetAllTaskTemplatesByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskTemplateService')
abstract class TaskTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.TaskTemplateService';

  TaskTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateTaskTemplateRequest, $11.CreateTaskTemplateResponse>(
        'CreateTaskTemplate',
        createTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateTaskTemplateRequest.fromBuffer(value),
        ($11.CreateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetAllTaskTemplatesRequest, $11.GetAllTaskTemplatesResponse>(
        'GetAllTaskTemplates',
        getAllTaskTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetAllTaskTemplatesRequest.fromBuffer(value),
        ($11.GetAllTaskTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteTaskTemplateRequest, $11.DeleteTaskTemplateResponse>(
        'DeleteTaskTemplate',
        deleteTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteTaskTemplateRequest.fromBuffer(value),
        ($11.DeleteTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteTaskTemplateSubTaskRequest, $11.DeleteTaskTemplateSubTaskResponse>(
        'DeleteTaskTemplateSubTask',
        deleteTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteTaskTemplateSubTaskRequest.fromBuffer(value),
        ($11.DeleteTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateTaskTemplateRequest, $11.UpdateTaskTemplateResponse>(
        'UpdateTaskTemplate',
        updateTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateTaskTemplateRequest.fromBuffer(value),
        ($11.UpdateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateTaskTemplateSubTaskRequest, $11.UpdateTaskTemplateSubTaskResponse>(
        'UpdateTaskTemplateSubTask',
        updateTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($11.UpdateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreateTaskTemplateSubTaskRequest, $11.CreateTaskTemplateSubTaskResponse>(
        'CreateTaskTemplateSubTask',
        createTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($11.CreateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetAllTaskTemplatesByCreatorRequest, $11.GetAllTaskTemplatesByCreatorResponse>(
        'GetAllTaskTemplatesByCreator',
        getAllTaskTemplatesByCreator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetAllTaskTemplatesByCreatorRequest.fromBuffer(value),
        ($11.GetAllTaskTemplatesByCreatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetAllTaskTemplatesByWardRequest, $11.GetAllTaskTemplatesByWardResponse>(
        'GetAllTaskTemplatesByWard',
        getAllTaskTemplatesByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetAllTaskTemplatesByWardRequest.fromBuffer(value),
        ($11.GetAllTaskTemplatesByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateTaskTemplateResponse> createTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$11.CreateTaskTemplateRequest> request) async {
    return createTaskTemplate(call, await request);
  }

  $async.Future<$11.GetAllTaskTemplatesResponse> getAllTaskTemplates_Pre($grpc.ServiceCall call, $async.Future<$11.GetAllTaskTemplatesRequest> request) async {
    return getAllTaskTemplates(call, await request);
  }

  $async.Future<$11.DeleteTaskTemplateResponse> deleteTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteTaskTemplateRequest> request) async {
    return deleteTaskTemplate(call, await request);
  }

  $async.Future<$11.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteTaskTemplateSubTaskRequest> request) async {
    return deleteTaskTemplateSubTask(call, await request);
  }

  $async.Future<$11.UpdateTaskTemplateResponse> updateTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateTaskTemplateRequest> request) async {
    return updateTaskTemplate(call, await request);
  }

  $async.Future<$11.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateTaskTemplateSubTaskRequest> request) async {
    return updateTaskTemplateSubTask(call, await request);
  }

  $async.Future<$11.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$11.CreateTaskTemplateSubTaskRequest> request) async {
    return createTaskTemplateSubTask(call, await request);
  }

  $async.Future<$11.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator_Pre($grpc.ServiceCall call, $async.Future<$11.GetAllTaskTemplatesByCreatorRequest> request) async {
    return getAllTaskTemplatesByCreator(call, await request);
  }

  $async.Future<$11.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard_Pre($grpc.ServiceCall call, $async.Future<$11.GetAllTaskTemplatesByWardRequest> request) async {
    return getAllTaskTemplatesByWard(call, await request);
  }

  $async.Future<$11.CreateTaskTemplateResponse> createTaskTemplate($grpc.ServiceCall call, $11.CreateTaskTemplateRequest request);
  $async.Future<$11.GetAllTaskTemplatesResponse> getAllTaskTemplates($grpc.ServiceCall call, $11.GetAllTaskTemplatesRequest request);
  $async.Future<$11.DeleteTaskTemplateResponse> deleteTaskTemplate($grpc.ServiceCall call, $11.DeleteTaskTemplateRequest request);
  $async.Future<$11.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($grpc.ServiceCall call, $11.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$11.UpdateTaskTemplateResponse> updateTaskTemplate($grpc.ServiceCall call, $11.UpdateTaskTemplateRequest request);
  $async.Future<$11.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($grpc.ServiceCall call, $11.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$11.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($grpc.ServiceCall call, $11.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$11.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($grpc.ServiceCall call, $11.GetAllTaskTemplatesByCreatorRequest request);
  $async.Future<$11.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($grpc.ServiceCall call, $11.GetAllTaskTemplatesByWardRequest request);
}
