import * as grpcWeb from 'grpc-web';

import * as proto_services_properties_svc_v1_values_pb from '../../../../proto/services/properties_svc/v1/values_pb'; // proto import: "proto/services/properties_svc/v1/values.proto"


export class PropertyValuesServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  attachPropertyValue(
    request: proto_services_properties_svc_v1_values_pb.AttachPropertyValueRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_values_pb.AttachPropertyValueResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_values_pb.AttachPropertyValueResponse>;

  getAttachedPropertyValues(
    request: proto_services_properties_svc_v1_values_pb.GetAttachedPropertyValuesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_values_pb.GetAttachedPropertyValuesResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_values_pb.GetAttachedPropertyValuesResponse>;

}

export class PropertyValuesServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  attachPropertyValue(
    request: proto_services_properties_svc_v1_values_pb.AttachPropertyValueRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_values_pb.AttachPropertyValueResponse>;

  getAttachedPropertyValues(
    request: proto_services_properties_svc_v1_values_pb.GetAttachedPropertyValuesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_values_pb.GetAttachedPropertyValuesResponse>;

}

