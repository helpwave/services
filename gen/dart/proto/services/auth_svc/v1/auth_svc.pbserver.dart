//
//  Generated code. Do not modify.
//  source: proto/services/auth_svc/v1/auth_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'auth_svc.pb.dart' as $0;
import 'auth_svc.pbjson.dart';

export 'auth_svc.pb.dart';

abstract class AuthServiceBase extends $pb.GeneratedService {
  $async.Future<$0.PrelimAuthRequestResponse> prelimAuthRequest($pb.ServerContext ctx, $0.PrelimAuthRequestRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'PrelimAuthRequest': return $0.PrelimAuthRequestRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'PrelimAuthRequest': return this.prelimAuthRequest(ctx, request as $0.PrelimAuthRequestRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AuthServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AuthServiceBase$messageJson;
}

