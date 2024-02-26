//
//  Generated code. Do not modify.
//  source: proto/services/tasks_svc/v1/patient_svc.proto
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

import 'patient_svc.pb.dart' as $11;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$11.CreatePatientRequest, $11.CreatePatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/CreatePatient',
      ($11.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$11.GetPatientRequest, $11.GetPatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/GetPatient',
      ($11.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetPatientResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$11.UpdatePatientRequest, $11.UpdatePatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/UpdatePatient',
      ($11.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$11.AssignBedRequest, $11.AssignBedResponse>(
      '/proto.services.tasks_svc.v1.PatientService/AssignBed',
      ($11.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$11.UnassignBedRequest, $11.UnassignBedResponse>(
      '/proto.services.tasks_svc.v1.PatientService/UnassignBed',
      ($11.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$11.DischargePatientRequest, $11.DischargePatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/DischargePatient',
      ($11.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.DischargePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$11.ReadmitPatientRequest, $11.ReadmitPatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/ReadmitPatient',
      ($11.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ReadmitPatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.CreatePatientResponse> createPatient($11.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetPatientResponse> getPatient($11.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$11.UpdatePatientResponse> updatePatient($11.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$11.AssignBedResponse> assignBed($11.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$11.UnassignBedResponse> unassignBed($11.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$11.DischargePatientResponse> dischargePatient($11.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$11.ReadmitPatientResponse> readmitPatient($11.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.tasks_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.CreatePatientRequest, $11.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.CreatePatientRequest.fromBuffer(value),
        ($11.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetPatientRequest, $11.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetPatientRequest.fromBuffer(value),
        ($11.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UpdatePatientRequest, $11.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UpdatePatientRequest.fromBuffer(value),
        ($11.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.AssignBedRequest, $11.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.AssignBedRequest.fromBuffer(value),
        ($11.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.UnassignBedRequest, $11.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.UnassignBedRequest.fromBuffer(value),
        ($11.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.DischargePatientRequest, $11.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.DischargePatientRequest.fromBuffer(value),
        ($11.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.ReadmitPatientRequest, $11.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.ReadmitPatientRequest.fromBuffer(value),
        ($11.ReadmitPatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$11.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$11.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$11.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$11.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$11.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$11.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$11.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$11.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$11.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$11.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$11.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$11.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$11.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$11.CreatePatientResponse> createPatient($grpc.ServiceCall call, $11.CreatePatientRequest request);
  $async.Future<$11.GetPatientResponse> getPatient($grpc.ServiceCall call, $11.GetPatientRequest request);
  $async.Future<$11.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $11.UpdatePatientRequest request);
  $async.Future<$11.AssignBedResponse> assignBed($grpc.ServiceCall call, $11.AssignBedRequest request);
  $async.Future<$11.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $11.UnassignBedRequest request);
  $async.Future<$11.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $11.DischargePatientRequest request);
  $async.Future<$11.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $11.ReadmitPatientRequest request);
}
