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

import 'bed_svc.pb.dart' as $0;

export 'bed_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.BedService')
class BedServiceClient extends $grpc.Client {
  static final _$createBed = $grpc.ClientMethod<$0.CreateBedRequest, $0.CreateBedResponse>(
      '/services.tasks_svc.v1.BedService/CreateBed',
      ($0.CreateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateBedResponse.fromBuffer(value));
  static final _$bulkCreateBeds = $grpc.ClientMethod<$0.BulkCreateBedsRequest, $0.BulkCreateBedsResponse>(
      '/services.tasks_svc.v1.BedService/BulkCreateBeds',
      ($0.BulkCreateBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BulkCreateBedsResponse.fromBuffer(value));
  static final _$getBed = $grpc.ClientMethod<$0.GetBedRequest, $0.GetBedResponse>(
      '/services.tasks_svc.v1.BedService/GetBed',
      ($0.GetBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBedResponse.fromBuffer(value));
  static final _$getBedByPatient = $grpc.ClientMethod<$0.GetBedByPatientRequest, $0.GetBedByPatientResponse>(
      '/services.tasks_svc.v1.BedService/GetBedByPatient',
      ($0.GetBedByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBedByPatientResponse.fromBuffer(value));
  static final _$getBeds = $grpc.ClientMethod<$0.GetBedsRequest, $0.GetBedsResponse>(
      '/services.tasks_svc.v1.BedService/GetBeds',
      ($0.GetBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBedsResponse.fromBuffer(value));
  static final _$getBedsByRoom = $grpc.ClientMethod<$0.GetBedsByRoomRequest, $0.GetBedsByRoomResponse>(
      '/services.tasks_svc.v1.BedService/GetBedsByRoom',
      ($0.GetBedsByRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBedsByRoomResponse.fromBuffer(value));
  static final _$updateBed = $grpc.ClientMethod<$0.UpdateBedRequest, $0.UpdateBedResponse>(
      '/services.tasks_svc.v1.BedService/UpdateBed',
      ($0.UpdateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateBedResponse.fromBuffer(value));
  static final _$deleteBed = $grpc.ClientMethod<$0.DeleteBedRequest, $0.DeleteBedResponse>(
      '/services.tasks_svc.v1.BedService/DeleteBed',
      ($0.DeleteBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteBedResponse.fromBuffer(value));

  BedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateBedResponse> createBed($0.CreateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBed, request, options: options);
  }

  $grpc.ResponseFuture<$0.BulkCreateBedsResponse> bulkCreateBeds($0.BulkCreateBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkCreateBeds, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBedResponse> getBed($0.GetBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBed, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBedByPatientResponse> getBedByPatient($0.GetBedByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBedsResponse> getBeds($0.GetBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBeds, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBedsByRoomResponse> getBedsByRoom($0.GetBedsByRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedsByRoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateBedResponse> updateBed($0.UpdateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBed, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteBedResponse> deleteBed($0.DeleteBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBed, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.BedService')
abstract class BedServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.BedService';

  BedServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateBedRequest, $0.CreateBedResponse>(
        'CreateBed',
        createBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateBedRequest.fromBuffer(value),
        ($0.CreateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BulkCreateBedsRequest, $0.BulkCreateBedsResponse>(
        'BulkCreateBeds',
        bulkCreateBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BulkCreateBedsRequest.fromBuffer(value),
        ($0.BulkCreateBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBedRequest, $0.GetBedResponse>(
        'GetBed',
        getBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBedRequest.fromBuffer(value),
        ($0.GetBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBedByPatientRequest, $0.GetBedByPatientResponse>(
        'GetBedByPatient',
        getBedByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBedByPatientRequest.fromBuffer(value),
        ($0.GetBedByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBedsRequest, $0.GetBedsResponse>(
        'GetBeds',
        getBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBedsRequest.fromBuffer(value),
        ($0.GetBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBedsByRoomRequest, $0.GetBedsByRoomResponse>(
        'GetBedsByRoom',
        getBedsByRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBedsByRoomRequest.fromBuffer(value),
        ($0.GetBedsByRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateBedRequest, $0.UpdateBedResponse>(
        'UpdateBed',
        updateBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateBedRequest.fromBuffer(value),
        ($0.UpdateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteBedRequest, $0.DeleteBedResponse>(
        'DeleteBed',
        deleteBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteBedRequest.fromBuffer(value),
        ($0.DeleteBedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateBedResponse> createBed_Pre($grpc.ServiceCall call, $async.Future<$0.CreateBedRequest> request) async {
    return createBed(call, await request);
  }

  $async.Future<$0.BulkCreateBedsResponse> bulkCreateBeds_Pre($grpc.ServiceCall call, $async.Future<$0.BulkCreateBedsRequest> request) async {
    return bulkCreateBeds(call, await request);
  }

  $async.Future<$0.GetBedResponse> getBed_Pre($grpc.ServiceCall call, $async.Future<$0.GetBedRequest> request) async {
    return getBed(call, await request);
  }

  $async.Future<$0.GetBedByPatientResponse> getBedByPatient_Pre($grpc.ServiceCall call, $async.Future<$0.GetBedByPatientRequest> request) async {
    return getBedByPatient(call, await request);
  }

  $async.Future<$0.GetBedsResponse> getBeds_Pre($grpc.ServiceCall call, $async.Future<$0.GetBedsRequest> request) async {
    return getBeds(call, await request);
  }

  $async.Future<$0.GetBedsByRoomResponse> getBedsByRoom_Pre($grpc.ServiceCall call, $async.Future<$0.GetBedsByRoomRequest> request) async {
    return getBedsByRoom(call, await request);
  }

  $async.Future<$0.UpdateBedResponse> updateBed_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateBedRequest> request) async {
    return updateBed(call, await request);
  }

  $async.Future<$0.DeleteBedResponse> deleteBed_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteBedRequest> request) async {
    return deleteBed(call, await request);
  }

  $async.Future<$0.CreateBedResponse> createBed($grpc.ServiceCall call, $0.CreateBedRequest request);
  $async.Future<$0.BulkCreateBedsResponse> bulkCreateBeds($grpc.ServiceCall call, $0.BulkCreateBedsRequest request);
  $async.Future<$0.GetBedResponse> getBed($grpc.ServiceCall call, $0.GetBedRequest request);
  $async.Future<$0.GetBedByPatientResponse> getBedByPatient($grpc.ServiceCall call, $0.GetBedByPatientRequest request);
  $async.Future<$0.GetBedsResponse> getBeds($grpc.ServiceCall call, $0.GetBedsRequest request);
  $async.Future<$0.GetBedsByRoomResponse> getBedsByRoom($grpc.ServiceCall call, $0.GetBedsByRoomRequest request);
  $async.Future<$0.UpdateBedResponse> updateBed($grpc.ServiceCall call, $0.UpdateBedRequest request);
  $async.Future<$0.DeleteBedResponse> deleteBed($grpc.ServiceCall call, $0.DeleteBedRequest request);
}
