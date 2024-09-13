//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/bed_svc.proto
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

import 'bed_svc.pb.dart' as $11;

export 'bed_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.BedService')
class BedServiceClient extends $grpc.Client {
  static final _$createBed = $grpc.ClientMethod<$11.CreateBedRequest, $11.CreateBedResponse>(
      '/services.tasks_svc.v1.BedService/CreateBed',
      ($11.CreateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreateBedResponse.fromBuffer(value));
  static final _$bulkCreateBeds = $grpc.ClientMethod<$11.BulkCreateBedsRequest, $11.BulkCreateBedsResponse>(
      '/services.tasks_svc.v1.BedService/BulkCreateBeds',
      ($11.BulkCreateBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.BulkCreateBedsResponse.fromBuffer(value));
  static final _$getBed = $grpc.ClientMethod<$11.GetBedRequest, $11.GetBedResponse>(
      '/services.tasks_svc.v1.BedService/GetBed',
      ($11.GetBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetBedResponse.fromBuffer(value));
  static final _$getBedByPatient = $grpc.ClientMethod<$11.GetBedByPatientRequest, $11.GetBedByPatientResponse>(
      '/services.tasks_svc.v1.BedService/GetBedByPatient',
      ($11.GetBedByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetBedByPatientResponse.fromBuffer(value));
  static final _$getBeds = $grpc.ClientMethod<$11.GetBedsRequest, $11.GetBedsResponse>(
      '/services.tasks_svc.v1.BedService/GetBeds',
      ($11.GetBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetBedsResponse.fromBuffer(value));
  static final _$getBedsByRoom = $grpc.ClientMethod<$11.GetBedsByRoomRequest, $11.GetBedsByRoomResponse>(
      '/services.tasks_svc.v1.BedService/GetBedsByRoom',
      ($11.GetBedsByRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetBedsByRoomResponse.fromBuffer(value));
  static final _$updateBed = $grpc.ClientMethod<$11.UpdateBedRequest, $11.UpdateBedResponse>(
      '/services.tasks_svc.v1.BedService/UpdateBed',
      ($11.UpdateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdateBedResponse.fromBuffer(value));
  static final _$deleteBed = $grpc.ClientMethod<$11.DeleteBedRequest, $11.DeleteBedResponse>(
      '/services.tasks_svc.v1.BedService/DeleteBed',
      ($11.DeleteBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DeleteBedResponse.fromBuffer(value));

  BedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreateBedResponse> createBed($11.CreateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBed, request, options: options);
  }

  $grpc.ResponseFuture<$11.BulkCreateBedsResponse> bulkCreateBeds($11.BulkCreateBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkCreateBeds, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetBedResponse> getBed($11.GetBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBed, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetBedByPatientResponse> getBedByPatient($11.GetBedByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetBedsResponse> getBeds($11.GetBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBeds, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetBedsByRoomResponse> getBedsByRoom($11.GetBedsByRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedsByRoom, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdateBedResponse> updateBed($11.UpdateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBed, request, options: options);
  }

  $grpc.ResponseFuture<$11.DeleteBedResponse> deleteBed($11.DeleteBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBed, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.BedService')
abstract class BedServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.BedService';

  BedServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreateBedRequest, $11.CreateBedResponse>(
        'CreateBed',
        createBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreateBedRequest.fromBuffer(value),
        ($11.CreateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.BulkCreateBedsRequest, $11.BulkCreateBedsResponse>(
        'BulkCreateBeds',
        bulkCreateBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.BulkCreateBedsRequest.fromBuffer(value),
        ($11.BulkCreateBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetBedRequest, $11.GetBedResponse>(
        'GetBed',
        getBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetBedRequest.fromBuffer(value),
        ($11.GetBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetBedByPatientRequest, $11.GetBedByPatientResponse>(
        'GetBedByPatient',
        getBedByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetBedByPatientRequest.fromBuffer(value),
        ($11.GetBedByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetBedsRequest, $11.GetBedsResponse>(
        'GetBeds',
        getBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetBedsRequest.fromBuffer(value),
        ($11.GetBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetBedsByRoomRequest, $11.GetBedsByRoomResponse>(
        'GetBedsByRoom',
        getBedsByRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetBedsByRoomRequest.fromBuffer(value),
        ($11.GetBedsByRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdateBedRequest, $11.UpdateBedResponse>(
        'UpdateBed',
        updateBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdateBedRequest.fromBuffer(value),
        ($11.UpdateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DeleteBedRequest, $11.DeleteBedResponse>(
        'DeleteBed',
        deleteBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DeleteBedRequest.fromBuffer(value),
        ($11.DeleteBedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreateBedResponse> createBed_Pre($grpc.ServiceCall call, $async.Future<$11.CreateBedRequest> request) async {
    return createBed(call, await request);
  }

  $async.Future<$11.BulkCreateBedsResponse> bulkCreateBeds_Pre($grpc.ServiceCall call, $async.Future<$11.BulkCreateBedsRequest> request) async {
    return bulkCreateBeds(call, await request);
  }

  $async.Future<$11.GetBedResponse> getBed_Pre($grpc.ServiceCall call, $async.Future<$11.GetBedRequest> request) async {
    return getBed(call, await request);
  }

  $async.Future<$11.GetBedByPatientResponse> getBedByPatient_Pre($grpc.ServiceCall call, $async.Future<$11.GetBedByPatientRequest> request) async {
    return getBedByPatient(call, await request);
  }

  $async.Future<$11.GetBedsResponse> getBeds_Pre($grpc.ServiceCall call, $async.Future<$11.GetBedsRequest> request) async {
    return getBeds(call, await request);
  }

  $async.Future<$11.GetBedsByRoomResponse> getBedsByRoom_Pre($grpc.ServiceCall call, $async.Future<$11.GetBedsByRoomRequest> request) async {
    return getBedsByRoom(call, await request);
  }

  $async.Future<$11.UpdateBedResponse> updateBed_Pre($grpc.ServiceCall call, $async.Future<$11.UpdateBedRequest> request) async {
    return updateBed(call, await request);
  }

  $async.Future<$11.DeleteBedResponse> deleteBed_Pre($grpc.ServiceCall call, $async.Future<$11.DeleteBedRequest> request) async {
    return deleteBed(call, await request);
  }

  $async.Future<$11.CreateBedResponse> createBed($grpc.ServiceCall call, $11.CreateBedRequest request);
  $async.Future<$11.BulkCreateBedsResponse> bulkCreateBeds($grpc.ServiceCall call, $11.BulkCreateBedsRequest request);
  $async.Future<$11.GetBedResponse> getBed($grpc.ServiceCall call, $11.GetBedRequest request);
  $async.Future<$11.GetBedByPatientResponse> getBedByPatient($grpc.ServiceCall call, $11.GetBedByPatientRequest request);
  $async.Future<$11.GetBedsResponse> getBeds($grpc.ServiceCall call, $11.GetBedsRequest request);
  $async.Future<$11.GetBedsByRoomResponse> getBedsByRoom($grpc.ServiceCall call, $11.GetBedsByRoomRequest request);
  $async.Future<$11.UpdateBedResponse> updateBed($grpc.ServiceCall call, $11.UpdateBedRequest request);
  $async.Future<$11.DeleteBedResponse> deleteBed($grpc.ServiceCall call, $11.DeleteBedRequest request);
}
