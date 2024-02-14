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

import 'task_svc.pb.dart' as $9;

export 'task_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
class TaskServiceClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$9.CreateTaskRequest, $9.CreateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/CreateTask',
      ($9.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$9.GetTaskRequest, $9.GetTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTask',
      ($9.GetTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetTaskResponse.fromBuffer(value));
  static final _$getTasksByPatient = $grpc.ClientMethod<$9.GetTasksByPatientRequest, $9.GetTasksByPatientResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatient',
      ($9.GetTasksByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetTasksByPatientResponse.fromBuffer(value));
  static final _$getTasksByPatientSortedByStatus = $grpc.ClientMethod<$9.GetTasksByPatientSortedByStatusRequest, $9.GetTasksByPatientSortedByStatusResponse>(
      '/proto.services.task_svc.v1.TaskService/GetTasksByPatientSortedByStatus',
      ($9.GetTasksByPatientSortedByStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetTasksByPatientSortedByStatusResponse.fromBuffer(value));
  static final _$getAssignedTasks = $grpc.ClientMethod<$9.GetAssignedTasksRequest, $9.GetAssignedTasksResponse>(
      '/proto.services.task_svc.v1.TaskService/GetAssignedTasks',
      ($9.GetAssignedTasksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetAssignedTasksResponse.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$9.UpdateTaskRequest, $9.UpdateTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateTask',
      ($9.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateTaskResponse.fromBuffer(value));
  static final _$addSubTask = $grpc.ClientMethod<$9.AddSubTaskRequest, $9.AddSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/AddSubTask',
      ($9.AddSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AddSubTaskResponse.fromBuffer(value));
  static final _$removeSubTask = $grpc.ClientMethod<$9.RemoveSubTaskRequest, $9.RemoveSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/RemoveSubTask',
      ($9.RemoveSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.RemoveSubTaskResponse.fromBuffer(value));
  static final _$updateSubTask = $grpc.ClientMethod<$9.UpdateSubTaskRequest, $9.UpdateSubTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UpdateSubTask',
      ($9.UpdateSubTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateSubTaskResponse.fromBuffer(value));
  static final _$subTaskToToDo = $grpc.ClientMethod<$9.SubTaskToToDoRequest, $9.SubTaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToToDo',
      ($9.SubTaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.SubTaskToToDoResponse.fromBuffer(value));
  static final _$subTaskToDone = $grpc.ClientMethod<$9.SubTaskToDoneRequest, $9.SubTaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/SubTaskToDone',
      ($9.SubTaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.SubTaskToDoneResponse.fromBuffer(value));
  static final _$taskToToDo = $grpc.ClientMethod<$9.TaskToToDoRequest, $9.TaskToToDoResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToToDo',
      ($9.TaskToToDoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.TaskToToDoResponse.fromBuffer(value));
  static final _$taskToInProgress = $grpc.ClientMethod<$9.TaskToInProgressRequest, $9.TaskToInProgressResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToInProgress',
      ($9.TaskToInProgressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.TaskToInProgressResponse.fromBuffer(value));
  static final _$taskToDone = $grpc.ClientMethod<$9.TaskToDoneRequest, $9.TaskToDoneResponse>(
      '/proto.services.task_svc.v1.TaskService/TaskToDone',
      ($9.TaskToDoneRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.TaskToDoneResponse.fromBuffer(value));
  static final _$assignTaskToUser = $grpc.ClientMethod<$9.AssignTaskToUserRequest, $9.AssignTaskToUserResponse>(
      '/proto.services.task_svc.v1.TaskService/AssignTaskToUser',
      ($9.AssignTaskToUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AssignTaskToUserResponse.fromBuffer(value));
  static final _$unassignTaskFromUser = $grpc.ClientMethod<$9.UnassignTaskFromUserRequest, $9.UnassignTaskFromUserResponse>(
      '/proto.services.task_svc.v1.TaskService/UnassignTaskFromUser',
      ($9.UnassignTaskFromUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UnassignTaskFromUserResponse.fromBuffer(value));
  static final _$publishTask = $grpc.ClientMethod<$9.PublishTaskRequest, $9.PublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/PublishTask',
      ($9.PublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.PublishTaskResponse.fromBuffer(value));
  static final _$unpublishTask = $grpc.ClientMethod<$9.UnpublishTaskRequest, $9.UnpublishTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/UnpublishTask',
      ($9.UnpublishTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UnpublishTaskResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$9.DeleteTaskRequest, $9.DeleteTaskResponse>(
      '/proto.services.task_svc.v1.TaskService/DeleteTask',
      ($9.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateTaskResponse> createTask($9.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetTaskResponse> getTask($9.GetTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetTasksByPatientResponse> getTasksByPatient($9.GetTasksByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($9.GetTasksByPatientSortedByStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTasksByPatientSortedByStatus, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetAssignedTasksResponse> getAssignedTasks($9.GetAssignedTasksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAssignedTasks, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateTaskResponse> updateTask($9.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.AddSubTaskResponse> addSubTask($9.AddSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.RemoveSubTaskResponse> removeSubTask($9.RemoveSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateSubTaskResponse> updateSubTask($9.UpdateSubTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSubTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.SubTaskToToDoResponse> subTaskToToDo($9.SubTaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$9.SubTaskToDoneResponse> subTaskToDone($9.SubTaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$subTaskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$9.TaskToToDoResponse> taskToToDo($9.TaskToToDoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToToDo, request, options: options);
  }

  $grpc.ResponseFuture<$9.TaskToInProgressResponse> taskToInProgress($9.TaskToInProgressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToInProgress, request, options: options);
  }

  $grpc.ResponseFuture<$9.TaskToDoneResponse> taskToDone($9.TaskToDoneRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$taskToDone, request, options: options);
  }

  $grpc.ResponseFuture<$9.AssignTaskToUserResponse> assignTaskToUser($9.AssignTaskToUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignTaskToUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.UnassignTaskFromUserResponse> unassignTaskFromUser($9.UnassignTaskFromUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignTaskFromUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.PublishTaskResponse> publishTask($9.PublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publishTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.UnpublishTaskResponse> unpublishTask($9.UnpublishTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unpublishTask, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteTaskResponse> deleteTask($9.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateTaskRequest, $9.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateTaskRequest.fromBuffer(value),
        ($9.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetTaskRequest, $9.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetTaskRequest.fromBuffer(value),
        ($9.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetTasksByPatientRequest, $9.GetTasksByPatientResponse>(
        'GetTasksByPatient',
        getTasksByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetTasksByPatientRequest.fromBuffer(value),
        ($9.GetTasksByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetTasksByPatientSortedByStatusRequest, $9.GetTasksByPatientSortedByStatusResponse>(
        'GetTasksByPatientSortedByStatus',
        getTasksByPatientSortedByStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetTasksByPatientSortedByStatusRequest.fromBuffer(value),
        ($9.GetTasksByPatientSortedByStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetAssignedTasksRequest, $9.GetAssignedTasksResponse>(
        'GetAssignedTasks',
        getAssignedTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetAssignedTasksRequest.fromBuffer(value),
        ($9.GetAssignedTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateTaskRequest, $9.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateTaskRequest.fromBuffer(value),
        ($9.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AddSubTaskRequest, $9.AddSubTaskResponse>(
        'AddSubTask',
        addSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AddSubTaskRequest.fromBuffer(value),
        ($9.AddSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.RemoveSubTaskRequest, $9.RemoveSubTaskResponse>(
        'RemoveSubTask',
        removeSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.RemoveSubTaskRequest.fromBuffer(value),
        ($9.RemoveSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateSubTaskRequest, $9.UpdateSubTaskResponse>(
        'UpdateSubTask',
        updateSubTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateSubTaskRequest.fromBuffer(value),
        ($9.UpdateSubTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.SubTaskToToDoRequest, $9.SubTaskToToDoResponse>(
        'SubTaskToToDo',
        subTaskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.SubTaskToToDoRequest.fromBuffer(value),
        ($9.SubTaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.SubTaskToDoneRequest, $9.SubTaskToDoneResponse>(
        'SubTaskToDone',
        subTaskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.SubTaskToDoneRequest.fromBuffer(value),
        ($9.SubTaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.TaskToToDoRequest, $9.TaskToToDoResponse>(
        'TaskToToDo',
        taskToToDo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.TaskToToDoRequest.fromBuffer(value),
        ($9.TaskToToDoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.TaskToInProgressRequest, $9.TaskToInProgressResponse>(
        'TaskToInProgress',
        taskToInProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.TaskToInProgressRequest.fromBuffer(value),
        ($9.TaskToInProgressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.TaskToDoneRequest, $9.TaskToDoneResponse>(
        'TaskToDone',
        taskToDone_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.TaskToDoneRequest.fromBuffer(value),
        ($9.TaskToDoneResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AssignTaskToUserRequest, $9.AssignTaskToUserResponse>(
        'AssignTaskToUser',
        assignTaskToUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AssignTaskToUserRequest.fromBuffer(value),
        ($9.AssignTaskToUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UnassignTaskFromUserRequest, $9.UnassignTaskFromUserResponse>(
        'UnassignTaskFromUser',
        unassignTaskFromUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UnassignTaskFromUserRequest.fromBuffer(value),
        ($9.UnassignTaskFromUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.PublishTaskRequest, $9.PublishTaskResponse>(
        'PublishTask',
        publishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.PublishTaskRequest.fromBuffer(value),
        ($9.PublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UnpublishTaskRequest, $9.UnpublishTaskResponse>(
        'UnpublishTask',
        unpublishTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UnpublishTaskRequest.fromBuffer(value),
        ($9.UnpublishTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteTaskRequest, $9.DeleteTaskResponse>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteTaskRequest.fromBuffer(value),
        ($9.DeleteTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$9.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$9.GetTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$9.GetTaskRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$9.GetTasksByPatientResponse> getTasksByPatient_Pre($grpc.ServiceCall call, $async.Future<$9.GetTasksByPatientRequest> request) async {
    return getTasksByPatient(call, await request);
  }

  $async.Future<$9.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus_Pre($grpc.ServiceCall call, $async.Future<$9.GetTasksByPatientSortedByStatusRequest> request) async {
    return getTasksByPatientSortedByStatus(call, await request);
  }

  $async.Future<$9.GetAssignedTasksResponse> getAssignedTasks_Pre($grpc.ServiceCall call, $async.Future<$9.GetAssignedTasksRequest> request) async {
    return getAssignedTasks(call, await request);
  }

  $async.Future<$9.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$9.AddSubTaskResponse> addSubTask_Pre($grpc.ServiceCall call, $async.Future<$9.AddSubTaskRequest> request) async {
    return addSubTask(call, await request);
  }

  $async.Future<$9.RemoveSubTaskResponse> removeSubTask_Pre($grpc.ServiceCall call, $async.Future<$9.RemoveSubTaskRequest> request) async {
    return removeSubTask(call, await request);
  }

  $async.Future<$9.UpdateSubTaskResponse> updateSubTask_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateSubTaskRequest> request) async {
    return updateSubTask(call, await request);
  }

  $async.Future<$9.SubTaskToToDoResponse> subTaskToToDo_Pre($grpc.ServiceCall call, $async.Future<$9.SubTaskToToDoRequest> request) async {
    return subTaskToToDo(call, await request);
  }

  $async.Future<$9.SubTaskToDoneResponse> subTaskToDone_Pre($grpc.ServiceCall call, $async.Future<$9.SubTaskToDoneRequest> request) async {
    return subTaskToDone(call, await request);
  }

  $async.Future<$9.TaskToToDoResponse> taskToToDo_Pre($grpc.ServiceCall call, $async.Future<$9.TaskToToDoRequest> request) async {
    return taskToToDo(call, await request);
  }

  $async.Future<$9.TaskToInProgressResponse> taskToInProgress_Pre($grpc.ServiceCall call, $async.Future<$9.TaskToInProgressRequest> request) async {
    return taskToInProgress(call, await request);
  }

  $async.Future<$9.TaskToDoneResponse> taskToDone_Pre($grpc.ServiceCall call, $async.Future<$9.TaskToDoneRequest> request) async {
    return taskToDone(call, await request);
  }

  $async.Future<$9.AssignTaskToUserResponse> assignTaskToUser_Pre($grpc.ServiceCall call, $async.Future<$9.AssignTaskToUserRequest> request) async {
    return assignTaskToUser(call, await request);
  }

  $async.Future<$9.UnassignTaskFromUserResponse> unassignTaskFromUser_Pre($grpc.ServiceCall call, $async.Future<$9.UnassignTaskFromUserRequest> request) async {
    return unassignTaskFromUser(call, await request);
  }

  $async.Future<$9.PublishTaskResponse> publishTask_Pre($grpc.ServiceCall call, $async.Future<$9.PublishTaskRequest> request) async {
    return publishTask(call, await request);
  }

  $async.Future<$9.UnpublishTaskResponse> unpublishTask_Pre($grpc.ServiceCall call, $async.Future<$9.UnpublishTaskRequest> request) async {
    return unpublishTask(call, await request);
  }

  $async.Future<$9.DeleteTaskResponse> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$9.CreateTaskResponse> createTask($grpc.ServiceCall call, $9.CreateTaskRequest request);
  $async.Future<$9.GetTaskResponse> getTask($grpc.ServiceCall call, $9.GetTaskRequest request);
  $async.Future<$9.GetTasksByPatientResponse> getTasksByPatient($grpc.ServiceCall call, $9.GetTasksByPatientRequest request);
  $async.Future<$9.GetTasksByPatientSortedByStatusResponse> getTasksByPatientSortedByStatus($grpc.ServiceCall call, $9.GetTasksByPatientSortedByStatusRequest request);
  $async.Future<$9.GetAssignedTasksResponse> getAssignedTasks($grpc.ServiceCall call, $9.GetAssignedTasksRequest request);
  $async.Future<$9.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $9.UpdateTaskRequest request);
  $async.Future<$9.AddSubTaskResponse> addSubTask($grpc.ServiceCall call, $9.AddSubTaskRequest request);
  $async.Future<$9.RemoveSubTaskResponse> removeSubTask($grpc.ServiceCall call, $9.RemoveSubTaskRequest request);
  $async.Future<$9.UpdateSubTaskResponse> updateSubTask($grpc.ServiceCall call, $9.UpdateSubTaskRequest request);
  $async.Future<$9.SubTaskToToDoResponse> subTaskToToDo($grpc.ServiceCall call, $9.SubTaskToToDoRequest request);
  $async.Future<$9.SubTaskToDoneResponse> subTaskToDone($grpc.ServiceCall call, $9.SubTaskToDoneRequest request);
  $async.Future<$9.TaskToToDoResponse> taskToToDo($grpc.ServiceCall call, $9.TaskToToDoRequest request);
  $async.Future<$9.TaskToInProgressResponse> taskToInProgress($grpc.ServiceCall call, $9.TaskToInProgressRequest request);
  $async.Future<$9.TaskToDoneResponse> taskToDone($grpc.ServiceCall call, $9.TaskToDoneRequest request);
  $async.Future<$9.AssignTaskToUserResponse> assignTaskToUser($grpc.ServiceCall call, $9.AssignTaskToUserRequest request);
  $async.Future<$9.UnassignTaskFromUserResponse> unassignTaskFromUser($grpc.ServiceCall call, $9.UnassignTaskFromUserRequest request);
  $async.Future<$9.PublishTaskResponse> publishTask($grpc.ServiceCall call, $9.PublishTaskRequest request);
  $async.Future<$9.UnpublishTaskResponse> unpublishTask($grpc.ServiceCall call, $9.UnpublishTaskRequest request);
  $async.Future<$9.DeleteTaskResponse> deleteTask($grpc.ServiceCall call, $9.DeleteTaskRequest request);
}
