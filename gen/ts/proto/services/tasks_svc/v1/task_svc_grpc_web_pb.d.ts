import * as grpcWeb from 'grpc-web';

import * as proto_services_tasks_svc_v1_task_svc_pb from '../../../../proto/services/tasks_svc/v1/task_svc_pb'; // proto import: "proto/services/tasks_svc/v1/task_svc.proto"


export class TaskServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.CreateTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.CreateTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.CreateTaskResponse>;

  updateTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.UpdateTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.UpdateTaskResponse>;

  getTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.GetTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.GetTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.GetTaskResponse>;

  assignTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.AssignTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.AssignTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.AssignTaskResponse>;

  unassignTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.UnassignTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.UnassignTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.UnassignTaskResponse>;

  createSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.CreateSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.CreateSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.CreateSubtaskResponse>;

  updateSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.UpdateSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.UpdateSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.UpdateSubtaskResponse>;

  completeSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.CompleteSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.CompleteSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.CompleteSubtaskResponse>;

  uncompleteSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskResponse>;

  deleteSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.DeleteSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_task_svc_pb.DeleteSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_task_svc_pb.DeleteSubtaskResponse>;

}

export class TaskServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.CreateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.CreateTaskResponse>;

  updateTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.UpdateTaskResponse>;

  getTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.GetTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.GetTaskResponse>;

  assignTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.AssignTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.AssignTaskResponse>;

  unassignTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.UnassignTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.UnassignTaskResponse>;

  createSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.CreateSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.CreateSubtaskResponse>;

  updateSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.UpdateSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.UpdateSubtaskResponse>;

  completeSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.CompleteSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.CompleteSubtaskResponse>;

  uncompleteSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskResponse>;

  deleteSubtask(
    request: proto_services_tasks_svc_v1_task_svc_pb.DeleteSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.DeleteSubtaskResponse>;

}

