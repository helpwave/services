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

import 'room_svc.pb.dart' as $6;

export 'room_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
class RoomServiceClient extends $grpc.Client {
  static final _$createRoom = $grpc.ClientMethod<$6.CreateRoomRequest, $6.CreateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/CreateRoom',
      ($6.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateRoomResponse.fromBuffer(value));
  static final _$getRoom = $grpc.ClientMethod<$6.GetRoomRequest, $6.GetRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoom',
      ($6.GetRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetRoomResponse.fromBuffer(value));
  static final _$getRooms = $grpc.ClientMethod<$6.GetRoomsRequest, $6.GetRoomsResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRooms',
      ($6.GetRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetRoomsResponse.fromBuffer(value));
  static final _$getRoomsByWard = $grpc.ClientMethod<$6.GetRoomsByWardRequest, $6.GetRoomsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomsByWard',
      ($6.GetRoomsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetRoomsByWardResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$6.UpdateRoomRequest, $6.UpdateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/UpdateRoom',
      ($6.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateRoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$6.DeleteRoomRequest, $6.DeleteRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/DeleteRoom',
      ($6.DeleteRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteRoomResponse.fromBuffer(value));
  static final _$getRoomOverviewsByWard = $grpc.ClientMethod<$6.GetRoomOverviewsByWardRequest, $6.GetRoomOverviewsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomOverviewsByWard',
      ($6.GetRoomOverviewsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetRoomOverviewsByWardResponse.fromBuffer(value));

  RoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateRoomResponse> createRoom($6.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetRoomResponse> getRoom($6.GetRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetRoomsResponse> getRooms($6.GetRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRooms, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetRoomsByWardResponse> getRoomsByWard($6.GetRoomsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateRoomResponse> updateRoom($6.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteRoomResponse> deleteRoom($6.DeleteRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($6.GetRoomOverviewsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomOverviewsByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
abstract class RoomServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.RoomService';

  RoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateRoomRequest, $6.CreateRoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateRoomRequest.fromBuffer(value),
        ($6.CreateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetRoomRequest, $6.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetRoomRequest.fromBuffer(value),
        ($6.GetRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetRoomsRequest, $6.GetRoomsResponse>(
        'GetRooms',
        getRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetRoomsRequest.fromBuffer(value),
        ($6.GetRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetRoomsByWardRequest, $6.GetRoomsByWardResponse>(
        'GetRoomsByWard',
        getRoomsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetRoomsByWardRequest.fromBuffer(value),
        ($6.GetRoomsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateRoomRequest, $6.UpdateRoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateRoomRequest.fromBuffer(value),
        ($6.UpdateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteRoomRequest, $6.DeleteRoomResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteRoomRequest.fromBuffer(value),
        ($6.DeleteRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetRoomOverviewsByWardRequest, $6.GetRoomOverviewsByWardResponse>(
        'GetRoomOverviewsByWard',
        getRoomOverviewsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetRoomOverviewsByWardRequest.fromBuffer(value),
        ($6.GetRoomOverviewsByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateRoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$6.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$6.GetRoomResponse> getRoom_Pre($grpc.ServiceCall call, $async.Future<$6.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$6.GetRoomsResponse> getRooms_Pre($grpc.ServiceCall call, $async.Future<$6.GetRoomsRequest> request) async {
    return getRooms(call, await request);
  }

  $async.Future<$6.GetRoomsByWardResponse> getRoomsByWard_Pre($grpc.ServiceCall call, $async.Future<$6.GetRoomsByWardRequest> request) async {
    return getRoomsByWard(call, await request);
  }

  $async.Future<$6.UpdateRoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$6.DeleteRoomResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteRoomRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$6.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard_Pre($grpc.ServiceCall call, $async.Future<$6.GetRoomOverviewsByWardRequest> request) async {
    return getRoomOverviewsByWard(call, await request);
  }

  $async.Future<$6.CreateRoomResponse> createRoom($grpc.ServiceCall call, $6.CreateRoomRequest request);
  $async.Future<$6.GetRoomResponse> getRoom($grpc.ServiceCall call, $6.GetRoomRequest request);
  $async.Future<$6.GetRoomsResponse> getRooms($grpc.ServiceCall call, $6.GetRoomsRequest request);
  $async.Future<$6.GetRoomsByWardResponse> getRoomsByWard($grpc.ServiceCall call, $6.GetRoomsByWardRequest request);
  $async.Future<$6.UpdateRoomResponse> updateRoom($grpc.ServiceCall call, $6.UpdateRoomRequest request);
  $async.Future<$6.DeleteRoomResponse> deleteRoom($grpc.ServiceCall call, $6.DeleteRoomRequest request);
  $async.Future<$6.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($grpc.ServiceCall call, $6.GetRoomOverviewsByWardRequest request);
}
