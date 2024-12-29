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

import 'task_template_svc.pb.dart' as $4;

export 'task_template_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskTemplateService')
class TaskTemplateServiceClient extends $grpc.Client {
  static final _$createTaskTemplate = $grpc.ClientMethod<$4.CreateTaskTemplateRequest, $4.CreateTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/CreateTaskTemplate',
      ($4.CreateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplate = $grpc.ClientMethod<$4.DeleteTaskTemplateRequest, $4.DeleteTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      ($4.DeleteTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplateSubTask = $grpc.ClientMethod<$4.DeleteTaskTemplateSubTaskRequest, $4.DeleteTaskTemplateSubTaskResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      ($4.DeleteTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$updateTaskTemplate = $grpc.ClientMethod<$4.UpdateTaskTemplateRequest, $4.UpdateTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      ($4.UpdateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateTaskTemplateResponse.fromBuffer(value));
  static final _$updateTaskTemplateSubTask = $grpc.ClientMethod<$4.UpdateTaskTemplateSubTaskRequest, $4.UpdateTaskTemplateSubTaskResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      ($4.UpdateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$createTaskTemplateSubTask = $grpc.ClientMethod<$4.CreateTaskTemplateSubTaskRequest, $4.CreateTaskTemplateSubTaskResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      ($4.CreateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$getAllTaskTemplates = $grpc.ClientMethod<$4.GetAllTaskTemplatesRequest, $4.GetAllTaskTemplatesResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      ($4.GetAllTaskTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetAllTaskTemplatesResponse.fromBuffer(value));
  static final _$getTaskTemplate = $grpc.ClientMethod<$4.GetTaskTemplateRequest, $4.GetTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/GetTaskTemplate',
      ($4.GetTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetTaskTemplateResponse.fromBuffer(value));

  TaskTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateTaskTemplateResponse> createTaskTemplate($4.CreateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteTaskTemplateResponse> deleteTaskTemplate($4.DeleteTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($4.DeleteTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateTaskTemplateResponse> updateTaskTemplate($4.UpdateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($4.UpdateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$4.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($4.CreateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetAllTaskTemplatesResponse> getAllTaskTemplates($4.GetAllTaskTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetTaskTemplateResponse> getTaskTemplate($4.GetTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTaskTemplate, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskTemplateService')
abstract class TaskTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.TaskTemplateService';

  TaskTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateTaskTemplateRequest, $4.CreateTaskTemplateResponse>(
        'CreateTaskTemplate',
        createTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateTaskTemplateRequest.fromBuffer(value),
        ($4.CreateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteTaskTemplateRequest, $4.DeleteTaskTemplateResponse>(
        'DeleteTaskTemplate',
        deleteTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteTaskTemplateRequest.fromBuffer(value),
        ($4.DeleteTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteTaskTemplateSubTaskRequest, $4.DeleteTaskTemplateSubTaskResponse>(
        'DeleteTaskTemplateSubTask',
        deleteTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteTaskTemplateSubTaskRequest.fromBuffer(value),
        ($4.DeleteTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateTaskTemplateRequest, $4.UpdateTaskTemplateResponse>(
        'UpdateTaskTemplate',
        updateTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateTaskTemplateRequest.fromBuffer(value),
        ($4.UpdateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateTaskTemplateSubTaskRequest, $4.UpdateTaskTemplateSubTaskResponse>(
        'UpdateTaskTemplateSubTask',
        updateTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($4.UpdateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.CreateTaskTemplateSubTaskRequest, $4.CreateTaskTemplateSubTaskResponse>(
        'CreateTaskTemplateSubTask',
        createTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($4.CreateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetAllTaskTemplatesRequest, $4.GetAllTaskTemplatesResponse>(
        'GetAllTaskTemplates',
        getAllTaskTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetAllTaskTemplatesRequest.fromBuffer(value),
        ($4.GetAllTaskTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetTaskTemplateRequest, $4.GetTaskTemplateResponse>(
        'GetTaskTemplate',
        getTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetTaskTemplateRequest.fromBuffer(value),
        ($4.GetTaskTemplateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateTaskTemplateResponse> createTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$4.CreateTaskTemplateRequest> request) async {
    return createTaskTemplate(call, await request);
  }

  $async.Future<$4.DeleteTaskTemplateResponse> deleteTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteTaskTemplateRequest> request) async {
    return deleteTaskTemplate(call, await request);
  }

  $async.Future<$4.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteTaskTemplateSubTaskRequest> request) async {
    return deleteTaskTemplateSubTask(call, await request);
  }

  $async.Future<$4.UpdateTaskTemplateResponse> updateTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateTaskTemplateRequest> request) async {
    return updateTaskTemplate(call, await request);
  }

  $async.Future<$4.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateTaskTemplateSubTaskRequest> request) async {
    return updateTaskTemplateSubTask(call, await request);
  }

  $async.Future<$4.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$4.CreateTaskTemplateSubTaskRequest> request) async {
    return createTaskTemplateSubTask(call, await request);
  }

  $async.Future<$4.GetAllTaskTemplatesResponse> getAllTaskTemplates_Pre($grpc.ServiceCall call, $async.Future<$4.GetAllTaskTemplatesRequest> request) async {
    return getAllTaskTemplates(call, await request);
  }

  $async.Future<$4.GetTaskTemplateResponse> getTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$4.GetTaskTemplateRequest> request) async {
    return getTaskTemplate(call, await request);
  }

  $async.Future<$4.CreateTaskTemplateResponse> createTaskTemplate($grpc.ServiceCall call, $4.CreateTaskTemplateRequest request);
  $async.Future<$4.DeleteTaskTemplateResponse> deleteTaskTemplate($grpc.ServiceCall call, $4.DeleteTaskTemplateRequest request);
  $async.Future<$4.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($grpc.ServiceCall call, $4.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$4.UpdateTaskTemplateResponse> updateTaskTemplate($grpc.ServiceCall call, $4.UpdateTaskTemplateRequest request);
  $async.Future<$4.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($grpc.ServiceCall call, $4.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$4.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($grpc.ServiceCall call, $4.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$4.GetAllTaskTemplatesResponse> getAllTaskTemplates($grpc.ServiceCall call, $4.GetAllTaskTemplatesRequest request);
  $async.Future<$4.GetTaskTemplateResponse> getTaskTemplate($grpc.ServiceCall call, $4.GetTaskTemplateRequest request);
}
