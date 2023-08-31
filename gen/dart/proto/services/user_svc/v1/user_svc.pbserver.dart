//
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/user_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user_svc.pb.dart' as $11;
import 'user_svc.pbjson.dart';

export 'user_svc.pb.dart';

abstract class UserServiceBase extends $pb.GeneratedService {
  $async.Future<$11.ReadSelfResponse> readSelf($pb.ServerContext ctx, $11.ReadSelfRequest request);
  $async.Future<$11.ReadPublicProfileResponse> readPublicProfile($pb.ServerContext ctx, $11.ReadPublicProfileRequest request);
  $async.Future<$11.UpdateUserResponse> updateUser($pb.ServerContext ctx, $11.UpdateUserRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'ReadSelf': return $11.ReadSelfRequest();
      case 'ReadPublicProfile': return $11.ReadPublicProfileRequest();
      case 'UpdateUser': return $11.UpdateUserRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'ReadSelf': return this.readSelf(ctx, request as $11.ReadSelfRequest);
      case 'ReadPublicProfile': return this.readPublicProfile(ctx, request as $11.ReadPublicProfileRequest);
      case 'UpdateUser': return this.updateUser(ctx, request as $11.UpdateUserRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => UserServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => UserServiceBase$messageJson;
}

