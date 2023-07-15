import * as grpcWeb from 'grpc-web';

import * as proto_services_task_svc_v1_task_svc_pb from '../../../../proto/services/task_svc/v1/task_svc_pb';


export class TaskServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTask(
    request: proto_services_task_svc_v1_task_svc_pb.CreateTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.CreateTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.CreateTaskResponse>;

  getTask(
    request: proto_services_task_svc_v1_task_svc_pb.GetTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.GetTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.GetTaskResponse>;

  getTasksByPatient(
    request: proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientResponse>;

  getTasksByPatientSortedByStatus(
    request: proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusResponse>;

  updateTask(
    request: proto_services_task_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.UpdateTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.UpdateTaskResponse>;

  addSubTask(
    request: proto_services_task_svc_v1_task_svc_pb.AddSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.AddSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.AddSubTaskResponse>;

  removeSubTask(
    request: proto_services_task_svc_v1_task_svc_pb.RemoveSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.RemoveSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.RemoveSubTaskResponse>;

  updateSubTask(
    request: proto_services_task_svc_v1_task_svc_pb.UpdateSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.UpdateSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.UpdateSubTaskResponse>;

  subTaskToToDo(
    request: proto_services_task_svc_v1_task_svc_pb.SubTaskToToDoRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.SubTaskToToDoResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.SubTaskToToDoResponse>;

  subTaskToDone(
    request: proto_services_task_svc_v1_task_svc_pb.SubTaskToDoneRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.SubTaskToDoneResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.SubTaskToDoneResponse>;

  taskToToDo(
    request: proto_services_task_svc_v1_task_svc_pb.TaskToToDoRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.TaskToToDoResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.TaskToToDoResponse>;

  taskToInProgress(
    request: proto_services_task_svc_v1_task_svc_pb.TaskToInProgressRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.TaskToInProgressResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.TaskToInProgressResponse>;

  taskToDone(
    request: proto_services_task_svc_v1_task_svc_pb.TaskToDoneRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.TaskToDoneResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.TaskToDoneResponse>;

  assignTaskToUser(
    request: proto_services_task_svc_v1_task_svc_pb.AssignTaskToUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.AssignTaskToUserResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.AssignTaskToUserResponse>;

  unassignTaskFromUser(
    request: proto_services_task_svc_v1_task_svc_pb.UnassignTaskFromUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.UnassignTaskFromUserResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.UnassignTaskFromUserResponse>;

  publishTask(
    request: proto_services_task_svc_v1_task_svc_pb.PublishTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.PublishTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.PublishTaskResponse>;

  unpublishTask(
    request: proto_services_task_svc_v1_task_svc_pb.UnpublishTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.UnpublishTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.UnpublishTaskResponse>;

  deleteTask(
    request: proto_services_task_svc_v1_task_svc_pb.DeleteTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.DeleteTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.DeleteTaskResponse>;

}

export class TaskServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTask(
    request: proto_services_task_svc_v1_task_svc_pb.CreateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.CreateTaskResponse>;

  getTask(
    request: proto_services_task_svc_v1_task_svc_pb.GetTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.GetTaskResponse>;

  getTasksByPatient(
    request: proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientResponse>;

  getTasksByPatientSortedByStatus(
    request: proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusResponse>;

  updateTask(
    request: proto_services_task_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.UpdateTaskResponse>;

  addSubTask(
    request: proto_services_task_svc_v1_task_svc_pb.AddSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.AddSubTaskResponse>;

  removeSubTask(
    request: proto_services_task_svc_v1_task_svc_pb.RemoveSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.RemoveSubTaskResponse>;

  updateSubTask(
    request: proto_services_task_svc_v1_task_svc_pb.UpdateSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.UpdateSubTaskResponse>;

  subTaskToToDo(
    request: proto_services_task_svc_v1_task_svc_pb.SubTaskToToDoRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.SubTaskToToDoResponse>;

  subTaskToDone(
    request: proto_services_task_svc_v1_task_svc_pb.SubTaskToDoneRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.SubTaskToDoneResponse>;

  taskToToDo(
    request: proto_services_task_svc_v1_task_svc_pb.TaskToToDoRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.TaskToToDoResponse>;

  taskToInProgress(
    request: proto_services_task_svc_v1_task_svc_pb.TaskToInProgressRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.TaskToInProgressResponse>;

  taskToDone(
    request: proto_services_task_svc_v1_task_svc_pb.TaskToDoneRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.TaskToDoneResponse>;

  assignTaskToUser(
    request: proto_services_task_svc_v1_task_svc_pb.AssignTaskToUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.AssignTaskToUserResponse>;

  unassignTaskFromUser(
    request: proto_services_task_svc_v1_task_svc_pb.UnassignTaskFromUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.UnassignTaskFromUserResponse>;

  publishTask(
    request: proto_services_task_svc_v1_task_svc_pb.PublishTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.PublishTaskResponse>;

  unpublishTask(
    request: proto_services_task_svc_v1_task_svc_pb.UnpublishTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.UnpublishTaskResponse>;

  deleteTask(
    request: proto_services_task_svc_v1_task_svc_pb.DeleteTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.DeleteTaskResponse>;

}

