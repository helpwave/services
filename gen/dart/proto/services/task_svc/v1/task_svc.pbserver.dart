///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'task_svc.pb.dart' as $5;
import 'task_svc.pbjson.dart';

export 'task_svc.pb.dart';

abstract class TaskServiceBase extends $pb.GeneratedService {
  $async.Future<$5.CreateTaskResponse> createTask($pb.ServerContext ctx, $5.CreateTaskRequest request);
  $async.Future<$5.GetTaskResponse> getTask($pb.ServerContext ctx, $5.GetTaskRequest request);
  $async.Future<$5.UpdateTaskResponse> updateTask($pb.ServerContext ctx, $5.UpdateTaskRequest request);
  $async.Future<$5.TaskToInProgressResponse> taskToInProgress($pb.ServerContext ctx, $5.TaskToInProgressRequest request);
  $async.Future<$5.TaskToDoneResponse> taskToDone($pb.ServerContext ctx, $5.TaskToDoneRequest request);
  $async.Future<$5.AssignTaskToUserResponse> assignTaskToUser($pb.ServerContext ctx, $5.AssignTaskToUserRequest request);
  $async.Future<$5.UnassignTaskFromUserResponse> unassignTaskFromUser($pb.ServerContext ctx, $5.UnassignTaskFromUserRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateTask': return $5.CreateTaskRequest();
      case 'GetTask': return $5.GetTaskRequest();
      case 'UpdateTask': return $5.UpdateTaskRequest();
      case 'TaskToInProgress': return $5.TaskToInProgressRequest();
      case 'TaskToDone': return $5.TaskToDoneRequest();
      case 'AssignTaskToUser': return $5.AssignTaskToUserRequest();
      case 'UnassignTaskFromUser': return $5.UnassignTaskFromUserRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateTask': return this.createTask(ctx, request as $5.CreateTaskRequest);
      case 'GetTask': return this.getTask(ctx, request as $5.GetTaskRequest);
      case 'UpdateTask': return this.updateTask(ctx, request as $5.UpdateTaskRequest);
      case 'TaskToInProgress': return this.taskToInProgress(ctx, request as $5.TaskToInProgressRequest);
      case 'TaskToDone': return this.taskToDone(ctx, request as $5.TaskToDoneRequest);
      case 'AssignTaskToUser': return this.assignTaskToUser(ctx, request as $5.AssignTaskToUserRequest);
      case 'UnassignTaskFromUser': return this.unassignTaskFromUser(ctx, request as $5.UnassignTaskFromUserRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TaskServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TaskServiceBase$messageJson;
}

