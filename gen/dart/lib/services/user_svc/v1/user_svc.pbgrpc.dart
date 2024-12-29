//
//  Generated code. Do not modify.
//  source: services/user_svc/v1/user_svc.proto
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

import 'user_svc.pb.dart' as $1;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$readSelf = $grpc.ClientMethod<$1.ReadSelfRequest, $1.ReadSelfResponse>(
      '/services.user_svc.v1.UserService/ReadSelf',
      ($1.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$1.ReadPublicProfileRequest, $1.ReadPublicProfileResponse>(
      '/services.user_svc.v1.UserService/ReadPublicProfile',
      ($1.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$1.UpdateUserRequest, $1.UpdateUserResponse>(
      '/services.user_svc.v1.UserService/UpdateUser',
      ($1.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.ReadSelfResponse> readSelf($1.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$1.ReadPublicProfileResponse> readPublicProfile($1.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateUserResponse> updateUser($1.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ReadSelfRequest, $1.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ReadSelfRequest.fromBuffer(value),
        ($1.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ReadPublicProfileRequest, $1.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ReadPublicProfileRequest.fromBuffer(value),
        ($1.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateUserRequest, $1.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateUserRequest.fromBuffer(value),
        ($1.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$1.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$1.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$1.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$1.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$1.ReadSelfResponse> readSelf($grpc.ServiceCall call, $1.ReadSelfRequest request);
  $async.Future<$1.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $1.ReadPublicProfileRequest request);
  $async.Future<$1.UpdateUserResponse> updateUser($grpc.ServiceCall call, $1.UpdateUserRequest request);
}
