import * as grpcWeb from 'grpc-web';

import * as services_user_svc_v1_user_svc_pb from '../../../services/user_svc/v1/user_svc_pb'; // proto import: "services/user_svc/v1/user_svc.proto"


export class UserServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createUser(
    request: services_user_svc_v1_user_svc_pb.CreateUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_user_svc_pb.CreateUserResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_user_svc_pb.CreateUserResponse>;

  readSelf(
    request: services_user_svc_v1_user_svc_pb.ReadSelfRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_user_svc_pb.ReadSelfResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_user_svc_pb.ReadSelfResponse>;

  readPublicProfile(
    request: services_user_svc_v1_user_svc_pb.ReadPublicProfileRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_user_svc_pb.ReadPublicProfileResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_user_svc_pb.ReadPublicProfileResponse>;

  updateUser(
    request: services_user_svc_v1_user_svc_pb.UpdateUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_user_svc_v1_user_svc_pb.UpdateUserResponse) => void
  ): grpcWeb.ClientReadableStream<services_user_svc_v1_user_svc_pb.UpdateUserResponse>;

}

export class UserServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createUser(
    request: services_user_svc_v1_user_svc_pb.CreateUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_user_svc_pb.CreateUserResponse>;

  readSelf(
    request: services_user_svc_v1_user_svc_pb.ReadSelfRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_user_svc_pb.ReadSelfResponse>;

  readPublicProfile(
    request: services_user_svc_v1_user_svc_pb.ReadPublicProfileRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_user_svc_pb.ReadPublicProfileResponse>;

  updateUser(
    request: services_user_svc_v1_user_svc_pb.UpdateUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_user_svc_v1_user_svc_pb.UpdateUserResponse>;

}

