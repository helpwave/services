//
//  Generated code. Do not modify.
//  source: proto/services/emergency_room_svc/v1/emergency_room_svc.proto
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

import 'emergency_room_svc.pb.dart' as $1;

export 'emergency_room_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.emergency_room_svc.v1.EmergencyRoomService')
class EmergencyRoomServiceClient extends $grpc.Client {
  static final _$createER = $grpc.ClientMethod<$1.CreateERRequest, $1.CreateERResponse>(
      '/proto.services.emergency_room_svc.v1.EmergencyRoomService/CreateER',
      ($1.CreateERRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CreateERResponse.fromBuffer(value));
  static final _$getER = $grpc.ClientMethod<$1.GetERRequest, $1.GetERResponse>(
      '/proto.services.emergency_room_svc.v1.EmergencyRoomService/GetER',
      ($1.GetERRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetERResponse.fromBuffer(value));
  static final _$getERs = $grpc.ClientMethod<$1.GetERsRequest, $1.GetERsResponse>(
      '/proto.services.emergency_room_svc.v1.EmergencyRoomService/GetERs',
      ($1.GetERsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetERsResponse.fromBuffer(value));
  static final _$updateER = $grpc.ClientMethod<$1.UpdateERRequest, $1.UpdateERResponse>(
      '/proto.services.emergency_room_svc.v1.EmergencyRoomService/UpdateER',
      ($1.UpdateERRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateERResponse.fromBuffer(value));
  static final _$addDepartmentsToER = $grpc.ClientMethod<$1.AddDepartmentsToERRequest, $1.AddDepartmentsToERResponse>(
      '/proto.services.emergency_room_svc.v1.EmergencyRoomService/AddDepartmentsToER',
      ($1.AddDepartmentsToERRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AddDepartmentsToERResponse.fromBuffer(value));
  static final _$removeDepartmentsFromER = $grpc.ClientMethod<$1.RemoveDepartmentsFromERRequest, $1.RemoveDepartmentsFromERResponse>(
      '/proto.services.emergency_room_svc.v1.EmergencyRoomService/RemoveDepartmentsFromER',
      ($1.RemoveDepartmentsFromERRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RemoveDepartmentsFromERResponse.fromBuffer(value));
  static final _$deleteER = $grpc.ClientMethod<$1.DeleteERRequest, $1.DeleteERResponse>(
      '/proto.services.emergency_room_svc.v1.EmergencyRoomService/DeleteER',
      ($1.DeleteERRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeleteERResponse.fromBuffer(value));

  EmergencyRoomServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreateERResponse> createER($1.CreateERRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createER, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetERResponse> getER($1.GetERRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getER, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetERsResponse> getERs($1.GetERsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getERs, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateERResponse> updateER($1.UpdateERRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateER, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddDepartmentsToERResponse> addDepartmentsToER($1.AddDepartmentsToERRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addDepartmentsToER, request, options: options);
  }

  $grpc.ResponseFuture<$1.RemoveDepartmentsFromERResponse> removeDepartmentsFromER($1.RemoveDepartmentsFromERRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeDepartmentsFromER, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteERResponse> deleteER($1.DeleteERRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteER, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.emergency_room_svc.v1.EmergencyRoomService')
abstract class EmergencyRoomServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.emergency_room_svc.v1.EmergencyRoomService';

  EmergencyRoomServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreateERRequest, $1.CreateERResponse>(
        'CreateER',
        createER_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreateERRequest.fromBuffer(value),
        ($1.CreateERResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetERRequest, $1.GetERResponse>(
        'GetER',
        getER_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetERRequest.fromBuffer(value),
        ($1.GetERResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetERsRequest, $1.GetERsResponse>(
        'GetERs',
        getERs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetERsRequest.fromBuffer(value),
        ($1.GetERsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateERRequest, $1.UpdateERResponse>(
        'UpdateER',
        updateER_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateERRequest.fromBuffer(value),
        ($1.UpdateERResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddDepartmentsToERRequest, $1.AddDepartmentsToERResponse>(
        'AddDepartmentsToER',
        addDepartmentsToER_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddDepartmentsToERRequest.fromBuffer(value),
        ($1.AddDepartmentsToERResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RemoveDepartmentsFromERRequest, $1.RemoveDepartmentsFromERResponse>(
        'RemoveDepartmentsFromER',
        removeDepartmentsFromER_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RemoveDepartmentsFromERRequest.fromBuffer(value),
        ($1.RemoveDepartmentsFromERResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteERRequest, $1.DeleteERResponse>(
        'DeleteER',
        deleteER_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteERRequest.fromBuffer(value),
        ($1.DeleteERResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreateERResponse> createER_Pre($grpc.ServiceCall call, $async.Future<$1.CreateERRequest> request) async {
    return createER(call, await request);
  }

  $async.Future<$1.GetERResponse> getER_Pre($grpc.ServiceCall call, $async.Future<$1.GetERRequest> request) async {
    return getER(call, await request);
  }

  $async.Future<$1.GetERsResponse> getERs_Pre($grpc.ServiceCall call, $async.Future<$1.GetERsRequest> request) async {
    return getERs(call, await request);
  }

  $async.Future<$1.UpdateERResponse> updateER_Pre($grpc.ServiceCall call, $async.Future<$1.UpdateERRequest> request) async {
    return updateER(call, await request);
  }

  $async.Future<$1.AddDepartmentsToERResponse> addDepartmentsToER_Pre($grpc.ServiceCall call, $async.Future<$1.AddDepartmentsToERRequest> request) async {
    return addDepartmentsToER(call, await request);
  }

  $async.Future<$1.RemoveDepartmentsFromERResponse> removeDepartmentsFromER_Pre($grpc.ServiceCall call, $async.Future<$1.RemoveDepartmentsFromERRequest> request) async {
    return removeDepartmentsFromER(call, await request);
  }

  $async.Future<$1.DeleteERResponse> deleteER_Pre($grpc.ServiceCall call, $async.Future<$1.DeleteERRequest> request) async {
    return deleteER(call, await request);
  }

  $async.Future<$1.CreateERResponse> createER($grpc.ServiceCall call, $1.CreateERRequest request);
  $async.Future<$1.GetERResponse> getER($grpc.ServiceCall call, $1.GetERRequest request);
  $async.Future<$1.GetERsResponse> getERs($grpc.ServiceCall call, $1.GetERsRequest request);
  $async.Future<$1.UpdateERResponse> updateER($grpc.ServiceCall call, $1.UpdateERRequest request);
  $async.Future<$1.AddDepartmentsToERResponse> addDepartmentsToER($grpc.ServiceCall call, $1.AddDepartmentsToERRequest request);
  $async.Future<$1.RemoveDepartmentsFromERResponse> removeDepartmentsFromER($grpc.ServiceCall call, $1.RemoveDepartmentsFromERRequest request);
  $async.Future<$1.DeleteERResponse> deleteER($grpc.ServiceCall call, $1.DeleteERRequest request);
}
