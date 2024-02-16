//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/room_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'room_svc.pb.dart' as $8;

export 'room_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
class RoomServiceClient extends $grpc.Client {
  static final _$createRoom = $grpc.ClientMethod<$8.CreateRoomRequest, $8.CreateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/CreateRoom',
      ($8.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreateRoomResponse.fromBuffer(value));
  static final _$getRoom = $grpc.ClientMethod<$8.GetRoomRequest, $8.GetRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoom',
      ($8.GetRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetRoomResponse.fromBuffer(value));
  static final _$getRooms = $grpc.ClientMethod<$8.GetRoomsRequest, $8.GetRoomsResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRooms',
      ($8.GetRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetRoomsResponse.fromBuffer(value));
  static final _$getRoomsByWard = $grpc.ClientMethod<$8.GetRoomsByWardRequest, $8.GetRoomsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomsByWard',
      ($8.GetRoomsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetRoomsByWardResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$8.UpdateRoomRequest, $8.UpdateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/UpdateRoom',
      ($8.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdateRoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$8.DeleteRoomRequest, $8.DeleteRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/DeleteRoom',
      ($8.DeleteRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeleteRoomResponse.fromBuffer(value));
  static final _$getRoomOverviewsByWard = $grpc.ClientMethod<$8.GetRoomOverviewsByWardRequest, $8.GetRoomOverviewsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomOverviewsByWard',
      ($8.GetRoomOverviewsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetRoomOverviewsByWardResponse.fromBuffer(value));

  RoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreateRoomResponse> createRoom($8.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetRoomResponse> getRoom($8.GetRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetRoomsResponse> getRooms($8.GetRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRooms, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetRoomsByWardResponse> getRoomsByWard($8.GetRoomsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdateRoomResponse> updateRoom($8.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeleteRoomResponse> deleteRoom($8.DeleteRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($8.GetRoomOverviewsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomOverviewsByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
abstract class RoomServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.RoomService';

  RoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreateRoomRequest, $8.CreateRoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateRoomRequest.fromBuffer(value),
        ($8.CreateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetRoomRequest, $8.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetRoomRequest.fromBuffer(value),
        ($8.GetRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetRoomsRequest, $8.GetRoomsResponse>(
        'GetRooms',
        getRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetRoomsRequest.fromBuffer(value),
        ($8.GetRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetRoomsByWardRequest, $8.GetRoomsByWardResponse>(
        'GetRoomsByWard',
        getRoomsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetRoomsByWardRequest.fromBuffer(value),
        ($8.GetRoomsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateRoomRequest, $8.UpdateRoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateRoomRequest.fromBuffer(value),
        ($8.UpdateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteRoomRequest, $8.DeleteRoomResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteRoomRequest.fromBuffer(value),
        ($8.DeleteRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetRoomOverviewsByWardRequest, $8.GetRoomOverviewsByWardResponse>(
        'GetRoomOverviewsByWard',
        getRoomOverviewsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetRoomOverviewsByWardRequest.fromBuffer(value),
        ($8.GetRoomOverviewsByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreateRoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$8.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$8.GetRoomResponse> getRoom_Pre($grpc.ServiceCall call, $async.Future<$8.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$8.GetRoomsResponse> getRooms_Pre($grpc.ServiceCall call, $async.Future<$8.GetRoomsRequest> request) async {
    return getRooms(call, await request);
  }

  $async.Future<$8.GetRoomsByWardResponse> getRoomsByWard_Pre($grpc.ServiceCall call, $async.Future<$8.GetRoomsByWardRequest> request) async {
    return getRoomsByWard(call, await request);
  }

  $async.Future<$8.UpdateRoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$8.DeleteRoomResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteRoomRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$8.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard_Pre($grpc.ServiceCall call, $async.Future<$8.GetRoomOverviewsByWardRequest> request) async {
    return getRoomOverviewsByWard(call, await request);
  }

  $async.Future<$8.CreateRoomResponse> createRoom($grpc.ServiceCall call, $8.CreateRoomRequest request);
  $async.Future<$8.GetRoomResponse> getRoom($grpc.ServiceCall call, $8.GetRoomRequest request);
  $async.Future<$8.GetRoomsResponse> getRooms($grpc.ServiceCall call, $8.GetRoomsRequest request);
  $async.Future<$8.GetRoomsByWardResponse> getRoomsByWard($grpc.ServiceCall call, $8.GetRoomsByWardRequest request);
  $async.Future<$8.UpdateRoomResponse> updateRoom($grpc.ServiceCall call, $8.UpdateRoomRequest request);
  $async.Future<$8.DeleteRoomResponse> deleteRoom($grpc.ServiceCall call, $8.DeleteRoomRequest request);
  $async.Future<$8.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($grpc.ServiceCall call, $8.GetRoomOverviewsByWardRequest request);
}
