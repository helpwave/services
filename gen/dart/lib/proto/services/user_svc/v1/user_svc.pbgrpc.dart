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

import 'user_svc.pb.dart' as $17;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$17.CreateUserRequest, $17.CreateUserResponse>(
      '/proto.services.user_svc.v1.UserService/CreateUser',
      ($17.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$17.ReadSelfRequest, $17.ReadSelfResponse>(
      '/proto.services.user_svc.v1.UserService/ReadSelf',
      ($17.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$17.ReadPublicProfileRequest, $17.ReadPublicProfileResponse>(
      '/proto.services.user_svc.v1.UserService/ReadPublicProfile',
      ($17.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$17.UpdateUserRequest, $17.UpdateUserResponse>(
      '/proto.services.user_svc.v1.UserService/UpdateUser',
      ($17.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $17.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$17.CreateUserResponse> createUser($17.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$17.ReadSelfResponse> readSelf($17.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$17.ReadPublicProfileResponse> readPublicProfile($17.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$17.UpdateUserResponse> updateUser($17.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.CreateUserRequest, $17.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.CreateUserRequest.fromBuffer(value),
        ($17.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.ReadSelfRequest, $17.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.ReadSelfRequest.fromBuffer(value),
        ($17.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.ReadPublicProfileRequest, $17.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.ReadPublicProfileRequest.fromBuffer(value),
        ($17.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.UpdateUserRequest, $17.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $17.UpdateUserRequest.fromBuffer(value),
        ($17.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$17.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$17.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$17.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$17.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$17.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$17.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$17.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$17.CreateUserResponse> createUser($grpc.ServiceCall call, $17.CreateUserRequest request);
  $async.Future<$17.ReadSelfResponse> readSelf($grpc.ServiceCall call, $17.ReadSelfRequest request);
  $async.Future<$17.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $17.ReadPublicProfileRequest request);
  $async.Future<$17.UpdateUserResponse> updateUser($grpc.ServiceCall call, $17.UpdateUserRequest request);
}
