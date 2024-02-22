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

import 'user_svc.pb.dart' as $12;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$12.CreateUserRequest, $12.CreateUserResponse>(
      '/proto.services.user_svc.v1.UserService/CreateUser',
      ($12.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$12.ReadSelfRequest, $12.ReadSelfResponse>(
      '/proto.services.user_svc.v1.UserService/ReadSelf',
      ($12.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$12.ReadPublicProfileRequest, $12.ReadPublicProfileResponse>(
      '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
      ($12.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$12.UpdateUserRequest, $12.UpdateUserResponse>(
      '/proto.services.user_svc.v1.UserService/UpdateUser',
      ($12.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreateUserResponse> createUser($12.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$12.ReadSelfResponse> readSelf($12.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$12.ReadPublicProfileResponse> readPublicProfile($12.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateUserResponse> updateUser($12.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreateUserRequest, $12.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateUserRequest.fromBuffer(value),
        ($12.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ReadSelfRequest, $12.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ReadSelfRequest.fromBuffer(value),
        ($12.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ReadPublicProfileRequest, $12.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ReadPublicProfileRequest.fromBuffer(value),
        ($12.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateUserRequest, $12.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateUserRequest.fromBuffer(value),
        ($12.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$12.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$12.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$12.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$12.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$12.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$12.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$12.CreateUserResponse> createUser($grpc.ServiceCall call, $12.CreateUserRequest request);
  $async.Future<$12.ReadSelfResponse> readSelf($grpc.ServiceCall call, $12.ReadSelfRequest request);
  $async.Future<$12.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $12.ReadPublicProfileRequest request);
  $async.Future<$12.UpdateUserResponse> updateUser($grpc.ServiceCall call, $12.UpdateUserRequest request);
}
