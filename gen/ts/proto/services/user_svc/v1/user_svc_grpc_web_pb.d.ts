import * as grpcWeb from 'grpc-web';

import * as proto_services_user_svc_v1_user_svc_pb from '../../../../proto/services/user_svc/v1/user_svc_pb';


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

  updateUser(
    request: proto_services_user_svc_v1_user_svc_pb.UpdateUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_user_svc_v1_user_svc_pb.UpdateUserResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_user_svc_v1_user_svc_pb.UpdateUserResponse>;

  getUser(
    request: proto_services_user_svc_v1_user_svc_pb.GetUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_user_svc_v1_user_svc_pb.GetUserResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_user_svc_v1_user_svc_pb.GetUserResponse>;

}

export class UserServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createUser(
    request: proto_services_user_svc_v1_user_svc_pb.CreateUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_user_svc_v1_user_svc_pb.CreateUserResponse>;

  updateUser(
    request: proto_services_user_svc_v1_user_svc_pb.UpdateUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_user_svc_v1_user_svc_pb.UpdateUserResponse>;

  getUser(
    request: proto_services_user_svc_v1_user_svc_pb.GetUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_user_svc_v1_user_svc_pb.GetUserResponse>;

}

