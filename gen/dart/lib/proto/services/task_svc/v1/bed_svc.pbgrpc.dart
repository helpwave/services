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

import 'bed_svc.pb.dart' as $4;

export 'bed_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
class BedServiceClient extends $grpc.Client {
  static final _$createBed = $grpc.ClientMethod<$4.CreateBedRequest, $4.CreateBedResponse>(
      '/proto.services.task_svc.v1.BedService/CreateBed',
      ($4.CreateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreateBedResponse.fromBuffer(value));
  static final _$bulkCreateBeds = $grpc.ClientMethod<$4.BulkCreateBedsRequest, $4.BulkCreateBedsResponse>(
      '/proto.services.task_svc.v1.BedService/BulkCreateBeds',
      ($4.BulkCreateBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.BulkCreateBedsResponse.fromBuffer(value));
  static final _$getBed = $grpc.ClientMethod<$4.GetBedRequest, $4.GetBedResponse>(
      '/proto.services.task_svc.v1.BedService/GetBed',
      ($4.GetBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetBedResponse.fromBuffer(value));
  static final _$getBedByPatient = $grpc.ClientMethod<$4.GetBedByPatientRequest, $4.GetBedByPatientResponse>(
      '/proto.services.task_svc.v1.BedService/GetBedByPatient',
      ($4.GetBedByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetBedByPatientResponse.fromBuffer(value));
  static final _$getBeds = $grpc.ClientMethod<$4.GetBedsRequest, $4.GetBedsResponse>(
      '/proto.services.task_svc.v1.BedService/GetBeds',
      ($4.GetBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetBedsResponse.fromBuffer(value));
  static final _$getBedsByRoom = $grpc.ClientMethod<$4.GetBedsByRoomRequest, $4.GetBedsByRoomResponse>(
      '/proto.services.task_svc.v1.BedService/GetBedsByRoom',
      ($4.GetBedsByRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetBedsByRoomResponse.fromBuffer(value));
  static final _$updateBed = $grpc.ClientMethod<$4.UpdateBedRequest, $4.UpdateBedResponse>(
      '/proto.services.task_svc.v1.BedService/UpdateBed',
      ($4.UpdateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateBedResponse.fromBuffer(value));
  static final _$deleteBed = $grpc.ClientMethod<$4.DeleteBedRequest, $4.DeleteBedResponse>(
      '/proto.services.task_svc.v1.BedService/DeleteBed',
      ($4.DeleteBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeleteBedResponse.fromBuffer(value));

  BedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreateBedResponse> createBed($4.CreateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBed, request, options: options);
  }

  $grpc.ResponseFuture<$4.BulkCreateBedsResponse> bulkCreateBeds($4.BulkCreateBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkCreateBeds, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetBedResponse> getBed($4.GetBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBed, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetBedByPatientResponse> getBedByPatient($4.GetBedByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetBedsResponse> getBeds($4.GetBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBeds, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetBedsByRoomResponse> getBedsByRoom($4.GetBedsByRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedsByRoom, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateBedResponse> updateBed($4.UpdateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBed, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeleteBedResponse> deleteBed($4.DeleteBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBed, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
abstract class BedServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.BedService';

  BedServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreateBedRequest, $4.CreateBedResponse>(
        'CreateBed',
        createBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreateBedRequest.fromBuffer(value),
        ($4.CreateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.BulkCreateBedsRequest, $4.BulkCreateBedsResponse>(
        'BulkCreateBeds',
        bulkCreateBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.BulkCreateBedsRequest.fromBuffer(value),
        ($4.BulkCreateBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetBedRequest, $4.GetBedResponse>(
        'GetBed',
        getBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetBedRequest.fromBuffer(value),
        ($4.GetBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetBedByPatientRequest, $4.GetBedByPatientResponse>(
        'GetBedByPatient',
        getBedByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetBedByPatientRequest.fromBuffer(value),
        ($4.GetBedByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetBedsRequest, $4.GetBedsResponse>(
        'GetBeds',
        getBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetBedsRequest.fromBuffer(value),
        ($4.GetBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetBedsByRoomRequest, $4.GetBedsByRoomResponse>(
        'GetBedsByRoom',
        getBedsByRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetBedsByRoomRequest.fromBuffer(value),
        ($4.GetBedsByRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateBedRequest, $4.UpdateBedResponse>(
        'UpdateBed',
        updateBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateBedRequest.fromBuffer(value),
        ($4.UpdateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteBedRequest, $4.DeleteBedResponse>(
        'DeleteBed',
        deleteBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeleteBedRequest.fromBuffer(value),
        ($4.DeleteBedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreateBedResponse> createBed_Pre($grpc.ServiceCall call, $async.Future<$4.CreateBedRequest> request) async {
    return createBed(call, await request);
  }

  $async.Future<$4.BulkCreateBedsResponse> bulkCreateBeds_Pre($grpc.ServiceCall call, $async.Future<$4.BulkCreateBedsRequest> request) async {
    return bulkCreateBeds(call, await request);
  }

  $async.Future<$4.GetBedResponse> getBed_Pre($grpc.ServiceCall call, $async.Future<$4.GetBedRequest> request) async {
    return getBed(call, await request);
  }

  $async.Future<$4.GetBedByPatientResponse> getBedByPatient_Pre($grpc.ServiceCall call, $async.Future<$4.GetBedByPatientRequest> request) async {
    return getBedByPatient(call, await request);
  }

  $async.Future<$4.GetBedsResponse> getBeds_Pre($grpc.ServiceCall call, $async.Future<$4.GetBedsRequest> request) async {
    return getBeds(call, await request);
  }

  $async.Future<$4.GetBedsByRoomResponse> getBedsByRoom_Pre($grpc.ServiceCall call, $async.Future<$4.GetBedsByRoomRequest> request) async {
    return getBedsByRoom(call, await request);
  }

  $async.Future<$4.UpdateBedResponse> updateBed_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateBedRequest> request) async {
    return updateBed(call, await request);
  }

  $async.Future<$4.DeleteBedResponse> deleteBed_Pre($grpc.ServiceCall call, $async.Future<$4.DeleteBedRequest> request) async {
    return deleteBed(call, await request);
  }

  $async.Future<$4.CreateBedResponse> createBed($grpc.ServiceCall call, $4.CreateBedRequest request);
  $async.Future<$4.BulkCreateBedsResponse> bulkCreateBeds($grpc.ServiceCall call, $4.BulkCreateBedsRequest request);
  $async.Future<$4.GetBedResponse> getBed($grpc.ServiceCall call, $4.GetBedRequest request);
  $async.Future<$4.GetBedByPatientResponse> getBedByPatient($grpc.ServiceCall call, $4.GetBedByPatientRequest request);
  $async.Future<$4.GetBedsResponse> getBeds($grpc.ServiceCall call, $4.GetBedsRequest request);
  $async.Future<$4.GetBedsByRoomResponse> getBedsByRoom($grpc.ServiceCall call, $4.GetBedsByRoomRequest request);
  $async.Future<$4.UpdateBedResponse> updateBed($grpc.ServiceCall call, $4.UpdateBedRequest request);
  $async.Future<$4.DeleteBedResponse> deleteBed($grpc.ServiceCall call, $4.DeleteBedRequest request);
}
