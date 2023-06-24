//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/room_svc.proto
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

import 'room_svc.pb.dart' as $4;
import 'room_svc.pbjson.dart';

export 'room_svc.pb.dart';

abstract class RoomServiceBase extends $pb.GeneratedService {
  $async.Future<$4.CreateRoomResponse> createRoom($pb.ServerContext ctx, $4.CreateRoomRequest request);
  $async.Future<$4.GetRoomResponse> getRoom($pb.ServerContext ctx, $4.GetRoomRequest request);
  $async.Future<$4.GetRoomsResponse> getRooms($pb.ServerContext ctx, $4.GetRoomsRequest request);
  $async.Future<$4.GetRoomsByWardResponse> getRoomsByWard($pb.ServerContext ctx, $4.GetRoomsByWardRequest request);
  $async.Future<$4.UpdateRoomResponse> updateRoom($pb.ServerContext ctx, $4.UpdateRoomRequest request);
  $async.Future<$4.DeleteRoomResponse> deleteRoom($pb.ServerContext ctx, $4.DeleteRoomRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateRoom': return $4.CreateRoomRequest();
      case 'GetRoom': return $4.GetRoomRequest();
      case 'GetRooms': return $4.GetRoomsRequest();
      case 'GetRoomsByWard': return $4.GetRoomsByWardRequest();
      case 'UpdateRoom': return $4.UpdateRoomRequest();
      case 'DeleteRoom': return $4.DeleteRoomRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateRoom': return this.createRoom(ctx, request as $4.CreateRoomRequest);
      case 'GetRoom': return this.getRoom(ctx, request as $4.GetRoomRequest);
      case 'GetRooms': return this.getRooms(ctx, request as $4.GetRoomsRequest);
      case 'GetRoomsByWard': return this.getRoomsByWard(ctx, request as $4.GetRoomsByWardRequest);
      case 'UpdateRoom': return this.updateRoom(ctx, request as $4.UpdateRoomRequest);
      case 'DeleteRoom': return this.deleteRoom(ctx, request as $4.DeleteRoomRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => RoomServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => RoomServiceBase$messageJson;
}

