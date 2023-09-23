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

  getScore(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetScoreRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_impulse_svc_v1_impulse_svc_pb.GetScoreResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_impulse_svc_v1_impulse_svc_pb.GetScoreResponse>;

  getRewards(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetRewardsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_impulse_svc_v1_impulse_svc_pb.GetRewardsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_impulse_svc_v1_impulse_svc_pb.GetRewardsResponse>;

  getAllRewards(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetAllRewardsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_impulse_svc_v1_impulse_svc_pb.GetAllRewardsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_impulse_svc_v1_impulse_svc_pb.GetAllRewardsResponse>;

  getAllTeams(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetAllTeamsRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: proto_services_impulse_svc_v1_impulse_svc_pb.GetAllTeamsResponse) => void
  ): grpcWeb.ClientReadableStream<proto_services_impulse_svc_v1_impulse_svc_pb.GetAllTeamsResponse>;

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

  getScore(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetScoreRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_impulse_svc_v1_impulse_svc_pb.GetScoreResponse>;

  getRewards(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetRewardsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_impulse_svc_v1_impulse_svc_pb.GetRewardsResponse>;

  getAllRewards(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetAllRewardsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_impulse_svc_v1_impulse_svc_pb.GetAllRewardsResponse>;

  getAllTeams(
    request: proto_services_impulse_svc_v1_impulse_svc_pb.GetAllTeamsRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<proto_services_impulse_svc_v1_impulse_svc_pb.GetAllTeamsResponse>;

}

