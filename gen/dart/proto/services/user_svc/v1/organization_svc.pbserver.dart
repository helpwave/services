///
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'organization_svc.pb.dart' as $6;
import 'organization_svc.pbjson.dart';

export 'organization_svc.pb.dart';

abstract class OrganizationServiceBase extends $pb.GeneratedService {
  $async.Future<$6.CreateOrganizationResponse> createOrganization($pb.ServerContext ctx, $6.CreateOrganizationRequest request);
  $async.Future<$6.GetOrganizationResponse> getOrganization($pb.ServerContext ctx, $6.GetOrganizationRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateOrganization': return $6.CreateOrganizationRequest();
      case 'GetOrganization': return $6.GetOrganizationRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateOrganization': return this.createOrganization(ctx, request as $6.CreateOrganizationRequest);
      case 'GetOrganization': return this.getOrganization(ctx, request as $6.GetOrganizationRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => OrganizationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => OrganizationServiceBase$messageJson;
}

