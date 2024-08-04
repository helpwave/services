//
//  Generated code. Do not modify.
//  source: services/impulse_svc/v1/impulse_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'impulse_svc.pb.dart' as $1;

export 'impulse_svc.pb.dart';

@$pb.GrpcServiceName('services.impulse_svc.v1.ImpulseService')
class ImpulseServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$1.CreateUserRequest, $1.CreateUserResponse>(
      '/services.impulse_svc.v1.ImpulseService/CreateUser',
      ($1.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CreateUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$1.UpdateUserRequest, $1.UpdateUserResponse>(
      '/services.impulse_svc.v1.ImpulseService/UpdateUser',
      ($1.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateUserResponse.fromBuffer(value));
  static final _$trackChallenge = $grpc.ClientMethod<$1.TrackChallengeRequest, $1.TrackChallengeResponse>(
      '/services.impulse_svc.v1.ImpulseService/TrackChallenge',
      ($1.TrackChallengeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.TrackChallengeResponse.fromBuffer(value));
  static final _$getActiveChallenges = $grpc.ClientMethod<$1.GetActiveChallengesRequest, $1.GetActiveChallengesResponse>(
      '/services.impulse_svc.v1.ImpulseService/GetActiveChallenges',
      ($1.GetActiveChallengesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetActiveChallengesResponse.fromBuffer(value));
  static final _$getScore = $grpc.ClientMethod<$1.GetScoreRequest, $1.GetScoreResponse>(
      '/services.impulse_svc.v1.ImpulseService/GetScore',
      ($1.GetScoreRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetScoreResponse.fromBuffer(value));
  static final _$getRewards = $grpc.ClientMethod<$1.GetRewardsRequest, $1.GetRewardsResponse>(
      '/services.impulse_svc.v1.ImpulseService/GetRewards',
      ($1.GetRewardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetRewardsResponse.fromBuffer(value));
  static final _$getAllRewards = $grpc.ClientMethod<$1.GetAllRewardsRequest, $1.GetAllRewardsResponse>(
      '/services.impulse_svc.v1.ImpulseService/GetAllRewards',
      ($1.GetAllRewardsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetAllRewardsResponse.fromBuffer(value));
  static final _$getAllTeams = $grpc.ClientMethod<$1.GetAllTeamsRequest, $1.GetAllTeamsResponse>(
      '/services.impulse_svc.v1.ImpulseService/GetAllTeams',
      ($1.GetAllTeamsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetAllTeamsResponse.fromBuffer(value));
  static final _$statsForTeamByUser = $grpc.ClientMethod<$1.StatsForTeamByUserRequest, $1.StatsForTeamByUserResponse>(
      '/services.impulse_svc.v1.ImpulseService/StatsForTeamByUser',
      ($1.StatsForTeamByUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StatsForTeamByUserResponse.fromBuffer(value));
  static final _$verification = $grpc.ClientMethod<$1.VerificationRequest, $1.VerificationResponse>(
      '/services.impulse_svc.v1.ImpulseService/Verification',
      ($1.VerificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.VerificationResponse.fromBuffer(value));

  ImpulseServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateUserResponse> createUser($1.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateUserResponse> updateUser($1.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.TrackChallengeResponse> trackChallenge($1.TrackChallengeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$trackChallenge, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetActiveChallengesResponse> getActiveChallenges($1.GetActiveChallengesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getActiveChallenges, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetScoreResponse> getScore($1.GetScoreRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getScore, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetRewardsResponse> getRewards($1.GetRewardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRewards, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetAllRewardsResponse> getAllRewards($1.GetAllRewardsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllRewards, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetAllTeamsResponse> getAllTeams($1.GetAllTeamsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllTeams, request, options: options);
  }

  $grpc.ResponseFuture<$1.StatsForTeamByUserResponse> statsForTeamByUser($1.StatsForTeamByUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$statsForTeamByUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.VerificationResponse> verification($1.VerificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verification, request, options: options);
  }
}

@$pb.GrpcServiceName('services.impulse_svc.v1.ImpulseService')
abstract class ImpulseServiceBase extends $grpc.Service {
  $core.String get $name => 'services.impulse_svc.v1.ImpulseService';

  ImpulseServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreateUserRequest, $1.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateUserRequest.fromBuffer(value),
        ($1.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateUserRequest, $1.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateUserRequest.fromBuffer(value),
        ($1.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.TrackChallengeRequest, $1.TrackChallengeResponse>(
        'TrackChallenge',
        trackChallenge_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.TrackChallengeRequest.fromBuffer(value),
        ($1.TrackChallengeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetActiveChallengesRequest, $1.GetActiveChallengesResponse>(
        'GetActiveChallenges',
        getActiveChallenges_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetActiveChallengesRequest.fromBuffer(value),
        ($1.GetActiveChallengesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetScoreRequest, $1.GetScoreResponse>(
        'GetScore',
        getScore_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetScoreRequest.fromBuffer(value),
        ($1.GetScoreResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetRewardsRequest, $1.GetRewardsResponse>(
        'GetRewards',
        getRewards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetRewardsRequest.fromBuffer(value),
        ($1.GetRewardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetAllRewardsRequest, $1.GetAllRewardsResponse>(
        'GetAllRewards',
        getAllRewards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetAllRewardsRequest.fromBuffer(value),
        ($1.GetAllRewardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetAllTeamsRequest, $1.GetAllTeamsResponse>(
        'GetAllTeams',
        getAllTeams_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetAllTeamsRequest.fromBuffer(value),
        ($1.GetAllTeamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StatsForTeamByUserRequest, $1.StatsForTeamByUserResponse>(
        'StatsForTeamByUser',
        statsForTeamByUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.StatsForTeamByUserRequest.fromBuffer(value),
        ($1.StatsForTeamByUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VerificationRequest, $1.VerificationResponse>(
        'Verification',
        verification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.VerificationRequest.fromBuffer(value),
        ($1.VerificationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$1.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$1.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$1.TrackChallengeResponse> trackChallenge_Pre($grpc.ServiceCall call, $async.Future<$1.TrackChallengeRequest> request) async {
    return trackChallenge(call, await request);
  }

  $async.Future<$1.GetActiveChallengesResponse> getActiveChallenges_Pre($grpc.ServiceCall call, $async.Future<$1.GetActiveChallengesRequest> request) async {
    return getActiveChallenges(call, await request);
  }

  $async.Future<$1.GetScoreResponse> getScore_Pre($grpc.ServiceCall call, $async.Future<$1.GetScoreRequest> request) async {
    return getScore(call, await request);
  }

  $async.Future<$1.GetRewardsResponse> getRewards_Pre($grpc.ServiceCall call, $async.Future<$1.GetRewardsRequest> request) async {
    return getRewards(call, await request);
  }

  $async.Future<$1.GetAllRewardsResponse> getAllRewards_Pre($grpc.ServiceCall call, $async.Future<$1.GetAllRewardsRequest> request) async {
    return getAllRewards(call, await request);
  }

  $async.Future<$1.GetAllTeamsResponse> getAllTeams_Pre($grpc.ServiceCall call, $async.Future<$1.GetAllTeamsRequest> request) async {
    return getAllTeams(call, await request);
  }

  $async.Future<$1.StatsForTeamByUserResponse> statsForTeamByUser_Pre($grpc.ServiceCall call, $async.Future<$1.StatsForTeamByUserRequest> request) async {
    return statsForTeamByUser(call, await request);
  }

  $async.Future<$1.VerificationResponse> verification_Pre($grpc.ServiceCall call, $async.Future<$1.VerificationRequest> request) async {
    return verification(call, await request);
  }

  $async.Future<$1.CreateUserResponse> createUser($grpc.ServiceCall call, $1.CreateUserRequest request);
  $async.Future<$1.UpdateUserResponse> updateUser($grpc.ServiceCall call, $1.UpdateUserRequest request);
  $async.Future<$1.TrackChallengeResponse> trackChallenge($grpc.ServiceCall call, $1.TrackChallengeRequest request);
  $async.Future<$1.GetActiveChallengesResponse> getActiveChallenges($grpc.ServiceCall call, $1.GetActiveChallengesRequest request);
  $async.Future<$1.GetScoreResponse> getScore($grpc.ServiceCall call, $1.GetScoreRequest request);
  $async.Future<$1.GetRewardsResponse> getRewards($grpc.ServiceCall call, $1.GetRewardsRequest request);
  $async.Future<$1.GetAllRewardsResponse> getAllRewards($grpc.ServiceCall call, $1.GetAllRewardsRequest request);
  $async.Future<$1.GetAllTeamsResponse> getAllTeams($grpc.ServiceCall call, $1.GetAllTeamsRequest request);
  $async.Future<$1.StatsForTeamByUserResponse> statsForTeamByUser($grpc.ServiceCall call, $1.StatsForTeamByUserRequest request);
  $async.Future<$1.VerificationResponse> verification($grpc.ServiceCall call, $1.VerificationRequest request);
}
