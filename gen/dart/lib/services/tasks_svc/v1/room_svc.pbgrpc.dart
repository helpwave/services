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

import 'room_svc.pb.dart' as $2;

export 'room_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.RoomService')
class RoomServiceClient extends $grpc.Client {
  static final _$createRoom = $grpc.ClientMethod<$2.CreateRoomRequest, $2.CreateRoomResponse>(
      '/services.tasks_svc.v1.RoomService/CreateRoom',
      ($2.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateRoomResponse.fromBuffer(value));
  static final _$getRoom = $grpc.ClientMethod<$2.GetRoomRequest, $2.GetRoomResponse>(
      '/services.tasks_svc.v1.RoomService/GetRoom',
      ($2.GetRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetRoomResponse.fromBuffer(value));
  static final _$getRooms = $grpc.ClientMethod<$2.GetRoomsRequest, $2.GetRoomsResponse>(
      '/services.tasks_svc.v1.RoomService/GetRooms',
      ($2.GetRoomsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetRoomsResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$2.UpdateRoomRequest, $2.UpdateRoomResponse>(
      '/services.tasks_svc.v1.RoomService/UpdateRoom',
      ($2.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateRoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$2.DeleteRoomRequest, $2.DeleteRoomResponse>(
      '/services.tasks_svc.v1.RoomService/DeleteRoom',
      ($2.DeleteRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteRoomResponse.fromBuffer(value));
  static final _$getRoomOverviewsByWard = $grpc.ClientMethod<$2.GetRoomOverviewsByWardRequest, $2.GetRoomOverviewsByWardResponse>(
      '/services.tasks_svc.v1.RoomService/GetRoomOverviewsByWard',
      ($2.GetRoomOverviewsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetRoomOverviewsByWardResponse.fromBuffer(value));

  RoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateRoomResponse> createRoom($2.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetRoomResponse> getRoom($2.GetRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetRoomsResponse> getRooms($2.GetRoomsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRooms, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateRoomResponse> updateRoom($2.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteRoomResponse> deleteRoom($2.DeleteRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($2.GetRoomOverviewsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomOverviewsByWard, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.RoomService')
abstract class RoomServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.RoomService';

  RoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateRoomRequest, $2.CreateRoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateRoomRequest.fromBuffer(value),
        ($2.CreateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetRoomRequest, $2.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetRoomRequest.fromBuffer(value),
        ($2.GetRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetRoomsRequest, $2.GetRoomsResponse>(
        'GetRooms',
        getRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetRoomsRequest.fromBuffer(value),
        ($2.GetRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateRoomRequest, $2.UpdateRoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateRoomRequest.fromBuffer(value),
        ($2.UpdateRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteRoomRequest, $2.DeleteRoomResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteRoomRequest.fromBuffer(value),
        ($2.DeleteRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetRoomOverviewsByWardRequest, $2.GetRoomOverviewsByWardResponse>(
        'GetRoomOverviewsByWard',
        getRoomOverviewsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetRoomOverviewsByWardRequest.fromBuffer(value),
        ($2.GetRoomOverviewsByWardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateRoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$2.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$2.GetRoomResponse> getRoom_Pre($grpc.ServiceCall call, $async.Future<$2.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$2.GetRoomsResponse> getRooms_Pre($grpc.ServiceCall call, $async.Future<$2.GetRoomsRequest> request) async {
    return getRooms(call, await request);
  }

  $async.Future<$2.UpdateRoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$2.DeleteRoomResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteRoomRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$2.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard_Pre($grpc.ServiceCall call, $async.Future<$2.GetRoomOverviewsByWardRequest> request) async {
    return getRoomOverviewsByWard(call, await request);
  }

  $async.Future<$2.CreateRoomResponse> createRoom($grpc.ServiceCall call, $2.CreateRoomRequest request);
  $async.Future<$2.GetRoomResponse> getRoom($grpc.ServiceCall call, $2.GetRoomRequest request);
  $async.Future<$2.GetRoomsResponse> getRooms($grpc.ServiceCall call, $2.GetRoomsRequest request);
  $async.Future<$2.UpdateRoomResponse> updateRoom($grpc.ServiceCall call, $2.UpdateRoomRequest request);
  $async.Future<$2.DeleteRoomResponse> deleteRoom($grpc.ServiceCall call, $2.DeleteRoomRequest request);
  $async.Future<$2.GetRoomOverviewsByWardResponse> getRoomOverviewsByWard($grpc.ServiceCall call, $2.GetRoomOverviewsByWardRequest request);
}
