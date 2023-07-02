//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/ward_svc.proto
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

import 'ward_svc.pb.dart' as $7;
import 'ward_svc.pbjson.dart';

export 'ward_svc.pb.dart';

abstract class WardServiceBase extends $pb.GeneratedService {
  $async.Future<$7.CreateWardResponse> createWard($pb.ServerContext ctx, $7.CreateWardRequest request);
  $async.Future<$7.GetWardResponse> getWard($pb.ServerContext ctx, $7.GetWardRequest request);
  $async.Future<$7.GetWardsResponse> getWards($pb.ServerContext ctx, $7.GetWardsRequest request);
  $async.Future<$7.UpdateWardResponse> updateWard($pb.ServerContext ctx, $7.UpdateWardRequest request);
  $async.Future<$7.DeleteWardResponse> deleteWard($pb.ServerContext ctx, $7.DeleteWardRequest request);
  $async.Future<$7.GetWardOverviewsResponse> getWardOverviews($pb.ServerContext ctx, $7.GetWardOverviewsRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateWard': return $7.CreateWardRequest();
      case 'GetWard': return $7.GetWardRequest();
      case 'GetWards': return $7.GetWardsRequest();
      case 'UpdateWard': return $7.UpdateWardRequest();
      case 'DeleteWard': return $7.DeleteWardRequest();
      case 'GetWardOverviews': return $7.GetWardOverviewsRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateWard': return this.createWard(ctx, request as $7.CreateWardRequest);
      case 'GetWard': return this.getWard(ctx, request as $7.GetWardRequest);
      case 'GetWards': return this.getWards(ctx, request as $7.GetWardsRequest);
      case 'UpdateWard': return this.updateWard(ctx, request as $7.UpdateWardRequest);
      case 'DeleteWard': return this.deleteWard(ctx, request as $7.DeleteWardRequest);
      case 'GetWardOverviews': return this.getWardOverviews(ctx, request as $7.GetWardOverviewsRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => WardServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => WardServiceBase$messageJson;
}

