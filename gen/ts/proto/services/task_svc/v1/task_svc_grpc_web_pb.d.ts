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

  updateTask(
    request: proto_services_task_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_svc_pb.UpdateTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_svc_pb.UpdateTaskResponse>;

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

  updateTask(
    request: proto_services_task_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_svc_pb.UpdateTaskResponse>;

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

}

