import * as grpcWeb from 'grpc-web';

import * as proto_services_task_svc_v1_breadcrumb_svc_pb from '../../../../proto/services/task_svc/v1/breadcrumb_svc_pb';


export class BreadcrumbServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  getBreadcrumbs(
    request: proto_services_task_svc_v1_breadcrumb_svc_pb.GetBreadcrumbsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_breadcrumb_svc_pb.GetBreadcrumbsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_breadcrumb_svc_pb.GetBreadcrumbsResponse>;

}

export class BreadcrumbServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  getBreadcrumbs(
    request: proto_services_task_svc_v1_breadcrumb_svc_pb.GetBreadcrumbsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_breadcrumb_svc_pb.GetBreadcrumbsResponse>;

}

