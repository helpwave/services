import * as grpcWeb from 'grpc-web';

import * as proto_services_property_svc_v1_property_value_svc_pb from '../../../../proto/services/property_svc/v1/property_value_svc_pb'; // proto import: "proto/services/property_svc/v1/property_value_svc.proto"


export class PropertyValueServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  attachPropertyValue(
    request: proto_services_property_svc_v1_property_value_svc_pb.AttachPropertyValueRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_property_svc_v1_property_value_svc_pb.AttachPropertyValueResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_property_svc_v1_property_value_svc_pb.AttachPropertyValueResponse>;

  getPropertyValue(
    request: proto_services_property_svc_v1_property_value_svc_pb.GetPropertyValueRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_property_svc_v1_property_value_svc_pb.GetPropertyValueResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_property_svc_v1_property_value_svc_pb.GetPropertyValueResponse>;

}

export class PropertyValueServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  attachPropertyValue(
    request: proto_services_property_svc_v1_property_value_svc_pb.AttachPropertyValueRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_property_svc_v1_property_value_svc_pb.AttachPropertyValueResponse>;

  getPropertyValue(
    request: proto_services_property_svc_v1_property_value_svc_pb.GetPropertyValueRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_property_svc_v1_property_value_svc_pb.GetPropertyValueResponse>;

}

