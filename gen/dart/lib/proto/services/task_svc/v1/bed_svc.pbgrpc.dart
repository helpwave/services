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

import 'bed_svc.pb.dart' as $3;

export 'bed_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
class BedServiceClient extends $grpc.Client {
  static final _$createBed = $grpc.ClientMethod<$3.CreateBedRequest, $3.CreateBedResponse>(
      '/proto.services.task_svc.v1.BedService/CreateBed',
      ($3.CreateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreateBedResponse.fromBuffer(value));
  static final _$bulkCreateBeds = $grpc.ClientMethod<$3.BulkCreateBedsRequest, $3.BulkCreateBedsResponse>(
      '/proto.services.task_svc.v1.BedService/BulkCreateBeds',
      ($3.BulkCreateBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BulkCreateBedsResponse.fromBuffer(value));
  static final _$getBed = $grpc.ClientMethod<$3.GetBedRequest, $3.GetBedResponse>(
      '/proto.services.task_svc.v1.BedService/GetBed',
      ($3.GetBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetBedResponse.fromBuffer(value));
  static final _$getBedByPatient = $grpc.ClientMethod<$3.GetBedByPatientRequest, $3.GetBedByPatientResponse>(
      '/proto.services.task_svc.v1.BedService/GetBedByPatient',
      ($3.GetBedByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetBedByPatientResponse.fromBuffer(value));
  static final _$getBeds = $grpc.ClientMethod<$3.GetBedsRequest, $3.GetBedsResponse>(
      '/proto.services.task_svc.v1.BedService/GetBeds',
      ($3.GetBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetBedsResponse.fromBuffer(value));
  static final _$getBedsByRoom = $grpc.ClientMethod<$3.GetBedsByRoomRequest, $3.GetBedsByRoomResponse>(
      '/proto.services.task_svc.v1.BedService/GetBedsByRoom',
      ($3.GetBedsByRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetBedsByRoomResponse.fromBuffer(value));
  static final _$updateBed = $grpc.ClientMethod<$3.UpdateBedRequest, $3.UpdateBedResponse>(
      '/proto.services.task_svc.v1.BedService/UpdateBed',
      ($3.UpdateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateBedResponse.fromBuffer(value));
  static final _$deleteBed = $grpc.ClientMethod<$3.DeleteBedRequest, $3.DeleteBedResponse>(
      '/proto.services.task_svc.v1.BedService/DeleteBed',
      ($3.DeleteBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeleteBedResponse.fromBuffer(value));

  BedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreateBedResponse> createBed($3.CreateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBed, request, options: options);
  }

  $grpc.ResponseFuture<$3.BulkCreateBedsResponse> bulkCreateBeds($3.BulkCreateBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkCreateBeds, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetBedResponse> getBed($3.GetBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBed, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetBedByPatientResponse> getBedByPatient($3.GetBedByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetBedsResponse> getBeds($3.GetBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBeds, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetBedsByRoomResponse> getBedsByRoom($3.GetBedsByRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedsByRoom, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdateBedResponse> updateBed($3.UpdateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBed, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeleteBedResponse> deleteBed($3.DeleteBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBed, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
abstract class BedServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.BedService';

  BedServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateBedRequest, $3.CreateBedResponse>(
        'CreateBed',
        createBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateBedRequest.fromBuffer(value),
        ($3.CreateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.BulkCreateBedsRequest, $3.BulkCreateBedsResponse>(
        'BulkCreateBeds',
        bulkCreateBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.BulkCreateBedsRequest.fromBuffer(value),
        ($3.BulkCreateBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetBedRequest, $3.GetBedResponse>(
        'GetBed',
        getBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetBedRequest.fromBuffer(value),
        ($3.GetBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetBedByPatientRequest, $3.GetBedByPatientResponse>(
        'GetBedByPatient',
        getBedByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetBedByPatientRequest.fromBuffer(value),
        ($3.GetBedByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetBedsRequest, $3.GetBedsResponse>(
        'GetBeds',
        getBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetBedsRequest.fromBuffer(value),
        ($3.GetBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetBedsByRoomRequest, $3.GetBedsByRoomResponse>(
        'GetBedsByRoom',
        getBedsByRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetBedsByRoomRequest.fromBuffer(value),
        ($3.GetBedsByRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateBedRequest, $3.UpdateBedResponse>(
        'UpdateBed',
        updateBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateBedRequest.fromBuffer(value),
        ($3.UpdateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteBedRequest, $3.DeleteBedResponse>(
        'DeleteBed',
        deleteBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteBedRequest.fromBuffer(value),
        ($3.DeleteBedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreateBedResponse> createBed_Pre($grpc.ServiceCall call, $async.Future<$3.CreateBedRequest> request) async {
    return createBed(call, await request);
  }

  $async.Future<$3.BulkCreateBedsResponse> bulkCreateBeds_Pre($grpc.ServiceCall call, $async.Future<$3.BulkCreateBedsRequest> request) async {
    return bulkCreateBeds(call, await request);
  }

  $async.Future<$3.GetBedResponse> getBed_Pre($grpc.ServiceCall call, $async.Future<$3.GetBedRequest> request) async {
    return getBed(call, await request);
  }

  $async.Future<$3.GetBedByPatientResponse> getBedByPatient_Pre($grpc.ServiceCall call, $async.Future<$3.GetBedByPatientRequest> request) async {
    return getBedByPatient(call, await request);
  }

  $async.Future<$3.GetBedsResponse> getBeds_Pre($grpc.ServiceCall call, $async.Future<$3.GetBedsRequest> request) async {
    return getBeds(call, await request);
  }

  $async.Future<$3.GetBedsByRoomResponse> getBedsByRoom_Pre($grpc.ServiceCall call, $async.Future<$3.GetBedsByRoomRequest> request) async {
    return getBedsByRoom(call, await request);
  }

  $async.Future<$3.UpdateBedResponse> updateBed_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateBedRequest> request) async {
    return updateBed(call, await request);
  }

  $async.Future<$3.DeleteBedResponse> deleteBed_Pre($grpc.ServiceCall call, $async.Future<$3.DeleteBedRequest> request) async {
    return deleteBed(call, await request);
  }

  $async.Future<$3.CreateBedResponse> createBed($grpc.ServiceCall call, $3.CreateBedRequest request);
  $async.Future<$3.BulkCreateBedsResponse> bulkCreateBeds($grpc.ServiceCall call, $3.BulkCreateBedsRequest request);
  $async.Future<$3.GetBedResponse> getBed($grpc.ServiceCall call, $3.GetBedRequest request);
  $async.Future<$3.GetBedByPatientResponse> getBedByPatient($grpc.ServiceCall call, $3.GetBedByPatientRequest request);
  $async.Future<$3.GetBedsResponse> getBeds($grpc.ServiceCall call, $3.GetBedsRequest request);
  $async.Future<$3.GetBedsByRoomResponse> getBedsByRoom($grpc.ServiceCall call, $3.GetBedsByRoomRequest request);
  $async.Future<$3.UpdateBedResponse> updateBed($grpc.ServiceCall call, $3.UpdateBedRequest request);
  $async.Future<$3.DeleteBedResponse> deleteBed($grpc.ServiceCall call, $3.DeleteBedRequest request);
}
