//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/bed_svc.proto
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

import 'bed_svc.pb.dart' as $2;

export 'bed_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
class BedServiceClient extends $grpc.Client {
  static final _$createBed = $grpc.ClientMethod<$2.CreateBedRequest, $2.CreateBedResponse>(
      '/proto.services.task_svc.v1.BedService/CreateBed',
      ($2.CreateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.CreateBedResponse.fromBuffer(value));
  static final _$bulkCreateBeds = $grpc.ClientMethod<$2.BulkCreateBedsRequest, $2.BulkCreateBedsResponse>(
      '/proto.services.task_svc.v1.BedService/BulkCreateBeds',
      ($2.BulkCreateBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.BulkCreateBedsResponse.fromBuffer(value));
  static final _$getBed = $grpc.ClientMethod<$2.GetBedRequest, $2.GetBedResponse>(
      '/proto.services.task_svc.v1.BedService/GetBed',
      ($2.GetBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetBedResponse.fromBuffer(value));
  static final _$getBeds = $grpc.ClientMethod<$2.GetBedsRequest, $2.GetBedsResponse>(
      '/proto.services.task_svc.v1.BedService/GetBeds',
      ($2.GetBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetBedsResponse.fromBuffer(value));
  static final _$getBedsByRoom = $grpc.ClientMethod<$2.GetBedsByRoomRequest, $2.GetBedsByRoomResponse>(
      '/proto.services.task_svc.v1.BedService/GetBedsByRoom',
      ($2.GetBedsByRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetBedsByRoomResponse.fromBuffer(value));
  static final _$updateBed = $grpc.ClientMethod<$2.UpdateBedRequest, $2.UpdateBedResponse>(
      '/proto.services.task_svc.v1.BedService/UpdateBed',
      ($2.UpdateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateBedResponse.fromBuffer(value));
  static final _$deleteBed = $grpc.ClientMethod<$2.DeleteBedRequest, $2.DeleteBedResponse>(
      '/proto.services.task_svc.v1.BedService/DeleteBed',
      ($2.DeleteBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeleteBedResponse.fromBuffer(value));

  BedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateBedResponse> createBed($2.CreateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBed, request, options: options);
  }

  $grpc.ResponseFuture<$2.BulkCreateBedsResponse> bulkCreateBeds($2.BulkCreateBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkCreateBeds, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetBedResponse> getBed($2.GetBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBed, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetBedsResponse> getBeds($2.GetBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBeds, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetBedsByRoomResponse> getBedsByRoom($2.GetBedsByRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedsByRoom, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateBedResponse> updateBed($2.UpdateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBed, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeleteBedResponse> deleteBed($2.DeleteBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBed, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
abstract class BedServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.BedService';

  BedServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateBedRequest, $2.CreateBedResponse>(
        'CreateBed',
        createBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateBedRequest.fromBuffer(value),
        ($2.CreateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BulkCreateBedsRequest, $2.BulkCreateBedsResponse>(
        'BulkCreateBeds',
        bulkCreateBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.BulkCreateBedsRequest.fromBuffer(value),
        ($2.BulkCreateBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetBedRequest, $2.GetBedResponse>(
        'GetBed',
        getBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetBedRequest.fromBuffer(value),
        ($2.GetBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetBedsRequest, $2.GetBedsResponse>(
        'GetBeds',
        getBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetBedsRequest.fromBuffer(value),
        ($2.GetBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetBedsByRoomRequest, $2.GetBedsByRoomResponse>(
        'GetBedsByRoom',
        getBedsByRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetBedsByRoomRequest.fromBuffer(value),
        ($2.GetBedsByRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateBedRequest, $2.UpdateBedResponse>(
        'UpdateBed',
        updateBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateBedRequest.fromBuffer(value),
        ($2.UpdateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteBedRequest, $2.DeleteBedResponse>(
        'DeleteBed',
        deleteBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteBedRequest.fromBuffer(value),
        ($2.DeleteBedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateBedResponse> createBed_Pre($grpc.ServiceCall call, $async.Future<$2.CreateBedRequest> request) async {
    return createBed(call, await request);
  }

  $async.Future<$2.BulkCreateBedsResponse> bulkCreateBeds_Pre($grpc.ServiceCall call, $async.Future<$2.BulkCreateBedsRequest> request) async {
    return bulkCreateBeds(call, await request);
  }

  $async.Future<$2.GetBedResponse> getBed_Pre($grpc.ServiceCall call, $async.Future<$2.GetBedRequest> request) async {
    return getBed(call, await request);
  }

  $async.Future<$2.GetBedsResponse> getBeds_Pre($grpc.ServiceCall call, $async.Future<$2.GetBedsRequest> request) async {
    return getBeds(call, await request);
  }

  $async.Future<$2.GetBedsByRoomResponse> getBedsByRoom_Pre($grpc.ServiceCall call, $async.Future<$2.GetBedsByRoomRequest> request) async {
    return getBedsByRoom(call, await request);
  }

  $async.Future<$2.UpdateBedResponse> updateBed_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateBedRequest> request) async {
    return updateBed(call, await request);
  }

  $async.Future<$2.DeleteBedResponse> deleteBed_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteBedRequest> request) async {
    return deleteBed(call, await request);
  }

  $async.Future<$2.CreateBedResponse> createBed($grpc.ServiceCall call, $2.CreateBedRequest request);
  $async.Future<$2.BulkCreateBedsResponse> bulkCreateBeds($grpc.ServiceCall call, $2.BulkCreateBedsRequest request);
  $async.Future<$2.GetBedResponse> getBed($grpc.ServiceCall call, $2.GetBedRequest request);
  $async.Future<$2.GetBedsResponse> getBeds($grpc.ServiceCall call, $2.GetBedsRequest request);
  $async.Future<$2.GetBedsByRoomResponse> getBedsByRoom($grpc.ServiceCall call, $2.GetBedsByRoomRequest request);
  $async.Future<$2.UpdateBedResponse> updateBed($grpc.ServiceCall call, $2.UpdateBedRequest request);
  $async.Future<$2.DeleteBedResponse> deleteBed($grpc.ServiceCall call, $2.DeleteBedRequest request);
}
