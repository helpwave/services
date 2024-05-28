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

import 'user_svc.pb.dart' as $18;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$18.CreateUserRequest, $18.CreateUserResponse>(
      '/proto.services.user_svc.v1.UserService/CreateUser',
      ($18.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$18.ReadSelfRequest, $18.ReadSelfResponse>(
      '/proto.services.user_svc.v1.UserService/ReadSelf',
      ($18.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$18.ReadPublicProfileRequest, $18.ReadPublicProfileResponse>(
      '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
      ($18.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$18.UpdateUserRequest, $18.UpdateUserResponse>(
      '/proto.services.user_svc.v1.UserService/UpdateUser',
      ($18.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $18.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$18.CreateUserResponse> createUser($18.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$18.ReadSelfResponse> readSelf($18.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$18.ReadPublicProfileResponse> readPublicProfile($18.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$18.UpdateUserResponse> updateUser($18.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$18.CreateUserRequest, $18.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.CreateUserRequest.fromBuffer(value),
        ($18.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.ReadSelfRequest, $18.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ReadSelfRequest.fromBuffer(value),
        ($18.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.ReadPublicProfileRequest, $18.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.ReadPublicProfileRequest.fromBuffer(value),
        ($18.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$18.UpdateUserRequest, $18.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $18.UpdateUserRequest.fromBuffer(value),
        ($18.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$18.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$18.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$18.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$18.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$18.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$18.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$18.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$18.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$18.CreateUserResponse> createUser($grpc.ServiceCall call, $18.CreateUserRequest request);
  $async.Future<$18.ReadSelfResponse> readSelf($grpc.ServiceCall call, $18.ReadSelfRequest request);
  $async.Future<$18.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $18.ReadPublicProfileRequest request);
  $async.Future<$18.UpdateUserResponse> updateUser($grpc.ServiceCall call, $18.UpdateUserRequest request);
}
