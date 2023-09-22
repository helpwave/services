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

import 'user_svc.pb.dart' as $10;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$10.CreateUserRequest, $10.CreateUserResponse>(
      '/proto.services.user_svc.v1.UserService/CreateUser',
      ($10.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$10.ReadSelfRequest, $10.ReadSelfResponse>(
      '/proto.services.user_svc.v1.UserService/ReadSelf',
      ($10.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$10.ReadPublicProfileRequest, $10.ReadPublicProfileResponse>(
      '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
      ($10.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$10.UpdateUserRequest, $10.UpdateUserResponse>(
      '/proto.services.user_svc.v1.UserService/UpdateUser',
      ($10.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.CreateUserResponse> createUser($10.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$10.ReadSelfResponse> readSelf($10.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$10.ReadPublicProfileResponse> readPublicProfile($10.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$10.UpdateUserResponse> updateUser($10.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.CreateUserRequest, $10.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.CreateUserRequest.fromBuffer(value),
        ($10.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ReadSelfRequest, $10.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.ReadSelfRequest.fromBuffer(value),
        ($10.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ReadPublicProfileRequest, $10.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.ReadPublicProfileRequest.fromBuffer(value),
        ($10.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateUserRequest, $10.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateUserRequest.fromBuffer(value),
        ($10.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$10.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$10.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$10.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$10.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$10.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$10.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$10.CreateUserResponse> createUser($grpc.ServiceCall call, $10.CreateUserRequest request);
  $async.Future<$10.ReadSelfResponse> readSelf($grpc.ServiceCall call, $10.ReadSelfRequest request);
  $async.Future<$10.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $10.ReadPublicProfileRequest request);
  $async.Future<$10.UpdateUserResponse> updateUser($grpc.ServiceCall call, $10.UpdateUserRequest request);
}
