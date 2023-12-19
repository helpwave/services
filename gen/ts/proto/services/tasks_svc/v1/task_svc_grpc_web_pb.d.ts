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

}

export class TaskServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.CreateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.CreateTaskResponse>;

  getTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.GetTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.GetTaskResponse>;

  assignTask(
    request: proto_services_tasks_svc_v1_task_svc_pb.AssignTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_task_svc_pb.AssignTaskResponse>;

}

