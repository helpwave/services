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

import 'patient_svc.pb.dart' as $9;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$9.CreatePatientRequest, $9.CreatePatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/CreatePatient',
      ($9.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$9.GetPatientRequest, $9.GetPatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/GetPatient',
      ($9.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.GetPatientResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$9.UpdatePatientRequest, $9.UpdatePatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/UpdatePatient',
      ($9.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$9.AssignBedRequest, $9.AssignBedResponse>(
      '/proto.services.tasks_svc.v1.PatientService/AssignBed',
      ($9.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$9.UnassignBedRequest, $9.UnassignBedResponse>(
      '/proto.services.tasks_svc.v1.PatientService/UnassignBed',
      ($9.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$9.DischargePatientRequest, $9.DischargePatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/DischargePatient',
      ($9.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.DischargePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$9.ReadmitPatientRequest, $9.ReadmitPatientResponse>(
      '/proto.services.tasks_svc.v1.PatientService/ReadmitPatient',
      ($9.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.ReadmitPatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.CreatePatientResponse> createPatient($9.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$9.GetPatientResponse> getPatient($9.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$9.UpdatePatientResponse> updatePatient($9.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$9.AssignBedResponse> assignBed($9.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$9.UnassignBedResponse> unassignBed($9.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$9.DischargePatientResponse> dischargePatient($9.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$9.ReadmitPatientResponse> readmitPatient($9.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.tasks_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.tasks_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.CreatePatientRequest, $9.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.CreatePatientRequest.fromBuffer(value),
        ($9.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.GetPatientRequest, $9.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetPatientRequest.fromBuffer(value),
        ($9.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UpdatePatientRequest, $9.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UpdatePatientRequest.fromBuffer(value),
        ($9.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AssignBedRequest, $9.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AssignBedRequest.fromBuffer(value),
        ($9.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.UnassignBedRequest, $9.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.UnassignBedRequest.fromBuffer(value),
        ($9.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.DischargePatientRequest, $9.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.DischargePatientRequest.fromBuffer(value),
        ($9.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ReadmitPatientRequest, $9.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ReadmitPatientRequest.fromBuffer(value),
        ($9.ReadmitPatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$9.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$9.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$9.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$9.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$9.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$9.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$9.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$9.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$9.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$9.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$9.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$9.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$9.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$9.CreatePatientResponse> createPatient($grpc.ServiceCall call, $9.CreatePatientRequest request);
  $async.Future<$9.GetPatientResponse> getPatient($grpc.ServiceCall call, $9.GetPatientRequest request);
  $async.Future<$9.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $9.UpdatePatientRequest request);
  $async.Future<$9.AssignBedResponse> assignBed($grpc.ServiceCall call, $9.AssignBedRequest request);
  $async.Future<$9.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $9.UnassignBedRequest request);
  $async.Future<$9.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $9.DischargePatientRequest request);
  $async.Future<$9.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $9.ReadmitPatientRequest request);
}
