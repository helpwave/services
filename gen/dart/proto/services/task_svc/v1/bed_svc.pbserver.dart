//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/bed_svc.proto
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

import 'bed_svc.pb.dart' as $2;
import 'bed_svc.pbjson.dart';

export 'bed_svc.pb.dart';

abstract class BedServiceBase extends $pb.GeneratedService {
  $async.Future<$2.CreateBedResponse> createBed($pb.ServerContext ctx, $2.CreateBedRequest request);
  $async.Future<$2.BulkCreateBedsResponse> bulkCreateBeds($pb.ServerContext ctx, $2.BulkCreateBedsRequest request);
  $async.Future<$2.GetBedResponse> getBed($pb.ServerContext ctx, $2.GetBedRequest request);
  $async.Future<$2.GetBedsResponse> getBeds($pb.ServerContext ctx, $2.GetBedsRequest request);
  $async.Future<$2.GetBedsByRoomResponse> getBedsByRoom($pb.ServerContext ctx, $2.GetBedsByRoomRequest request);
  $async.Future<$2.UpdateBedResponse> updateBed($pb.ServerContext ctx, $2.UpdateBedRequest request);
  $async.Future<$2.DeleteBedResponse> deleteBed($pb.ServerContext ctx, $2.DeleteBedRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateBed': return $2.CreateBedRequest();
      case 'BulkCreateBeds': return $2.BulkCreateBedsRequest();
      case 'GetBed': return $2.GetBedRequest();
      case 'GetBeds': return $2.GetBedsRequest();
      case 'GetBedsByRoom': return $2.GetBedsByRoomRequest();
      case 'UpdateBed': return $2.UpdateBedRequest();
      case 'DeleteBed': return $2.DeleteBedRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateBed': return this.createBed(ctx, request as $2.CreateBedRequest);
      case 'BulkCreateBeds': return this.bulkCreateBeds(ctx, request as $2.BulkCreateBedsRequest);
      case 'GetBed': return this.getBed(ctx, request as $2.GetBedRequest);
      case 'GetBeds': return this.getBeds(ctx, request as $2.GetBedsRequest);
      case 'GetBedsByRoom': return this.getBedsByRoom(ctx, request as $2.GetBedsByRoomRequest);
      case 'UpdateBed': return this.updateBed(ctx, request as $2.UpdateBedRequest);
      case 'DeleteBed': return this.deleteBed(ctx, request as $2.DeleteBedRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => BedServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => BedServiceBase$messageJson;
}

