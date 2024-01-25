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

import 'user_svc.pb.dart' as $11;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$11.CreateUserRequest, $11.CreateUserResponse>(
      '/proto.services.user_svc.v1.UserService/CreateUser',
      ($11.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$11.ReadSelfRequest, $11.ReadSelfResponse>(
      '/proto.services.user_svc.v1.UserService/ReadSelf',
      ($11.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$11.ReadPublicProfileRequest, $11.ReadPublicProfileResponse>(
      '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
      ($11.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$11.UpdateUserRequest, $11.UpdateUserResponse>(
      '/proto.services.user_svc.v1.UserService/UpdateUser',
      ($11.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateUserResponse> createUser($11.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$11.ReadSelfResponse> readSelf($11.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$11.ReadPublicProfileResponse> readPublicProfile($11.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateUserResponse> updateUser($11.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateUserRequest, $11.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateUserRequest.fromBuffer(value),
        ($11.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ReadSelfRequest, $11.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ReadSelfRequest.fromBuffer(value),
        ($11.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ReadPublicProfileRequest, $11.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ReadPublicProfileRequest.fromBuffer(value),
        ($11.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateUserRequest, $11.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateUserRequest.fromBuffer(value),
        ($11.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$11.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$11.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$11.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$11.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$11.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$11.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$11.CreateUserResponse> createUser($grpc.ServiceCall call, $11.CreateUserRequest request);
  $async.Future<$11.ReadSelfResponse> readSelf($grpc.ServiceCall call, $11.ReadSelfRequest request);
  $async.Future<$11.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $11.ReadPublicProfileRequest request);
  $async.Future<$11.UpdateUserResponse> updateUser($grpc.ServiceCall call, $11.UpdateUserRequest request);
}
