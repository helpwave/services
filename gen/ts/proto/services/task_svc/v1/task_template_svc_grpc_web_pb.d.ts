import * as grpcWeb from 'grpc-web';

import * as proto_services_task_svc_v1_task_template_svc_pb from '../../../../proto/services/task_svc/v1/task_template_svc_pb';


export class TaskTemplateServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTaskTemplate(
    request: proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateResponse>;

  getAllTaskTemplates(
    request: proto_services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesResponse>;

  deleteTaskTemplate(
    request: proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateResponse>;

  deleteTaskTemplateSubTask(
    request: proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskResponse>;

  updateTaskTemplate(
    request: proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateResponse>;

  updateTaskTemplateSubTask(
    request: proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskResponse>;

}

export class TaskTemplateServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTaskTemplate(
    request: proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateResponse>;

  getAllTaskTemplates(
    request: proto_services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesResponse>;

  deleteTaskTemplate(
    request: proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateResponse>;

  deleteTaskTemplateSubTask(
    request: proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskResponse>;

  updateTaskTemplate(
    request: proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateResponse>;

  updateTaskTemplateSubTask(
    request: proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskResponse>;

}

