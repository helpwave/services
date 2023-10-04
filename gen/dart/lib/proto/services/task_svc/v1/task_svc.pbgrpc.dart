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

import 'task_svc.pb.dart' as $6;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$6.CreateTaskRequest, $6.CreateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/CreateTask',
      ($6.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$6.GetTaskRequest, $6.GetTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTask',
      ($6.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$6.GetTasksByPatientRequest, $6.GetTasksByPatientResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatient',
      ($6.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$6.GetTasksByPatientSortedByStatusRequest, $6.GetTasksByPatientSortedByStatusResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($6.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$6.GetAssignedTasksRequest, $6.GetAssignedTasksResponse>(
      '/proto.services.task_svc.v1.TaskService/GetAssignedTasks',
      ($6.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetAssignedTasksResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$6.UpdateTaskRequest, $6.UpdateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateTask',
      ($6.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateTaskResponse.fromBuffer(value));
  static final _$addSubTask = $grpc.ClientMethod<$6.AddSubTaskRequest, $6.AddSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/AddSubTask',
      ($6.AddSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AddSubTaskResponse.fromBuffer(value));
  static final _$removeSubTask = $grpc.ClientMethod<$6.RemoveSubTaskRequest, $6.RemoveSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/RemoveSubTask',
      ($6.RemoveSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.RemoveSubTaskResponse.fromBuffer(value));
  static final _$updateSubTask = $grpc.ClientMethod<$6.UpdateSubTaskRequest, $6.UpdateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateSubTask',
      ($6.UpdateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateSubTaskResponse.fromBuffer(value));
  static final _$subTaskToToDo = $grpc.ClientMethod<$6.SubTaskToToDoRequest, $6.SubTaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToToDo',
      ($6.SubTaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SubTaskToToDoResponse.fromBuffer(value));
  static final _$subTaskToDone = $grpc.ClientMethod<$6.SubTaskToDoneRequest, $6.SubTaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToDone',
      ($6.SubTaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SubTaskToDoneResponse.fromBuffer(value));
  static final _$taskToToDo = $grpc.ClientMethod<$6.TaskToToDoRequest, $6.TaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToToDo',
      ($6.TaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.TaskToToDoResponse.fromBuffer(value));
  static final _$taskToInProgress = $grpc.ClientMethod<$6.TaskToInProgressRequest, $6.TaskToInProgressResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToInProgress',
      ($6.TaskToInProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.TaskToInProgressResponse.fromBuffer(value));
  static final _$taskToDone = $grpc.ClientMethod<$6.TaskToDoneRequest, $6.TaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToDone',
      ($6.TaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.TaskToDoneResponse.fromBuffer(value));
  static final _$assignTaskToUser = $grpc.ClientMethod<$6.AssignTaskToUserRequest, $6.AssignTaskToUserResponse>(
      '/proto.services.task_svc.v1.TaskService/AssignTaskToUser',
      ($6.AssignTaskToUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AssignTaskToUserResponse.fromBuffer(value));
  static final _$unassignTaskFromUser = $grpc.ClientMethod<$6.UnassignTaskFromUserRequest, $6.UnassignTaskFromUserResponse>(
      '/proto.services.task_svc.v1.TaskService/UnassignTaskFromUser',
      ($6.UnassignTaskFromUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UnassignTaskFromUserResponse.fromBuffer(value));
  static final _$publishTask = $grpc.ClientMethod<$6.PublishTaskRequest, $6.PublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/PublishTask',
      ($6.PublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.PublishTaskResponse.fromBuffer(value));
  static final _$unpublishTask = $grpc.ClientMethod<$6.UnpublishTaskRequest, $6.UnpublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UnpublishTask',
      ($6.UnpublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UnpublishTaskResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$6.DeleteTaskRequest, $6.DeleteTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/DeleteTask',
      ($6.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateTaskResponse> createTask($6.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetTaskResponse> getTask($6.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetTasksByPatientResponse> getTasksByPatient($6.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($6.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetAssignedTasksResponse> getAssignedTasks($6.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateTaskResponse> updateTask($6.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.AddSubTaskResponse> addSubTask($6.AddSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.RemoveSubTaskResponse> removeSubTask($6.RemoveSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateSubTaskResponse> updateSubTask($6.UpdateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.SubTaskToToDoResponse> subTaskToToDo($6.SubTaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$6.SubTaskToDoneResponse> subTaskToDone($6.SubTaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$6.TaskToToDoResponse> taskToToDo($6.TaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$6.TaskToInProgressResponse> taskToInProgress($6.TaskToInProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToInProgress, request, options: options);
  }

  $grpc.ResponseFuture<$6.TaskToDoneResponse> taskToDone($6.TaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$6.AssignTaskToUserResponse> assignTaskToUser($6.AssignTaskToUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTaskToUser, request, options: options);
  }

  $grpc.ResponseFuture<$6.UnassignTaskFromUserResponse> unassignTaskFromUser($6.UnassignTaskFromUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTaskFromUser, request, options: options);
  }

  $grpc.ResponseFuture<$6.PublishTaskResponse> publishTask($6.PublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publishTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.UnpublishTaskResponse> unpublishTask($6.UnpublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unpublishTask, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteTaskResponse> deleteTask($6.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateTaskRequest, $6.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateTaskRequest.fromBuffer(value),
        ($6.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetTaskRequest, $6.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetTaskRequest.fromBuffer(value),
        ($6.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetTasksByPatientRequest, $6.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetTasksByPatientRequest.fromBuffer(value),
        ($6.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetTasksByPatientSortedByStatusRequest, $6.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($6.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetAssignedTasksRequest, $6.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetAssignedTasksRequest.fromBuffer(value),
        ($6.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateTaskRequest, $6.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateTaskRequest.fromBuffer(value),
        ($6.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AddSubTaskRequest, $6.AddSubTaskResponse>(
        'AddSubTask',
        addSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AddSubTaskRequest.fromBuffer(value),
        ($6.AddSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RemoveSubTaskRequest, $6.RemoveSubTaskResponse>(
        'RemoveSubTask',
        removeSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.RemoveSubTaskRequest.fromBuffer(value),
        ($6.RemoveSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSubTaskRequest, $6.UpdateSubTaskResponse>(
        'UpdateSubTask',
        updateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSubTaskRequest.fromBuffer(value),
        ($6.UpdateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SubTaskToToDoRequest, $6.SubTaskToToDoResponse>(
        'SubTaskToToDo',
        subTaskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SubTaskToToDoRequest.fromBuffer(value),
        ($6.SubTaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SubTaskToDoneRequest, $6.SubTaskToDoneResponse>(
        'SubTaskToDone',
        subTaskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SubTaskToDoneRequest.fromBuffer(value),
        ($6.SubTaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.TaskToToDoRequest, $6.TaskToToDoResponse>(
        'TaskToToDo',
        taskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.TaskToToDoRequest.fromBuffer(value),
        ($6.TaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.TaskToInProgressRequest, $6.TaskToInProgressResponse>(
        'TaskToInProgress',
        taskToInProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.TaskToInProgressRequest.fromBuffer(value),
        ($6.TaskToInProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.TaskToDoneRequest, $6.TaskToDoneResponse>(
        'TaskToDone',
        taskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.TaskToDoneRequest.fromBuffer(value),
        ($6.TaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AssignTaskToUserRequest, $6.AssignTaskToUserResponse>(
        'AssignTaskToUser',
        assignTaskToUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AssignTaskToUserRequest.fromBuffer(value),
        ($6.AssignTaskToUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UnassignTaskFromUserRequest, $6.UnassignTaskFromUserResponse>(
        'UnassignTaskFromUser',
        unassignTaskFromUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UnassignTaskFromUserRequest.fromBuffer(value),
        ($6.UnassignTaskFromUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.PublishTaskRequest, $6.PublishTaskResponse>(
        'PublishTask',
        publishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.PublishTaskRequest.fromBuffer(value),
        ($6.PublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UnpublishTaskRequest, $6.UnpublishTaskResponse>(
        'UnpublishTask',
        unpublishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UnpublishTaskRequest.fromBuffer(value),
        ($6.UnpublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteTaskRequest, $6.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteTaskRequest.fromBuffer(value),
        ($6.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$6.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$6.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$6.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$6.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$6.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$6.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$6.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$6.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$6.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$6.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$6.AddSubTaskResponse> addSubTask_Pre($grpc.ServiceCall call, $async.Future<$6.AddSubTaskRequest> request) async {
    return addSubTask(call, await request);
  }

  $async.Future<$6.RemoveSubTaskResponse> removeSubTask_Pre($grpc.ServiceCall call, $async.Future<$6.RemoveSubTaskRequest> request) async {
    return removeSubTask(call, await request);
  }

  $async.Future<$6.UpdateSubTaskResponse> updateSubTask_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSubTaskRequest> request) async {
    return updateSubTask(call, await request);
  }

  $async.Future<$6.SubTaskToToDoResponse> subTaskToToDo_Pre($grpc.ServiceCall call, $async.Future<$6.SubTaskToToDoRequest> request) async {
    return subTaskToToDo(call, await request);
  }

  $async.Future<$6.SubTaskToDoneResponse> subTaskToDone_Pre($grpc.ServiceCall call, $async.Future<$6.SubTaskToDoneRequest> request) async {
    return subTaskToDone(call, await request);
  }

  $async.Future<$6.TaskToToDoResponse> taskToToDo_Pre($grpc.ServiceCall call, $async.Future<$6.TaskToToDoRequest> request) async {
    return taskToToDo(call, await request);
  }

  $async.Future<$6.TaskToInProgressResponse> taskToInProgress_Pre($grpc.ServiceCall call, $async.Future<$6.TaskToInProgressRequest> request) async {
    return taskToInProgress(call, await request);
  }

  $async.Future<$6.TaskToDoneResponse> taskToDone_Pre($grpc.ServiceCall call, $async.Future<$6.TaskToDoneRequest> request) async {
    return taskToDone(call, await request);
  }

  $async.Future<$6.AssignTaskToUserResponse> assignTaskToUser_Pre($grpc.ServiceCall call, $async.Future<$6.AssignTaskToUserRequest> request) async {
    return assignTaskToUser(call, await request);
  }

  $async.Future<$6.UnassignTaskFromUserResponse> unassignTaskFromUser_Pre($grpc.ServiceCall call, $async.Future<$6.UnassignTaskFromUserRequest> request) async {
    return unassignTaskFromUser(call, await request);
  }

  $async.Future<$6.PublishTaskResponse> publishTask_Pre($grpc.ServiceCall call, $async.Future<$6.PublishTaskRequest> request) async {
    return publishTask(call, await request);
  }

  $async.Future<$6.UnpublishTaskResponse> unpublishTask_Pre($grpc.ServiceCall call, $async.Future<$6.UnpublishTaskRequest> request) async {
    return unpublishTask(call, await request);
  }

  $async.Future<$6.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$6.CreateTaskResponse> createTask($grpc.ServiceCall call, $6.CreateTaskRequest request);
  $async.Future<$6.GetTaskResponse> getTask($grpc.ServiceCall call, $6.GetTaskRequest request);
  $async.Future<$6.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $6.GetTasksByPatientRequest request);
  $async.Future<$6.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $6.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$6.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $6.GetAssignedTasksRequest request);
  $async.Future<$6.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $6.UpdateTaskRequest request);
  $async.Future<$6.AddSubTaskResponse> addSubTask($grpc.ServiceCall call, $6.AddSubTaskRequest request);
  $async.Future<$6.RemoveSubTaskResponse> removeSubTask($grpc.ServiceCall call, $6.RemoveSubTaskRequest request);
  $async.Future<$6.UpdateSubTaskResponse> updateSubTask($grpc.ServiceCall call, $6.UpdateSubTaskRequest request);
  $async.Future<$6.SubTaskToToDoResponse> subTaskToToDo($grpc.ServiceCall call, $6.SubTaskToToDoRequest request);
  $async.Future<$6.SubTaskToDoneResponse> subTaskToDone($grpc.ServiceCall call, $6.SubTaskToDoneRequest request);
  $async.Future<$6.TaskToToDoResponse> taskToToDo($grpc.ServiceCall call, $6.TaskToToDoRequest request);
  $async.Future<$6.TaskToInProgressResponse> taskToInProgress($grpc.ServiceCall call, $6.TaskToInProgressRequest request);
  $async.Future<$6.TaskToDoneResponse> taskToDone($grpc.ServiceCall call, $6.TaskToDoneRequest request);
  $async.Future<$6.AssignTaskToUserResponse> assignTaskToUser($grpc.ServiceCall call, $6.AssignTaskToUserRequest request);
  $async.Future<$6.UnassignTaskFromUserResponse> unassignTaskFromUser($grpc.ServiceCall call, $6.UnassignTaskFromUserRequest request);
  $async.Future<$6.PublishTaskResponse> publishTask($grpc.ServiceCall call, $6.PublishTaskRequest request);
  $async.Future<$6.UnpublishTaskResponse> unpublishTask($grpc.ServiceCall call, $6.UnpublishTaskRequest request);
  $async.Future<$6.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $6.DeleteTaskRequest request);
}
