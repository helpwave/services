//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/task_template_svc.proto
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

import 'task_template_svc.pb.dart' as $15;

export 'task_template_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskTemplateService')
class TaskTemplateServiceClient extends $grpc.Client {
  static final _$createTaskTemplate = $grpc.ClientMethod<$15.CreateTaskTemplateRequest, $15.CreateTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/CreateTaskTemplate',
      ($15.CreateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplate = $grpc.ClientMethod<$15.DeleteTaskTemplateRequest, $15.DeleteTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      ($15.DeleteTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplateSubTask = $grpc.ClientMethod<$15.DeleteTaskTemplateSubTaskRequest, $15.DeleteTaskTemplateSubTaskResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      ($15.DeleteTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.DeleteTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$updateTaskTemplate = $grpc.ClientMethod<$15.UpdateTaskTemplateRequest, $15.UpdateTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      ($15.UpdateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateTaskTemplateResponse.fromBuffer(value));
  static final _$updateTaskTemplateSubTask = $grpc.ClientMethod<$15.UpdateTaskTemplateSubTaskRequest, $15.UpdateTaskTemplateSubTaskResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      ($15.UpdateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$createTaskTemplateSubTask = $grpc.ClientMethod<$15.CreateTaskTemplateSubTaskRequest, $15.CreateTaskTemplateSubTaskResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      ($15.CreateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$getAllTaskTemplates = $grpc.ClientMethod<$15.GetAllTaskTemplatesRequest, $15.GetAllTaskTemplatesResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      ($15.GetAllTaskTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetAllTaskTemplatesResponse.fromBuffer(value));
  static final _$getTaskTemplate = $grpc.ClientMethod<$15.GetTaskTemplateRequest, $15.GetTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/GetTaskTemplate',
      ($15.GetTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.GetTaskTemplateResponse.fromBuffer(value));

  TaskTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.CreateTaskTemplateResponse> createTaskTemplate($15.CreateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteTaskTemplateResponse> deleteTaskTemplate($15.DeleteTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$15.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($15.DeleteTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateTaskTemplateResponse> updateTaskTemplate($15.UpdateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($15.UpdateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$15.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($15.CreateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetAllTaskTemplatesResponse> getAllTaskTemplates($15.GetAllTaskTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$15.GetTaskTemplateResponse> getTaskTemplate($15.GetTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTaskTemplate, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskTemplateService')
abstract class TaskTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.TaskTemplateService';

  TaskTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.CreateTaskTemplateRequest, $15.CreateTaskTemplateResponse>(
        'CreateTaskTemplate',
        createTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateTaskTemplateRequest.fromBuffer(value),
        ($15.CreateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteTaskTemplateRequest, $15.DeleteTaskTemplateResponse>(
        'DeleteTaskTemplate',
        deleteTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteTaskTemplateRequest.fromBuffer(value),
        ($15.DeleteTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.DeleteTaskTemplateSubTaskRequest, $15.DeleteTaskTemplateSubTaskResponse>(
        'DeleteTaskTemplateSubTask',
        deleteTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.DeleteTaskTemplateSubTaskRequest.fromBuffer(value),
        ($15.DeleteTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateTaskTemplateRequest, $15.UpdateTaskTemplateResponse>(
        'UpdateTaskTemplate',
        updateTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateTaskTemplateRequest.fromBuffer(value),
        ($15.UpdateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateTaskTemplateSubTaskRequest, $15.UpdateTaskTemplateSubTaskResponse>(
        'UpdateTaskTemplateSubTask',
        updateTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($15.UpdateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.CreateTaskTemplateSubTaskRequest, $15.CreateTaskTemplateSubTaskResponse>(
        'CreateTaskTemplateSubTask',
        createTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($15.CreateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetAllTaskTemplatesRequest, $15.GetAllTaskTemplatesResponse>(
        'GetAllTaskTemplates',
        getAllTaskTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetAllTaskTemplatesRequest.fromBuffer(value),
        ($15.GetAllTaskTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.GetTaskTemplateRequest, $15.GetTaskTemplateResponse>(
        'GetTaskTemplate',
        getTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.GetTaskTemplateRequest.fromBuffer(value),
        ($15.GetTaskTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.CreateTaskTemplateResponse> createTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$15.CreateTaskTemplateRequest> request) async {
    return createTaskTemplate(call, await request);
  }

  $async.Future<$15.DeleteTaskTemplateResponse> deleteTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteTaskTemplateRequest> request) async {
    return deleteTaskTemplate(call, await request);
  }

  $async.Future<$15.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$15.DeleteTaskTemplateSubTaskRequest> request) async {
    return deleteTaskTemplateSubTask(call, await request);
  }

  $async.Future<$15.UpdateTaskTemplateResponse> updateTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateTaskTemplateRequest> request) async {
    return updateTaskTemplate(call, await request);
  }

  $async.Future<$15.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateTaskTemplateSubTaskRequest> request) async {
    return updateTaskTemplateSubTask(call, await request);
  }

  $async.Future<$15.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$15.CreateTaskTemplateSubTaskRequest> request) async {
    return createTaskTemplateSubTask(call, await request);
  }

  $async.Future<$15.GetAllTaskTemplatesResponse> getAllTaskTemplates_Pre($grpc.ServiceCall call, $async.Future<$15.GetAllTaskTemplatesRequest> request) async {
    return getAllTaskTemplates(call, await request);
  }

  $async.Future<$15.GetTaskTemplateResponse> getTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$15.GetTaskTemplateRequest> request) async {
    return getTaskTemplate(call, await request);
  }

  $async.Future<$15.CreateTaskTemplateResponse> createTaskTemplate($grpc.ServiceCall call, $15.CreateTaskTemplateRequest request);
  $async.Future<$15.DeleteTaskTemplateResponse> deleteTaskTemplate($grpc.ServiceCall call, $15.DeleteTaskTemplateRequest request);
  $async.Future<$15.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($grpc.ServiceCall call, $15.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$15.UpdateTaskTemplateResponse> updateTaskTemplate($grpc.ServiceCall call, $15.UpdateTaskTemplateRequest request);
  $async.Future<$15.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($grpc.ServiceCall call, $15.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$15.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($grpc.ServiceCall call, $15.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$15.GetAllTaskTemplatesResponse> getAllTaskTemplates($grpc.ServiceCall call, $15.GetAllTaskTemplatesRequest request);
  $async.Future<$15.GetTaskTemplateResponse> getTaskTemplate($grpc.ServiceCall call, $15.GetTaskTemplateRequest request);
}
