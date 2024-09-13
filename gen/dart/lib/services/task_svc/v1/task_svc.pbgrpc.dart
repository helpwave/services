//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/task_svc.proto
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

import 'task_svc.pb.dart' as $8;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('services.task_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$8.CreateTaskRequest, $8.CreateTaskResponse>(
      '/services.task_svc.v1.TaskService/CreateTask',
      ($8.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$8.GetTaskRequest, $8.GetTaskResponse>(
      '/services.task_svc.v1.TaskService/GetTask',
      ($8.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$8.GetTasksByPatientRequest, $8.GetTasksByPatientResponse>(
      '/services.task_svc.v1.TaskService/GetTasksByPatient',
      ($8.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$8.GetTasksByPatientSortedByStatusRequest, $8.GetTasksByPatientSortedByStatusResponse>(
      '/services.task_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($8.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$8.GetAssignedTasksRequest, $8.GetAssignedTasksResponse>(
      '/services.task_svc.v1.TaskService/GetAssignedTasks',
      ($8.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetAssignedTasksResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$8.UpdateTaskRequest, $8.UpdateTaskResponse>(
      '/services.task_svc.v1.TaskService/UpdateTask',
      ($8.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateTaskResponse.fromBuffer(value));
  static final _$addSubTask = $grpc.ClientMethod<$8.AddSubTaskRequest, $8.AddSubTaskResponse>(
      '/services.task_svc.v1.TaskService/AddSubTask',
      ($8.AddSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.AddSubTaskResponse.fromBuffer(value));
  static final _$removeSubTask = $grpc.ClientMethod<$8.RemoveSubTaskRequest, $8.RemoveSubTaskResponse>(
      '/services.task_svc.v1.TaskService/RemoveSubTask',
      ($8.RemoveSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.RemoveSubTaskResponse.fromBuffer(value));
  static final _$updateSubTask = $grpc.ClientMethod<$8.UpdateSubTaskRequest, $8.UpdateSubTaskResponse>(
      '/services.task_svc.v1.TaskService/UpdateSubTask',
      ($8.UpdateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateSubTaskResponse.fromBuffer(value));
  static final _$subTaskToToDo = $grpc.ClientMethod<$8.SubTaskToToDoRequest, $8.SubTaskToToDoResponse>(
      '/services.task_svc.v1.TaskService/SubTaskToToDo',
      ($8.SubTaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.SubTaskToToDoResponse.fromBuffer(value));
  static final _$subTaskToDone = $grpc.ClientMethod<$8.SubTaskToDoneRequest, $8.SubTaskToDoneResponse>(
      '/services.task_svc.v1.TaskService/SubTaskToDone',
      ($8.SubTaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.SubTaskToDoneResponse.fromBuffer(value));
  static final _$taskToToDo = $grpc.ClientMethod<$8.TaskToToDoRequest, $8.TaskToToDoResponse>(
      '/services.task_svc.v1.TaskService/TaskToToDo',
      ($8.TaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.TaskToToDoResponse.fromBuffer(value));
  static final _$taskToInProgress = $grpc.ClientMethod<$8.TaskToInProgressRequest, $8.TaskToInProgressResponse>(
      '/services.task_svc.v1.TaskService/TaskToInProgress',
      ($8.TaskToInProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.TaskToInProgressResponse.fromBuffer(value));
  static final _$taskToDone = $grpc.ClientMethod<$8.TaskToDoneRequest, $8.TaskToDoneResponse>(
      '/services.task_svc.v1.TaskService/TaskToDone',
      ($8.TaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.TaskToDoneResponse.fromBuffer(value));
  static final _$assignTaskToUser = $grpc.ClientMethod<$8.AssignTaskToUserRequest, $8.AssignTaskToUserResponse>(
      '/services.task_svc.v1.TaskService/AssignTaskToUser',
      ($8.AssignTaskToUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.AssignTaskToUserResponse.fromBuffer(value));
  static final _$unassignTaskFromUser = $grpc.ClientMethod<$8.UnassignTaskFromUserRequest, $8.UnassignTaskFromUserResponse>(
      '/services.task_svc.v1.TaskService/UnassignTaskFromUser',
      ($8.UnassignTaskFromUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UnassignTaskFromUserResponse.fromBuffer(value));
  static final _$publishTask = $grpc.ClientMethod<$8.PublishTaskRequest, $8.PublishTaskResponse>(
      '/services.task_svc.v1.TaskService/PublishTask',
      ($8.PublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.PublishTaskResponse.fromBuffer(value));
  static final _$unpublishTask = $grpc.ClientMethod<$8.UnpublishTaskRequest, $8.UnpublishTaskResponse>(
      '/services.task_svc.v1.TaskService/UnpublishTask',
      ($8.UnpublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UnpublishTaskResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$8.DeleteTaskRequest, $8.DeleteTaskResponse>(
      '/services.task_svc.v1.TaskService/DeleteTask',
      ($8.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateTaskResponse> createTask($8.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetTaskResponse> getTask($8.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetTasksByPatientResponse> getTasksByPatient($8.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($8.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetAssignedTasksResponse> getAssignedTasks($8.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateTaskResponse> updateTask($8.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.AddSubTaskResponse> addSubTask($8.AddSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.RemoveSubTaskResponse> removeSubTask($8.RemoveSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateSubTaskResponse> updateSubTask($8.UpdateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.SubTaskToToDoResponse> subTaskToToDo($8.SubTaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$8.SubTaskToDoneResponse> subTaskToDone($8.SubTaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$8.TaskToToDoResponse> taskToToDo($8.TaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$8.TaskToInProgressResponse> taskToInProgress($8.TaskToInProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToInProgress, request, options: options);
  }

  $grpc.ResponseFuture<$8.TaskToDoneResponse> taskToDone($8.TaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$8.AssignTaskToUserResponse> assignTaskToUser($8.AssignTaskToUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTaskToUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.UnassignTaskFromUserResponse> unassignTaskFromUser($8.UnassignTaskFromUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTaskFromUser, request, options: options);
  }

  $grpc.ResponseFuture<$8.PublishTaskResponse> publishTask($8.PublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publishTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.UnpublishTaskResponse> unpublishTask($8.UnpublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unpublishTask, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteTaskResponse> deleteTask($8.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('services.task_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'services.task_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateTaskRequest, $8.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateTaskRequest.fromBuffer(value),
        ($8.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetTaskRequest, $8.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetTaskRequest.fromBuffer(value),
        ($8.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetTasksByPatientRequest, $8.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetTasksByPatientRequest.fromBuffer(value),
        ($8.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetTasksByPatientSortedByStatusRequest, $8.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($8.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetAssignedTasksRequest, $8.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetAssignedTasksRequest.fromBuffer(value),
        ($8.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateTaskRequest, $8.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateTaskRequest.fromBuffer(value),
        ($8.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AddSubTaskRequest, $8.AddSubTaskResponse>(
        'AddSubTask',
        addSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.AddSubTaskRequest.fromBuffer(value),
        ($8.AddSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RemoveSubTaskRequest, $8.RemoveSubTaskResponse>(
        'RemoveSubTask',
        removeSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.RemoveSubTaskRequest.fromBuffer(value),
        ($8.RemoveSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateSubTaskRequest, $8.UpdateSubTaskResponse>(
        'UpdateSubTask',
        updateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateSubTaskRequest.fromBuffer(value),
        ($8.UpdateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.SubTaskToToDoRequest, $8.SubTaskToToDoResponse>(
        'SubTaskToToDo',
        subTaskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.SubTaskToToDoRequest.fromBuffer(value),
        ($8.SubTaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.SubTaskToDoneRequest, $8.SubTaskToDoneResponse>(
        'SubTaskToDone',
        subTaskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.SubTaskToDoneRequest.fromBuffer(value),
        ($8.SubTaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.TaskToToDoRequest, $8.TaskToToDoResponse>(
        'TaskToToDo',
        taskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.TaskToToDoRequest.fromBuffer(value),
        ($8.TaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.TaskToInProgressRequest, $8.TaskToInProgressResponse>(
        'TaskToInProgress',
        taskToInProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.TaskToInProgressRequest.fromBuffer(value),
        ($8.TaskToInProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.TaskToDoneRequest, $8.TaskToDoneResponse>(
        'TaskToDone',
        taskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.TaskToDoneRequest.fromBuffer(value),
        ($8.TaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AssignTaskToUserRequest, $8.AssignTaskToUserResponse>(
        'AssignTaskToUser',
        assignTaskToUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.AssignTaskToUserRequest.fromBuffer(value),
        ($8.AssignTaskToUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UnassignTaskFromUserRequest, $8.UnassignTaskFromUserResponse>(
        'UnassignTaskFromUser',
        unassignTaskFromUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UnassignTaskFromUserRequest.fromBuffer(value),
        ($8.UnassignTaskFromUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.PublishTaskRequest, $8.PublishTaskResponse>(
        'PublishTask',
        publishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.PublishTaskRequest.fromBuffer(value),
        ($8.PublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UnpublishTaskRequest, $8.UnpublishTaskResponse>(
        'UnpublishTask',
        unpublishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UnpublishTaskRequest.fromBuffer(value),
        ($8.UnpublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteTaskRequest, $8.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteTaskRequest.fromBuffer(value),
        ($8.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$8.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$8.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$8.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$8.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$8.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$8.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$8.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$8.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$8.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$8.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$8.AddSubTaskResponse> addSubTask_Pre($grpc.ServiceCall call, $async.Future<$8.AddSubTaskRequest> request) async {
    return addSubTask(call, await request);
  }

  $async.Future<$8.RemoveSubTaskResponse> removeSubTask_Pre($grpc.ServiceCall call, $async.Future<$8.RemoveSubTaskRequest> request) async {
    return removeSubTask(call, await request);
  }

  $async.Future<$8.UpdateSubTaskResponse> updateSubTask_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateSubTaskRequest> request) async {
    return updateSubTask(call, await request);
  }

  $async.Future<$8.SubTaskToToDoResponse> subTaskToToDo_Pre($grpc.ServiceCall call, $async.Future<$8.SubTaskToToDoRequest> request) async {
    return subTaskToToDo(call, await request);
  }

  $async.Future<$8.SubTaskToDoneResponse> subTaskToDone_Pre($grpc.ServiceCall call, $async.Future<$8.SubTaskToDoneRequest> request) async {
    return subTaskToDone(call, await request);
  }

  $async.Future<$8.TaskToToDoResponse> taskToToDo_Pre($grpc.ServiceCall call, $async.Future<$8.TaskToToDoRequest> request) async {
    return taskToToDo(call, await request);
  }

  $async.Future<$8.TaskToInProgressResponse> taskToInProgress_Pre($grpc.ServiceCall call, $async.Future<$8.TaskToInProgressRequest> request) async {
    return taskToInProgress(call, await request);
  }

  $async.Future<$8.TaskToDoneResponse> taskToDone_Pre($grpc.ServiceCall call, $async.Future<$8.TaskToDoneRequest> request) async {
    return taskToDone(call, await request);
  }

  $async.Future<$8.AssignTaskToUserResponse> assignTaskToUser_Pre($grpc.ServiceCall call, $async.Future<$8.AssignTaskToUserRequest> request) async {
    return assignTaskToUser(call, await request);
  }

  $async.Future<$8.UnassignTaskFromUserResponse> unassignTaskFromUser_Pre($grpc.ServiceCall call, $async.Future<$8.UnassignTaskFromUserRequest> request) async {
    return unassignTaskFromUser(call, await request);
  }

  $async.Future<$8.PublishTaskResponse> publishTask_Pre($grpc.ServiceCall call, $async.Future<$8.PublishTaskRequest> request) async {
    return publishTask(call, await request);
  }

  $async.Future<$8.UnpublishTaskResponse> unpublishTask_Pre($grpc.ServiceCall call, $async.Future<$8.UnpublishTaskRequest> request) async {
    return unpublishTask(call, await request);
  }

  $async.Future<$8.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$8.CreateTaskResponse> createTask($grpc.ServiceCall call, $8.CreateTaskRequest request);
  $async.Future<$8.GetTaskResponse> getTask($grpc.ServiceCall call, $8.GetTaskRequest request);
  $async.Future<$8.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $8.GetTasksByPatientRequest request);
  $async.Future<$8.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $8.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$8.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $8.GetAssignedTasksRequest request);
  $async.Future<$8.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $8.UpdateTaskRequest request);
  $async.Future<$8.AddSubTaskResponse> addSubTask($grpc.ServiceCall call, $8.AddSubTaskRequest request);
  $async.Future<$8.RemoveSubTaskResponse> removeSubTask($grpc.ServiceCall call, $8.RemoveSubTaskRequest request);
  $async.Future<$8.UpdateSubTaskResponse> updateSubTask($grpc.ServiceCall call, $8.UpdateSubTaskRequest request);
  $async.Future<$8.SubTaskToToDoResponse> subTaskToToDo($grpc.ServiceCall call, $8.SubTaskToToDoRequest request);
  $async.Future<$8.SubTaskToDoneResponse> subTaskToDone($grpc.ServiceCall call, $8.SubTaskToDoneRequest request);
  $async.Future<$8.TaskToToDoResponse> taskToToDo($grpc.ServiceCall call, $8.TaskToToDoRequest request);
  $async.Future<$8.TaskToInProgressResponse> taskToInProgress($grpc.ServiceCall call, $8.TaskToInProgressRequest request);
  $async.Future<$8.TaskToDoneResponse> taskToDone($grpc.ServiceCall call, $8.TaskToDoneRequest request);
  $async.Future<$8.AssignTaskToUserResponse> assignTaskToUser($grpc.ServiceCall call, $8.AssignTaskToUserRequest request);
  $async.Future<$8.UnassignTaskFromUserResponse> unassignTaskFromUser($grpc.ServiceCall call, $8.UnassignTaskFromUserRequest request);
  $async.Future<$8.PublishTaskResponse> publishTask($grpc.ServiceCall call, $8.PublishTaskRequest request);
  $async.Future<$8.UnpublishTaskResponse> unpublishTask($grpc.ServiceCall call, $8.UnpublishTaskRequest request);
  $async.Future<$8.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $8.DeleteTaskRequest request);
}
