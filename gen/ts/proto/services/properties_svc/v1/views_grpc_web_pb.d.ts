import * as grpcWeb from 'grpc-web';

import * as proto_services_properties_svc_v1_views_pb from '../../../../proto/services/properties_svc/v1/views_pb'; // proto import: "proto/services/properties_svc/v1/views.proto"


export class PropertyViewsServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  updatePatientPropertyViewRule(
    request: proto_services_properties_svc_v1_views_pb.UpdatePatientPropertyViewRuleRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_views_pb.UpdatePatientPropertyViewRuleResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_views_pb.UpdatePatientPropertyViewRuleResponse>;

  updateOrder(
    request: proto_services_properties_svc_v1_views_pb.UpdateOrderRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_views_pb.UpdateOrderResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_views_pb.UpdateOrderResponse>;

}

export class PropertyViewsServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  updatePatientPropertyViewRule(
    request: proto_services_properties_svc_v1_views_pb.UpdatePatientPropertyViewRuleRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_views_pb.UpdatePatientPropertyViewRuleResponse>;

  updateOrder(
    request: proto_services_properties_svc_v1_views_pb.UpdateOrderRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_views_pb.UpdateOrderResponse>;

}

