//
//  Generated code. Do not modify.
//  source: proto/services/impulse_svc/v1/impulse_svc.proto
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

import 'impulse_svc.pb.dart' as $2;

export 'impulse_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.impulse_svc.v1.ImpulseService')
class ImpulseServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$2.CreateUserRequest, $2.CreateUserResponse>(
      '/proto.services.impulse_svc.v1.ImpulseService/CreateUser',
      ($2.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateUserResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$2.UpdateUserRequest, $2.UpdateUserResponse>(
      '/proto.services.impulse_svc.v1.ImpulseService/UpdateUser',
      ($2.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateUserResponse.fromBuffer(value));
  static final _$trackChallenge = $grpc.ClientMethod<$2.TrackChallengeRequest, $2.TrackChallengeResponse>(
      '/proto.services.impulse_svc.v1.ImpulseService/TrackChallenge',
      ($2.TrackChallengeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.TrackChallengeResponse.fromBuffer(value));
  static final _$getActiveChallenges = $grpc.ClientMethod<$2.GetActiveChallengesRequest, $2.GetActiveChallengesResponse>(
      '/proto.services.impulse_svc.v1.ImpulseService/GetActiveChallenges',
      ($2.GetActiveChallengesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetActiveChallengesResponse.fromBuffer(value));

  ImpulseServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateUserResponse> createUser($2.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateUserResponse> updateUser($2.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.TrackChallengeResponse> trackChallenge($2.TrackChallengeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$trackChallenge, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetActiveChallengesResponse> getActiveChallenges($2.GetActiveChallengesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getActiveChallenges, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.impulse_svc.v1.ImpulseService')
abstract class ImpulseServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.impulse_svc.v1.ImpulseService';

  ImpulseServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateUserRequest, $2.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateUserRequest.fromBuffer(value),
        ($2.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateUserRequest, $2.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateUserRequest.fromBuffer(value),
        ($2.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TrackChallengeRequest, $2.TrackChallengeResponse>(
        'TrackChallenge',
        trackChallenge_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TrackChallengeRequest.fromBuffer(value),
        ($2.TrackChallengeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetActiveChallengesRequest, $2.GetActiveChallengesResponse>(
        'GetActiveChallenges',
        getActiveChallenges_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetActiveChallengesRequest.fromBuffer(value),
        ($2.GetActiveChallengesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$2.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$2.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$2.TrackChallengeResponse> trackChallenge_Pre($grpc.ServiceCall call, $async.Future<$2.TrackChallengeRequest> request) async {
    return trackChallenge(call, await request);
  }

  $async.Future<$2.GetActiveChallengesResponse> getActiveChallenges_Pre($grpc.ServiceCall call, $async.Future<$2.GetActiveChallengesRequest> request) async {
    return getActiveChallenges(call, await request);
  }

  $async.Future<$2.CreateUserResponse> createUser($grpc.ServiceCall call, $2.CreateUserRequest request);
  $async.Future<$2.UpdateUserResponse> updateUser($grpc.ServiceCall call, $2.UpdateUserRequest request);
  $async.Future<$2.TrackChallengeResponse> trackChallenge($grpc.ServiceCall call, $2.TrackChallengeRequest request);
  $async.Future<$2.GetActiveChallengesResponse> getActiveChallenges($grpc.ServiceCall call, $2.GetActiveChallengesRequest request);
}
