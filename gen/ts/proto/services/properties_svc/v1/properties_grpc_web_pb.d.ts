import * as grpcWeb from 'grpc-web';

import * as proto_services_properties_svc_v1_properties_pb from '../../../../proto/services/properties_svc/v1/properties_pb'; // proto import: "proto/services/properties_svc/v1/properties.proto"


export class PropertiesServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createProperty(
    request: proto_services_properties_svc_v1_properties_pb.CreatePropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_properties_pb.CreatePropertyResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_properties_pb.CreatePropertyResponse>;

  getProperty(
    request: proto_services_properties_svc_v1_properties_pb.GetPropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_properties_pb.GetPropertyResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_properties_pb.GetPropertyResponse>;

  getProperties(
    request: proto_services_properties_svc_v1_properties_pb.GetPropertiesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_properties_pb.GetPropertiesResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_properties_pb.GetPropertiesResponse>;

  updateProperty(
    request: proto_services_properties_svc_v1_properties_pb.UpdatePropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_properties_pb.UpdatePropertyResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_properties_pb.UpdatePropertyResponse>;

}

export class PropertiesServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createProperty(
    request: proto_services_properties_svc_v1_properties_pb.CreatePropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_properties_pb.CreatePropertyResponse>;

  getProperty(
    request: proto_services_properties_svc_v1_properties_pb.GetPropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_properties_pb.GetPropertyResponse>;

  getProperties(
    request: proto_services_properties_svc_v1_properties_pb.GetPropertiesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_properties_pb.GetPropertiesResponse>;

  updateProperty(
    request: proto_services_properties_svc_v1_properties_pb.UpdatePropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_properties_pb.UpdatePropertyResponse>;

}

