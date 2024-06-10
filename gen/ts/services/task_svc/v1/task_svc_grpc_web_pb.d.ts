import * as grpcWeb from 'grpc-web';

import * as services_task_svc_v1_task_svc_pb from '../../../services/task_svc/v1/task_svc_pb'; // proto import: "services/task_svc/v1/task_svc.proto"


export class TaskServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTask(
    request: services_task_svc_v1_task_svc_pb.CreateTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.CreateTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.CreateTaskResponse>;

  getTask(
    request: services_task_svc_v1_task_svc_pb.GetTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.GetTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.GetTaskResponse>;

  getTasksByPatient(
    request: services_task_svc_v1_task_svc_pb.GetTasksByPatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.GetTasksByPatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.GetTasksByPatientResponse>;

  getTasksByPatientSortedByStatus(
    request: services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusResponse>;

  getAssignedTasks(
    request: services_task_svc_v1_task_svc_pb.GetAssignedTasksRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.GetAssignedTasksResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.GetAssignedTasksResponse>;

  updateTask(
    request: services_task_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.UpdateTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.UpdateTaskResponse>;

  addSubTask(
    request: services_task_svc_v1_task_svc_pb.AddSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.AddSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.AddSubTaskResponse>;

  removeSubTask(
    request: services_task_svc_v1_task_svc_pb.RemoveSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.RemoveSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.RemoveSubTaskResponse>;

  updateSubTask(
    request: services_task_svc_v1_task_svc_pb.UpdateSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.UpdateSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.UpdateSubTaskResponse>;

  subTaskToToDo(
    request: services_task_svc_v1_task_svc_pb.SubTaskToToDoRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.SubTaskToToDoResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.SubTaskToToDoResponse>;

  subTaskToDone(
    request: services_task_svc_v1_task_svc_pb.SubTaskToDoneRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.SubTaskToDoneResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.SubTaskToDoneResponse>;

  taskToToDo(
    request: services_task_svc_v1_task_svc_pb.TaskToToDoRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.TaskToToDoResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.TaskToToDoResponse>;

  taskToInProgress(
    request: services_task_svc_v1_task_svc_pb.TaskToInProgressRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.TaskToInProgressResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.TaskToInProgressResponse>;

  taskToDone(
    request: services_task_svc_v1_task_svc_pb.TaskToDoneRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.TaskToDoneResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.TaskToDoneResponse>;

  assignTaskToUser(
    request: services_task_svc_v1_task_svc_pb.AssignTaskToUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.AssignTaskToUserResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.AssignTaskToUserResponse>;

  unassignTaskFromUser(
    request: services_task_svc_v1_task_svc_pb.UnassignTaskFromUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.UnassignTaskFromUserResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.UnassignTaskFromUserResponse>;

  publishTask(
    request: services_task_svc_v1_task_svc_pb.PublishTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.PublishTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.PublishTaskResponse>;

  unpublishTask(
    request: services_task_svc_v1_task_svc_pb.UnpublishTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.UnpublishTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.UnpublishTaskResponse>;

  deleteTask(
    request: services_task_svc_v1_task_svc_pb.DeleteTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_svc_pb.DeleteTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_svc_pb.DeleteTaskResponse>;

}

export class TaskServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTask(
    request: services_task_svc_v1_task_svc_pb.CreateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.CreateTaskResponse>;

  getTask(
    request: services_task_svc_v1_task_svc_pb.GetTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.GetTaskResponse>;

  getTasksByPatient(
    request: services_task_svc_v1_task_svc_pb.GetTasksByPatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.GetTasksByPatientResponse>;

  getTasksByPatientSortedByStatus(
    request: services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusResponse>;

  getAssignedTasks(
    request: services_task_svc_v1_task_svc_pb.GetAssignedTasksRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.GetAssignedTasksResponse>;

  updateTask(
    request: services_task_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.UpdateTaskResponse>;

  addSubTask(
    request: services_task_svc_v1_task_svc_pb.AddSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.AddSubTaskResponse>;

  removeSubTask(
    request: services_task_svc_v1_task_svc_pb.RemoveSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.RemoveSubTaskResponse>;

  updateSubTask(
    request: services_task_svc_v1_task_svc_pb.UpdateSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.UpdateSubTaskResponse>;

  subTaskToToDo(
    request: services_task_svc_v1_task_svc_pb.SubTaskToToDoRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.SubTaskToToDoResponse>;

  subTaskToDone(
    request: services_task_svc_v1_task_svc_pb.SubTaskToDoneRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.SubTaskToDoneResponse>;

  taskToToDo(
    request: services_task_svc_v1_task_svc_pb.TaskToToDoRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.TaskToToDoResponse>;

  taskToInProgress(
    request: services_task_svc_v1_task_svc_pb.TaskToInProgressRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.TaskToInProgressResponse>;

  taskToDone(
    request: services_task_svc_v1_task_svc_pb.TaskToDoneRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.TaskToDoneResponse>;

  assignTaskToUser(
    request: services_task_svc_v1_task_svc_pb.AssignTaskToUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.AssignTaskToUserResponse>;

  unassignTaskFromUser(
    request: services_task_svc_v1_task_svc_pb.UnassignTaskFromUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.UnassignTaskFromUserResponse>;

  publishTask(
    request: services_task_svc_v1_task_svc_pb.PublishTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.PublishTaskResponse>;

  unpublishTask(
    request: services_task_svc_v1_task_svc_pb.UnpublishTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.UnpublishTaskResponse>;

  deleteTask(
    request: services_task_svc_v1_task_svc_pb.DeleteTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_svc_pb.DeleteTaskResponse>;

}

