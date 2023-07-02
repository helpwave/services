//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_template_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'task_template_svc.pb.dart' as $6;
import 'task_template_svc.pbjson.dart';

export 'task_template_svc.pb.dart';

abstract class TaskTemplateServiceBase extends $pb.GeneratedService {
  $async.Future<$6.CreateTaskTemplateResponse> createTaskTemplate($pb.ServerContext ctx, $6.CreateTaskTemplateRequest request);
  $async.Future<$6.GetAllTaskTemplatesResponse> getAllTaskTemplates($pb.ServerContext ctx, $6.GetAllTaskTemplatesRequest request);
  $async.Future<$6.DeleteTaskTemplateResponse> deleteTaskTemplate($pb.ServerContext ctx, $6.DeleteTaskTemplateRequest request);
  $async.Future<$6.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($pb.ServerContext ctx, $6.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$6.UpdateTaskTemplateResponse> updateTaskTemplate($pb.ServerContext ctx, $6.UpdateTaskTemplateRequest request);
  $async.Future<$6.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($pb.ServerContext ctx, $6.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$6.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($pb.ServerContext ctx, $6.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$6.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($pb.ServerContext ctx, $6.GetAllTaskTemplatesByCreatorRequest request);
  $async.Future<$6.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($pb.ServerContext ctx, $6.GetAllTaskTemplatesByWardRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateTaskTemplate': return $6.CreateTaskTemplateRequest();
      case 'GetAllTaskTemplates': return $6.GetAllTaskTemplatesRequest();
      case 'DeleteTaskTemplate': return $6.DeleteTaskTemplateRequest();
      case 'DeleteTaskTemplateSubTask': return $6.DeleteTaskTemplateSubTaskRequest();
      case 'UpdateTaskTemplate': return $6.UpdateTaskTemplateRequest();
      case 'UpdateTaskTemplateSubTask': return $6.UpdateTaskTemplateSubTaskRequest();
      case 'CreateTaskTemplateSubTask': return $6.CreateTaskTemplateSubTaskRequest();
      case 'GetAllTaskTemplatesByCreator': return $6.GetAllTaskTemplatesByCreatorRequest();
      case 'GetAllTaskTemplatesByWard': return $6.GetAllTaskTemplatesByWardRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateTaskTemplate': return this.createTaskTemplate(ctx, request as $6.CreateTaskTemplateRequest);
      case 'GetAllTaskTemplates': return this.getAllTaskTemplates(ctx, request as $6.GetAllTaskTemplatesRequest);
      case 'DeleteTaskTemplate': return this.deleteTaskTemplate(ctx, request as $6.DeleteTaskTemplateRequest);
      case 'DeleteTaskTemplateSubTask': return this.deleteTaskTemplateSubTask(ctx, request as $6.DeleteTaskTemplateSubTaskRequest);
      case 'UpdateTaskTemplate': return this.updateTaskTemplate(ctx, request as $6.UpdateTaskTemplateRequest);
      case 'UpdateTaskTemplateSubTask': return this.updateTaskTemplateSubTask(ctx, request as $6.UpdateTaskTemplateSubTaskRequest);
      case 'CreateTaskTemplateSubTask': return this.createTaskTemplateSubTask(ctx, request as $6.CreateTaskTemplateSubTaskRequest);
      case 'GetAllTaskTemplatesByCreator': return this.getAllTaskTemplatesByCreator(ctx, request as $6.GetAllTaskTemplatesByCreatorRequest);
      case 'GetAllTaskTemplatesByWard': return this.getAllTaskTemplatesByWard(ctx, request as $6.GetAllTaskTemplatesByWardRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TaskTemplateServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TaskTemplateServiceBase$messageJson;
}

