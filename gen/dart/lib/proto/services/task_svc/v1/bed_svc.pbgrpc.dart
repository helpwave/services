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

import 'bed_svc.pb.dart' as $7;

export 'bed_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
class BedServiceClient extends $grpc.Client {
  static final _$createBed = $grpc.ClientMethod<$7.CreateBedRequest, $7.CreateBedResponse>(
      '/proto.services.task_svc.v1.BedService/CreateBed',
      ($7.CreateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreateBedResponse.fromBuffer(value));
  static final _$bulkCreateBeds = $grpc.ClientMethod<$7.BulkCreateBedsRequest, $7.BulkCreateBedsResponse>(
      '/proto.services.task_svc.v1.BedService/BulkCreateBeds',
      ($7.BulkCreateBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.BulkCreateBedsResponse.fromBuffer(value));
  static final _$getBed = $grpc.ClientMethod<$7.GetBedRequest, $7.GetBedResponse>(
      '/proto.services.task_svc.v1.BedService/GetBed',
      ($7.GetBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetBedResponse.fromBuffer(value));
  static final _$getBedByPatient = $grpc.ClientMethod<$7.GetBedByPatientRequest, $7.GetBedByPatientResponse>(
      '/proto.services.task_svc.v1.BedService/GetBedByPatient',
      ($7.GetBedByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetBedByPatientResponse.fromBuffer(value));
  static final _$getBeds = $grpc.ClientMethod<$7.GetBedsRequest, $7.GetBedsResponse>(
      '/proto.services.task_svc.v1.BedService/GetBeds',
      ($7.GetBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetBedsResponse.fromBuffer(value));
  static final _$getBedsByRoom = $grpc.ClientMethod<$7.GetBedsByRoomRequest, $7.GetBedsByRoomResponse>(
      '/proto.services.task_svc.v1.BedService/GetBedsByRoom',
      ($7.GetBedsByRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetBedsByRoomResponse.fromBuffer(value));
  static final _$updateBed = $grpc.ClientMethod<$7.UpdateBedRequest, $7.UpdateBedResponse>(
      '/proto.services.task_svc.v1.BedService/UpdateBed',
      ($7.UpdateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdateBedResponse.fromBuffer(value));
  static final _$deleteBed = $grpc.ClientMethod<$7.DeleteBedRequest, $7.DeleteBedResponse>(
      '/proto.services.task_svc.v1.BedService/DeleteBed',
      ($7.DeleteBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeleteBedResponse.fromBuffer(value));

  BedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreateBedResponse> createBed($7.CreateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBed, request, options: options);
  }

  $grpc.ResponseFuture<$7.BulkCreateBedsResponse> bulkCreateBeds($7.BulkCreateBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkCreateBeds, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetBedResponse> getBed($7.GetBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBed, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetBedByPatientResponse> getBedByPatient($7.GetBedByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetBedsResponse> getBeds($7.GetBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBeds, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetBedsByRoomResponse> getBedsByRoom($7.GetBedsByRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedsByRoom, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateBedResponse> updateBed($7.UpdateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBed, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeleteBedResponse> deleteBed($7.DeleteBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBed, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.BedService')
abstract class BedServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.BedService';

  BedServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreateBedRequest, $7.CreateBedResponse>(
        'CreateBed',
        createBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateBedRequest.fromBuffer(value),
        ($7.CreateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.BulkCreateBedsRequest, $7.BulkCreateBedsResponse>(
        'BulkCreateBeds',
        bulkCreateBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.BulkCreateBedsRequest.fromBuffer(value),
        ($7.BulkCreateBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetBedRequest, $7.GetBedResponse>(
        'GetBed',
        getBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetBedRequest.fromBuffer(value),
        ($7.GetBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetBedByPatientRequest, $7.GetBedByPatientResponse>(
        'GetBedByPatient',
        getBedByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetBedByPatientRequest.fromBuffer(value),
        ($7.GetBedByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetBedsRequest, $7.GetBedsResponse>(
        'GetBeds',
        getBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetBedsRequest.fromBuffer(value),
        ($7.GetBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetBedsByRoomRequest, $7.GetBedsByRoomResponse>(
        'GetBedsByRoom',
        getBedsByRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetBedsByRoomRequest.fromBuffer(value),
        ($7.GetBedsByRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateBedRequest, $7.UpdateBedResponse>(
        'UpdateBed',
        updateBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateBedRequest.fromBuffer(value),
        ($7.UpdateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteBedRequest, $7.DeleteBedResponse>(
        'DeleteBed',
        deleteBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteBedRequest.fromBuffer(value),
        ($7.DeleteBedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreateBedResponse> createBed_Pre($grpc.ServiceCall call, $async.Future<$7.CreateBedRequest> request) async {
    return createBed(call, await request);
  }

  $async.Future<$7.BulkCreateBedsResponse> bulkCreateBeds_Pre($grpc.ServiceCall call, $async.Future<$7.BulkCreateBedsRequest> request) async {
    return bulkCreateBeds(call, await request);
  }

  $async.Future<$7.GetBedResponse> getBed_Pre($grpc.ServiceCall call, $async.Future<$7.GetBedRequest> request) async {
    return getBed(call, await request);
  }

  $async.Future<$7.GetBedByPatientResponse> getBedByPatient_Pre($grpc.ServiceCall call, $async.Future<$7.GetBedByPatientRequest> request) async {
    return getBedByPatient(call, await request);
  }

  $async.Future<$7.GetBedsResponse> getBeds_Pre($grpc.ServiceCall call, $async.Future<$7.GetBedsRequest> request) async {
    return getBeds(call, await request);
  }

  $async.Future<$7.GetBedsByRoomResponse> getBedsByRoom_Pre($grpc.ServiceCall call, $async.Future<$7.GetBedsByRoomRequest> request) async {
    return getBedsByRoom(call, await request);
  }

  $async.Future<$7.UpdateBedResponse> updateBed_Pre($grpc.ServiceCall call, $async.Future<$7.UpdateBedRequest> request) async {
    return updateBed(call, await request);
  }

  $async.Future<$7.DeleteBedResponse> deleteBed_Pre($grpc.ServiceCall call, $async.Future<$7.DeleteBedRequest> request) async {
    return deleteBed(call, await request);
  }

  $async.Future<$7.CreateBedResponse> createBed($grpc.ServiceCall call, $7.CreateBedRequest request);
  $async.Future<$7.BulkCreateBedsResponse> bulkCreateBeds($grpc.ServiceCall call, $7.BulkCreateBedsRequest request);
  $async.Future<$7.GetBedResponse> getBed($grpc.ServiceCall call, $7.GetBedRequest request);
  $async.Future<$7.GetBedByPatientResponse> getBedByPatient($grpc.ServiceCall call, $7.GetBedByPatientRequest request);
  $async.Future<$7.GetBedsResponse> getBeds($grpc.ServiceCall call, $7.GetBedsRequest request);
  $async.Future<$7.GetBedsByRoomResponse> getBedsByRoom($grpc.ServiceCall call, $7.GetBedsByRoomRequest request);
  $async.Future<$7.UpdateBedResponse> updateBed($grpc.ServiceCall call, $7.UpdateBedRequest request);
  $async.Future<$7.DeleteBedResponse> deleteBed($grpc.ServiceCall call, $7.DeleteBedRequest request);
}
