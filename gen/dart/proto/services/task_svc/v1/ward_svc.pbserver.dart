//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/ward_svc.proto
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

import 'ward_svc.pb.dart' as $9;
import 'ward_svc.pbjson.dart';

export 'ward_svc.pb.dart';

abstract class WardServiceBase extends $pb.GeneratedService {
  $async.Future<$9.CreateWardResponse> createWard($pb.ServerContext ctx, $9.CreateWardRequest request);
  $async.Future<$9.GetWardResponse> getWard($pb.ServerContext ctx, $9.GetWardRequest request);
  $async.Future<$9.GetWardsResponse> getWards($pb.ServerContext ctx, $9.GetWardsRequest request);
  $async.Future<$9.UpdateWardResponse> updateWard($pb.ServerContext ctx, $9.UpdateWardRequest request);
  $async.Future<$9.DeleteWardResponse> deleteWard($pb.ServerContext ctx, $9.DeleteWardRequest request);
  $async.Future<$9.GetWardOverviewsResponse> getWardOverviews($pb.ServerContext ctx, $9.GetWardOverviewsRequest request);
  $async.Future<$9.GetWardDetailsResponse> getWardDetails($pb.ServerContext ctx, $9.GetWardDetailsRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateWard': return $9.CreateWardRequest();
      case 'GetWard': return $9.GetWardRequest();
      case 'GetWards': return $9.GetWardsRequest();
      case 'UpdateWard': return $9.UpdateWardRequest();
      case 'DeleteWard': return $9.DeleteWardRequest();
      case 'GetWardOverviews': return $9.GetWardOverviewsRequest();
      case 'GetWardDetails': return $9.GetWardDetailsRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateWard': return this.createWard(ctx, request as $9.CreateWardRequest);
      case 'GetWard': return this.getWard(ctx, request as $9.GetWardRequest);
      case 'GetWards': return this.getWards(ctx, request as $9.GetWardsRequest);
      case 'UpdateWard': return this.updateWard(ctx, request as $9.UpdateWardRequest);
      case 'DeleteWard': return this.deleteWard(ctx, request as $9.DeleteWardRequest);
      case 'GetWardOverviews': return this.getWardOverviews(ctx, request as $9.GetWardOverviewsRequest);
      case 'GetWardDetails': return this.getWardDetails(ctx, request as $9.GetWardDetailsRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => WardServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => WardServiceBase$messageJson;
}

