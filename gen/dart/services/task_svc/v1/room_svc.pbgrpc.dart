//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/room_svc.proto
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

import 'room_svc.pb.dart' as $7;

export 'room_svc.pb.dart';

@$pb.GrpcServiceName('services.task_svc.v1.RoomService')
class RoomServiceClient extends $grpc.Client {
  static final _$createRoom = $grpc.ClientMethod<$7.CreateRoomRequest, $7.CreateRoomResponse>(
      '/services.task_svc.v1.RoomService/CreateRoom',
      ($7.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateRoomResponse.fromBuffer(value));
  static final _$getRoom = $grpc.ClientMethod<$7.GetRoomRequest, $7.GetRoomResponse>(
      '/services.task_svc.v1.RoomService/GetRoom',
      ($7.GetRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetRoomResponse.fromBuffer(value));
  static final _$getRooms = $grpc.ClientMethod<$7.GetRoomsRequest, $7.GetRoomsResponse>(
      '/services.task_svc.v1.RoomService/GetRooms',
      ($7.GetRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetRoomsResponse.fromBuffer(value));
  static final _$getRoomsByWard = $grpc.ClientMethod<$7.GetRoomsByWardRequest, $7.GetRoomsByWardResponse>(
      '/services.task_svc.v1.RoomService/GetRoomsByWard',
      ($7.GetRoomsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetRoomsByWardResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$7.UpdateRoomRequest, $7.UpdateRoomResponse>(
      '/services.task_svc.v1.RoomService/UpdateRoom',
      ($7.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateRoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$7.DeleteRoomRequest, $7.DeleteRoomResponse>(
      '/services.task_svc.v1.RoomService/DeleteRoom',
      ($7.DeleteRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteRoomResponse.fromBuffer(value));
  static final _$getRoomOverviewsByWard = $grpc.ClientMethod<$7.GetRoomOverviewsByWardRequest, $7.GetRoomOverviewsByWardResponse>(
      '/services.task_svc.v1.RoomService/GetRoomOverviewsByWard',
      ($7.GetRoomOverviewsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetRoomOverviewsByWardResponse.fromBuffer(value));

  RoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateRoomResponse> createRoom($7.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetRoomResponse> getRoom($7.GetRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetRoomsResponse> getRooms($7.GetRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRooms, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetRoomsByWardResponse> getRoomsByWard($7.GetRoomsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateRoomResponse> updateRoom($7.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteRoomResponse> deleteRoom($7.DeleteRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($7.GetRoomOverviewsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomOverviewsByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('services.task_svc.v1.RoomService')
abstract class RoomServiceBase extends $grpc.Service {
  $core.String get $name => 'services.task_svc.v1.RoomService';

  RoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateRoomRequest, $7.CreateRoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateRoomRequest.fromBuffer(value),
        ($7.CreateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetRoomRequest, $7.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetRoomRequest.fromBuffer(value),
        ($7.GetRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetRoomsRequest, $7.GetRoomsResponse>(
        'GetRooms',
        getRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetRoomsRequest.fromBuffer(value),
        ($7.GetRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetRoomsByWardRequest, $7.GetRoomsByWardResponse>(
        'GetRoomsByWard',
        getRoomsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetRoomsByWardRequest.fromBuffer(value),
        ($7.GetRoomsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateRoomRequest, $7.UpdateRoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateRoomRequest.fromBuffer(value),
        ($7.UpdateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteRoomRequest, $7.DeleteRoomResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteRoomRequest.fromBuffer(value),
        ($7.DeleteRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetRoomOverviewsByWardRequest, $7.GetRoomOverviewsByWardResponse>(
        'GetRoomOverviewsByWard',
        getRoomOverviewsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetRoomOverviewsByWardRequest.fromBuffer(value),
        ($7.GetRoomOverviewsByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateRoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$7.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$7.GetRoomResponse> getRoom_Pre($grpc.ServiceCall call, $async.Future<$7.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$7.GetRoomsResponse> getRooms_Pre($grpc.ServiceCall call, $async.Future<$7.GetRoomsRequest> request) async {
    return getRooms(call, await request);
  }

  $async.Future<$7.GetRoomsByWardResponse> getRoomsByWard_Pre($grpc.ServiceCall call, $async.Future<$7.GetRoomsByWardRequest> request) async {
    return getRoomsByWard(call, await request);
  }

  $async.Future<$7.UpdateRoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$7.DeleteRoomResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteRoomRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$7.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard_Pre($grpc.ServiceCall call, $async.Future<$7.GetRoomOverviewsByWardRequest> request) async {
    return getRoomOverviewsByWard(call, await request);
  }

  $async.Future<$7.CreateRoomResponse> createRoom($grpc.ServiceCall call, $7.CreateRoomRequest request);
  $async.Future<$7.GetRoomResponse> getRoom($grpc.ServiceCall call, $7.GetRoomRequest request);
  $async.Future<$7.GetRoomsResponse> getRooms($grpc.ServiceCall call, $7.GetRoomsRequest request);
  $async.Future<$7.GetRoomsByWardResponse> getRoomsByWard($grpc.ServiceCall call, $7.GetRoomsByWardRequest request);
  $async.Future<$7.UpdateRoomResponse> updateRoom($grpc.ServiceCall call, $7.UpdateRoomRequest request);
  $async.Future<$7.DeleteRoomResponse> deleteRoom($grpc.ServiceCall call, $7.DeleteRoomRequest request);
  $async.Future<$7.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($grpc.ServiceCall call, $7.GetRoomOverviewsByWardRequest request);
}
