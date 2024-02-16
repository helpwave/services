import * as grpcWeb from 'grpc-web';

import * as proto_services_properties_svc_v1_sets_pb from '../../../../proto/services/properties_svc/v1/sets_pb'; // proto import: "proto/services/properties_svc/v1/sets.proto"


export class PropertySetsServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPropertySet(
    request: proto_services_properties_svc_v1_sets_pb.CreatePropertySetRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_sets_pb.CreatePropertySetResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_sets_pb.CreatePropertySetResponse>;

  updatePropertySet(
    request: proto_services_properties_svc_v1_sets_pb.UpdatePropertySetRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_sets_pb.UpdatePropertySetResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_sets_pb.UpdatePropertySetResponse>;

  deletePropertySet(
    request: proto_services_properties_svc_v1_sets_pb.DeletePropertySetRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_properties_svc_v1_sets_pb.DeletePropertySetResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_properties_svc_v1_sets_pb.DeletePropertySetResponse>;

}

export class PropertySetsServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createPropertySet(
    request: proto_services_properties_svc_v1_sets_pb.CreatePropertySetRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_sets_pb.CreatePropertySetResponse>;

  updatePropertySet(
    request: proto_services_properties_svc_v1_sets_pb.UpdatePropertySetRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_sets_pb.UpdatePropertySetResponse>;

  deletePropertySet(
    request: proto_services_properties_svc_v1_sets_pb.DeletePropertySetRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_properties_svc_v1_sets_pb.DeletePropertySetResponse>;

}

