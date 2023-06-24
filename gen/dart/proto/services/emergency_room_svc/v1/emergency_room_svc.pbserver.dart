//
//  Generated code. Do not modify.
//  source: proto/services/emergency_room_svc/v1/emergency_room_svc.proto
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

import 'emergency_room_svc.pb.dart' as $1;
import 'emergency_room_svc.pbjson.dart';

export 'emergency_room_svc.pb.dart';

abstract class EmergencyRoomServiceBase extends $pb.GeneratedService {
  $async.Future<$1.CreateERResponse> createER($pb.ServerContext ctx, $1.CreateERRequest request);
  $async.Future<$1.GetERResponse> getER($pb.ServerContext ctx, $1.GetERRequest request);
  $async.Future<$1.GetERsResponse> getERs($pb.ServerContext ctx, $1.GetERsRequest request);
  $async.Future<$1.UpdateERResponse> updateER($pb.ServerContext ctx, $1.UpdateERRequest request);
  $async.Future<$1.AddDepartmentsToERResponse> addDepartmentsToER($pb.ServerContext ctx, $1.AddDepartmentsToERRequest request);
  $async.Future<$1.RemoveDepartmentsFromERResponse> removeDepartmentsFromER($pb.ServerContext ctx, $1.RemoveDepartmentsFromERRequest request);
  $async.Future<$1.DeleteERResponse> deleteER($pb.ServerContext ctx, $1.DeleteERRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateER': return $1.CreateERRequest();
      case 'GetER': return $1.GetERRequest();
      case 'GetERs': return $1.GetERsRequest();
      case 'UpdateER': return $1.UpdateERRequest();
      case 'AddDepartmentsToER': return $1.AddDepartmentsToERRequest();
      case 'RemoveDepartmentsFromER': return $1.RemoveDepartmentsFromERRequest();
      case 'DeleteER': return $1.DeleteERRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateER': return this.createER(ctx, request as $1.CreateERRequest);
      case 'GetER': return this.getER(ctx, request as $1.GetERRequest);
      case 'GetERs': return this.getERs(ctx, request as $1.GetERsRequest);
      case 'UpdateER': return this.updateER(ctx, request as $1.UpdateERRequest);
      case 'AddDepartmentsToER': return this.addDepartmentsToER(ctx, request as $1.AddDepartmentsToERRequest);
      case 'RemoveDepartmentsFromER': return this.removeDepartmentsFromER(ctx, request as $1.RemoveDepartmentsFromERRequest);
      case 'DeleteER': return this.deleteER(ctx, request as $1.DeleteERRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => EmergencyRoomServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => EmergencyRoomServiceBase$messageJson;
}

