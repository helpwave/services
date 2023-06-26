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

  createTaskTemplateSubTask(
    request: proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskResponse>;

}

export class TaskTemplateServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTaskTemplate(
    request: proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateResponse>;

  createTaskTemplateSubTask(
    request: proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_task_template_svc_pb.CreateTaskTemplateSubTaskResponse>;

}

