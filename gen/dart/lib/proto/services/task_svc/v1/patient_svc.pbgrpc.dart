//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/patient_svc.proto
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

import 'patient_svc.pb.dart' as $3;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$3.CreatePatientRequest, $3.CreatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/CreatePatient',
      ($3.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$3.GetPatientRequest, $3.GetPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatient',
      ($3.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPatientResponse.fromBuffer(value));
  static final _$getPatientByBed = $grpc.ClientMethod<$3.GetPatientByBedRequest, $3.GetPatientByBedResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientByBed',
      ($3.GetPatientByBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPatientByBedResponse.fromBuffer(value));
  static final _$getPatientsByWard = $grpc.ClientMethod<$3.GetPatientsByWardRequest, $3.GetPatientsByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientsByWard',
      ($3.GetPatientsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPatientsByWardResponse.fromBuffer(value));
  static final _$getPatientAssignmentByWard = $grpc.ClientMethod<$3.GetPatientAssignmentByWardRequest, $3.GetPatientAssignmentByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientAssignmentByWard',
      ($3.GetPatientAssignmentByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPatientAssignmentByWardResponse.fromBuffer(value));
  static final _$getRecentPatients = $grpc.ClientMethod<$3.GetRecentPatientsRequest, $3.GetRecentPatientsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetRecentPatients',
      ($3.GetRecentPatientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetRecentPatientsResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$3.UpdatePatientRequest, $3.UpdatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/UpdatePatient',
      ($3.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$3.AssignBedRequest, $3.AssignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/AssignBed',
      ($3.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$3.UnassignBedRequest, $3.UnassignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/UnassignBed',
      ($3.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$3.DischargePatientRequest, $3.DischargePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DischargePatient',
      ($3.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DischargePatientResponse.fromBuffer(value));
  static final _$getPatientDetails = $grpc.ClientMethod<$3.GetPatientDetailsRequest, $3.GetPatientDetailsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientDetails',
      ($3.GetPatientDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPatientDetailsResponse.fromBuffer(value));
  static final _$getPatientList = $grpc.ClientMethod<$3.GetPatientListRequest, $3.GetPatientListResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientList',
      ($3.GetPatientListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPatientListResponse.fromBuffer(value));
  static final _$deletePatient = $grpc.ClientMethod<$3.DeletePatientRequest, $3.DeletePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DeletePatient',
      ($3.DeletePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeletePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$3.ReadmitPatientRequest, $3.ReadmitPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/ReadmitPatient',
      ($3.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ReadmitPatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.CreatePatientResponse> createPatient($3.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPatientResponse> getPatient($3.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPatientByBedResponse> getPatientByBed($3.GetPatientByBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientByBed, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPatientsByWardResponse> getPatientsByWard($3.GetPatientsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($3.GetPatientAssignmentByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientAssignmentByWard, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetRecentPatientsResponse> getRecentPatients($3.GetRecentPatientsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentPatients, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePatientResponse> updatePatient($3.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$3.AssignBedResponse> assignBed($3.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$3.UnassignBedResponse> unassignBed($3.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$3.DischargePatientResponse> dischargePatient($3.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPatientDetailsResponse> getPatientDetails($3.GetPatientDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientDetails, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetPatientListResponse> getPatientList($3.GetPatientListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientList, request, options: options);
  }

  $grpc.ResponseFuture<$3.DeletePatientResponse> deletePatient($3.DeletePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePatient, request, options: options);
  }

  $grpc.ResponseFuture<$3.ReadmitPatientResponse> readmitPatient($3.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreatePatientRequest, $3.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreatePatientRequest.fromBuffer(value),
        ($3.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPatientRequest, $3.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPatientRequest.fromBuffer(value),
        ($3.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPatientByBedRequest, $3.GetPatientByBedResponse>(
        'GetPatientByBed',
        getPatientByBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPatientByBedRequest.fromBuffer(value),
        ($3.GetPatientByBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPatientsByWardRequest, $3.GetPatientsByWardResponse>(
        'GetPatientsByWard',
        getPatientsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPatientsByWardRequest.fromBuffer(value),
        ($3.GetPatientsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPatientAssignmentByWardRequest, $3.GetPatientAssignmentByWardResponse>(
        'GetPatientAssignmentByWard',
        getPatientAssignmentByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPatientAssignmentByWardRequest.fromBuffer(value),
        ($3.GetPatientAssignmentByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetRecentPatientsRequest, $3.GetRecentPatientsResponse>(
        'GetRecentPatients',
        getRecentPatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetRecentPatientsRequest.fromBuffer(value),
        ($3.GetRecentPatientsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePatientRequest, $3.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePatientRequest.fromBuffer(value),
        ($3.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AssignBedRequest, $3.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AssignBedRequest.fromBuffer(value),
        ($3.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UnassignBedRequest, $3.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UnassignBedRequest.fromBuffer(value),
        ($3.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DischargePatientRequest, $3.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DischargePatientRequest.fromBuffer(value),
        ($3.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPatientDetailsRequest, $3.GetPatientDetailsResponse>(
        'GetPatientDetails',
        getPatientDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPatientDetailsRequest.fromBuffer(value),
        ($3.GetPatientDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetPatientListRequest, $3.GetPatientListResponse>(
        'GetPatientList',
        getPatientList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPatientListRequest.fromBuffer(value),
        ($3.GetPatientListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeletePatientRequest, $3.DeletePatientResponse>(
        'DeletePatient',
        deletePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeletePatientRequest.fromBuffer(value),
        ($3.DeletePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ReadmitPatientRequest, $3.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ReadmitPatientRequest.fromBuffer(value),
        ($3.ReadmitPatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$3.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$3.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$3.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$3.GetPatientByBedResponse> getPatientByBed_Pre($grpc.ServiceCall call, $async.Future<$3.GetPatientByBedRequest> request) async {
    return getPatientByBed(call, await request);
  }

  $async.Future<$3.GetPatientsByWardResponse> getPatientsByWard_Pre($grpc.ServiceCall call, $async.Future<$3.GetPatientsByWardRequest> request) async {
    return getPatientsByWard(call, await request);
  }

  $async.Future<$3.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard_Pre($grpc.ServiceCall call, $async.Future<$3.GetPatientAssignmentByWardRequest> request) async {
    return getPatientAssignmentByWard(call, await request);
  }

  $async.Future<$3.GetRecentPatientsResponse> getRecentPatients_Pre($grpc.ServiceCall call, $async.Future<$3.GetRecentPatientsRequest> request) async {
    return getRecentPatients(call, await request);
  }

  $async.Future<$3.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$3.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$3.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$3.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$3.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$3.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$3.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$3.GetPatientDetailsResponse> getPatientDetails_Pre($grpc.ServiceCall call, $async.Future<$3.GetPatientDetailsRequest> request) async {
    return getPatientDetails(call, await request);
  }

  $async.Future<$3.GetPatientListResponse> getPatientList_Pre($grpc.ServiceCall call, $async.Future<$3.GetPatientListRequest> request) async {
    return getPatientList(call, await request);
  }

  $async.Future<$3.DeletePatientResponse> deletePatient_Pre($grpc.ServiceCall call, $async.Future<$3.DeletePatientRequest> request) async {
    return deletePatient(call, await request);
  }

  $async.Future<$3.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$3.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$3.CreatePatientResponse> createPatient($grpc.ServiceCall call, $3.CreatePatientRequest request);
  $async.Future<$3.GetPatientResponse> getPatient($grpc.ServiceCall call, $3.GetPatientRequest request);
  $async.Future<$3.GetPatientByBedResponse> getPatientByBed($grpc.ServiceCall call, $3.GetPatientByBedRequest request);
  $async.Future<$3.GetPatientsByWardResponse> getPatientsByWard($grpc.ServiceCall call, $3.GetPatientsByWardRequest request);
  $async.Future<$3.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($grpc.ServiceCall call, $3.GetPatientAssignmentByWardRequest request);
  $async.Future<$3.GetRecentPatientsResponse> getRecentPatients($grpc.ServiceCall call, $3.GetRecentPatientsRequest request);
  $async.Future<$3.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $3.UpdatePatientRequest request);
  $async.Future<$3.AssignBedResponse> assignBed($grpc.ServiceCall call, $3.AssignBedRequest request);
  $async.Future<$3.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $3.UnassignBedRequest request);
  $async.Future<$3.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $3.DischargePatientRequest request);
  $async.Future<$3.GetPatientDetailsResponse> getPatientDetails($grpc.ServiceCall call, $3.GetPatientDetailsRequest request);
  $async.Future<$3.GetPatientListResponse> getPatientList($grpc.ServiceCall call, $3.GetPatientListRequest request);
  $async.Future<$3.DeletePatientResponse> deletePatient($grpc.ServiceCall call, $3.DeletePatientRequest request);
  $async.Future<$3.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $3.ReadmitPatientRequest request);
}
