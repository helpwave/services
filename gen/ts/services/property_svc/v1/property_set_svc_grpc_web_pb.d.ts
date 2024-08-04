import * as grpcWeb from 'grpc-web';

import * as services_property_svc_v1_property_set_svc_pb from '../../../services/property_svc/v1/property_set_svc_pb'; // proto import: "services/property_svc/v1/property_set_svc.proto"


export class PropertySetServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPropertySet(
    request: services_property_svc_v1_property_set_svc_pb.CreatePropertySetRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_property_svc_v1_property_set_svc_pb.CreatePropertySetResponse) => void
  ): grpcWeb.ClientReadableStream<services_property_svc_v1_property_set_svc_pb.CreatePropertySetResponse>;

  getPropertySet(
    request: services_property_svc_v1_property_set_svc_pb.GetPropertySetRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_property_svc_v1_property_set_svc_pb.GetPropertySetResponse) => void
  ): grpcWeb.ClientReadableStream<services_property_svc_v1_property_set_svc_pb.GetPropertySetResponse>;

}

export class PropertySetServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPropertySet(
    request: services_property_svc_v1_property_set_svc_pb.CreatePropertySetRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_property_svc_v1_property_set_svc_pb.CreatePropertySetResponse>;

  getPropertySet(
    request: services_property_svc_v1_property_set_svc_pb.GetPropertySetRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_property_svc_v1_property_set_svc_pb.GetPropertySetResponse>;

}

