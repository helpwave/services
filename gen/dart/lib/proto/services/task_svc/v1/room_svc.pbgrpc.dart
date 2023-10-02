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

import 'room_svc.pb.dart' as $5;

export 'room_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
class RoomServiceClient extends $grpc.Client {
  static final _$createRoom = $grpc.ClientMethod<$5.CreateRoomRequest, $5.CreateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/CreateRoom',
      ($5.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateRoomResponse.fromBuffer(value));
  static final _$getRoom = $grpc.ClientMethod<$5.GetRoomRequest, $5.GetRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoom',
      ($5.GetRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetRoomResponse.fromBuffer(value));
  static final _$getRooms = $grpc.ClientMethod<$5.GetRoomsRequest, $5.GetRoomsResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRooms',
      ($5.GetRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetRoomsResponse.fromBuffer(value));
  static final _$getRoomsByWard = $grpc.ClientMethod<$5.GetRoomsByWardRequest, $5.GetRoomsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomsByWard',
      ($5.GetRoomsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetRoomsByWardResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$5.UpdateRoomRequest, $5.UpdateRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/UpdateRoom',
      ($5.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateRoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$5.DeleteRoomRequest, $5.DeleteRoomResponse>(
      '/proto.services.task_svc.v1.RoomService/DeleteRoom',
      ($5.DeleteRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteRoomResponse.fromBuffer(value));
  static final _$getRoomOverviewsByWard = $grpc.ClientMethod<$5.GetRoomOverviewsByWardRequest, $5.GetRoomOverviewsByWardResponse>(
      '/proto.services.task_svc.v1.RoomService/GetRoomOverviewsByWard',
      ($5.GetRoomOverviewsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetRoomOverviewsByWardResponse.fromBuffer(value));

  RoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateRoomResponse> createRoom($5.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetRoomResponse> getRoom($5.GetRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetRoomsResponse> getRooms($5.GetRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRooms, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetRoomsByWardResponse> getRoomsByWard($5.GetRoomsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateRoomResponse> updateRoom($5.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteRoomResponse> deleteRoom($5.DeleteRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($5.GetRoomOverviewsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomOverviewsByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.RoomService')
abstract class RoomServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.RoomService';

  RoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateRoomRequest, $5.CreateRoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateRoomRequest.fromBuffer(value),
        ($5.CreateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetRoomRequest, $5.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetRoomRequest.fromBuffer(value),
        ($5.GetRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetRoomsRequest, $5.GetRoomsResponse>(
        'GetRooms',
        getRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetRoomsRequest.fromBuffer(value),
        ($5.GetRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetRoomsByWardRequest, $5.GetRoomsByWardResponse>(
        'GetRoomsByWard',
        getRoomsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetRoomsByWardRequest.fromBuffer(value),
        ($5.GetRoomsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateRoomRequest, $5.UpdateRoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateRoomRequest.fromBuffer(value),
        ($5.UpdateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteRoomRequest, $5.DeleteRoomResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteRoomRequest.fromBuffer(value),
        ($5.DeleteRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetRoomOverviewsByWardRequest, $5.GetRoomOverviewsByWardResponse>(
        'GetRoomOverviewsByWard',
        getRoomOverviewsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetRoomOverviewsByWardRequest.fromBuffer(value),
        ($5.GetRoomOverviewsByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateRoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$5.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$5.GetRoomResponse> getRoom_Pre($grpc.ServiceCall call, $async.Future<$5.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$5.GetRoomsResponse> getRooms_Pre($grpc.ServiceCall call, $async.Future<$5.GetRoomsRequest> request) async {
    return getRooms(call, await request);
  }

  $async.Future<$5.GetRoomsByWardResponse> getRoomsByWard_Pre($grpc.ServiceCall call, $async.Future<$5.GetRoomsByWardRequest> request) async {
    return getRoomsByWard(call, await request);
  }

  $async.Future<$5.UpdateRoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$5.DeleteRoomResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteRoomRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$5.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard_Pre($grpc.ServiceCall call, $async.Future<$5.GetRoomOverviewsByWardRequest> request) async {
    return getRoomOverviewsByWard(call, await request);
  }

  $async.Future<$5.CreateRoomResponse> createRoom($grpc.ServiceCall call, $5.CreateRoomRequest request);
  $async.Future<$5.GetRoomResponse> getRoom($grpc.ServiceCall call, $5.GetRoomRequest request);
  $async.Future<$5.GetRoomsResponse> getRooms($grpc.ServiceCall call, $5.GetRoomsRequest request);
  $async.Future<$5.GetRoomsByWardResponse> getRoomsByWard($grpc.ServiceCall call, $5.GetRoomsByWardRequest request);
  $async.Future<$5.UpdateRoomResponse> updateRoom($grpc.ServiceCall call, $5.UpdateRoomRequest request);
  $async.Future<$5.DeleteRoomResponse> deleteRoom($grpc.ServiceCall call, $5.DeleteRoomRequest request);
  $async.Future<$5.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($grpc.ServiceCall call, $5.GetRoomOverviewsByWardRequest request);
}
