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

import 'room_svc.pb.dart' as $13;

export 'room_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.RoomService')
class RoomServiceClient extends $grpc.Client {
  static final _$createRoom = $grpc.ClientMethod<$13.CreateRoomRequest, $13.CreateRoomResponse>(
      '/services.tasks_svc.v1.RoomService/CreateRoom',
      ($13.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreateRoomResponse.fromBuffer(value));
  static final _$getRoom = $grpc.ClientMethod<$13.GetRoomRequest, $13.GetRoomResponse>(
      '/services.tasks_svc.v1.RoomService/GetRoom',
      ($13.GetRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetRoomResponse.fromBuffer(value));
  static final _$getRooms = $grpc.ClientMethod<$13.GetRoomsRequest, $13.GetRoomsResponse>(
      '/services.tasks_svc.v1.RoomService/GetRooms',
      ($13.GetRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetRoomsResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$13.UpdateRoomRequest, $13.UpdateRoomResponse>(
      '/services.tasks_svc.v1.RoomService/UpdateRoom',
      ($13.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdateRoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$13.DeleteRoomRequest, $13.DeleteRoomResponse>(
      '/services.tasks_svc.v1.RoomService/DeleteRoom',
      ($13.DeleteRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeleteRoomResponse.fromBuffer(value));
  static final _$getRoomOverviewsByWard = $grpc.ClientMethod<$13.GetRoomOverviewsByWardRequest, $13.GetRoomOverviewsByWardResponse>(
      '/services.tasks_svc.v1.RoomService/GetRoomOverviewsByWard',
      ($13.GetRoomOverviewsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetRoomOverviewsByWardResponse.fromBuffer(value));

  RoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateRoomResponse> createRoom($13.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetRoomResponse> getRoom($13.GetRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetRoomsResponse> getRooms($13.GetRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRooms, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdateRoomResponse> updateRoom($13.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeleteRoomResponse> deleteRoom($13.DeleteRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($13.GetRoomOverviewsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomOverviewsByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.RoomService')
abstract class RoomServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.RoomService';

  RoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateRoomRequest, $13.CreateRoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreateRoomRequest.fromBuffer(value),
        ($13.CreateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetRoomRequest, $13.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetRoomRequest.fromBuffer(value),
        ($13.GetRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetRoomsRequest, $13.GetRoomsResponse>(
        'GetRooms',
        getRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetRoomsRequest.fromBuffer(value),
        ($13.GetRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdateRoomRequest, $13.UpdateRoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdateRoomRequest.fromBuffer(value),
        ($13.UpdateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeleteRoomRequest, $13.DeleteRoomResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeleteRoomRequest.fromBuffer(value),
        ($13.DeleteRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetRoomOverviewsByWardRequest, $13.GetRoomOverviewsByWardResponse>(
        'GetRoomOverviewsByWard',
        getRoomOverviewsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetRoomOverviewsByWardRequest.fromBuffer(value),
        ($13.GetRoomOverviewsByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateRoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$13.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$13.GetRoomResponse> getRoom_Pre($grpc.ServiceCall call, $async.Future<$13.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$13.GetRoomsResponse> getRooms_Pre($grpc.ServiceCall call, $async.Future<$13.GetRoomsRequest> request) async {
    return getRooms(call, await request);
  }

  $async.Future<$13.UpdateRoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$13.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$13.DeleteRoomResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$13.DeleteRoomRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$13.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard_Pre($grpc.ServiceCall call, $async.Future<$13.GetRoomOverviewsByWardRequest> request) async {
    return getRoomOverviewsByWard(call, await request);
  }

  $async.Future<$13.CreateRoomResponse> createRoom($grpc.ServiceCall call, $13.CreateRoomRequest request);
  $async.Future<$13.GetRoomResponse> getRoom($grpc.ServiceCall call, $13.GetRoomRequest request);
  $async.Future<$13.GetRoomsResponse> getRooms($grpc.ServiceCall call, $13.GetRoomsRequest request);
  $async.Future<$13.UpdateRoomResponse> updateRoom($grpc.ServiceCall call, $13.UpdateRoomRequest request);
  $async.Future<$13.DeleteRoomResponse> deleteRoom($grpc.ServiceCall call, $13.DeleteRoomRequest request);
  $async.Future<$13.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($grpc.ServiceCall call, $13.GetRoomOverviewsByWardRequest request);
}
