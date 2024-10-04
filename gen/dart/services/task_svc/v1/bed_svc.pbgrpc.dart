//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/bed_svc.proto
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

import 'bed_svc.pb.dart' as $5;

export 'bed_svc.pb.dart';

@$pb.GrpcServiceName('services.task_svc.v1.BedService')
class BedServiceClient extends $grpc.Client {
  static final _$createBed = $grpc.ClientMethod<$5.CreateBedRequest, $5.CreateBedResponse>(
      '/services.task_svc.v1.BedService/CreateBed',
      ($5.CreateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateBedResponse.fromBuffer(value));
  static final _$getBed = $grpc.ClientMethod<$5.GetBedRequest, $5.GetBedResponse>(
      '/services.task_svc.v1.BedService/GetBed',
      ($5.GetBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetBedResponse.fromBuffer(value));
  static final _$getBedByPatient = $grpc.ClientMethod<$5.GetBedByPatientRequest, $5.GetBedByPatientResponse>(
      '/services.task_svc.v1.BedService/GetBedByPatient',
      ($5.GetBedByPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetBedByPatientResponse.fromBuffer(value));
  static final _$getBeds = $grpc.ClientMethod<$5.GetBedsRequest, $5.GetBedsResponse>(
      '/services.task_svc.v1.BedService/GetBeds',
      ($5.GetBedsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetBedsResponse.fromBuffer(value));
  static final _$getBedsByRoom = $grpc.ClientMethod<$5.GetBedsByRoomRequest, $5.GetBedsByRoomResponse>(
      '/services.task_svc.v1.BedService/GetBedsByRoom',
      ($5.GetBedsByRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetBedsByRoomResponse.fromBuffer(value));
  static final _$updateBed = $grpc.ClientMethod<$5.UpdateBedRequest, $5.UpdateBedResponse>(
      '/services.task_svc.v1.BedService/UpdateBed',
      ($5.UpdateBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateBedResponse.fromBuffer(value));
  static final _$deleteBed = $grpc.ClientMethod<$5.DeleteBedRequest, $5.DeleteBedResponse>(
      '/services.task_svc.v1.BedService/DeleteBed',
      ($5.DeleteBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeleteBedResponse.fromBuffer(value));

  BedServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreateBedResponse> createBed($5.CreateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBed, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetBedResponse> getBed($5.GetBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBed, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetBedByPatientResponse> getBedByPatient($5.GetBedByPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedByPatient, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetBedsResponse> getBeds($5.GetBedsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBeds, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetBedsByRoomResponse> getBedsByRoom($5.GetBedsByRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBedsByRoom, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateBedResponse> updateBed($5.UpdateBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBed, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeleteBedResponse> deleteBed($5.DeleteBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBed, request, options: options);
  }
}

@$pb.GrpcServiceName('services.task_svc.v1.BedService')
abstract class BedServiceBase extends $grpc.Service {
  $core.String get $name => 'services.task_svc.v1.BedService';

  BedServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreateBedRequest, $5.CreateBedResponse>(
        'CreateBed',
        createBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateBedRequest.fromBuffer(value),
        ($5.CreateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetBedRequest, $5.GetBedResponse>(
        'GetBed',
        getBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetBedRequest.fromBuffer(value),
        ($5.GetBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetBedByPatientRequest, $5.GetBedByPatientResponse>(
        'GetBedByPatient',
        getBedByPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetBedByPatientRequest.fromBuffer(value),
        ($5.GetBedByPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetBedsRequest, $5.GetBedsResponse>(
        'GetBeds',
        getBeds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetBedsRequest.fromBuffer(value),
        ($5.GetBedsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetBedsByRoomRequest, $5.GetBedsByRoomResponse>(
        'GetBedsByRoom',
        getBedsByRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetBedsByRoomRequest.fromBuffer(value),
        ($5.GetBedsByRoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateBedRequest, $5.UpdateBedResponse>(
        'UpdateBed',
        updateBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateBedRequest.fromBuffer(value),
        ($5.UpdateBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteBedRequest, $5.DeleteBedResponse>(
        'DeleteBed',
        deleteBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteBedRequest.fromBuffer(value),
        ($5.DeleteBedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreateBedResponse> createBed_Pre($grpc.ServiceCall call, $async.Future<$5.CreateBedRequest> request) async {
    return createBed(call, await request);
  }

  $async.Future<$5.GetBedResponse> getBed_Pre($grpc.ServiceCall call, $async.Future<$5.GetBedRequest> request) async {
    return getBed(call, await request);
  }

  $async.Future<$5.GetBedByPatientResponse> getBedByPatient_Pre($grpc.ServiceCall call, $async.Future<$5.GetBedByPatientRequest> request) async {
    return getBedByPatient(call, await request);
  }

  $async.Future<$5.GetBedsResponse> getBeds_Pre($grpc.ServiceCall call, $async.Future<$5.GetBedsRequest> request) async {
    return getBeds(call, await request);
  }

  $async.Future<$5.GetBedsByRoomResponse> getBedsByRoom_Pre($grpc.ServiceCall call, $async.Future<$5.GetBedsByRoomRequest> request) async {
    return getBedsByRoom(call, await request);
  }

  $async.Future<$5.UpdateBedResponse> updateBed_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateBedRequest> request) async {
    return updateBed(call, await request);
  }

  $async.Future<$5.DeleteBedResponse> deleteBed_Pre($grpc.ServiceCall call, $async.Future<$5.DeleteBedRequest> request) async {
    return deleteBed(call, await request);
  }

  $async.Future<$5.CreateBedResponse> createBed($grpc.ServiceCall call, $5.CreateBedRequest request);
  $async.Future<$5.GetBedResponse> getBed($grpc.ServiceCall call, $5.GetBedRequest request);
  $async.Future<$5.GetBedByPatientResponse> getBedByPatient($grpc.ServiceCall call, $5.GetBedByPatientRequest request);
  $async.Future<$5.GetBedsResponse> getBeds($grpc.ServiceCall call, $5.GetBedsRequest request);
  $async.Future<$5.GetBedsByRoomResponse> getBedsByRoom($grpc.ServiceCall call, $5.GetBedsByRoomRequest request);
  $async.Future<$5.UpdateBedResponse> updateBed($grpc.ServiceCall call, $5.UpdateBedRequest request);
  $async.Future<$5.DeleteBedResponse> deleteBed($grpc.ServiceCall call, $5.DeleteBedRequest request);
}
