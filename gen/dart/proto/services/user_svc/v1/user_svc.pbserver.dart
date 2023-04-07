///
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/user_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'user_svc.pb.dart' as $6;
import 'user_svc.pbjson.dart';

export 'user_svc.pb.dart';

abstract class UserServiceBase extends $pb.GeneratedService {
  $async.Future<$6.CreateUserResponse> createUser($pb.ServerContext ctx, $6.CreateUserRequest request);
  $async.Future<$6.UpdateUserResponse> updateUser($pb.ServerContext ctx, $6.UpdateUserRequest request);
  $async.Future<$6.CreateOrganizationResponse> createOrganization($pb.ServerContext ctx, $6.CreateOrganizationRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateUser': return $6.CreateUserRequest();
      case 'UpdateUser': return $6.UpdateUserRequest();
      case 'CreateOrganization': return $6.CreateOrganizationRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateUser': return this.createUser(ctx, request as $6.CreateUserRequest);
      case 'UpdateUser': return this.updateUser(ctx, request as $6.UpdateUserRequest);
      case 'CreateOrganization': return this.createOrganization(ctx, request as $6.CreateOrganizationRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => UserServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => UserServiceBase$messageJson;
}

