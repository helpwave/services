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

import 'room_svc.pb.dart' as $4;

export 'room_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
class RoomServiceClient extends $grpc.Client {
  static final _$createRoom = $grpc.ClientMethod<$4.CreateRoomRequest, $4.CreateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/CreateRoom',
      ($4.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateRoomResponse.fromBuffer(value));
  static final _$getRoom = $grpc.ClientMethod<$4.GetRoomRequest, $4.GetRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoom',
      ($4.GetRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetRoomResponse.fromBuffer(value));
  static final _$getRooms = $grpc.ClientMethod<$4.GetRoomsRequest, $4.GetRoomsResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRooms',
      ($4.GetRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetRoomsResponse.fromBuffer(value));
  static final _$getRoomsByWard = $grpc.ClientMethod<$4.GetRoomsByWardRequest, $4.GetRoomsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomsByWard',
      ($4.GetRoomsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetRoomsByWardResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$4.UpdateRoomRequest, $4.UpdateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/UpdateRoom',
      ($4.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateRoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$4.DeleteRoomRequest, $4.DeleteRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/DeleteRoom',
      ($4.DeleteRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteRoomResponse.fromBuffer(value));
  static final _$getRoomOverviewsByWard = $grpc.ClientMethod<$4.GetRoomOverviewsByWardRequest, $4.GetRoomOverviewsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomOverviewsByWard',
      ($4.GetRoomOverviewsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetRoomOverviewsByWardResponse.fromBuffer(value));

  RoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateRoomResponse> createRoom($4.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetRoomResponse> getRoom($4.GetRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetRoomsResponse> getRooms($4.GetRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRooms, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetRoomsByWardResponse> getRoomsByWard($4.GetRoomsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateRoomResponse> updateRoom($4.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteRoomResponse> deleteRoom($4.DeleteRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($4.GetRoomOverviewsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomOverviewsByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
abstract class RoomServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.RoomService';

  RoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateRoomRequest, $4.CreateRoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateRoomRequest.fromBuffer(value),
        ($4.CreateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetRoomRequest, $4.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRoomRequest.fromBuffer(value),
        ($4.GetRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetRoomsRequest, $4.GetRoomsResponse>(
        'GetRooms',
        getRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRoomsRequest.fromBuffer(value),
        ($4.GetRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetRoomsByWardRequest, $4.GetRoomsByWardResponse>(
        'GetRoomsByWard',
        getRoomsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRoomsByWardRequest.fromBuffer(value),
        ($4.GetRoomsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateRoomRequest, $4.UpdateRoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateRoomRequest.fromBuffer(value),
        ($4.UpdateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteRoomRequest, $4.DeleteRoomResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteRoomRequest.fromBuffer(value),
        ($4.DeleteRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetRoomOverviewsByWardRequest, $4.GetRoomOverviewsByWardResponse>(
        'GetRoomOverviewsByWard',
        getRoomOverviewsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRoomOverviewsByWardRequest.fromBuffer(value),
        ($4.GetRoomOverviewsByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateRoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$4.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$4.GetRoomResponse> getRoom_Pre($grpc.ServiceCall call, $async.Future<$4.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$4.GetRoomsResponse> getRooms_Pre($grpc.ServiceCall call, $async.Future<$4.GetRoomsRequest> request) async {
    return getRooms(call, await request);
  }

  $async.Future<$4.GetRoomsByWardResponse> getRoomsByWard_Pre($grpc.ServiceCall call, $async.Future<$4.GetRoomsByWardRequest> request) async {
    return getRoomsByWard(call, await request);
  }

  $async.Future<$4.UpdateRoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$4.DeleteRoomResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteRoomRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$4.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard_Pre($grpc.ServiceCall call, $async.Future<$4.GetRoomOverviewsByWardRequest> request) async {
    return getRoomOverviewsByWard(call, await request);
  }

  $async.Future<$4.CreateRoomResponse> createRoom($grpc.ServiceCall call, $4.CreateRoomRequest request);
  $async.Future<$4.GetRoomResponse> getRoom($grpc.ServiceCall call, $4.GetRoomRequest request);
  $async.Future<$4.GetRoomsResponse> getRooms($grpc.ServiceCall call, $4.GetRoomsRequest request);
  $async.Future<$4.GetRoomsByWardResponse> getRoomsByWard($grpc.ServiceCall call, $4.GetRoomsByWardRequest request);
  $async.Future<$4.UpdateRoomResponse> updateRoom($grpc.ServiceCall call, $4.UpdateRoomRequest request);
  $async.Future<$4.DeleteRoomResponse> deleteRoom($grpc.ServiceCall call, $4.DeleteRoomRequest request);
  $async.Future<$4.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($grpc.ServiceCall call, $4.GetRoomOverviewsByWardRequest request);
}
