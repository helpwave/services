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

import 'task_template_svc.pb.dart' as $9;

export 'task_template_svc.pb.dart';

@$pb.GrpcServiceName('services.task_svc.v1.TaskTemplateService')
class TaskTemplateServiceClient extends $grpc.Client {
  static final _$createTaskTemplate = $grpc.ClientMethod<$9.CreateTaskTemplateRequest, $9.CreateTaskTemplateResponse>(
      '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplate',
      ($9.CreateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateTaskTemplateResponse.fromBuffer(value));
  static final _$getAllTaskTemplates = $grpc.ClientMethod<$9.GetAllTaskTemplatesRequest, $9.GetAllTaskTemplatesResponse>(
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplates',
      ($9.GetAllTaskTemplatesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetAllTaskTemplatesResponse.fromBuffer(value));
  static final _$deleteTaskTemplate = $grpc.ClientMethod<$9.DeleteTaskTemplateRequest, $9.DeleteTaskTemplateResponse>(
      '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplate',
      ($9.DeleteTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteTaskTemplateResponse.fromBuffer(value));
  static final _$deleteTaskTemplateSubTask = $grpc.ClientMethod<$9.DeleteTaskTemplateSubTaskRequest, $9.DeleteTaskTemplateSubTaskResponse>(
      '/services.task_svc.v1.TaskTemplateService/DeleteTaskTemplateSubTask',
      ($9.DeleteTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$updateTaskTemplate = $grpc.ClientMethod<$9.UpdateTaskTemplateRequest, $9.UpdateTaskTemplateResponse>(
      '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplate',
      ($9.UpdateTaskTemplateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateTaskTemplateResponse.fromBuffer(value));
  static final _$updateTaskTemplateSubTask = $grpc.ClientMethod<$9.UpdateTaskTemplateSubTaskRequest, $9.UpdateTaskTemplateSubTaskResponse>(
      '/services.task_svc.v1.TaskTemplateService/UpdateTaskTemplateSubTask',
      ($9.UpdateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$createTaskTemplateSubTask = $grpc.ClientMethod<$9.CreateTaskTemplateSubTaskRequest, $9.CreateTaskTemplateSubTaskResponse>(
      '/services.task_svc.v1.TaskTemplateService/CreateTaskTemplateSubTask',
      ($9.CreateTaskTemplateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateTaskTemplateSubTaskResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByCreator = $grpc.ClientMethod<$9.GetAllTaskTemplatesByCreatorRequest, $9.GetAllTaskTemplatesByCreatorResponse>(
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByCreator',
      ($9.GetAllTaskTemplatesByCreatorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetAllTaskTemplatesByCreatorResponse.fromBuffer(value));
  static final _$getAllTaskTemplatesByWard = $grpc.ClientMethod<$9.GetAllTaskTemplatesByWardRequest, $9.GetAllTaskTemplatesByWardResponse>(
      '/services.task_svc.v1.TaskTemplateService/GetAllTaskTemplatesByWard',
      ($9.GetAllTaskTemplatesByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetAllTaskTemplatesByWardResponse.fromBuffer(value));

  TaskTemplateServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateTaskTemplateResponse> createTaskTemplate($9.CreateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetAllTaskTemplatesResponse> getAllTaskTemplates($9.GetAllTaskTemplatesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplates, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteTaskTemplateResponse> deleteTaskTemplate($9.DeleteTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($9.DeleteTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateTaskTemplateResponse> updateTaskTemplate($9.UpdateTaskTemplateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplate, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($9.UpdateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($9.CreateTaskTemplateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTaskTemplateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($9.GetAllTaskTemplatesByCreatorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByCreator, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($9.GetAllTaskTemplatesByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTaskTemplatesByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('services.task_svc.v1.TaskTemplateService')
abstract class TaskTemplateServiceBase extends $grpc.Service {
  $core.String get $name => 'services.task_svc.v1.TaskTemplateService';

  TaskTemplateServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateTaskTemplateRequest, $9.CreateTaskTemplateResponse>(
        'CreateTaskTemplate',
        createTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateTaskTemplateRequest.fromBuffer(value),
        ($9.CreateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetAllTaskTemplatesRequest, $9.GetAllTaskTemplatesResponse>(
        'GetAllTaskTemplates',
        getAllTaskTemplates_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetAllTaskTemplatesRequest.fromBuffer(value),
        ($9.GetAllTaskTemplatesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteTaskTemplateRequest, $9.DeleteTaskTemplateResponse>(
        'DeleteTaskTemplate',
        deleteTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteTaskTemplateRequest.fromBuffer(value),
        ($9.DeleteTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteTaskTemplateSubTaskRequest, $9.DeleteTaskTemplateSubTaskResponse>(
        'DeleteTaskTemplateSubTask',
        deleteTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteTaskTemplateSubTaskRequest.fromBuffer(value),
        ($9.DeleteTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateTaskTemplateRequest, $9.UpdateTaskTemplateResponse>(
        'UpdateTaskTemplate',
        updateTaskTemplate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateTaskTemplateRequest.fromBuffer(value),
        ($9.UpdateTaskTemplateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateTaskTemplateSubTaskRequest, $9.UpdateTaskTemplateSubTaskResponse>(
        'UpdateTaskTemplateSubTask',
        updateTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($9.UpdateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.CreateTaskTemplateSubTaskRequest, $9.CreateTaskTemplateSubTaskResponse>(
        'CreateTaskTemplateSubTask',
        createTaskTemplateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateTaskTemplateSubTaskRequest.fromBuffer(value),
        ($9.CreateTaskTemplateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetAllTaskTemplatesByCreatorRequest, $9.GetAllTaskTemplatesByCreatorResponse>(
        'GetAllTaskTemplatesByCreator',
        getAllTaskTemplatesByCreator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetAllTaskTemplatesByCreatorRequest.fromBuffer(value),
        ($9.GetAllTaskTemplatesByCreatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetAllTaskTemplatesByWardRequest, $9.GetAllTaskTemplatesByWardResponse>(
        'GetAllTaskTemplatesByWard',
        getAllTaskTemplatesByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetAllTaskTemplatesByWardRequest.fromBuffer(value),
        ($9.GetAllTaskTemplatesByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateTaskTemplateResponse> createTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$9.CreateTaskTemplateRequest> request) async {
    return createTaskTemplate(call, await request);
  }

  $async.Future<$9.GetAllTaskTemplatesResponse> getAllTaskTemplates_Pre($grpc.ServiceCall call, $async.Future<$9.GetAllTaskTemplatesRequest> request) async {
    return getAllTaskTemplates(call, await request);
  }

  $async.Future<$9.DeleteTaskTemplateResponse> deleteTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteTaskTemplateRequest> request) async {
    return deleteTaskTemplate(call, await request);
  }

  $async.Future<$9.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteTaskTemplateSubTaskRequest> request) async {
    return deleteTaskTemplateSubTask(call, await request);
  }

  $async.Future<$9.UpdateTaskTemplateResponse> updateTaskTemplate_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateTaskTemplateRequest> request) async {
    return updateTaskTemplate(call, await request);
  }

  $async.Future<$9.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateTaskTemplateSubTaskRequest> request) async {
    return updateTaskTemplateSubTask(call, await request);
  }

  $async.Future<$9.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask_Pre($grpc.ServiceCall call, $async.Future<$9.CreateTaskTemplateSubTaskRequest> request) async {
    return createTaskTemplateSubTask(call, await request);
  }

  $async.Future<$9.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator_Pre($grpc.ServiceCall call, $async.Future<$9.GetAllTaskTemplatesByCreatorRequest> request) async {
    return getAllTaskTemplatesByCreator(call, await request);
  }

  $async.Future<$9.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard_Pre($grpc.ServiceCall call, $async.Future<$9.GetAllTaskTemplatesByWardRequest> request) async {
    return getAllTaskTemplatesByWard(call, await request);
  }

  $async.Future<$9.CreateTaskTemplateResponse> createTaskTemplate($grpc.ServiceCall call, $9.CreateTaskTemplateRequest request);
  $async.Future<$9.GetAllTaskTemplatesResponse> getAllTaskTemplates($grpc.ServiceCall call, $9.GetAllTaskTemplatesRequest request);
  $async.Future<$9.DeleteTaskTemplateResponse> deleteTaskTemplate($grpc.ServiceCall call, $9.DeleteTaskTemplateRequest request);
  $async.Future<$9.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($grpc.ServiceCall call, $9.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$9.UpdateTaskTemplateResponse> updateTaskTemplate($grpc.ServiceCall call, $9.UpdateTaskTemplateRequest request);
  $async.Future<$9.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($grpc.ServiceCall call, $9.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$9.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($grpc.ServiceCall call, $9.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$9.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($grpc.ServiceCall call, $9.GetAllTaskTemplatesByCreatorRequest request);
  $async.Future<$9.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($grpc.ServiceCall call, $9.GetAllTaskTemplatesByWardRequest request);
}
