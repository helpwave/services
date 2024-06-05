import * as grpcWeb from 'grpc-web';

import * as services_property_svc_v1_property_value_svc_pb from '../../../services/property_svc/v1/property_value_svc_pb'; // proto import: "services/property_svc/v1/property_value_svc.proto"


export class PropertyValueServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  attachPropertyValue(
    request: services_property_svc_v1_property_value_svc_pb.AttachPropertyValueRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_property_svc_v1_property_value_svc_pb.AttachPropertyValueResponse) => void
  ): grpcWeb.ClientReadableStream<services_property_svc_v1_property_value_svc_pb.AttachPropertyValueResponse>;

  getAttachedPropertyValues(
    request: services_property_svc_v1_property_value_svc_pb.GetAttachedPropertyValuesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_property_svc_v1_property_value_svc_pb.GetAttachedPropertyValuesResponse) => void
  ): grpcWeb.ClientReadableStream<services_property_svc_v1_property_value_svc_pb.GetAttachedPropertyValuesResponse>;

}

export class PropertyValueServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  attachPropertyValue(
    request: services_property_svc_v1_property_value_svc_pb.AttachPropertyValueRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_property_svc_v1_property_value_svc_pb.AttachPropertyValueResponse>;

  getAttachedPropertyValues(
    request: services_property_svc_v1_property_value_svc_pb.GetAttachedPropertyValuesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_property_svc_v1_property_value_svc_pb.GetAttachedPropertyValuesResponse>;

}

