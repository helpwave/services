import * as grpcWeb from 'grpc-web';

import * as proto_services_ward_svc_v1_ward_svc_pb from '../../../../proto/services/ward_svc/v1/ward_svc_pb';


export class WardServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createWard(
    request: proto_services_ward_svc_v1_ward_svc_pb.CreateWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_ward_svc_v1_ward_svc_pb.CreateWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_ward_svc_v1_ward_svc_pb.CreateWardResponse>;

  getWard(
    request: proto_services_ward_svc_v1_ward_svc_pb.GetWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_ward_svc_v1_ward_svc_pb.GetWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_ward_svc_v1_ward_svc_pb.GetWardResponse>;

  getWards(
    request: proto_services_ward_svc_v1_ward_svc_pb.GetWardsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_ward_svc_v1_ward_svc_pb.GetWardsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_ward_svc_v1_ward_svc_pb.GetWardsResponse>;

  updateWard(
    request: proto_services_ward_svc_v1_ward_svc_pb.UpdateWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_ward_svc_v1_ward_svc_pb.UpdateWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_ward_svc_v1_ward_svc_pb.UpdateWardResponse>;

  deleteWard(
    request: proto_services_ward_svc_v1_ward_svc_pb.DeleteWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_ward_svc_v1_ward_svc_pb.DeleteWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_ward_svc_v1_ward_svc_pb.DeleteWardResponse>;

  getWardsOverview(
    request: proto_services_ward_svc_v1_ward_svc_pb.GetWardsOverviewRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_ward_svc_v1_ward_svc_pb.GetWardsOverviewResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_ward_svc_v1_ward_svc_pb.GetWardsOverviewResponse>;

}

export class WardServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createWard(
    request: proto_services_ward_svc_v1_ward_svc_pb.CreateWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_ward_svc_v1_ward_svc_pb.CreateWardResponse>;

  getWard(
    request: proto_services_ward_svc_v1_ward_svc_pb.GetWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_ward_svc_v1_ward_svc_pb.GetWardResponse>;

  getWards(
    request: proto_services_ward_svc_v1_ward_svc_pb.GetWardsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_ward_svc_v1_ward_svc_pb.GetWardsResponse>;

  updateWard(
    request: proto_services_ward_svc_v1_ward_svc_pb.UpdateWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_ward_svc_v1_ward_svc_pb.UpdateWardResponse>;

  deleteWard(
    request: proto_services_ward_svc_v1_ward_svc_pb.DeleteWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_ward_svc_v1_ward_svc_pb.DeleteWardResponse>;

  getWardsOverview(
    request: proto_services_ward_svc_v1_ward_svc_pb.GetWardsOverviewRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_ward_svc_v1_ward_svc_pb.GetWardsOverviewResponse>;

}

