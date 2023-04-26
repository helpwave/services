import * as grpcWeb from 'grpc-web';

import * as proto_services_task_svc_v1_room_svc_pb from '../../../../proto/services/task_svc/v1/room_svc_pb';


export class RoomServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createRoom(
    request: proto_services_task_svc_v1_room_svc_pb.CreateRoomRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_room_svc_pb.CreateRoomResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_room_svc_pb.CreateRoomResponse>;

  getRoom(
    request: proto_services_task_svc_v1_room_svc_pb.GetRoomRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_room_svc_pb.GetRoomResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_room_svc_pb.GetRoomResponse>;

  updateRoom(
    request: proto_services_task_svc_v1_room_svc_pb.UpdateRoomRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_room_svc_pb.UpdateRoomResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_room_svc_pb.UpdateRoomResponse>;

  deleteRoom(
    request: proto_services_task_svc_v1_room_svc_pb.DeleteRoomRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_task_svc_v1_room_svc_pb.DeleteRoomResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_task_svc_v1_room_svc_pb.DeleteRoomResponse>;

}

export class RoomServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createRoom(
    request: proto_services_task_svc_v1_room_svc_pb.CreateRoomRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_room_svc_pb.CreateRoomResponse>;

  getRoom(
    request: proto_services_task_svc_v1_room_svc_pb.GetRoomRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_room_svc_pb.GetRoomResponse>;

  updateRoom(
    request: proto_services_task_svc_v1_room_svc_pb.UpdateRoomRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_room_svc_pb.UpdateRoomResponse>;

  deleteRoom(
    request: proto_services_task_svc_v1_room_svc_pb.DeleteRoomRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_task_svc_v1_room_svc_pb.DeleteRoomResponse>;

}

