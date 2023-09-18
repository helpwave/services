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

import 'task_svc.pb.dart' as $5;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$5.CreateTaskRequest, $5.CreateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/CreateTask',
      ($5.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$5.GetTaskRequest, $5.GetTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTask',
      ($5.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$5.GetTasksByPatientRequest, $5.GetTasksByPatientResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatient',
      ($5.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$5.GetTasksByPatientSortedByStatusRequest, $5.GetTasksByPatientSortedByStatusResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($5.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$5.GetAssignedTasksRequest, $5.GetAssignedTasksResponse>(
      '/proto.services.task_svc.v1.TaskService/GetAssignedTasks',
      ($5.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetAssignedTasksResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$5.UpdateTaskRequest, $5.UpdateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateTask',
      ($5.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateTaskResponse.fromBuffer(value));
  static final _$addSubTask = $grpc.ClientMethod<$5.AddSubTaskRequest, $5.AddSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/AddSubTask',
      ($5.AddSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AddSubTaskResponse.fromBuffer(value));
  static final _$removeSubTask = $grpc.ClientMethod<$5.RemoveSubTaskRequest, $5.RemoveSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/RemoveSubTask',
      ($5.RemoveSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RemoveSubTaskResponse.fromBuffer(value));
  static final _$updateSubTask = $grpc.ClientMethod<$5.UpdateSubTaskRequest, $5.UpdateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateSubTask',
      ($5.UpdateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateSubTaskResponse.fromBuffer(value));
  static final _$subTaskToToDo = $grpc.ClientMethod<$5.SubTaskToToDoRequest, $5.SubTaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToToDo',
      ($5.SubTaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.SubTaskToToDoResponse.fromBuffer(value));
  static final _$subTaskToDone = $grpc.ClientMethod<$5.SubTaskToDoneRequest, $5.SubTaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToDone',
      ($5.SubTaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.SubTaskToDoneResponse.fromBuffer(value));
  static final _$taskToToDo = $grpc.ClientMethod<$5.TaskToToDoRequest, $5.TaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToToDo',
      ($5.TaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.TaskToToDoResponse.fromBuffer(value));
  static final _$taskToInProgress = $grpc.ClientMethod<$5.TaskToInProgressRequest, $5.TaskToInProgressResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToInProgress',
      ($5.TaskToInProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.TaskToInProgressResponse.fromBuffer(value));
  static final _$taskToDone = $grpc.ClientMethod<$5.TaskToDoneRequest, $5.TaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToDone',
      ($5.TaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.TaskToDoneResponse.fromBuffer(value));
  static final _$assignTaskToUser = $grpc.ClientMethod<$5.AssignTaskToUserRequest, $5.AssignTaskToUserResponse>(
      '/proto.services.task_svc.v1.TaskService/AssignTaskToUser',
      ($5.AssignTaskToUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AssignTaskToUserResponse.fromBuffer(value));
  static final _$unassignTaskFromUser = $grpc.ClientMethod<$5.UnassignTaskFromUserRequest, $5.UnassignTaskFromUserResponse>(
      '/proto.services.task_svc.v1.TaskService/UnassignTaskFromUser',
      ($5.UnassignTaskFromUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UnassignTaskFromUserResponse.fromBuffer(value));
  static final _$publishTask = $grpc.ClientMethod<$5.PublishTaskRequest, $5.PublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/PublishTask',
      ($5.PublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.PublishTaskResponse.fromBuffer(value));
  static final _$unpublishTask = $grpc.ClientMethod<$5.UnpublishTaskRequest, $5.UnpublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UnpublishTask',
      ($5.UnpublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UnpublishTaskResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$5.DeleteTaskRequest, $5.DeleteTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/DeleteTask',
      ($5.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateTaskResponse> createTask($5.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetTaskResponse> getTask($5.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetTasksByPatientResponse> getTasksByPatient($5.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($5.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetAssignedTasksResponse> getAssignedTasks($5.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateTaskResponse> updateTask($5.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$5.AddSubTaskResponse> addSubTask($5.AddSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$5.RemoveSubTaskResponse> removeSubTask($5.RemoveSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateSubTaskResponse> updateSubTask($5.UpdateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$5.SubTaskToToDoResponse> subTaskToToDo($5.SubTaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$5.SubTaskToDoneResponse> subTaskToDone($5.SubTaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$5.TaskToToDoResponse> taskToToDo($5.TaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$5.TaskToInProgressResponse> taskToInProgress($5.TaskToInProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToInProgress, request, options: options);
  }

  $grpc.ResponseFuture<$5.TaskToDoneResponse> taskToDone($5.TaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$5.AssignTaskToUserResponse> assignTaskToUser($5.AssignTaskToUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTaskToUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.UnassignTaskFromUserResponse> unassignTaskFromUser($5.UnassignTaskFromUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTaskFromUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.PublishTaskResponse> publishTask($5.PublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publishTask, request, options: options);
  }

  $grpc.ResponseFuture<$5.UnpublishTaskResponse> unpublishTask($5.UnpublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unpublishTask, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteTaskResponse> deleteTask($5.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateTaskRequest, $5.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateTaskRequest.fromBuffer(value),
        ($5.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetTaskRequest, $5.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetTaskRequest.fromBuffer(value),
        ($5.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetTasksByPatientRequest, $5.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetTasksByPatientRequest.fromBuffer(value),
        ($5.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetTasksByPatientSortedByStatusRequest, $5.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($5.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetAssignedTasksRequest, $5.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetAssignedTasksRequest.fromBuffer(value),
        ($5.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateTaskRequest, $5.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateTaskRequest.fromBuffer(value),
        ($5.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AddSubTaskRequest, $5.AddSubTaskResponse>(
        'AddSubTask',
        addSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AddSubTaskRequest.fromBuffer(value),
        ($5.AddSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.RemoveSubTaskRequest, $5.RemoveSubTaskResponse>(
        'RemoveSubTask',
        removeSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.RemoveSubTaskRequest.fromBuffer(value),
        ($5.RemoveSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateSubTaskRequest, $5.UpdateSubTaskResponse>(
        'UpdateSubTask',
        updateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateSubTaskRequest.fromBuffer(value),
        ($5.UpdateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SubTaskToToDoRequest, $5.SubTaskToToDoResponse>(
        'SubTaskToToDo',
        subTaskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SubTaskToToDoRequest.fromBuffer(value),
        ($5.SubTaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SubTaskToDoneRequest, $5.SubTaskToDoneResponse>(
        'SubTaskToDone',
        subTaskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SubTaskToDoneRequest.fromBuffer(value),
        ($5.SubTaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TaskToToDoRequest, $5.TaskToToDoResponse>(
        'TaskToToDo',
        taskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TaskToToDoRequest.fromBuffer(value),
        ($5.TaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TaskToInProgressRequest, $5.TaskToInProgressResponse>(
        'TaskToInProgress',
        taskToInProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TaskToInProgressRequest.fromBuffer(value),
        ($5.TaskToInProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TaskToDoneRequest, $5.TaskToDoneResponse>(
        'TaskToDone',
        taskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TaskToDoneRequest.fromBuffer(value),
        ($5.TaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AssignTaskToUserRequest, $5.AssignTaskToUserResponse>(
        'AssignTaskToUser',
        assignTaskToUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AssignTaskToUserRequest.fromBuffer(value),
        ($5.AssignTaskToUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UnassignTaskFromUserRequest, $5.UnassignTaskFromUserResponse>(
        'UnassignTaskFromUser',
        unassignTaskFromUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UnassignTaskFromUserRequest.fromBuffer(value),
        ($5.UnassignTaskFromUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.PublishTaskRequest, $5.PublishTaskResponse>(
        'PublishTask',
        publishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.PublishTaskRequest.fromBuffer(value),
        ($5.PublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UnpublishTaskRequest, $5.UnpublishTaskResponse>(
        'UnpublishTask',
        unpublishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UnpublishTaskRequest.fromBuffer(value),
        ($5.UnpublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteTaskRequest, $5.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteTaskRequest.fromBuffer(value),
        ($5.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$5.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$5.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$5.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$5.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$5.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$5.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$5.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$5.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$5.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$5.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$5.AddSubTaskResponse> addSubTask_Pre($grpc.ServiceCall call, $async.Future<$5.AddSubTaskRequest> request) async {
    return addSubTask(call, await request);
  }

  $async.Future<$5.RemoveSubTaskResponse> removeSubTask_Pre($grpc.ServiceCall call, $async.Future<$5.RemoveSubTaskRequest> request) async {
    return removeSubTask(call, await request);
  }

  $async.Future<$5.UpdateSubTaskResponse> updateSubTask_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateSubTaskRequest> request) async {
    return updateSubTask(call, await request);
  }

  $async.Future<$5.SubTaskToToDoResponse> subTaskToToDo_Pre($grpc.ServiceCall call, $async.Future<$5.SubTaskToToDoRequest> request) async {
    return subTaskToToDo(call, await request);
  }

  $async.Future<$5.SubTaskToDoneResponse> subTaskToDone_Pre($grpc.ServiceCall call, $async.Future<$5.SubTaskToDoneRequest> request) async {
    return subTaskToDone(call, await request);
  }

  $async.Future<$5.TaskToToDoResponse> taskToToDo_Pre($grpc.ServiceCall call, $async.Future<$5.TaskToToDoRequest> request) async {
    return taskToToDo(call, await request);
  }

  $async.Future<$5.TaskToInProgressResponse> taskToInProgress_Pre($grpc.ServiceCall call, $async.Future<$5.TaskToInProgressRequest> request) async {
    return taskToInProgress(call, await request);
  }

  $async.Future<$5.TaskToDoneResponse> taskToDone_Pre($grpc.ServiceCall call, $async.Future<$5.TaskToDoneRequest> request) async {
    return taskToDone(call, await request);
  }

  $async.Future<$5.AssignTaskToUserResponse> assignTaskToUser_Pre($grpc.ServiceCall call, $async.Future<$5.AssignTaskToUserRequest> request) async {
    return assignTaskToUser(call, await request);
  }

  $async.Future<$5.UnassignTaskFromUserResponse> unassignTaskFromUser_Pre($grpc.ServiceCall call, $async.Future<$5.UnassignTaskFromUserRequest> request) async {
    return unassignTaskFromUser(call, await request);
  }

  $async.Future<$5.PublishTaskResponse> publishTask_Pre($grpc.ServiceCall call, $async.Future<$5.PublishTaskRequest> request) async {
    return publishTask(call, await request);
  }

  $async.Future<$5.UnpublishTaskResponse> unpublishTask_Pre($grpc.ServiceCall call, $async.Future<$5.UnpublishTaskRequest> request) async {
    return unpublishTask(call, await request);
  }

  $async.Future<$5.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$5.CreateTaskResponse> createTask($grpc.ServiceCall call, $5.CreateTaskRequest request);
  $async.Future<$5.GetTaskResponse> getTask($grpc.ServiceCall call, $5.GetTaskRequest request);
  $async.Future<$5.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $5.GetTasksByPatientRequest request);
  $async.Future<$5.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $5.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$5.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $5.GetAssignedTasksRequest request);
  $async.Future<$5.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $5.UpdateTaskRequest request);
  $async.Future<$5.AddSubTaskResponse> addSubTask($grpc.ServiceCall call, $5.AddSubTaskRequest request);
  $async.Future<$5.RemoveSubTaskResponse> removeSubTask($grpc.ServiceCall call, $5.RemoveSubTaskRequest request);
  $async.Future<$5.UpdateSubTaskResponse> updateSubTask($grpc.ServiceCall call, $5.UpdateSubTaskRequest request);
  $async.Future<$5.SubTaskToToDoResponse> subTaskToToDo($grpc.ServiceCall call, $5.SubTaskToToDoRequest request);
  $async.Future<$5.SubTaskToDoneResponse> subTaskToDone($grpc.ServiceCall call, $5.SubTaskToDoneRequest request);
  $async.Future<$5.TaskToToDoResponse> taskToToDo($grpc.ServiceCall call, $5.TaskToToDoRequest request);
  $async.Future<$5.TaskToInProgressResponse> taskToInProgress($grpc.ServiceCall call, $5.TaskToInProgressRequest request);
  $async.Future<$5.TaskToDoneResponse> taskToDone($grpc.ServiceCall call, $5.TaskToDoneRequest request);
  $async.Future<$5.AssignTaskToUserResponse> assignTaskToUser($grpc.ServiceCall call, $5.AssignTaskToUserRequest request);
  $async.Future<$5.UnassignTaskFromUserResponse> unassignTaskFromUser($grpc.ServiceCall call, $5.UnassignTaskFromUserRequest request);
  $async.Future<$5.PublishTaskResponse> publishTask($grpc.ServiceCall call, $5.PublishTaskRequest request);
  $async.Future<$5.UnpublishTaskResponse> unpublishTask($grpc.ServiceCall call, $5.UnpublishTaskRequest request);
  $async.Future<$5.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $5.DeleteTaskRequest request);
}
