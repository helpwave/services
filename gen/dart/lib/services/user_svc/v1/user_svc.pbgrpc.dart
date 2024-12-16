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

import 'user_svc.pb.dart' as $13;

export 'user_svc.pb.dart';

@$pb.GrpcServiceName('services.user_svc.v1.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$readSelf = $grpc.ClientMethod<$13.ReadSelfRequest, $13.ReadSelfResponse>(
      '/services.user_svc.v1.UserService/ReadSelf',
      ($13.ReadSelfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ReadSelfResponse.fromBuffer(value));
  static final _$readPublicProfile = $grpc.ClientMethod<$13.ReadPublicProfileRequest, $13.ReadPublicProfileResponse>(
      '/services.user_svc.v1.UserService/ReadPublicProfile',
      ($13.ReadPublicProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ReadPublicProfileResponse.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$13.UpdateUserRequest, $13.UpdateUserResponse>(
      '/services.user_svc.v1.UserService/UpdateUser',
      ($13.UpdateUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.ReadSelfResponse> readSelf($13.ReadSelfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSelf, request, options: options);
  }

  $grpc.ResponseFuture<$13.ReadPublicProfileResponse> readPublicProfile($13.ReadPublicProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPublicProfile, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateUserResponse> updateUser($13.UpdateUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }
}

@$pb.GrpcServiceName('services.user_svc.v1.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'services.user_svc.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.ReadSelfRequest, $13.ReadSelfResponse>(
        'ReadSelf',
        readSelf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ReadSelfRequest.fromBuffer(value),
        ($13.ReadSelfResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ReadPublicProfileRequest, $13.ReadPublicProfileResponse>(
        'ReadPublicProfile',
        readPublicProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ReadPublicProfileRequest.fromBuffer(value),
        ($13.ReadPublicProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateUserRequest, $13.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateUserRequest.fromBuffer(value),
        ($13.UpdateUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.ReadSelfResponse> readSelf_Pre($grpc.ServiceCall call, $async.Future<$13.ReadSelfRequest> request) async {
    return readSelf(call, await request);
  }

  $async.Future<$13.ReadPublicProfileResponse> readPublicProfile_Pre($grpc.ServiceCall call, $async.Future<$13.ReadPublicProfileRequest> request) async {
    return readPublicProfile(call, await request);
  }

  $async.Future<$13.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$13.ReadSelfResponse> readSelf($grpc.ServiceCall call, $13.ReadSelfRequest request);
  $async.Future<$13.ReadPublicProfileResponse> readPublicProfile($grpc.ServiceCall call, $13.ReadPublicProfileRequest request);
  $async.Future<$13.UpdateUserResponse> updateUser($grpc.ServiceCall call, $13.UpdateUserRequest request);
}
