import * as grpcWeb from 'grpc-web';

import * as proto_services_aggregation_svc_v1_tasks_svc_pb from '../../../../proto/services/aggregation_svc/v1/tasks_svc_pb';


export class TasksServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  getWardsOverview(
    request: proto_services_aggregation_svc_v1_tasks_svc_pb.GetWardsOverviewRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_aggregation_svc_v1_tasks_svc_pb.GetWardsOverviewResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_aggregation_svc_v1_tasks_svc_pb.GetWardsOverviewResponse>;

}

export class TasksServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  getWardsOverview(
    request: proto_services_aggregation_svc_v1_tasks_svc_pb.GetWardsOverviewRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_aggregation_svc_v1_tasks_svc_pb.GetWardsOverviewResponse>;

}

