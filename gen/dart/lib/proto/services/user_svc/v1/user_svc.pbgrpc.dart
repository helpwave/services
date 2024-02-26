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

import 'user_svc.pb.dart' as $14;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$14.CreateUserRequest, $14.CreateUserResponse>(
      '/proto.services.user_svc.v1.UserService/CreateUser',
      ($14.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$14.ReadSelfRequest, $14.ReadSelfResponse>(
      '/proto.services.user_svc.v1.UserService/ReadSelf',
      ($14.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$14.ReadPublicProfileRequest, $14.ReadPublicProfileResponse>(
      '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
      ($14.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$14.UpdateUserRequest, $14.UpdateUserResponse>(
      '/proto.services.user_svc.v1.UserService/UpdateUser',
      ($14.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.CreateUserResponse> createUser($14.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$14.ReadSelfResponse> readSelf($14.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$14.ReadPublicProfileResponse> readPublicProfile($14.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateUserResponse> updateUser($14.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.CreateUserRequest, $14.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateUserRequest.fromBuffer(value),
        ($14.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ReadSelfRequest, $14.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ReadSelfRequest.fromBuffer(value),
        ($14.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.ReadPublicProfileRequest, $14.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.ReadPublicProfileRequest.fromBuffer(value),
        ($14.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateUserRequest, $14.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateUserRequest.fromBuffer(value),
        ($14.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$14.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$14.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$14.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$14.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$14.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$14.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$14.CreateUserResponse> createUser($grpc.ServiceCall call, $14.CreateUserRequest request);
  $async.Future<$14.ReadSelfResponse> readSelf($grpc.ServiceCall call, $14.ReadSelfRequest request);
  $async.Future<$14.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $14.ReadPublicProfileRequest request);
  $async.Future<$14.UpdateUserResponse> updateUser($grpc.ServiceCall call, $14.UpdateUserRequest request);
}
