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

import 'bed_svc.pb.dart' as $12;

export 'bed_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.BedService')
class BedServiceClient extends $grpc.Client {
  static final _$createBed = $grpc.ClientMethod<$12.CreateBedRequest, $12.CreateBedResponse>(
      '/services.tasks_svc.v1.BedService/CreateBed',
      ($12.CreateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreateBedResponse.fromBuffer(value));
  static final _$bulkCreateBeds = $grpc.ClientMethod<$12.BulkCreateBedsRequest, $12.BulkCreateBedsResponse>(
      '/services.tasks_svc.v1.BedService/BulkCreateBeds',
      ($12.BulkCreateBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.BulkCreateBedsResponse.fromBuffer(value));
  static final _$getBed = $grpc.ClientMethod<$12.GetBedRequest, $12.GetBedResponse>(
      '/services.tasks_svc.v1.BedService/GetBed',
      ($12.GetBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetBedResponse.fromBuffer(value));
  static final _$getBedByPatient = $grpc.ClientMethod<$12.GetBedByPatientRequest, $12.GetBedByPatientResponse>(
      '/services.tasks_svc.v1.BedService/GetBedByPatient',
      ($12.GetBedByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetBedByPatientResponse.fromBuffer(value));
  static final _$getBeds = $grpc.ClientMethod<$12.GetBedsRequest, $12.GetBedsResponse>(
      '/services.tasks_svc.v1.BedService/GetBeds',
      ($12.GetBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetBedsResponse.fromBuffer(value));
  static final _$getBedsByRoom = $grpc.ClientMethod<$12.GetBedsByRoomRequest, $12.GetBedsByRoomResponse>(
      '/services.tasks_svc.v1.BedService/GetBedsByRoom',
      ($12.GetBedsByRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetBedsByRoomResponse.fromBuffer(value));
  static final _$updateBed = $grpc.ClientMethod<$12.UpdateBedRequest, $12.UpdateBedResponse>(
      '/services.tasks_svc.v1.BedService/UpdateBed',
      ($12.UpdateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdateBedResponse.fromBuffer(value));
  static final _$deleteBed = $grpc.ClientMethod<$12.DeleteBedRequest, $12.DeleteBedResponse>(
      '/services.tasks_svc.v1.BedService/DeleteBed',
      ($12.DeleteBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeleteBedResponse.fromBuffer(value));

  BedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreateBedResponse> createBed($12.CreateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBed, request, options: options);
  }

  $grpc.ResponseFuture<$12.BulkCreateBedsResponse> bulkCreateBeds($12.BulkCreateBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkCreateBeds, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetBedResponse> getBed($12.GetBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBed, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetBedByPatientResponse> getBedByPatient($12.GetBedByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetBedsResponse> getBeds($12.GetBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBeds, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetBedsByRoomResponse> getBedsByRoom($12.GetBedsByRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedsByRoom, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdateBedResponse> updateBed($12.UpdateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBed, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeleteBedResponse> deleteBed($12.DeleteBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBed, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.BedService')
abstract class BedServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.BedService';

  BedServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreateBedRequest, $12.CreateBedResponse>(
        'CreateBed',
        createBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreateBedRequest.fromBuffer(value),
        ($12.CreateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.BulkCreateBedsRequest, $12.BulkCreateBedsResponse>(
        'BulkCreateBeds',
        bulkCreateBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.BulkCreateBedsRequest.fromBuffer(value),
        ($12.BulkCreateBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetBedRequest, $12.GetBedResponse>(
        'GetBed',
        getBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetBedRequest.fromBuffer(value),
        ($12.GetBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetBedByPatientRequest, $12.GetBedByPatientResponse>(
        'GetBedByPatient',
        getBedByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetBedByPatientRequest.fromBuffer(value),
        ($12.GetBedByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetBedsRequest, $12.GetBedsResponse>(
        'GetBeds',
        getBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetBedsRequest.fromBuffer(value),
        ($12.GetBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetBedsByRoomRequest, $12.GetBedsByRoomResponse>(
        'GetBedsByRoom',
        getBedsByRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetBedsByRoomRequest.fromBuffer(value),
        ($12.GetBedsByRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdateBedRequest, $12.UpdateBedResponse>(
        'UpdateBed',
        updateBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdateBedRequest.fromBuffer(value),
        ($12.UpdateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeleteBedRequest, $12.DeleteBedResponse>(
        'DeleteBed',
        deleteBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeleteBedRequest.fromBuffer(value),
        ($12.DeleteBedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreateBedResponse> createBed_Pre($grpc.ServiceCall call, $async.Future<$12.CreateBedRequest> request) async {
    return createBed(call, await request);
  }

  $async.Future<$12.BulkCreateBedsResponse> bulkCreateBeds_Pre($grpc.ServiceCall call, $async.Future<$12.BulkCreateBedsRequest> request) async {
    return bulkCreateBeds(call, await request);
  }

  $async.Future<$12.GetBedResponse> getBed_Pre($grpc.ServiceCall call, $async.Future<$12.GetBedRequest> request) async {
    return getBed(call, await request);
  }

  $async.Future<$12.GetBedByPatientResponse> getBedByPatient_Pre($grpc.ServiceCall call, $async.Future<$12.GetBedByPatientRequest> request) async {
    return getBedByPatient(call, await request);
  }

  $async.Future<$12.GetBedsResponse> getBeds_Pre($grpc.ServiceCall call, $async.Future<$12.GetBedsRequest> request) async {
    return getBeds(call, await request);
  }

  $async.Future<$12.GetBedsByRoomResponse> getBedsByRoom_Pre($grpc.ServiceCall call, $async.Future<$12.GetBedsByRoomRequest> request) async {
    return getBedsByRoom(call, await request);
  }

  $async.Future<$12.UpdateBedResponse> updateBed_Pre($grpc.ServiceCall call, $async.Future<$12.UpdateBedRequest> request) async {
    return updateBed(call, await request);
  }

  $async.Future<$12.DeleteBedResponse> deleteBed_Pre($grpc.ServiceCall call, $async.Future<$12.DeleteBedRequest> request) async {
    return deleteBed(call, await request);
  }

  $async.Future<$12.CreateBedResponse> createBed($grpc.ServiceCall call, $12.CreateBedRequest request);
  $async.Future<$12.BulkCreateBedsResponse> bulkCreateBeds($grpc.ServiceCall call, $12.BulkCreateBedsRequest request);
  $async.Future<$12.GetBedResponse> getBed($grpc.ServiceCall call, $12.GetBedRequest request);
  $async.Future<$12.GetBedByPatientResponse> getBedByPatient($grpc.ServiceCall call, $12.GetBedByPatientRequest request);
  $async.Future<$12.GetBedsResponse> getBeds($grpc.ServiceCall call, $12.GetBedsRequest request);
  $async.Future<$12.GetBedsByRoomResponse> getBedsByRoom($grpc.ServiceCall call, $12.GetBedsByRoomRequest request);
  $async.Future<$12.UpdateBedResponse> updateBed($grpc.ServiceCall call, $12.UpdateBedRequest request);
  $async.Future<$12.DeleteBedResponse> deleteBed($grpc.ServiceCall call, $12.DeleteBedRequest request);
}
