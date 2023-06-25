//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_svc.proto
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

import 'task_svc.pb.dart' as $5;
import 'task_svc.pbjson.dart';

export 'task_svc.pb.dart';

abstract class TaskServiceBase extends $pb.GeneratedService {
  $async.Future<$5.CreateTaskResponse> createTask($pb.ServerContext ctx, $5.CreateTaskRequest request);
  $async.Future<$5.GetTaskResponse> getTask($pb.ServerContext ctx, $5.GetTaskRequest request);
  $async.Future<$5.GetTasksByPatientResponse> getTasksByPatient($pb.ServerContext ctx, $5.GetTasksByPatientRequest request);
  $async.Future<$5.UpdateTaskResponse> updateTask($pb.ServerContext ctx, $5.UpdateTaskRequest request);
  $async.Future<$5.AddSubTaskResponse> addSubTask($pb.ServerContext ctx, $5.AddSubTaskRequest request);
  $async.Future<$5.RemoveSubTaskResponse> removeSubTask($pb.ServerContext ctx, $5.RemoveSubTaskRequest request);
  $async.Future<$5.UpdateSubTaskResponse> updateSubTask($pb.ServerContext ctx, $5.UpdateSubTaskRequest request);
  $async.Future<$5.SubTaskToToDoResponse> subTaskToToDo($pb.ServerContext ctx, $5.SubTaskToToDoRequest request);
  $async.Future<$5.SubTaskToDoneResponse> subTaskToDone($pb.ServerContext ctx, $5.SubTaskToDoneRequest request);
  $async.Future<$5.TaskToToDoResponse> taskToToDo($pb.ServerContext ctx, $5.TaskToToDoRequest request);
  $async.Future<$5.TaskToInProgressResponse> taskToInProgress($pb.ServerContext ctx, $5.TaskToInProgressRequest request);
  $async.Future<$5.TaskToDoneResponse> taskToDone($pb.ServerContext ctx, $5.TaskToDoneRequest request);
  $async.Future<$5.AssignTaskToUserResponse> assignTaskToUser($pb.ServerContext ctx, $5.AssignTaskToUserRequest request);
  $async.Future<$5.UnassignTaskFromUserResponse> unassignTaskFromUser($pb.ServerContext ctx, $5.UnassignTaskFromUserRequest request);
  $async.Future<$5.PublishTaskResponse> publishTask($pb.ServerContext ctx, $5.PublishTaskRequest request);
  $async.Future<$5.UnpublishTaskResponse> unpublishTask($pb.ServerContext ctx, $5.UnpublishTaskRequest request);
  $async.Future<$5.DeleteTaskResponse> deleteTask($pb.ServerContext ctx, $5.DeleteTaskRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateTask': return $5.CreateTaskRequest();
      case 'GetTask': return $5.GetTaskRequest();
      case 'GetTasksByPatient': return $5.GetTasksByPatientRequest();
      case 'UpdateTask': return $5.UpdateTaskRequest();
      case 'AddSubTask': return $5.AddSubTaskRequest();
      case 'RemoveSubTask': return $5.RemoveSubTaskRequest();
      case 'UpdateSubTask': return $5.UpdateSubTaskRequest();
      case 'SubTaskToToDo': return $5.SubTaskToToDoRequest();
      case 'SubTaskToDone': return $5.SubTaskToDoneRequest();
      case 'TaskToToDo': return $5.TaskToToDoRequest();
      case 'TaskToInProgress': return $5.TaskToInProgressRequest();
      case 'TaskToDone': return $5.TaskToDoneRequest();
      case 'AssignTaskToUser': return $5.AssignTaskToUserRequest();
      case 'UnassignTaskFromUser': return $5.UnassignTaskFromUserRequest();
      case 'PublishTask': return $5.PublishTaskRequest();
      case 'UnpublishTask': return $5.UnpublishTaskRequest();
      case 'DeleteTask': return $5.DeleteTaskRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateTask': return this.createTask(ctx, request as $5.CreateTaskRequest);
      case 'GetTask': return this.getTask(ctx, request as $5.GetTaskRequest);
      case 'GetTasksByPatient': return this.getTasksByPatient(ctx, request as $5.GetTasksByPatientRequest);
      case 'UpdateTask': return this.updateTask(ctx, request as $5.UpdateTaskRequest);
      case 'AddSubTask': return this.addSubTask(ctx, request as $5.AddSubTaskRequest);
      case 'RemoveSubTask': return this.removeSubTask(ctx, request as $5.RemoveSubTaskRequest);
      case 'UpdateSubTask': return this.updateSubTask(ctx, request as $5.UpdateSubTaskRequest);
      case 'SubTaskToToDo': return this.subTaskToToDo(ctx, request as $5.SubTaskToToDoRequest);
      case 'SubTaskToDone': return this.subTaskToDone(ctx, request as $5.SubTaskToDoneRequest);
      case 'TaskToToDo': return this.taskToToDo(ctx, request as $5.TaskToToDoRequest);
      case 'TaskToInProgress': return this.taskToInProgress(ctx, request as $5.TaskToInProgressRequest);
      case 'TaskToDone': return this.taskToDone(ctx, request as $5.TaskToDoneRequest);
      case 'AssignTaskToUser': return this.assignTaskToUser(ctx, request as $5.AssignTaskToUserRequest);
      case 'UnassignTaskFromUser': return this.unassignTaskFromUser(ctx, request as $5.UnassignTaskFromUserRequest);
      case 'PublishTask': return this.publishTask(ctx, request as $5.PublishTaskRequest);
      case 'UnpublishTask': return this.unpublishTask(ctx, request as $5.UnpublishTaskRequest);
      case 'DeleteTask': return this.deleteTask(ctx, request as $5.DeleteTaskRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TaskServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TaskServiceBase$messageJson;
}

