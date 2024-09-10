//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/room_svc.proto
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

import 'room_svc.pb.dart' as $14;

export 'room_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.RoomService')
class RoomServiceClient extends $grpc.Client {
  static final _$createRoom = $grpc.ClientMethod<$14.CreateRoomRequest, $14.CreateRoomResponse>(
      '/services.tasks_svc.v1.RoomService/CreateRoom',
      ($14.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.CreateRoomResponse.fromBuffer(value));
  static final _$getRoom = $grpc.ClientMethod<$14.GetRoomRequest, $14.GetRoomResponse>(
      '/services.tasks_svc.v1.RoomService/GetRoom',
      ($14.GetRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetRoomResponse.fromBuffer(value));
  static final _$getRooms = $grpc.ClientMethod<$14.GetRoomsRequest, $14.GetRoomsResponse>(
      '/services.tasks_svc.v1.RoomService/GetRooms',
      ($14.GetRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetRoomsResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$14.UpdateRoomRequest, $14.UpdateRoomResponse>(
      '/services.tasks_svc.v1.RoomService/UpdateRoom',
      ($14.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UpdateRoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$14.DeleteRoomRequest, $14.DeleteRoomResponse>(
      '/services.tasks_svc.v1.RoomService/DeleteRoom',
      ($14.DeleteRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.DeleteRoomResponse.fromBuffer(value));
  static final _$getRoomOverviewsByWard = $grpc.ClientMethod<$14.GetRoomOverviewsByWardRequest, $14.GetRoomOverviewsByWardResponse>(
      '/services.tasks_svc.v1.RoomService/GetRoomOverviewsByWard',
      ($14.GetRoomOverviewsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.GetRoomOverviewsByWardResponse.fromBuffer(value));

  RoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.CreateRoomResponse> createRoom($14.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetRoomResponse> getRoom($14.GetRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetRoomsResponse> getRooms($14.GetRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRooms, request, options: options);
  }

  $grpc.ResponseFuture<$14.UpdateRoomResponse> updateRoom($14.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$14.DeleteRoomResponse> deleteRoom($14.DeleteRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$14.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($14.GetRoomOverviewsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomOverviewsByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.RoomService')
abstract class RoomServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.RoomService';

  RoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.CreateRoomRequest, $14.CreateRoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.CreateRoomRequest.fromBuffer(value),
        ($14.CreateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetRoomRequest, $14.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetRoomRequest.fromBuffer(value),
        ($14.GetRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetRoomsRequest, $14.GetRoomsResponse>(
        'GetRooms',
        getRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetRoomsRequest.fromBuffer(value),
        ($14.GetRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UpdateRoomRequest, $14.UpdateRoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UpdateRoomRequest.fromBuffer(value),
        ($14.UpdateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.DeleteRoomRequest, $14.DeleteRoomResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.DeleteRoomRequest.fromBuffer(value),
        ($14.DeleteRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.GetRoomOverviewsByWardRequest, $14.GetRoomOverviewsByWardResponse>(
        'GetRoomOverviewsByWard',
        getRoomOverviewsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.GetRoomOverviewsByWardRequest.fromBuffer(value),
        ($14.GetRoomOverviewsByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.CreateRoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$14.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$14.GetRoomResponse> getRoom_Pre($grpc.ServiceCall call, $async.Future<$14.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$14.GetRoomsResponse> getRooms_Pre($grpc.ServiceCall call, $async.Future<$14.GetRoomsRequest> request) async {
    return getRooms(call, await request);
  }

  $async.Future<$14.UpdateRoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$14.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$14.DeleteRoomResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$14.DeleteRoomRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$14.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard_Pre($grpc.ServiceCall call, $async.Future<$14.GetRoomOverviewsByWardRequest> request) async {
    return getRoomOverviewsByWard(call, await request);
  }

  $async.Future<$14.CreateRoomResponse> createRoom($grpc.ServiceCall call, $14.CreateRoomRequest request);
  $async.Future<$14.GetRoomResponse> getRoom($grpc.ServiceCall call, $14.GetRoomRequest request);
  $async.Future<$14.GetRoomsResponse> getRooms($grpc.ServiceCall call, $14.GetRoomsRequest request);
  $async.Future<$14.UpdateRoomResponse> updateRoom($grpc.ServiceCall call, $14.UpdateRoomRequest request);
  $async.Future<$14.DeleteRoomResponse> deleteRoom($grpc.ServiceCall call, $14.DeleteRoomRequest request);
  $async.Future<$14.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($grpc.ServiceCall call, $14.GetRoomOverviewsByWardRequest request);
}
