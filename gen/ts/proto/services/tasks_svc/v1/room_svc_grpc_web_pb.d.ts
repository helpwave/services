import * as grpcWeb from 'grpc-web';

import * as proto_services_tasks_svc_v1_room_svc_pb from '../../../../proto/services/tasks_svc/v1/room_svc_pb'; // proto import: "proto/services/tasks_svc/v1/room_svc.proto"


export class RoomServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createRoom(
    request: proto_services_tasks_svc_v1_room_svc_pb.CreateRoomRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_room_svc_pb.CreateRoomResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_room_svc_pb.CreateRoomResponse>;

  getRoom(
    request: proto_services_tasks_svc_v1_room_svc_pb.GetRoomRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_room_svc_pb.GetRoomResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_room_svc_pb.GetRoomResponse>;

  getRooms(
    request: proto_services_tasks_svc_v1_room_svc_pb.GetRoomsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_room_svc_pb.GetRoomsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_room_svc_pb.GetRoomsResponse>;

  getRoomsByWard(
    request: proto_services_tasks_svc_v1_room_svc_pb.GetRoomsByWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_room_svc_pb.GetRoomsByWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_room_svc_pb.GetRoomsByWardResponse>;

  updateRoom(
    request: proto_services_tasks_svc_v1_room_svc_pb.UpdateRoomRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_room_svc_pb.UpdateRoomResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_room_svc_pb.UpdateRoomResponse>;

  deleteRoom(
    request: proto_services_tasks_svc_v1_room_svc_pb.DeleteRoomRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_room_svc_pb.DeleteRoomResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_room_svc_pb.DeleteRoomResponse>;

  getRoomOverviewsByWard(
    request: proto_services_tasks_svc_v1_room_svc_pb.GetRoomOverviewsByWardRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_tasks_svc_v1_room_svc_pb.GetRoomOverviewsByWardResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_tasks_svc_v1_room_svc_pb.GetRoomOverviewsByWardResponse>;

}

export class RoomServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createRoom(
    request: proto_services_tasks_svc_v1_room_svc_pb.CreateRoomRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_room_svc_pb.CreateRoomResponse>;

  getRoom(
    request: proto_services_tasks_svc_v1_room_svc_pb.GetRoomRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_room_svc_pb.GetRoomResponse>;

  getRooms(
    request: proto_services_tasks_svc_v1_room_svc_pb.GetRoomsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_room_svc_pb.GetRoomsResponse>;

  getRoomsByWard(
    request: proto_services_tasks_svc_v1_room_svc_pb.GetRoomsByWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_room_svc_pb.GetRoomsByWardResponse>;

  updateRoom(
    request: proto_services_tasks_svc_v1_room_svc_pb.UpdateRoomRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_room_svc_pb.UpdateRoomResponse>;

  deleteRoom(
    request: proto_services_tasks_svc_v1_room_svc_pb.DeleteRoomRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_room_svc_pb.DeleteRoomResponse>;

  getRoomOverviewsByWard(
    request: proto_services_tasks_svc_v1_room_svc_pb.GetRoomOverviewsByWardRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_tasks_svc_v1_room_svc_pb.GetRoomOverviewsByWardResponse>;

}

