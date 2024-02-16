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

import 'task_svc.pb.dart' as $10;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$10.CreateTaskRequest, $10.CreateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/CreateTask',
      ($10.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$10.GetTaskRequest, $10.GetTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTask',
      ($10.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$10.GetTasksByPatientRequest, $10.GetTasksByPatientResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatient',
      ($10.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$10.GetTasksByPatientSortedByStatusRequest, $10.GetTasksByPatientSortedByStatusResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($10.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$10.GetAssignedTasksRequest, $10.GetAssignedTasksResponse>(
      '/proto.services.task_svc.v1.TaskService/GetAssignedTasks',
      ($10.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.GetAssignedTasksResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$10.UpdateTaskRequest, $10.UpdateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateTask',
      ($10.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateTaskResponse.fromBuffer(value));
  static final _$addSubTask = $grpc.ClientMethod<$10.AddSubTaskRequest, $10.AddSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/AddSubTask',
      ($10.AddSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.AddSubTaskResponse.fromBuffer(value));
  static final _$removeSubTask = $grpc.ClientMethod<$10.RemoveSubTaskRequest, $10.RemoveSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/RemoveSubTask',
      ($10.RemoveSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.RemoveSubTaskResponse.fromBuffer(value));
  static final _$updateSubTask = $grpc.ClientMethod<$10.UpdateSubTaskRequest, $10.UpdateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateSubTask',
      ($10.UpdateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateSubTaskResponse.fromBuffer(value));
  static final _$subTaskToToDo = $grpc.ClientMethod<$10.SubTaskToToDoRequest, $10.SubTaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToToDo',
      ($10.SubTaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.SubTaskToToDoResponse.fromBuffer(value));
  static final _$subTaskToDone = $grpc.ClientMethod<$10.SubTaskToDoneRequest, $10.SubTaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToDone',
      ($10.SubTaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.SubTaskToDoneResponse.fromBuffer(value));
  static final _$taskToToDo = $grpc.ClientMethod<$10.TaskToToDoRequest, $10.TaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToToDo',
      ($10.TaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.TaskToToDoResponse.fromBuffer(value));
  static final _$taskToInProgress = $grpc.ClientMethod<$10.TaskToInProgressRequest, $10.TaskToInProgressResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToInProgress',
      ($10.TaskToInProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.TaskToInProgressResponse.fromBuffer(value));
  static final _$taskToDone = $grpc.ClientMethod<$10.TaskToDoneRequest, $10.TaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToDone',
      ($10.TaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.TaskToDoneResponse.fromBuffer(value));
  static final _$assignTaskToUser = $grpc.ClientMethod<$10.AssignTaskToUserRequest, $10.AssignTaskToUserResponse>(
      '/proto.services.task_svc.v1.TaskService/AssignTaskToUser',
      ($10.AssignTaskToUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.AssignTaskToUserResponse.fromBuffer(value));
  static final _$unassignTaskFromUser = $grpc.ClientMethod<$10.UnassignTaskFromUserRequest, $10.UnassignTaskFromUserResponse>(
      '/proto.services.task_svc.v1.TaskService/UnassignTaskFromUser',
      ($10.UnassignTaskFromUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UnassignTaskFromUserResponse.fromBuffer(value));
  static final _$publishTask = $grpc.ClientMethod<$10.PublishTaskRequest, $10.PublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/PublishTask',
      ($10.PublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.PublishTaskResponse.fromBuffer(value));
  static final _$unpublishTask = $grpc.ClientMethod<$10.UnpublishTaskRequest, $10.UnpublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UnpublishTask',
      ($10.UnpublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UnpublishTaskResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$10.DeleteTaskRequest, $10.DeleteTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/DeleteTask',
      ($10.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateTaskResponse> createTask($10.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetTaskResponse> getTask($10.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetTasksByPatientResponse> getTasksByPatient($10.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($10.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$10.GetAssignedTasksResponse> getAssignedTasks($10.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateTaskResponse> updateTask($10.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.AddSubTaskResponse> addSubTask($10.AddSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.RemoveSubTaskResponse> removeSubTask($10.RemoveSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateSubTaskResponse> updateSubTask($10.UpdateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.SubTaskToToDoResponse> subTaskToToDo($10.SubTaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$10.SubTaskToDoneResponse> subTaskToDone($10.SubTaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$10.TaskToToDoResponse> taskToToDo($10.TaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$10.TaskToInProgressResponse> taskToInProgress($10.TaskToInProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToInProgress, request, options: options);
  }

  $grpc.ResponseFuture<$10.TaskToDoneResponse> taskToDone($10.TaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$10.AssignTaskToUserResponse> assignTaskToUser($10.AssignTaskToUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTaskToUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.UnassignTaskFromUserResponse> unassignTaskFromUser($10.UnassignTaskFromUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTaskFromUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.PublishTaskResponse> publishTask($10.PublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publishTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.UnpublishTaskResponse> unpublishTask($10.UnpublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unpublishTask, request, options: options);
  }

  $grpc.ResponseFuture<$10.DeleteTaskResponse> deleteTask($10.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateTaskRequest, $10.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateTaskRequest.fromBuffer(value),
        ($10.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetTaskRequest, $10.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetTaskRequest.fromBuffer(value),
        ($10.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetTasksByPatientRequest, $10.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetTasksByPatientRequest.fromBuffer(value),
        ($10.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetTasksByPatientSortedByStatusRequest, $10.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($10.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.GetAssignedTasksRequest, $10.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.GetAssignedTasksRequest.fromBuffer(value),
        ($10.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateTaskRequest, $10.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateTaskRequest.fromBuffer(value),
        ($10.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.AddSubTaskRequest, $10.AddSubTaskResponse>(
        'AddSubTask',
        addSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.AddSubTaskRequest.fromBuffer(value),
        ($10.AddSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.RemoveSubTaskRequest, $10.RemoveSubTaskResponse>(
        'RemoveSubTask',
        removeSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.RemoveSubTaskRequest.fromBuffer(value),
        ($10.RemoveSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateSubTaskRequest, $10.UpdateSubTaskResponse>(
        'UpdateSubTask',
        updateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateSubTaskRequest.fromBuffer(value),
        ($10.UpdateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.SubTaskToToDoRequest, $10.SubTaskToToDoResponse>(
        'SubTaskToToDo',
        subTaskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.SubTaskToToDoRequest.fromBuffer(value),
        ($10.SubTaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.SubTaskToDoneRequest, $10.SubTaskToDoneResponse>(
        'SubTaskToDone',
        subTaskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.SubTaskToDoneRequest.fromBuffer(value),
        ($10.SubTaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.TaskToToDoRequest, $10.TaskToToDoResponse>(
        'TaskToToDo',
        taskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.TaskToToDoRequest.fromBuffer(value),
        ($10.TaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.TaskToInProgressRequest, $10.TaskToInProgressResponse>(
        'TaskToInProgress',
        taskToInProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.TaskToInProgressRequest.fromBuffer(value),
        ($10.TaskToInProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.TaskToDoneRequest, $10.TaskToDoneResponse>(
        'TaskToDone',
        taskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.TaskToDoneRequest.fromBuffer(value),
        ($10.TaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.AssignTaskToUserRequest, $10.AssignTaskToUserResponse>(
        'AssignTaskToUser',
        assignTaskToUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.AssignTaskToUserRequest.fromBuffer(value),
        ($10.AssignTaskToUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UnassignTaskFromUserRequest, $10.UnassignTaskFromUserResponse>(
        'UnassignTaskFromUser',
        unassignTaskFromUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UnassignTaskFromUserRequest.fromBuffer(value),
        ($10.UnassignTaskFromUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.PublishTaskRequest, $10.PublishTaskResponse>(
        'PublishTask',
        publishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.PublishTaskRequest.fromBuffer(value),
        ($10.PublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UnpublishTaskRequest, $10.UnpublishTaskResponse>(
        'UnpublishTask',
        unpublishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UnpublishTaskRequest.fromBuffer(value),
        ($10.UnpublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.DeleteTaskRequest, $10.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.DeleteTaskRequest.fromBuffer(value),
        ($10.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$10.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$10.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$10.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$10.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$10.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$10.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$10.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$10.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$10.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$10.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$10.AddSubTaskResponse> addSubTask_Pre($grpc.ServiceCall call, $async.Future<$10.AddSubTaskRequest> request) async {
    return addSubTask(call, await request);
  }

  $async.Future<$10.RemoveSubTaskResponse> removeSubTask_Pre($grpc.ServiceCall call, $async.Future<$10.RemoveSubTaskRequest> request) async {
    return removeSubTask(call, await request);
  }

  $async.Future<$10.UpdateSubTaskResponse> updateSubTask_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateSubTaskRequest> request) async {
    return updateSubTask(call, await request);
  }

  $async.Future<$10.SubTaskToToDoResponse> subTaskToToDo_Pre($grpc.ServiceCall call, $async.Future<$10.SubTaskToToDoRequest> request) async {
    return subTaskToToDo(call, await request);
  }

  $async.Future<$10.SubTaskToDoneResponse> subTaskToDone_Pre($grpc.ServiceCall call, $async.Future<$10.SubTaskToDoneRequest> request) async {
    return subTaskToDone(call, await request);
  }

  $async.Future<$10.TaskToToDoResponse> taskToToDo_Pre($grpc.ServiceCall call, $async.Future<$10.TaskToToDoRequest> request) async {
    return taskToToDo(call, await request);
  }

  $async.Future<$10.TaskToInProgressResponse> taskToInProgress_Pre($grpc.ServiceCall call, $async.Future<$10.TaskToInProgressRequest> request) async {
    return taskToInProgress(call, await request);
  }

  $async.Future<$10.TaskToDoneResponse> taskToDone_Pre($grpc.ServiceCall call, $async.Future<$10.TaskToDoneRequest> request) async {
    return taskToDone(call, await request);
  }

  $async.Future<$10.AssignTaskToUserResponse> assignTaskToUser_Pre($grpc.ServiceCall call, $async.Future<$10.AssignTaskToUserRequest> request) async {
    return assignTaskToUser(call, await request);
  }

  $async.Future<$10.UnassignTaskFromUserResponse> unassignTaskFromUser_Pre($grpc.ServiceCall call, $async.Future<$10.UnassignTaskFromUserRequest> request) async {
    return unassignTaskFromUser(call, await request);
  }

  $async.Future<$10.PublishTaskResponse> publishTask_Pre($grpc.ServiceCall call, $async.Future<$10.PublishTaskRequest> request) async {
    return publishTask(call, await request);
  }

  $async.Future<$10.UnpublishTaskResponse> unpublishTask_Pre($grpc.ServiceCall call, $async.Future<$10.UnpublishTaskRequest> request) async {
    return unpublishTask(call, await request);
  }

  $async.Future<$10.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$10.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$10.CreateTaskResponse> createTask($grpc.ServiceCall call, $10.CreateTaskRequest request);
  $async.Future<$10.GetTaskResponse> getTask($grpc.ServiceCall call, $10.GetTaskRequest request);
  $async.Future<$10.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $10.GetTasksByPatientRequest request);
  $async.Future<$10.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $10.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$10.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $10.GetAssignedTasksRequest request);
  $async.Future<$10.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $10.UpdateTaskRequest request);
  $async.Future<$10.AddSubTaskResponse> addSubTask($grpc.ServiceCall call, $10.AddSubTaskRequest request);
  $async.Future<$10.RemoveSubTaskResponse> removeSubTask($grpc.ServiceCall call, $10.RemoveSubTaskRequest request);
  $async.Future<$10.UpdateSubTaskResponse> updateSubTask($grpc.ServiceCall call, $10.UpdateSubTaskRequest request);
  $async.Future<$10.SubTaskToToDoResponse> subTaskToToDo($grpc.ServiceCall call, $10.SubTaskToToDoRequest request);
  $async.Future<$10.SubTaskToDoneResponse> subTaskToDone($grpc.ServiceCall call, $10.SubTaskToDoneRequest request);
  $async.Future<$10.TaskToToDoResponse> taskToToDo($grpc.ServiceCall call, $10.TaskToToDoRequest request);
  $async.Future<$10.TaskToInProgressResponse> taskToInProgress($grpc.ServiceCall call, $10.TaskToInProgressRequest request);
  $async.Future<$10.TaskToDoneResponse> taskToDone($grpc.ServiceCall call, $10.TaskToDoneRequest request);
  $async.Future<$10.AssignTaskToUserResponse> assignTaskToUser($grpc.ServiceCall call, $10.AssignTaskToUserRequest request);
  $async.Future<$10.UnassignTaskFromUserResponse> unassignTaskFromUser($grpc.ServiceCall call, $10.UnassignTaskFromUserRequest request);
  $async.Future<$10.PublishTaskResponse> publishTask($grpc.ServiceCall call, $10.PublishTaskRequest request);
  $async.Future<$10.UnpublishTaskResponse> unpublishTask($grpc.ServiceCall call, $10.UnpublishTaskRequest request);
  $async.Future<$10.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $10.DeleteTaskRequest request);
}
