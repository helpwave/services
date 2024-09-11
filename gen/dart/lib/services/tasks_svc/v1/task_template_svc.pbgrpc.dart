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

import 'task_template_svc.pb.dart' as $16;

export 'task_template_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskTemplateService')
class TaskTemplateServiceClient extends $grpc.Client {
  static final _$createTaskTemplate = $grpc.ClientMethod<$16.CreateTaskTemplateRequest, $16.CreateTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/CreateTaskTemplate',
      ($16.CreateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplate = $grpc.ClientMethod<$16.DeleteTaskTemplateRequest, $16.DeleteTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      ($16.DeleteTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplateSubTask = $grpc.ClientMethod<$16.DeleteTaskTemplateSubTaskRequest, $16.DeleteTaskTemplateSubTaskResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      ($16.DeleteTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.DeleteTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$updateTaskTemplate = $grpc.ClientMethod<$16.UpdateTaskTemplateRequest, $16.UpdateTaskTemplateResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      ($16.UpdateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateTaskTemplateResponse.fromBuffer(value));
  static final _$updateTaskTemplateSubTask = $grpc.ClientMethod<$16.UpdateTaskTemplateSubTaskRequest, $16.UpdateTaskTemplateSubTaskResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      ($16.UpdateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$createTaskTemplateSubTask = $grpc.ClientMethod<$16.CreateTaskTemplateSubTaskRequest, $16.CreateTaskTemplateSubTaskResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      ($16.CreateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$getAllTaskTemplates = $grpc.ClientMethod<$16.GetAllTaskTemplatesRequest, $16.GetAllTaskTemplatesResponse>(
      '/services.tasks_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      ($16.GetAllTaskTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.GetAllTaskTemplatesResponse.fromBuffer(value));

  TaskTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.CreateTaskTemplateResponse> createTaskTemplate($16.CreateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteTaskTemplateResponse> deleteTaskTemplate($16.DeleteTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$16.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($16.DeleteTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateTaskTemplateResponse> updateTaskTemplate($16.UpdateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($16.UpdateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$16.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($16.CreateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$16.GetAllTaskTemplatesResponse> getAllTaskTemplates($16.GetAllTaskTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplates, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.TaskTemplateService')
abstract class TaskTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.TaskTemplateService';

  TaskTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.CreateTaskTemplateRequest, $16.CreateTaskTemplateResponse>(
        'CreateTaskTemplate',
        createTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateTaskTemplateRequest.fromBuffer(value),
        ($16.CreateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteTaskTemplateRequest, $16.DeleteTaskTemplateResponse>(
        'DeleteTaskTemplate',
        deleteTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteTaskTemplateRequest.fromBuffer(value),
        ($16.DeleteTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.DeleteTaskTemplateSubTaskRequest, $16.DeleteTaskTemplateSubTaskResponse>(
        'DeleteTaskTemplateSubTask',
        deleteTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.DeleteTaskTemplateSubTaskRequest.fromBuffer(value),
        ($16.DeleteTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateTaskTemplateRequest, $16.UpdateTaskTemplateResponse>(
        'UpdateTaskTemplate',
        updateTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateTaskTemplateRequest.fromBuffer(value),
        ($16.UpdateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateTaskTemplateSubTaskRequest, $16.UpdateTaskTemplateSubTaskResponse>(
        'UpdateTaskTemplateSubTask',
        updateTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($16.UpdateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.CreateTaskTemplateSubTaskRequest, $16.CreateTaskTemplateSubTaskResponse>(
        'CreateTaskTemplateSubTask',
        createTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($16.CreateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.GetAllTaskTemplatesRequest, $16.GetAllTaskTemplatesResponse>(
        'GetAllTaskTemplates',
        getAllTaskTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.GetAllTaskTemplatesRequest.fromBuffer(value),
        ($16.GetAllTaskTemplatesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.CreateTaskTemplateResponse> createTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$16.CreateTaskTemplateRequest> request) async {
    return createTaskTemplate(call, await request);
  }

  $async.Future<$16.DeleteTaskTemplateResponse> deleteTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteTaskTemplateRequest> request) async {
    return deleteTaskTemplate(call, await request);
  }

  $async.Future<$16.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$16.DeleteTaskTemplateSubTaskRequest> request) async {
    return deleteTaskTemplateSubTask(call, await request);
  }

  $async.Future<$16.UpdateTaskTemplateResponse> updateTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateTaskTemplateRequest> request) async {
    return updateTaskTemplate(call, await request);
  }

  $async.Future<$16.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateTaskTemplateSubTaskRequest> request) async {
    return updateTaskTemplateSubTask(call, await request);
  }

  $async.Future<$16.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$16.CreateTaskTemplateSubTaskRequest> request) async {
    return createTaskTemplateSubTask(call, await request);
  }

  $async.Future<$16.GetAllTaskTemplatesResponse> getAllTaskTemplates_Pre($grpc.ServiceCall call, $async.Future<$16.GetAllTaskTemplatesRequest> request) async {
    return getAllTaskTemplates(call, await request);
  }

  $async.Future<$16.CreateTaskTemplateResponse> createTaskTemplate($grpc.ServiceCall call, $16.CreateTaskTemplateRequest request);
  $async.Future<$16.DeleteTaskTemplateResponse> deleteTaskTemplate($grpc.ServiceCall call, $16.DeleteTaskTemplateRequest request);
  $async.Future<$16.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($grpc.ServiceCall call, $16.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$16.UpdateTaskTemplateResponse> updateTaskTemplate($grpc.ServiceCall call, $16.UpdateTaskTemplateRequest request);
  $async.Future<$16.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($grpc.ServiceCall call, $16.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$16.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($grpc.ServiceCall call, $16.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$16.GetAllTaskTemplatesResponse> getAllTaskTemplates($grpc.ServiceCall call, $16.GetAllTaskTemplatesRequest request);
}
