//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/bed_svc.proto
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

import 'bed_svc.pb.dart' as $3;
import 'bed_svc.pbjson.dart';

export 'bed_svc.pb.dart';

abstract class BedServiceBase extends $pb.GeneratedService {
  $async.Future<$3.CreateBedResponse> createBed($pb.ServerContext ctx, $3.CreateBedRequest request);
  $async.Future<$3.BulkCreateBedsResponse> bulkCreateBeds($pb.ServerContext ctx, $3.BulkCreateBedsRequest request);
  $async.Future<$3.GetBedResponse> getBed($pb.ServerContext ctx, $3.GetBedRequest request);
  $async.Future<$3.GetBedsResponse> getBeds($pb.ServerContext ctx, $3.GetBedsRequest request);
  $async.Future<$3.GetBedsByRoomResponse> getBedsByRoom($pb.ServerContext ctx, $3.GetBedsByRoomRequest request);
  $async.Future<$3.UpdateBedResponse> updateBed($pb.ServerContext ctx, $3.UpdateBedRequest request);
  $async.Future<$3.DeleteBedResponse> deleteBed($pb.ServerContext ctx, $3.DeleteBedRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateBed': return $3.CreateBedRequest();
      case 'BulkCreateBeds': return $3.BulkCreateBedsRequest();
      case 'GetBed': return $3.GetBedRequest();
      case 'GetBeds': return $3.GetBedsRequest();
      case 'GetBedsByRoom': return $3.GetBedsByRoomRequest();
      case 'UpdateBed': return $3.UpdateBedRequest();
      case 'DeleteBed': return $3.DeleteBedRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateBed': return this.createBed(ctx, request as $3.CreateBedRequest);
      case 'BulkCreateBeds': return this.bulkCreateBeds(ctx, request as $3.BulkCreateBedsRequest);
      case 'GetBed': return this.getBed(ctx, request as $3.GetBedRequest);
      case 'GetBeds': return this.getBeds(ctx, request as $3.GetBedsRequest);
      case 'GetBedsByRoom': return this.getBedsByRoom(ctx, request as $3.GetBedsByRoomRequest);
      case 'UpdateBed': return this.updateBed(ctx, request as $3.UpdateBedRequest);
      case 'DeleteBed': return this.deleteBed(ctx, request as $3.DeleteBedRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => BedServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => BedServiceBase$messageJson;
}

