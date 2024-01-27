//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_svc.proto
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

import 'task_svc.pb.dart' as $7;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$7.CreateTaskRequest, $7.CreateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/CreateTask',
      ($7.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$7.GetTaskRequest, $7.GetTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTask',
      ($7.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$7.GetTasksByPatientRequest, $7.GetTasksByPatientResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatient',
      ($7.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$7.GetTasksByPatientSortedByStatusRequest, $7.GetTasksByPatientSortedByStatusResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($7.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$7.GetAssignedTasksRequest, $7.GetAssignedTasksResponse>(
      '/proto.services.task_svc.v1.TaskService/GetAssignedTasks',
      ($7.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetAssignedTasksResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$7.UpdateTaskRequest, $7.UpdateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateTask',
      ($7.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateTaskResponse.fromBuffer(value));
  static final _$addSubTask = $grpc.ClientMethod<$7.AddSubTaskRequest, $7.AddSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/AddSubTask',
      ($7.AddSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.AddSubTaskResponse.fromBuffer(value));
  static final _$removeSubTask = $grpc.ClientMethod<$7.RemoveSubTaskRequest, $7.RemoveSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/RemoveSubTask',
      ($7.RemoveSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.RemoveSubTaskResponse.fromBuffer(value));
  static final _$updateSubTask = $grpc.ClientMethod<$7.UpdateSubTaskRequest, $7.UpdateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateSubTask',
      ($7.UpdateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateSubTaskResponse.fromBuffer(value));
  static final _$subTaskToToDo = $grpc.ClientMethod<$7.SubTaskToToDoRequest, $7.SubTaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToToDo',
      ($7.SubTaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.SubTaskToToDoResponse.fromBuffer(value));
  static final _$subTaskToDone = $grpc.ClientMethod<$7.SubTaskToDoneRequest, $7.SubTaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToDone',
      ($7.SubTaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.SubTaskToDoneResponse.fromBuffer(value));
  static final _$taskToToDo = $grpc.ClientMethod<$7.TaskToToDoRequest, $7.TaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToToDo',
      ($7.TaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.TaskToToDoResponse.fromBuffer(value));
  static final _$taskToInProgress = $grpc.ClientMethod<$7.TaskToInProgressRequest, $7.TaskToInProgressResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToInProgress',
      ($7.TaskToInProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.TaskToInProgressResponse.fromBuffer(value));
  static final _$taskToDone = $grpc.ClientMethod<$7.TaskToDoneRequest, $7.TaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToDone',
      ($7.TaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.TaskToDoneResponse.fromBuffer(value));
  static final _$assignTaskToUser = $grpc.ClientMethod<$7.AssignTaskToUserRequest, $7.AssignTaskToUserResponse>(
      '/proto.services.task_svc.v1.TaskService/AssignTaskToUser',
      ($7.AssignTaskToUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.AssignTaskToUserResponse.fromBuffer(value));
  static final _$unassignTaskFromUser = $grpc.ClientMethod<$7.UnassignTaskFromUserRequest, $7.UnassignTaskFromUserResponse>(
      '/proto.services.task_svc.v1.TaskService/UnassignTaskFromUser',
      ($7.UnassignTaskFromUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UnassignTaskFromUserResponse.fromBuffer(value));
  static final _$publishTask = $grpc.ClientMethod<$7.PublishTaskRequest, $7.PublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/PublishTask',
      ($7.PublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.PublishTaskResponse.fromBuffer(value));
  static final _$unpublishTask = $grpc.ClientMethod<$7.UnpublishTaskRequest, $7.UnpublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UnpublishTask',
      ($7.UnpublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UnpublishTaskResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$7.DeleteTaskRequest, $7.DeleteTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/DeleteTask',
      ($7.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateTaskResponse> createTask($7.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetTaskResponse> getTask($7.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetTasksByPatientResponse> getTasksByPatient($7.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($7.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetAssignedTasksResponse> getAssignedTasks($7.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateTaskResponse> updateTask($7.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.AddSubTaskResponse> addSubTask($7.AddSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.RemoveSubTaskResponse> removeSubTask($7.RemoveSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateSubTaskResponse> updateSubTask($7.UpdateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.SubTaskToToDoResponse> subTaskToToDo($7.SubTaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$7.SubTaskToDoneResponse> subTaskToDone($7.SubTaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$7.TaskToToDoResponse> taskToToDo($7.TaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$7.TaskToInProgressResponse> taskToInProgress($7.TaskToInProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToInProgress, request, options: options);
  }

  $grpc.ResponseFuture<$7.TaskToDoneResponse> taskToDone($7.TaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$7.AssignTaskToUserResponse> assignTaskToUser($7.AssignTaskToUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTaskToUser, request, options: options);
  }

  $grpc.ResponseFuture<$7.UnassignTaskFromUserResponse> unassignTaskFromUser($7.UnassignTaskFromUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTaskFromUser, request, options: options);
  }

  $grpc.ResponseFuture<$7.PublishTaskResponse> publishTask($7.PublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publishTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.UnpublishTaskResponse> unpublishTask($7.UnpublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unpublishTask, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteTaskResponse> deleteTask($7.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateTaskRequest, $7.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateTaskRequest.fromBuffer(value),
        ($7.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetTaskRequest, $7.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetTaskRequest.fromBuffer(value),
        ($7.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetTasksByPatientRequest, $7.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetTasksByPatientRequest.fromBuffer(value),
        ($7.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetTasksByPatientSortedByStatusRequest, $7.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($7.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetAssignedTasksRequest, $7.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetAssignedTasksRequest.fromBuffer(value),
        ($7.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateTaskRequest, $7.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateTaskRequest.fromBuffer(value),
        ($7.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AddSubTaskRequest, $7.AddSubTaskResponse>(
        'AddSubTask',
        addSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.AddSubTaskRequest.fromBuffer(value),
        ($7.AddSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.RemoveSubTaskRequest, $7.RemoveSubTaskResponse>(
        'RemoveSubTask',
        removeSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.RemoveSubTaskRequest.fromBuffer(value),
        ($7.RemoveSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateSubTaskRequest, $7.UpdateSubTaskResponse>(
        'UpdateSubTask',
        updateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateSubTaskRequest.fromBuffer(value),
        ($7.UpdateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.SubTaskToToDoRequest, $7.SubTaskToToDoResponse>(
        'SubTaskToToDo',
        subTaskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.SubTaskToToDoRequest.fromBuffer(value),
        ($7.SubTaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.SubTaskToDoneRequest, $7.SubTaskToDoneResponse>(
        'SubTaskToDone',
        subTaskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.SubTaskToDoneRequest.fromBuffer(value),
        ($7.SubTaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.TaskToToDoRequest, $7.TaskToToDoResponse>(
        'TaskToToDo',
        taskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.TaskToToDoRequest.fromBuffer(value),
        ($7.TaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.TaskToInProgressRequest, $7.TaskToInProgressResponse>(
        'TaskToInProgress',
        taskToInProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.TaskToInProgressRequest.fromBuffer(value),
        ($7.TaskToInProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.TaskToDoneRequest, $7.TaskToDoneResponse>(
        'TaskToDone',
        taskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.TaskToDoneRequest.fromBuffer(value),
        ($7.TaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AssignTaskToUserRequest, $7.AssignTaskToUserResponse>(
        'AssignTaskToUser',
        assignTaskToUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.AssignTaskToUserRequest.fromBuffer(value),
        ($7.AssignTaskToUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UnassignTaskFromUserRequest, $7.UnassignTaskFromUserResponse>(
        'UnassignTaskFromUser',
        unassignTaskFromUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UnassignTaskFromUserRequest.fromBuffer(value),
        ($7.UnassignTaskFromUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.PublishTaskRequest, $7.PublishTaskResponse>(
        'PublishTask',
        publishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.PublishTaskRequest.fromBuffer(value),
        ($7.PublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UnpublishTaskRequest, $7.UnpublishTaskResponse>(
        'UnpublishTask',
        unpublishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UnpublishTaskRequest.fromBuffer(value),
        ($7.UnpublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteTaskRequest, $7.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteTaskRequest.fromBuffer(value),
        ($7.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$7.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$7.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$7.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$7.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$7.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$7.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$7.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$7.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$7.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$7.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$7.AddSubTaskResponse> addSubTask_Pre($grpc.ServiceCall call, $async.Future<$7.AddSubTaskRequest> request) async {
    return addSubTask(call, await request);
  }

  $async.Future<$7.RemoveSubTaskResponse> removeSubTask_Pre($grpc.ServiceCall call, $async.Future<$7.RemoveSubTaskRequest> request) async {
    return removeSubTask(call, await request);
  }

  $async.Future<$7.UpdateSubTaskResponse> updateSubTask_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateSubTaskRequest> request) async {
    return updateSubTask(call, await request);
  }

  $async.Future<$7.SubTaskToToDoResponse> subTaskToToDo_Pre($grpc.ServiceCall call, $async.Future<$7.SubTaskToToDoRequest> request) async {
    return subTaskToToDo(call, await request);
  }

  $async.Future<$7.SubTaskToDoneResponse> subTaskToDone_Pre($grpc.ServiceCall call, $async.Future<$7.SubTaskToDoneRequest> request) async {
    return subTaskToDone(call, await request);
  }

  $async.Future<$7.TaskToToDoResponse> taskToToDo_Pre($grpc.ServiceCall call, $async.Future<$7.TaskToToDoRequest> request) async {
    return taskToToDo(call, await request);
  }

  $async.Future<$7.TaskToInProgressResponse> taskToInProgress_Pre($grpc.ServiceCall call, $async.Future<$7.TaskToInProgressRequest> request) async {
    return taskToInProgress(call, await request);
  }

  $async.Future<$7.TaskToDoneResponse> taskToDone_Pre($grpc.ServiceCall call, $async.Future<$7.TaskToDoneRequest> request) async {
    return taskToDone(call, await request);
  }

  $async.Future<$7.AssignTaskToUserResponse> assignTaskToUser_Pre($grpc.ServiceCall call, $async.Future<$7.AssignTaskToUserRequest> request) async {
    return assignTaskToUser(call, await request);
  }

  $async.Future<$7.UnassignTaskFromUserResponse> unassignTaskFromUser_Pre($grpc.ServiceCall call, $async.Future<$7.UnassignTaskFromUserRequest> request) async {
    return unassignTaskFromUser(call, await request);
  }

  $async.Future<$7.PublishTaskResponse> publishTask_Pre($grpc.ServiceCall call, $async.Future<$7.PublishTaskRequest> request) async {
    return publishTask(call, await request);
  }

  $async.Future<$7.UnpublishTaskResponse> unpublishTask_Pre($grpc.ServiceCall call, $async.Future<$7.UnpublishTaskRequest> request) async {
    return unpublishTask(call, await request);
  }

  $async.Future<$7.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$7.CreateTaskResponse> createTask($grpc.ServiceCall call, $7.CreateTaskRequest request);
  $async.Future<$7.GetTaskResponse> getTask($grpc.ServiceCall call, $7.GetTaskRequest request);
  $async.Future<$7.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $7.GetTasksByPatientRequest request);
  $async.Future<$7.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $7.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$7.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $7.GetAssignedTasksRequest request);
  $async.Future<$7.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $7.UpdateTaskRequest request);
  $async.Future<$7.AddSubTaskResponse> addSubTask($grpc.ServiceCall call, $7.AddSubTaskRequest request);
  $async.Future<$7.RemoveSubTaskResponse> removeSubTask($grpc.ServiceCall call, $7.RemoveSubTaskRequest request);
  $async.Future<$7.UpdateSubTaskResponse> updateSubTask($grpc.ServiceCall call, $7.UpdateSubTaskRequest request);
  $async.Future<$7.SubTaskToToDoResponse> subTaskToToDo($grpc.ServiceCall call, $7.SubTaskToToDoRequest request);
  $async.Future<$7.SubTaskToDoneResponse> subTaskToDone($grpc.ServiceCall call, $7.SubTaskToDoneRequest request);
  $async.Future<$7.TaskToToDoResponse> taskToToDo($grpc.ServiceCall call, $7.TaskToToDoRequest request);
  $async.Future<$7.TaskToInProgressResponse> taskToInProgress($grpc.ServiceCall call, $7.TaskToInProgressRequest request);
  $async.Future<$7.TaskToDoneResponse> taskToDone($grpc.ServiceCall call, $7.TaskToDoneRequest request);
  $async.Future<$7.AssignTaskToUserResponse> assignTaskToUser($grpc.ServiceCall call, $7.AssignTaskToUserRequest request);
  $async.Future<$7.UnassignTaskFromUserResponse> unassignTaskFromUser($grpc.ServiceCall call, $7.UnassignTaskFromUserRequest request);
  $async.Future<$7.PublishTaskResponse> publishTask($grpc.ServiceCall call, $7.PublishTaskRequest request);
  $async.Future<$7.UnpublishTaskResponse> unpublishTask($grpc.ServiceCall call, $7.UnpublishTaskRequest request);
  $async.Future<$7.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $7.DeleteTaskRequest request);
}
