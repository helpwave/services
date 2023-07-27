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

import 'task_svc.pb.dart' as $6;
import 'task_svc.pbjson.dart';

export 'task_svc.pb.dart';

abstract class TaskServiceBase extends $pb.GeneratedService {
  $async.Future<$6.CreateTaskResponse> createTask($pb.ServerContext ctx, $6.CreateTaskRequest request);
  $async.Future<$6.GetTaskResponse> getTask($pb.ServerContext ctx, $6.GetTaskRequest request);
  $async.Future<$6.GetTasksByPatientResponse> getTasksByPatient($pb.ServerContext ctx, $6.GetTasksByPatientRequest request);
  $async.Future<$6.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($pb.ServerContext ctx, $6.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$6.UpdateTaskResponse> updateTask($pb.ServerContext ctx, $6.UpdateTaskRequest request);
  $async.Future<$6.AddSubTaskResponse> addSubTask($pb.ServerContext ctx, $6.AddSubTaskRequest request);
  $async.Future<$6.RemoveSubTaskResponse> removeSubTask($pb.ServerContext ctx, $6.RemoveSubTaskRequest request);
  $async.Future<$6.UpdateSubTaskResponse> updateSubTask($pb.ServerContext ctx, $6.UpdateSubTaskRequest request);
  $async.Future<$6.SubTaskToToDoResponse> subTaskToToDo($pb.ServerContext ctx, $6.SubTaskToToDoRequest request);
  $async.Future<$6.SubTaskToDoneResponse> subTaskToDone($pb.ServerContext ctx, $6.SubTaskToDoneRequest request);
  $async.Future<$6.TaskToToDoResponse> taskToToDo($pb.ServerContext ctx, $6.TaskToToDoRequest request);
  $async.Future<$6.TaskToInProgressResponse> taskToInProgress($pb.ServerContext ctx, $6.TaskToInProgressRequest request);
  $async.Future<$6.TaskToDoneResponse> taskToDone($pb.ServerContext ctx, $6.TaskToDoneRequest request);
  $async.Future<$6.AssignTaskToUserResponse> assignTaskToUser($pb.ServerContext ctx, $6.AssignTaskToUserRequest request);
  $async.Future<$6.UnassignTaskFromUserResponse> unassignTaskFromUser($pb.ServerContext ctx, $6.UnassignTaskFromUserRequest request);
  $async.Future<$6.PublishTaskResponse> publishTask($pb.ServerContext ctx, $6.PublishTaskRequest request);
  $async.Future<$6.UnpublishTaskResponse> unpublishTask($pb.ServerContext ctx, $6.UnpublishTaskRequest request);
  $async.Future<$6.DeleteTaskResponse> deleteTask($pb.ServerContext ctx, $6.DeleteTaskRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateTask': return $6.CreateTaskRequest();
      case 'GetTask': return $6.GetTaskRequest();
      case 'GetTasksByPatient': return $6.GetTasksByPatientRequest();
      case 'GetTasksByPatientSortedByStatus': return $6.GetTasksByPatientSortedByStatusRequest();
      case 'UpdateTask': return $6.UpdateTaskRequest();
      case 'AddSubTask': return $6.AddSubTaskRequest();
      case 'RemoveSubTask': return $6.RemoveSubTaskRequest();
      case 'UpdateSubTask': return $6.UpdateSubTaskRequest();
      case 'SubTaskToToDo': return $6.SubTaskToToDoRequest();
      case 'SubTaskToDone': return $6.SubTaskToDoneRequest();
      case 'TaskToToDo': return $6.TaskToToDoRequest();
      case 'TaskToInProgress': return $6.TaskToInProgressRequest();
      case 'TaskToDone': return $6.TaskToDoneRequest();
      case 'AssignTaskToUser': return $6.AssignTaskToUserRequest();
      case 'UnassignTaskFromUser': return $6.UnassignTaskFromUserRequest();
      case 'PublishTask': return $6.PublishTaskRequest();
      case 'UnpublishTask': return $6.UnpublishTaskRequest();
      case 'DeleteTask': return $6.DeleteTaskRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateTask': return this.createTask(ctx, request as $6.CreateTaskRequest);
      case 'GetTask': return this.getTask(ctx, request as $6.GetTaskRequest);
      case 'GetTasksByPatient': return this.getTasksByPatient(ctx, request as $6.GetTasksByPatientRequest);
      case 'GetTasksByPatientSortedByStatus': return this.getTasksByPatientSortedByStatus(ctx, request as $6.GetTasksByPatientSortedByStatusRequest);
      case 'UpdateTask': return this.updateTask(ctx, request as $6.UpdateTaskRequest);
      case 'AddSubTask': return this.addSubTask(ctx, request as $6.AddSubTaskRequest);
      case 'RemoveSubTask': return this.removeSubTask(ctx, request as $6.RemoveSubTaskRequest);
      case 'UpdateSubTask': return this.updateSubTask(ctx, request as $6.UpdateSubTaskRequest);
      case 'SubTaskToToDo': return this.subTaskToToDo(ctx, request as $6.SubTaskToToDoRequest);
      case 'SubTaskToDone': return this.subTaskToDone(ctx, request as $6.SubTaskToDoneRequest);
      case 'TaskToToDo': return this.taskToToDo(ctx, request as $6.TaskToToDoRequest);
      case 'TaskToInProgress': return this.taskToInProgress(ctx, request as $6.TaskToInProgressRequest);
      case 'TaskToDone': return this.taskToDone(ctx, request as $6.TaskToDoneRequest);
      case 'AssignTaskToUser': return this.assignTaskToUser(ctx, request as $6.AssignTaskToUserRequest);
      case 'UnassignTaskFromUser': return this.unassignTaskFromUser(ctx, request as $6.UnassignTaskFromUserRequest);
      case 'PublishTask': return this.publishTask(ctx, request as $6.PublishTaskRequest);
      case 'UnpublishTask': return this.unpublishTask(ctx, request as $6.UnpublishTaskRequest);
      case 'DeleteTask': return this.deleteTask(ctx, request as $6.DeleteTaskRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TaskServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TaskServiceBase$messageJson;
}

