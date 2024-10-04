import * as grpcWeb from 'grpc-web';

import * as services_property_svc_v1_property_svc_pb from '../../../services/property_svc/v1/property_svc_pb'; // proto import: "services/property_svc/v1/property_svc.proto"


export class PropertyServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createProperty(
    request: services_property_svc_v1_property_svc_pb.CreatePropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_property_svc_v1_property_svc_pb.CreatePropertyResponse) => void
  ): grpcWeb.ClientReadableStream<services_property_svc_v1_property_svc_pb.CreatePropertyResponse>;

  getProperty(
    request: services_property_svc_v1_property_svc_pb.GetPropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_property_svc_v1_property_svc_pb.GetPropertyResponse) => void
  ): grpcWeb.ClientReadableStream<services_property_svc_v1_property_svc_pb.GetPropertyResponse>;

  updateProperty(
    request: services_property_svc_v1_property_svc_pb.UpdatePropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_property_svc_v1_property_svc_pb.UpdatePropertyResponse) => void
  ): grpcWeb.ClientReadableStream<services_property_svc_v1_property_svc_pb.UpdatePropertyResponse>;

  getProperties(
    request: services_property_svc_v1_property_svc_pb.GetPropertiesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_property_svc_v1_property_svc_pb.GetPropertiesResponse) => void
  ): grpcWeb.ClientReadableStream<services_property_svc_v1_property_svc_pb.GetPropertiesResponse>;

}

export class PropertyServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createProperty(
    request: services_property_svc_v1_property_svc_pb.CreatePropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_property_svc_v1_property_svc_pb.CreatePropertyResponse>;

  getProperty(
    request: services_property_svc_v1_property_svc_pb.GetPropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_property_svc_v1_property_svc_pb.GetPropertyResponse>;

  updateProperty(
    request: services_property_svc_v1_property_svc_pb.UpdatePropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_property_svc_v1_property_svc_pb.UpdatePropertyResponse>;

  getProperties(
    request: services_property_svc_v1_property_svc_pb.GetPropertiesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_property_svc_v1_property_svc_pb.GetPropertiesResponse>;

}

