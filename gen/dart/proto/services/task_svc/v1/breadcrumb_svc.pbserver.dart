//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/breadcrumb_svc.proto
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

import 'breadcrumb_svc.pb.dart' as $3;
import 'breadcrumb_svc.pbjson.dart';

export 'breadcrumb_svc.pb.dart';

abstract class BreadcrumbServiceBase extends $pb.GeneratedService {
  $async.Future<$3.GetBreadcrumbsResponse> getBreadcrumbs($pb.ServerContext ctx, $3.GetBreadcrumbsRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'GetBreadcrumbs': return $3.GetBreadcrumbsRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'GetBreadcrumbs': return this.getBreadcrumbs(ctx, request as $3.GetBreadcrumbsRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => BreadcrumbServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => BreadcrumbServiceBase$messageJson;
}

