import * as grpcWeb from 'grpc-web';

import * as proto_services_emergency_room_svc_v1_emergency_room_svc_pb from '../../../../proto/services/emergency_room_svc/v1/emergency_room_svc_pb';


export class EmergencyRoomServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.CreateERRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.CreateERResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.CreateERResponse>;

  getER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERResponse>;

  getERs(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERsResponse>;

  updateER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.UpdateERRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.UpdateERResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.UpdateERResponse>;

  addDepartmentsToER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.AddDepartmentsToERRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.AddDepartmentsToERResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.AddDepartmentsToERResponse>;

  removeDepartmentsFromER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.RemoveDepartmentsFromERRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.RemoveDepartmentsFromERResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.RemoveDepartmentsFromERResponse>;

  deleteER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.DeleteERRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.DeleteERResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.DeleteERResponse>;

}

export class EmergencyRoomServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.CreateERRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.CreateERResponse>;

  getER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERResponse>;

  getERs(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.GetERsResponse>;

  updateER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.UpdateERRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.UpdateERResponse>;

  addDepartmentsToER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.AddDepartmentsToERRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.AddDepartmentsToERResponse>;

  removeDepartmentsFromER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.RemoveDepartmentsFromERRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.RemoveDepartmentsFromERResponse>;

  deleteER(
    request: proto_services_emergency_room_svc_v1_emergency_room_svc_pb.DeleteERRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_emergency_room_svc_v1_emergency_room_svc_pb.DeleteERResponse>;

}

