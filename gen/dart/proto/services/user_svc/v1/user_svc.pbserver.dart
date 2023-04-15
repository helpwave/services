///
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/user_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'user_svc.pb.dart' as $7;
import 'user_svc.pbjson.dart';

export 'user_svc.pb.dart';

abstract class UserServiceBase extends $pb.GeneratedService {
  $async.Future<$7.CreateUserResponse> createUser($pb.ServerContext ctx, $7.CreateUserRequest request);
  $async.Future<$7.UpdateUserResponse> updateUser($pb.ServerContext ctx, $7.UpdateUserRequest request);
  $async.Future<$7.GetUserResponse> getUser($pb.ServerContext ctx, $7.GetUserRequest request);
  $async.Future<$7.ReadPublicProfileResponse> readPublicProfile($pb.ServerContext ctx, $7.ReadPublicProfileRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateUser': return $7.CreateUserRequest();
      case 'UpdateUser': return $7.UpdateUserRequest();
      case 'GetUser': return $7.GetUserRequest();
      case 'ReadPublicProfile': return $7.ReadPublicProfileRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateUser': return this.createUser(ctx, request as $7.CreateUserRequest);
      case 'UpdateUser': return this.updateUser(ctx, request as $7.UpdateUserRequest);
      case 'GetUser': return this.getUser(ctx, request as $7.GetUserRequest);
      case 'ReadPublicProfile': return this.readPublicProfile(ctx, request as $7.ReadPublicProfileRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => UserServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => UserServiceBase$messageJson;
}

