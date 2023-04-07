///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/room_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'room_svc.pb.dart' as $3;
import 'room_svc.pbjson.dart';

export 'room_svc.pb.dart';

abstract class RoomServiceBase extends $pb.GeneratedService {
  $async.Future<$3.CreateRoomResponse> createRoom($pb.ServerContext ctx, $3.CreateRoomRequest request);
  $async.Future<$3.GetRoomResponse> getRoom($pb.ServerContext ctx, $3.GetRoomRequest request);
  $async.Future<$3.UpdateRoomResponse> updateRoom($pb.ServerContext ctx, $3.UpdateRoomRequest request);
  $async.Future<$3.AddBedsToRoomResponse> addBedsToRoom($pb.ServerContext ctx, $3.AddBedsToRoomRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateRoom': return $3.CreateRoomRequest();
      case 'GetRoom': return $3.GetRoomRequest();
      case 'UpdateRoom': return $3.UpdateRoomRequest();
      case 'AddBedsToRoom': return $3.AddBedsToRoomRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateRoom': return this.createRoom(ctx, request as $3.CreateRoomRequest);
      case 'GetRoom': return this.getRoom(ctx, request as $3.GetRoomRequest);
      case 'UpdateRoom': return this.updateRoom(ctx, request as $3.UpdateRoomRequest);
      case 'AddBedsToRoom': return this.addBedsToRoom(ctx, request as $3.AddBedsToRoomRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => RoomServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => RoomServiceBase$messageJson;
}

