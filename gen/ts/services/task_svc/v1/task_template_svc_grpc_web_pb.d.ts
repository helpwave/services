import * as grpcWeb from 'grpc-web';

import * as services_task_svc_v1_task_template_svc_pb from '../../../services/task_svc/v1/task_template_svc_pb'; // proto import: "services/task_svc/v1/task_template_svc.proto"


export class TaskTemplateServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTaskTemplate(
    request: services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateResponse>;

  getAllTaskTemplates(
    request: services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesResponse>;

  deleteTaskTemplate(
    request: services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateResponse>;

  deleteTaskTemplateSubTask(
    request: services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskResponse>;

  updateTaskTemplate(
    request: services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateResponse>;

  updateTaskTemplateSubTask(
    request: services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskResponse>;

  createTaskTemplateSubTask(
    request: services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskResponse>;

  getAllTaskTemplatesByCreator(
    request: services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByCreatorRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByCreatorResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByCreatorResponse>;

  getAllTaskTemplatesByWard(
    request: services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByWardResponse) => void
  ): grpcWeb.ClientReadableStream<services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByWardResponse>;

}

export class TaskTemplateServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTaskTemplate(
    request: services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateResponse>;

  getAllTaskTemplates(
    request: services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesResponse>;

  deleteTaskTemplate(
    request: services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateResponse>;

  deleteTaskTemplateSubTask(
    request: services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_template_svc_pb.DeleteTaskTemplateSubTaskResponse>;

  updateTaskTemplate(
    request: services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateResponse>;

  updateTaskTemplateSubTask(
    request: services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_template_svc_pb.UpdateTaskTemplateSubTaskResponse>;

  createTaskTemplateSubTask(
    request: services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskResponse>;

  getAllTaskTemplatesByCreator(
    request: services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByCreatorRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByCreatorResponse>;

  getAllTaskTemplatesByWard(
    request: services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_task_svc_v1_task_template_svc_pb.GetAllTaskTemplatesByWardResponse>;

}

