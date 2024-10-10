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

import 'user_svc.pb.dart' as $19;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$createUser = $grpc.ClientMethod<$19.CreateUserRequest, $19.CreateUserResponse>(
      '/services.user_svc.v1.UserService/CreateUser',
      ($19.CreateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.CreateUserResponse.fromBuffer(value));
  static final _$readSelf = $grpc.ClientMethod<$19.ReadSelfRequest, $19.ReadSelfResponse>(
      '/services.user_svc.v1.UserService/ReadSelf',
      ($19.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$19.ReadPublicProfileRequest, $19.ReadPublicProfileResponse>(
      '/services.user_svc.v1.UserService/ReadPublicProfile',
      ($19.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$19.UpdateUserRequest, $19.UpdateUserResponse>(
      '/services.user_svc.v1.UserService/UpdateUser',
      ($19.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $19.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$19.CreateUserResponse> createUser($19.CreateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseFuture<$19.ReadSelfResponse> readSelf($19.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$19.ReadPublicProfileResponse> readPublicProfile($19.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$19.UpdateUserResponse> updateUser($19.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$19.CreateUserRequest, $19.CreateUserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.CreateUserRequest.fromBuffer(value),
        ($19.CreateUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.ReadSelfRequest, $19.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.ReadSelfRequest.fromBuffer(value),
        ($19.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.ReadPublicProfileRequest, $19.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.ReadPublicProfileRequest.fromBuffer(value),
        ($19.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.UpdateUserRequest, $19.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.UpdateUserRequest.fromBuffer(value),
        ($19.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$19.CreateUserResponse> createUser_Pre($grpc.ServiceCall call, $async.Future<$19.CreateUserRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$19.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$19.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$19.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$19.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$19.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$19.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$19.CreateUserResponse> createUser($grpc.ServiceCall call, $19.CreateUserRequest request);
  $async.Future<$19.ReadSelfResponse> readSelf($grpc.ServiceCall call, $19.ReadSelfRequest request);
  $async.Future<$19.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $19.ReadPublicProfileRequest request);
  $async.Future<$19.UpdateUserResponse> updateUser($grpc.ServiceCall call, $19.UpdateUserRequest request);
}
