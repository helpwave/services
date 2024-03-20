import * as grpcWeb from 'grpc-web';

import * as proto_services_property_svc_v1_property_svc_pb from '../../../../proto/services/property_svc/v1/property_svc_pb'; // proto import: "proto/services/property_svc/v1/property_svc.proto"


export class PropertyServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createProperty(
    request: proto_services_property_svc_v1_property_svc_pb.CreatePropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_property_svc_v1_property_svc_pb.CreatePropertyResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_property_svc_v1_property_svc_pb.CreatePropertyResponse>;

  getProperty(
    request: proto_services_property_svc_v1_property_svc_pb.GetPropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_property_svc_v1_property_svc_pb.GetPropertyResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_property_svc_v1_property_svc_pb.GetPropertyResponse>;

  updateProperty(
    request: proto_services_property_svc_v1_property_svc_pb.UpdatePropertyRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_property_svc_v1_property_svc_pb.UpdatePropertyResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_property_svc_v1_property_svc_pb.UpdatePropertyResponse>;

}

export class PropertyServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createProperty(
    request: proto_services_property_svc_v1_property_svc_pb.CreatePropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_property_svc_v1_property_svc_pb.CreatePropertyResponse>;

  getProperty(
    request: proto_services_property_svc_v1_property_svc_pb.GetPropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_property_svc_v1_property_svc_pb.GetPropertyResponse>;

  updateProperty(
    request: proto_services_property_svc_v1_property_svc_pb.UpdatePropertyRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_property_svc_v1_property_svc_pb.UpdatePropertyResponse>;

}

