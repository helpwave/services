import * as grpcWeb from 'grpc-web';

import * as proto_services_impulse_svc_v1_impulse_svc_pb from '../../../../proto/services/impulse_svc/v1/impulse_svc_pb';


export class ImpulseServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createUser(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.CreateUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_impulse_svc_v1_impulse_svc_pb.CreateUserResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_impulse_svc_v1_impulse_svc_pb.CreateUserResponse>;

  updateUser(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.UpdateUserRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_impulse_svc_v1_impulse_svc_pb.UpdateUserResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_impulse_svc_v1_impulse_svc_pb.UpdateUserResponse>;

  trackChallenge(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.TrackChallengeRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_impulse_svc_v1_impulse_svc_pb.TrackChallengeResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_impulse_svc_v1_impulse_svc_pb.TrackChallengeResponse>;

  getActiveChallenges(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetActiveChallengesRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_impulse_svc_v1_impulse_svc_pb.GetActiveChallengesResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_impulse_svc_v1_impulse_svc_pb.GetActiveChallengesResponse>;

}

export class ImpulseServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createUser(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.CreateUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_impulse_svc_v1_impulse_svc_pb.CreateUserResponse>;

  updateUser(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.UpdateUserRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_impulse_svc_v1_impulse_svc_pb.UpdateUserResponse>;

  trackChallenge(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.TrackChallengeRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_impulse_svc_v1_impulse_svc_pb.TrackChallengeResponse>;

  getActiveChallenges(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetActiveChallengesRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_impulse_svc_v1_impulse_svc_pb.GetActiveChallengesResponse>;

}

