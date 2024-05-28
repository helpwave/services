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

import 'user_svc.pb.dart' as $16;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$16.CreateUserRequest, $16.CreateUserResponse>(
      '/proto.services.user_svc.v1.UserService/CreateUser',
      ($16.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$16.ReadSelfRequest, $16.ReadSelfResponse>(
      '/proto.services.user_svc.v1.UserService/ReadSelf',
      ($16.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$16.ReadPublicProfileRequest, $16.ReadPublicProfileResponse>(
      '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
      ($16.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$16.UpdateUserRequest, $16.UpdateUserResponse>(
      '/proto.services.user_svc.v1.UserService/UpdateUser',
      ($16.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $16.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$16.CreateUserResponse> createUser($16.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$16.ReadSelfResponse> readSelf($16.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$16.ReadPublicProfileResponse> readPublicProfile($16.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$16.UpdateUserResponse> updateUser($16.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$16.CreateUserRequest, $16.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.CreateUserRequest.fromBuffer(value),
        ($16.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ReadSelfRequest, $16.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ReadSelfRequest.fromBuffer(value),
        ($16.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ReadPublicProfileRequest, $16.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.ReadPublicProfileRequest.fromBuffer(value),
        ($16.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.UpdateUserRequest, $16.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $16.UpdateUserRequest.fromBuffer(value),
        ($16.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$16.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$16.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$16.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$16.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$16.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$16.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$16.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$16.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$16.CreateUserResponse> createUser($grpc.ServiceCall call, $16.CreateUserRequest request);
  $async.Future<$16.ReadSelfResponse> readSelf($grpc.ServiceCall call, $16.ReadSelfRequest request);
  $async.Future<$16.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $16.ReadPublicProfileRequest request);
  $async.Future<$16.UpdateUserResponse> updateUser($grpc.ServiceCall call, $16.UpdateUserRequest request);
}
