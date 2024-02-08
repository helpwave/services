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

import 'bed_svc.pb.dart' as $6;

export 'bed_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
class BedServiceClient extends $grpc.Client {
  static final _$createBed = $grpc.ClientMethod<$6.CreateBedRequest, $6.CreateBedResponse>(
      '/proto.services.task_svc.v1.BedService/CreateBed',
      ($6.CreateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreateBedResponse.fromBuffer(value));
  static final _$bulkCreateBeds = $grpc.ClientMethod<$6.BulkCreateBedsRequest, $6.BulkCreateBedsResponse>(
      '/proto.services.task_svc.v1.BedService/BulkCreateBeds',
      ($6.BulkCreateBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.BulkCreateBedsResponse.fromBuffer(value));
  static final _$getBed = $grpc.ClientMethod<$6.GetBedRequest, $6.GetBedResponse>(
      '/proto.services.task_svc.v1.BedService/GetBed',
      ($6.GetBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetBedResponse.fromBuffer(value));
  static final _$getBedByPatient = $grpc.ClientMethod<$6.GetBedByPatientRequest, $6.GetBedByPatientResponse>(
      '/proto.services.task_svc.v1.BedService/GetBedByPatient',
      ($6.GetBedByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetBedByPatientResponse.fromBuffer(value));
  static final _$getBeds = $grpc.ClientMethod<$6.GetBedsRequest, $6.GetBedsResponse>(
      '/proto.services.task_svc.v1.BedService/GetBeds',
      ($6.GetBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetBedsResponse.fromBuffer(value));
  static final _$getBedsByRoom = $grpc.ClientMethod<$6.GetBedsByRoomRequest, $6.GetBedsByRoomResponse>(
      '/proto.services.task_svc.v1.BedService/GetBedsByRoom',
      ($6.GetBedsByRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetBedsByRoomResponse.fromBuffer(value));
  static final _$updateBed = $grpc.ClientMethod<$6.UpdateBedRequest, $6.UpdateBedResponse>(
      '/proto.services.task_svc.v1.BedService/UpdateBed',
      ($6.UpdateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdateBedResponse.fromBuffer(value));
  static final _$deleteBed = $grpc.ClientMethod<$6.DeleteBedRequest, $6.DeleteBedResponse>(
      '/proto.services.task_svc.v1.BedService/DeleteBed',
      ($6.DeleteBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeleteBedResponse.fromBuffer(value));

  BedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreateBedResponse> createBed($6.CreateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBed, request, options: options);
  }

  $grpc.ResponseFuture<$6.BulkCreateBedsResponse> bulkCreateBeds($6.BulkCreateBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkCreateBeds, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetBedResponse> getBed($6.GetBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBed, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetBedByPatientResponse> getBedByPatient($6.GetBedByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetBedsResponse> getBeds($6.GetBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBeds, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetBedsByRoomResponse> getBedsByRoom($6.GetBedsByRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedsByRoom, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdateBedResponse> updateBed($6.UpdateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBed, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeleteBedResponse> deleteBed($6.DeleteBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBed, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
abstract class BedServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.BedService';

  BedServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateBedRequest, $6.CreateBedResponse>(
        'CreateBed',
        createBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateBedRequest.fromBuffer(value),
        ($6.CreateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.BulkCreateBedsRequest, $6.BulkCreateBedsResponse>(
        'BulkCreateBeds',
        bulkCreateBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.BulkCreateBedsRequest.fromBuffer(value),
        ($6.BulkCreateBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetBedRequest, $6.GetBedResponse>(
        'GetBed',
        getBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetBedRequest.fromBuffer(value),
        ($6.GetBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetBedByPatientRequest, $6.GetBedByPatientResponse>(
        'GetBedByPatient',
        getBedByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetBedByPatientRequest.fromBuffer(value),
        ($6.GetBedByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetBedsRequest, $6.GetBedsResponse>(
        'GetBeds',
        getBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetBedsRequest.fromBuffer(value),
        ($6.GetBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetBedsByRoomRequest, $6.GetBedsByRoomResponse>(
        'GetBedsByRoom',
        getBedsByRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetBedsByRoomRequest.fromBuffer(value),
        ($6.GetBedsByRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateBedRequest, $6.UpdateBedResponse>(
        'UpdateBed',
        updateBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateBedRequest.fromBuffer(value),
        ($6.UpdateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteBedRequest, $6.DeleteBedResponse>(
        'DeleteBed',
        deleteBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteBedRequest.fromBuffer(value),
        ($6.DeleteBedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreateBedResponse> createBed_Pre($grpc.ServiceCall call, $async.Future<$6.CreateBedRequest> request) async {
    return createBed(call, await request);
  }

  $async.Future<$6.BulkCreateBedsResponse> bulkCreateBeds_Pre($grpc.ServiceCall call, $async.Future<$6.BulkCreateBedsRequest> request) async {
    return bulkCreateBeds(call, await request);
  }

  $async.Future<$6.GetBedResponse> getBed_Pre($grpc.ServiceCall call, $async.Future<$6.GetBedRequest> request) async {
    return getBed(call, await request);
  }

  $async.Future<$6.GetBedByPatientResponse> getBedByPatient_Pre($grpc.ServiceCall call, $async.Future<$6.GetBedByPatientRequest> request) async {
    return getBedByPatient(call, await request);
  }

  $async.Future<$6.GetBedsResponse> getBeds_Pre($grpc.ServiceCall call, $async.Future<$6.GetBedsRequest> request) async {
    return getBeds(call, await request);
  }

  $async.Future<$6.GetBedsByRoomResponse> getBedsByRoom_Pre($grpc.ServiceCall call, $async.Future<$6.GetBedsByRoomRequest> request) async {
    return getBedsByRoom(call, await request);
  }

  $async.Future<$6.UpdateBedResponse> updateBed_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateBedRequest> request) async {
    return updateBed(call, await request);
  }

  $async.Future<$6.DeleteBedResponse> deleteBed_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteBedRequest> request) async {
    return deleteBed(call, await request);
  }

  $async.Future<$6.CreateBedResponse> createBed($grpc.ServiceCall call, $6.CreateBedRequest request);
  $async.Future<$6.BulkCreateBedsResponse> bulkCreateBeds($grpc.ServiceCall call, $6.BulkCreateBedsRequest request);
  $async.Future<$6.GetBedResponse> getBed($grpc.ServiceCall call, $6.GetBedRequest request);
  $async.Future<$6.GetBedByPatientResponse> getBedByPatient($grpc.ServiceCall call, $6.GetBedByPatientRequest request);
  $async.Future<$6.GetBedsResponse> getBeds($grpc.ServiceCall call, $6.GetBedsRequest request);
  $async.Future<$6.GetBedsByRoomResponse> getBedsByRoom($grpc.ServiceCall call, $6.GetBedsByRoomRequest request);
  $async.Future<$6.UpdateBedResponse> updateBed($grpc.ServiceCall call, $6.UpdateBedRequest request);
  $async.Future<$6.DeleteBedResponse> deleteBed($grpc.ServiceCall call, $6.DeleteBedRequest request);
}
