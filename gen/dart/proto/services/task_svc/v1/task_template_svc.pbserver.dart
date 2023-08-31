//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_template_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'task_template_svc.pb.dart' as $8;
import 'task_template_svc.pbjson.dart';

export 'task_template_svc.pb.dart';

abstract class TaskTemplateServiceBase extends $pb.GeneratedService {
  $async.Future<$8.CreateTaskTemplateResponse> createTaskTemplate($pb.ServerContext ctx, $8.CreateTaskTemplateRequest request);
  $async.Future<$8.GetAllTaskTemplatesResponse> getAllTaskTemplates($pb.ServerContext ctx, $8.GetAllTaskTemplatesRequest request);
  $async.Future<$8.DeleteTaskTemplateResponse> deleteTaskTemplate($pb.ServerContext ctx, $8.DeleteTaskTemplateRequest request);
  $async.Future<$8.DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($pb.ServerContext ctx, $8.DeleteTaskTemplateSubTaskRequest request);
  $async.Future<$8.UpdateTaskTemplateResponse> updateTaskTemplate($pb.ServerContext ctx, $8.UpdateTaskTemplateRequest request);
  $async.Future<$8.UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($pb.ServerContext ctx, $8.UpdateTaskTemplateSubTaskRequest request);
  $async.Future<$8.CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($pb.ServerContext ctx, $8.CreateTaskTemplateSubTaskRequest request);
  $async.Future<$8.GetAllTaskTemplatesByCreatorResponse> getAllTaskTemplatesByCreator($pb.ServerContext ctx, $8.GetAllTaskTemplatesByCreatorRequest request);
  $async.Future<$8.GetAllTaskTemplatesByWardResponse> getAllTaskTemplatesByWard($pb.ServerContext ctx, $8.GetAllTaskTemplatesByWardRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateTaskTemplate': return $8.CreateTaskTemplateRequest();
      case 'GetAllTaskTemplates': return $8.GetAllTaskTemplatesRequest();
      case 'DeleteTaskTemplate': return $8.DeleteTaskTemplateRequest();
      case 'DeleteTaskTemplateSubTask': return $8.DeleteTaskTemplateSubTaskRequest();
      case 'UpdateTaskTemplate': return $8.UpdateTaskTemplateRequest();
      case 'UpdateTaskTemplateSubTask': return $8.UpdateTaskTemplateSubTaskRequest();
      case 'CreateTaskTemplateSubTask': return $8.CreateTaskTemplateSubTaskRequest();
      case 'GetAllTaskTemplatesByCreator': return $8.GetAllTaskTemplatesByCreatorRequest();
      case 'GetAllTaskTemplatesByWard': return $8.GetAllTaskTemplatesByWardRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateTaskTemplate': return this.createTaskTemplate(ctx, request as $8.CreateTaskTemplateRequest);
      case 'GetAllTaskTemplates': return this.getAllTaskTemplates(ctx, request as $8.GetAllTaskTemplatesRequest);
      case 'DeleteTaskTemplate': return this.deleteTaskTemplate(ctx, request as $8.DeleteTaskTemplateRequest);
      case 'DeleteTaskTemplateSubTask': return this.deleteTaskTemplateSubTask(ctx, request as $8.DeleteTaskTemplateSubTaskRequest);
      case 'UpdateTaskTemplate': return this.updateTaskTemplate(ctx, request as $8.UpdateTaskTemplateRequest);
      case 'UpdateTaskTemplateSubTask': return this.updateTaskTemplateSubTask(ctx, request as $8.UpdateTaskTemplateSubTaskRequest);
      case 'CreateTaskTemplateSubTask': return this.createTaskTemplateSubTask(ctx, request as $8.CreateTaskTemplateSubTaskRequest);
      case 'GetAllTaskTemplatesByCreator': return this.getAllTaskTemplatesByCreator(ctx, request as $8.GetAllTaskTemplatesByCreatorRequest);
      case 'GetAllTaskTemplatesByWard': return this.getAllTaskTemplatesByWard(ctx, request as $8.GetAllTaskTemplatesByWardRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TaskTemplateServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TaskTemplateServiceBase$messageJson;
}

