//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_svc.proto
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

import 'task_svc.pb.dart' as $7;
import 'task_svc.pbjson.dart';

export 'task_svc.pb.dart';

abstract class TaskServiceBase extends $pb.GeneratedService {
  $async.Future<$7.CreateTaskResponse> createTask($pb.ServerContext ctx, $7.CreateTaskRequest request);
  $async.Future<$7.GetTaskResponse> getTask($pb.ServerContext ctx, $7.GetTaskRequest request);
  $async.Future<$7.GetTasksByPatientResponse> getTasksByPatient($pb.ServerContext ctx, $7.GetTasksByPatientRequest request);
  $async.Future<$7.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($pb.ServerContext ctx, $7.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$7.GetAssignedTasksResponse> getAssignedTasks($pb.ServerContext ctx, $7.GetAssignedTasksRequest request);
  $async.Future<$7.UpdateTaskResponse> updateTask($pb.ServerContext ctx, $7.UpdateTaskRequest request);
  $async.Future<$7.AddSubTaskResponse> addSubTask($pb.ServerContext ctx, $7.AddSubTaskRequest request);
  $async.Future<$7.RemoveSubTaskResponse> removeSubTask($pb.ServerContext ctx, $7.RemoveSubTaskRequest request);
  $async.Future<$7.UpdateSubTaskResponse> updateSubTask($pb.ServerContext ctx, $7.UpdateSubTaskRequest request);
  $async.Future<$7.SubTaskToToDoResponse> subTaskToToDo($pb.ServerContext ctx, $7.SubTaskToToDoRequest request);
  $async.Future<$7.SubTaskToDoneResponse> subTaskToDone($pb.ServerContext ctx, $7.SubTaskToDoneRequest request);
  $async.Future<$7.TaskToToDoResponse> taskToToDo($pb.ServerContext ctx, $7.TaskToToDoRequest request);
  $async.Future<$7.TaskToInProgressResponse> taskToInProgress($pb.ServerContext ctx, $7.TaskToInProgressRequest request);
  $async.Future<$7.TaskToDoneResponse> taskToDone($pb.ServerContext ctx, $7.TaskToDoneRequest request);
  $async.Future<$7.AssignTaskToUserResponse> assignTaskToUser($pb.ServerContext ctx, $7.AssignTaskToUserRequest request);
  $async.Future<$7.UnassignTaskFromUserResponse> unassignTaskFromUser($pb.ServerContext ctx, $7.UnassignTaskFromUserRequest request);
  $async.Future<$7.PublishTaskResponse> publishTask($pb.ServerContext ctx, $7.PublishTaskRequest request);
  $async.Future<$7.UnpublishTaskResponse> unpublishTask($pb.ServerContext ctx, $7.UnpublishTaskRequest request);
  $async.Future<$7.DeleteTaskResponse> deleteTask($pb.ServerContext ctx, $7.DeleteTaskRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateTask': return $7.CreateTaskRequest();
      case 'GetTask': return $7.GetTaskRequest();
      case 'GetTasksByPatient': return $7.GetTasksByPatientRequest();
      case 'GetTasksByPatientSortedByStatus': return $7.GetTasksByPatientSortedByStatusRequest();
      case 'GetAssignedTasks': return $7.GetAssignedTasksRequest();
      case 'UpdateTask': return $7.UpdateTaskRequest();
      case 'AddSubTask': return $7.AddSubTaskRequest();
      case 'RemoveSubTask': return $7.RemoveSubTaskRequest();
      case 'UpdateSubTask': return $7.UpdateSubTaskRequest();
      case 'SubTaskToToDo': return $7.SubTaskToToDoRequest();
      case 'SubTaskToDone': return $7.SubTaskToDoneRequest();
      case 'TaskToToDo': return $7.TaskToToDoRequest();
      case 'TaskToInProgress': return $7.TaskToInProgressRequest();
      case 'TaskToDone': return $7.TaskToDoneRequest();
      case 'AssignTaskToUser': return $7.AssignTaskToUserRequest();
      case 'UnassignTaskFromUser': return $7.UnassignTaskFromUserRequest();
      case 'PublishTask': return $7.PublishTaskRequest();
      case 'UnpublishTask': return $7.UnpublishTaskRequest();
      case 'DeleteTask': return $7.DeleteTaskRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateTask': return this.createTask(ctx, request as $7.CreateTaskRequest);
      case 'GetTask': return this.getTask(ctx, request as $7.GetTaskRequest);
      case 'GetTasksByPatient': return this.getTasksByPatient(ctx, request as $7.GetTasksByPatientRequest);
      case 'GetTasksByPatientSortedByStatus': return this.getTasksByPatientSortedByStatus(ctx, request as $7.GetTasksByPatientSortedByStatusRequest);
      case 'GetAssignedTasks': return this.getAssignedTasks(ctx, request as $7.GetAssignedTasksRequest);
      case 'UpdateTask': return this.updateTask(ctx, request as $7.UpdateTaskRequest);
      case 'AddSubTask': return this.addSubTask(ctx, request as $7.AddSubTaskRequest);
      case 'RemoveSubTask': return this.removeSubTask(ctx, request as $7.RemoveSubTaskRequest);
      case 'UpdateSubTask': return this.updateSubTask(ctx, request as $7.UpdateSubTaskRequest);
      case 'SubTaskToToDo': return this.subTaskToToDo(ctx, request as $7.SubTaskToToDoRequest);
      case 'SubTaskToDone': return this.subTaskToDone(ctx, request as $7.SubTaskToDoneRequest);
      case 'TaskToToDo': return this.taskToToDo(ctx, request as $7.TaskToToDoRequest);
      case 'TaskToInProgress': return this.taskToInProgress(ctx, request as $7.TaskToInProgressRequest);
      case 'TaskToDone': return this.taskToDone(ctx, request as $7.TaskToDoneRequest);
      case 'AssignTaskToUser': return this.assignTaskToUser(ctx, request as $7.AssignTaskToUserRequest);
      case 'UnassignTaskFromUser': return this.unassignTaskFromUser(ctx, request as $7.UnassignTaskFromUserRequest);
      case 'PublishTask': return this.publishTask(ctx, request as $7.PublishTaskRequest);
      case 'UnpublishTask': return this.unpublishTask(ctx, request as $7.UnpublishTaskRequest);
      case 'DeleteTask': return this.deleteTask(ctx, request as $7.DeleteTaskRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => TaskServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => TaskServiceBase$messageJson;
}

