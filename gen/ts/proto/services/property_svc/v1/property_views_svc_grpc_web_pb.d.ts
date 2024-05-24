import * as grpcWeb from 'grpc-web';

import * as proto_services_property_svc_v1_property_views_svc_pb from '../../../../proto/services/property_svc/v1/property_views_svc_pb'; // proto import: "proto/services/property_svc/v1/property_views_svc.proto"


export class PropertyViewsServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  updateTaskPropertyViewRule(
    request: proto_services_property_svc_v1_property_views_svc_pb.UpdateTaskPropertyViewRuleRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_property_svc_v1_property_views_svc_pb.UpdateTaskPropertyViewRuleResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_property_svc_v1_property_views_svc_pb.UpdateTaskPropertyViewRuleResponse>;

}

export class PropertyViewsServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  updateTaskPropertyViewRule(
    request: proto_services_property_svc_v1_property_views_svc_pb.UpdateTaskPropertyViewRuleRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_property_svc_v1_property_views_svc_pb.UpdateTaskPropertyViewRuleResponse>;

}

