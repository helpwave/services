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

import 'room_svc.pb.dart' as $9;

export 'room_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
class RoomServiceClient extends $grpc.Client {
  static final _$createRoom = $grpc.ClientMethod<$9.CreateRoomRequest, $9.CreateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/CreateRoom',
      ($9.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreateRoomResponse.fromBuffer(value));
  static final _$getRoom = $grpc.ClientMethod<$9.GetRoomRequest, $9.GetRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoom',
      ($9.GetRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetRoomResponse.fromBuffer(value));
  static final _$getRooms = $grpc.ClientMethod<$9.GetRoomsRequest, $9.GetRoomsResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRooms',
      ($9.GetRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetRoomsResponse.fromBuffer(value));
  static final _$getRoomsByWard = $grpc.ClientMethod<$9.GetRoomsByWardRequest, $9.GetRoomsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomsByWard',
      ($9.GetRoomsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetRoomsByWardResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$9.UpdateRoomRequest, $9.UpdateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/UpdateRoom',
      ($9.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdateRoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$9.DeleteRoomRequest, $9.DeleteRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/DeleteRoom',
      ($9.DeleteRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DeleteRoomResponse.fromBuffer(value));
  static final _$getRoomOverviewsByWard = $grpc.ClientMethod<$9.GetRoomOverviewsByWardRequest, $9.GetRoomOverviewsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomOverviewsByWard',
      ($9.GetRoomOverviewsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetRoomOverviewsByWardResponse.fromBuffer(value));

  RoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreateRoomResponse> createRoom($9.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetRoomResponse> getRoom($9.GetRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetRoomsResponse> getRooms($9.GetRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRooms, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetRoomsByWardResponse> getRoomsByWard($9.GetRoomsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdateRoomResponse> updateRoom($9.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$9.DeleteRoomResponse> deleteRoom($9.DeleteRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($9.GetRoomOverviewsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomOverviewsByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
abstract class RoomServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.RoomService';

  RoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreateRoomRequest, $9.CreateRoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreateRoomRequest.fromBuffer(value),
        ($9.CreateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetRoomRequest, $9.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetRoomRequest.fromBuffer(value),
        ($9.GetRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetRoomsRequest, $9.GetRoomsResponse>(
        'GetRooms',
        getRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetRoomsRequest.fromBuffer(value),
        ($9.GetRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetRoomsByWardRequest, $9.GetRoomsByWardResponse>(
        'GetRoomsByWard',
        getRoomsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetRoomsByWardRequest.fromBuffer(value),
        ($9.GetRoomsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdateRoomRequest, $9.UpdateRoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdateRoomRequest.fromBuffer(value),
        ($9.UpdateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DeleteRoomRequest, $9.DeleteRoomResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DeleteRoomRequest.fromBuffer(value),
        ($9.DeleteRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetRoomOverviewsByWardRequest, $9.GetRoomOverviewsByWardResponse>(
        'GetRoomOverviewsByWard',
        getRoomOverviewsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetRoomOverviewsByWardRequest.fromBuffer(value),
        ($9.GetRoomOverviewsByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreateRoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$9.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$9.GetRoomResponse> getRoom_Pre($grpc.ServiceCall call, $async.Future<$9.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$9.GetRoomsResponse> getRooms_Pre($grpc.ServiceCall call, $async.Future<$9.GetRoomsRequest> request) async {
    return getRooms(call, await request);
  }

  $async.Future<$9.GetRoomsByWardResponse> getRoomsByWard_Pre($grpc.ServiceCall call, $async.Future<$9.GetRoomsByWardRequest> request) async {
    return getRoomsByWard(call, await request);
  }

  $async.Future<$9.UpdateRoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$9.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$9.DeleteRoomResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$9.DeleteRoomRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$9.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard_Pre($grpc.ServiceCall call, $async.Future<$9.GetRoomOverviewsByWardRequest> request) async {
    return getRoomOverviewsByWard(call, await request);
  }

  $async.Future<$9.CreateRoomResponse> createRoom($grpc.ServiceCall call, $9.CreateRoomRequest request);
  $async.Future<$9.GetRoomResponse> getRoom($grpc.ServiceCall call, $9.GetRoomRequest request);
  $async.Future<$9.GetRoomsResponse> getRooms($grpc.ServiceCall call, $9.GetRoomsRequest request);
  $async.Future<$9.GetRoomsByWardResponse> getRoomsByWard($grpc.ServiceCall call, $9.GetRoomsByWardRequest request);
  $async.Future<$9.UpdateRoomResponse> updateRoom($grpc.ServiceCall call, $9.UpdateRoomRequest request);
  $async.Future<$9.DeleteRoomResponse> deleteRoom($grpc.ServiceCall call, $9.DeleteRoomRequest request);
  $async.Future<$9.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($grpc.ServiceCall call, $9.GetRoomOverviewsByWardRequest request);
}
