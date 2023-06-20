///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/ward_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'ward_svc.pb.dart' as $7;
import 'ward_svc.pbjson.dart';

export 'ward_svc.pb.dart';

abstract class WardServiceBase extends $pb.GeneratedService {
  $async.Future<$7.CreateWardResponse> createWard($pb.ServerContext ctx, $7.CreateWardRequest request);
  $async.Future<$7.GetWardResponse> getWard($pb.ServerContext ctx, $7.GetWardRequest request);
  $async.Future<$7.GetWardsResponse> getWards($pb.ServerContext ctx, $7.GetWardsRequest request);
  $async.Future<$7.UpdateWardResponse> updateWard($pb.ServerContext ctx, $7.UpdateWardRequest request);
  $async.Future<$7.DeleteWardResponse> deleteWard($pb.ServerContext ctx, $7.DeleteWardRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateWard': return $7.CreateWardRequest();
      case 'GetWard': return $7.GetWardRequest();
      case 'GetWards': return $7.GetWardsRequest();
      case 'UpdateWard': return $7.UpdateWardRequest();
      case 'DeleteWard': return $7.DeleteWardRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateWard': return this.createWard(ctx, request as $7.CreateWardRequest);
      case 'GetWard': return this.getWard(ctx, request as $7.GetWardRequest);
      case 'GetWards': return this.getWards(ctx, request as $7.GetWardsRequest);
      case 'UpdateWard': return this.updateWard(ctx, request as $7.UpdateWardRequest);
      case 'DeleteWard': return this.deleteWard(ctx, request as $7.DeleteWardRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => WardServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => WardServiceBase$messageJson;
}

