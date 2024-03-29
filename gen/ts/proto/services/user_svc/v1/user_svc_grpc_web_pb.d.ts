import * as grpcWeb from 'grpc-web';

import * as proto_services_user_svc_v1_user_svc_pb from '../../../../proto/services/user_svc/v1/user_svc_pb'; // proto import: "proto/services/user_svc/v1/user_svc.proto"


export class UserServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createUser(
    request: proto_services_user_svc_v1_user_svc_pb.CreateUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_user_svc_v1_user_svc_pb.CreateUserResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_user_svc_v1_user_svc_pb.CreateUserResponse>;

  readSelf(
    request: proto_services_user_svc_v1_user_svc_pb.ReadSelfRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_user_svc_v1_user_svc_pb.ReadSelfResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_user_svc_v1_user_svc_pb.ReadSelfResponse>;

  readPublicProfile(
    request: proto_services_user_svc_v1_user_svc_pb.ReadPublicProfileRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_user_svc_v1_user_svc_pb.ReadPublicProfileResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_user_svc_v1_user_svc_pb.ReadPublicProfileResponse>;

  updateUser(
    request: proto_services_user_svc_v1_user_svc_pb.UpdateUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_user_svc_v1_user_svc_pb.UpdateUserResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_user_svc_v1_user_svc_pb.UpdateUserResponse>;

}

export class UserServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createUser(
    request: proto_services_user_svc_v1_user_svc_pb.CreateUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_user_svc_v1_user_svc_pb.CreateUserResponse>;

  readSelf(
    request: proto_services_user_svc_v1_user_svc_pb.ReadSelfRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_user_svc_v1_user_svc_pb.ReadSelfResponse>;

  readPublicProfile(
    request: proto_services_user_svc_v1_user_svc_pb.ReadPublicProfileRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_user_svc_v1_user_svc_pb.ReadPublicProfileResponse>;

  updateUser(
    request: proto_services_user_svc_v1_user_svc_pb.UpdateUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_user_svc_v1_user_svc_pb.UpdateUserResponse>;

}

