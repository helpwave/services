//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/task_template_svc.proto
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

import 'task_template_svc.pb.dart' as $10;

export 'task_template_svc.pb.dart';

@$pb.GrpcServiceName('services.task_svc.v1.TaskTemplateService')
class TaskTemplateServiceClient extends $grpc.Client {
  static final _$createTaskTemplate = $grpc.ClientMethod<$10.CreateTaskTemplateRequest, $10.CreateTaskTemplateResponse>(
      '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      ($10.CreateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateTaskTemplateResponse.fromBuffer(value));
  static final _$getAllTaskTemplates = $grpc.ClientMethod<$10.GetAllTaskTemplatesRequest, $10.GetAllTaskTemplatesResponse>(
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      ($10.GetAllTaskTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetAllTaskTemplatesResponse.fromBuffer(value));
  static final _$deleteTaskTemplate = $grpc.ClientMethod<$10.DeleteTaskTemplateRequest, $10.DeleteTaskTemplateResponse>(
      '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      ($10.DeleteTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplateSubTask = $grpc.ClientMethod<$10.DeleteTaskTemplateSubTaskRequest, $10.DeleteTaskTemplateSubTaskResponse>(
      '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      ($10.DeleteTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$updateTaskTemplate = $grpc.ClientMethod<$10.UpdateTaskTemplateRequest, $10.UpdateTaskTemplateResponse>(
      '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      ($10.UpdateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateTaskTemplateResponse.fromBuffer(value));
  static final _$updateTaskTemplateSubTask = $grpc.ClientMethod<$10.UpdateTaskTemplateSubTaskRequest, $10.UpdateTaskTemplateSubTaskResponse>(
      '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      ($10.UpdateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$createTaskTemplateSubTask = $grpc.ClientMethod<$10.CreateTaskTemplateSubTaskRequest, $10.CreateTaskTemplateSubTaskResponse>(
      '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      ($10.CreateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByCreator = $grpc.ClientMethod<$10.GetAllTaskTemplatesByCreatorRequest, $10.GetAllTaskTemplatesByCreatorResponse>(
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByCreator',
      ($10.GetAllTaskTemplatesByCreatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetAllTaskTemplatesByCreatorResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByWard = $grpc.ClientMethod<$10.GetAllTaskTemplatesByWardRequest, $10.GetAllTaskTemplatesByWardResponse>(
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByWard',
      ($10.GetAllTaskTemplatesByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetAllTaskTemplatesByWardResponse.fromBuffer(value));

  TaskTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateTaskTemplateResponse> createTaskTemplate($10.CreateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetAllTaskTemplatesResponse> getAllTaskTemplates($10.GetAllTaskTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteTaskTemplateResponse> deleteTaskTemplate($10.DeleteTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($10.DeleteTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateTaskTemplateResponse> updateTaskTemplate($10.UpdateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($10.UpdateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($10.CreateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($10.GetAllTaskTemplatesByCreatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByCreator, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($10.GetAllTaskTemplatesByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('services.task_svc.v1.TaskTemplateService')
abstract class TaskTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'services.task_svc.v1.TaskTemplateService';

  TaskTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateTaskTemplateRequest, $10.CreateTaskTemplateResponse>(
        'CreateTaskTemplate',
        createTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateTaskTemplateRequest.fromBuffer(value),
        ($10.CreateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetAllTaskTemplatesRequest, $10.GetAllTaskTemplatesResponse>(
        'GetAllTaskTemplates',
        getAllTaskTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetAllTaskTemplatesRequest.fromBuffer(value),
        ($10.GetAllTaskTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteTaskTemplateRequest, $10.DeleteTaskTemplateResponse>(
        'DeleteTaskTemplate',
        deleteTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteTaskTemplateRequest.fromBuffer(value),
        ($10.DeleteTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteTaskTemplateSubTaskRequest, $10.DeleteTaskTemplateSubTaskResponse>(
        'DeleteTaskTemplateSubTask',
        deleteTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteTaskTemplateSubTaskRequest.fromBuffer(value),
        ($10.DeleteTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateTaskTemplateRequest, $10.UpdateTaskTemplateResponse>(
        'UpdateTaskTemplate',
        updateTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateTaskTemplateRequest.fromBuffer(value),
        ($10.UpdateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateTaskTemplateSubTaskRequest, $10.UpdateTaskTemplateSubTaskResponse>(
        'UpdateTaskTemplateSubTask',
        updateTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($10.UpdateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.CreateTaskTemplateSubTaskRequest, $10.CreateTaskTemplateSubTaskResponse>(
        'CreateTaskTemplateSubTask',
        createTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($10.CreateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetAllTaskTemplatesByCreatorRequest, $10.GetAllTaskTemplatesByCreatorResponse>(
        'GetAllTaskTemplatesByCreator',
        getAllTaskTemplatesByCreator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetAllTaskTemplatesByCreatorRequest.fromBuffer(value),
        ($10.GetAllTaskTemplatesByCreatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetAllTaskTemplatesByWardRequest, $10.GetAllTaskTemplatesByWardResponse>(
        'GetAllTaskTemplatesByWard',
        getAllTaskTemplatesByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetAllTaskTemplatesByWardRequest.fromBuffer(value),
        ($10.GetAllTaskTemplatesByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateTaskTemplateResponse> createTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$10.CreateTaskTemplateRequest> request) async {
    return createTaskTemplate(call, await request);
  }

  $async.Future<$10.GetAllTaskTemplatesResponse> getAllTaskTemplates_Pre($grpc.ServiceCall call, $async.Future<$10.GetAllTaskTemplatesRequest> request) async {
    return getAllTaskTemplates(call, await request);
  }

  $async.Future<$10.DeleteTaskTemplateResponse> deleteTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteTaskTemplateRequest> request) async {
    return deleteTaskTemplate(call, await request);
  }

  $async.Future<$10.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteTaskTemplateSubTaskRequest> request) async {
    return deleteTaskTemplateSubTask(call, await request);
  }

  $async.Future<$10.UpdateTaskTemplateResponse> updateTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateTaskTemplateRequest> request) async {
    return updateTaskTemplate(call, await request);
  }

  $async.Future<$10.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateTaskTemplateSubTaskRequest> request) async {
    return updateTaskTemplateSubTask(call, await request);
  }

  $async.Future<$10.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$10.CreateTaskTemplateSubTaskRequest> request) async {
    return createTaskTemplateSubTask(call, await request);
  }

  $async.Future<$10.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator_Pre($grpc.ServiceCall call, $async.Future<$10.GetAllTaskTemplatesByCreatorRequest> request) async {
    return getAllTaskTemplatesByCreator(call, await request);
  }

  $async.Future<$10.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard_Pre($grpc.ServiceCall call, $async.Future<$10.GetAllTaskTemplatesByWardRequest> request) async {
    return getAllTaskTemplatesByWard(call, await request);
  }

  $async.Future<$10.CreateTaskTemplateResponse> createTaskTemplate($grpc.ServiceCall call, $10.CreateTaskTemplateRequest request);
  $async.Future<$10.GetAllTaskTemplatesResponse> getAllTaskTemplates($grpc.ServiceCall call, $10.GetAllTaskTemplatesRequest request);
  $async.Future<$10.DeleteTaskTemplateResponse> deleteTaskTemplate($grpc.ServiceCall call, $10.DeleteTaskTemplateRequest request);
  $async.Future<$10.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($grpc.ServiceCall call, $10.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$10.UpdateTaskTemplateResponse> updateTaskTemplate($grpc.ServiceCall call, $10.UpdateTaskTemplateRequest request);
  $async.Future<$10.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($grpc.ServiceCall call, $10.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$10.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($grpc.ServiceCall call, $10.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$10.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($grpc.ServiceCall call, $10.GetAllTaskTemplatesByCreatorRequest request);
  $async.Future<$10.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($grpc.ServiceCall call, $10.GetAllTaskTemplatesByWardRequest request);
}
