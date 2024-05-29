import * as grpcWeb from 'grpc-web';

import * as proto_services_tasks_svc_v1_ward_svc_pb from '../../../../proto/services/tasks_svc/v1/ward_svc_pb'; // proto import: "proto/services/tasks_svc/v1/ward_svc.proto"


export class WardServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createWard(
    request: proto_services_tasks_svc_v1_ward_svc_pb.CreateWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_ward_svc_pb.CreateWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_ward_svc_pb.CreateWardResponse>;

  getWard(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_ward_svc_pb.GetWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_ward_svc_pb.GetWardResponse>;

  getWards(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetWardsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_ward_svc_pb.GetWardsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_ward_svc_pb.GetWardsResponse>;

  getRecentWards(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetRecentWardsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_ward_svc_pb.GetRecentWardsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_ward_svc_pb.GetRecentWardsResponse>;

  updateWard(
    request: proto_services_tasks_svc_v1_ward_svc_pb.UpdateWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_ward_svc_pb.UpdateWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_ward_svc_pb.UpdateWardResponse>;

  deleteWard(
    request: proto_services_tasks_svc_v1_ward_svc_pb.DeleteWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_ward_svc_pb.DeleteWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_ward_svc_pb.DeleteWardResponse>;

  getWardOverviews(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetWardOverviewsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_ward_svc_pb.GetWardOverviewsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_ward_svc_pb.GetWardOverviewsResponse>;

  getWardDetails(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetWardDetailsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_ward_svc_pb.GetWardDetailsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_ward_svc_pb.GetWardDetailsResponse>;

}

export class WardServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createWard(
    request: proto_services_tasks_svc_v1_ward_svc_pb.CreateWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_ward_svc_pb.CreateWardResponse>;

  getWard(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_ward_svc_pb.GetWardResponse>;

  getWards(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetWardsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_ward_svc_pb.GetWardsResponse>;

  getRecentWards(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetRecentWardsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_ward_svc_pb.GetRecentWardsResponse>;

  updateWard(
    request: proto_services_tasks_svc_v1_ward_svc_pb.UpdateWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_ward_svc_pb.UpdateWardResponse>;

  deleteWard(
    request: proto_services_tasks_svc_v1_ward_svc_pb.DeleteWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_ward_svc_pb.DeleteWardResponse>;

  getWardOverviews(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetWardOverviewsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_ward_svc_pb.GetWardOverviewsResponse>;

  getWardDetails(
    request: proto_services_tasks_svc_v1_ward_svc_pb.GetWardDetailsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_ward_svc_pb.GetWardDetailsResponse>;

}

