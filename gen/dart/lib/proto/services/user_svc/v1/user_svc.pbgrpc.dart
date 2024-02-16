//
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/user_svc.proto
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

import 'user_svc.pb.dart' as $15;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$15.CreateUserRequest, $15.CreateUserResponse>(
      '/proto.services.user_svc.v1.UserService/CreateUser',
      ($15.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$15.ReadSelfRequest, $15.ReadSelfResponse>(
      '/proto.services.user_svc.v1.UserService/ReadSelf',
      ($15.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$15.ReadPublicProfileRequest, $15.ReadPublicProfileResponse>(
      '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
      ($15.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$15.UpdateUserRequest, $15.UpdateUserResponse>(
      '/proto.services.user_svc.v1.UserService/UpdateUser',
      ($15.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.CreateUserResponse> createUser($15.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.ReadSelfResponse> readSelf($15.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$15.ReadPublicProfileResponse> readPublicProfile($15.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$15.UpdateUserResponse> updateUser($15.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.CreateUserRequest, $15.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.CreateUserRequest.fromBuffer(value),
        ($15.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ReadSelfRequest, $15.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ReadSelfRequest.fromBuffer(value),
        ($15.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ReadPublicProfileRequest, $15.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ReadPublicProfileRequest.fromBuffer(value),
        ($15.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UpdateUserRequest, $15.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UpdateUserRequest.fromBuffer(value),
        ($15.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$15.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$15.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$15.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$15.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$15.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$15.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$15.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$15.CreateUserResponse> createUser($grpc.ServiceCall call, $15.CreateUserRequest request);
  $async.Future<$15.ReadSelfResponse> readSelf($grpc.ServiceCall call, $15.ReadSelfRequest request);
  $async.Future<$15.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $15.ReadPublicProfileRequest request);
  $async.Future<$15.UpdateUserResponse> updateUser($grpc.ServiceCall call, $15.UpdateUserRequest request);
}
