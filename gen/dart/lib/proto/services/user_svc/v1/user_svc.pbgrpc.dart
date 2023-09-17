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

import 'user_svc.pb.dart' as $9;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$9.CreateUserRequest, $9.CreateUserResponse>(
      '/proto.services.user_svc.v1.UserService/CreateUser',
      ($9.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$9.ReadSelfRequest, $9.ReadSelfResponse>(
      '/proto.services.user_svc.v1.UserService/ReadSelf',
      ($9.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$9.ReadPublicProfileRequest, $9.ReadPublicProfileResponse>(
      '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
      ($9.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$9.UpdateUserRequest, $9.UpdateUserResponse>(
      '/proto.services.user_svc.v1.UserService/UpdateUser',
      ($9.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateUserResponse> createUser($9.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$9.ReadSelfResponse> readSelf($9.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$9.ReadPublicProfileResponse> readPublicProfile($9.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateUserResponse> updateUser($9.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateUserRequest, $9.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateUserRequest.fromBuffer(value),
        ($9.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ReadSelfRequest, $9.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ReadSelfRequest.fromBuffer(value),
        ($9.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ReadPublicProfileRequest, $9.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ReadPublicProfileRequest.fromBuffer(value),
        ($9.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateUserRequest, $9.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateUserRequest.fromBuffer(value),
        ($9.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$9.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$9.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$9.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$9.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$9.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$9.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$9.CreateUserResponse> createUser($grpc.ServiceCall call, $9.CreateUserRequest request);
  $async.Future<$9.ReadSelfResponse> readSelf($grpc.ServiceCall call, $9.ReadSelfRequest request);
  $async.Future<$9.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $9.ReadPublicProfileRequest request);
  $async.Future<$9.UpdateUserResponse> updateUser($grpc.ServiceCall call, $9.UpdateUserRequest request);
}
