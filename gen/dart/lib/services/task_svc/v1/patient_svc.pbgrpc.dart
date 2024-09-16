//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/patient_svc.proto
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

import 'patient_svc.pb.dart' as $6;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('services.task_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$6.CreatePatientRequest, $6.CreatePatientResponse>(
      '/services.task_svc.v1.PatientService/CreatePatient',
      ($6.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$6.GetPatientRequest, $6.GetPatientResponse>(
      '/services.task_svc.v1.PatientService/GetPatient',
      ($6.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetPatientResponse.fromBuffer(value));
  static final _$getPatientByBed = $grpc.ClientMethod<$6.GetPatientByBedRequest, $6.GetPatientByBedResponse>(
      '/services.task_svc.v1.PatientService/GetPatientByBed',
      ($6.GetPatientByBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetPatientByBedResponse.fromBuffer(value));
  static final _$getPatientsByWard = $grpc.ClientMethod<$6.GetPatientsByWardRequest, $6.GetPatientsByWardResponse>(
      '/services.task_svc.v1.PatientService/GetPatientsByWard',
      ($6.GetPatientsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetPatientsByWardResponse.fromBuffer(value));
  static final _$getPatientAssignmentByWard = $grpc.ClientMethod<$6.GetPatientAssignmentByWardRequest, $6.GetPatientAssignmentByWardResponse>(
      '/services.task_svc.v1.PatientService/GetPatientAssignmentByWard',
      ($6.GetPatientAssignmentByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetPatientAssignmentByWardResponse.fromBuffer(value));
  static final _$getRecentPatients = $grpc.ClientMethod<$6.GetRecentPatientsRequest, $6.GetRecentPatientsResponse>(
      '/services.task_svc.v1.PatientService/GetRecentPatients',
      ($6.GetRecentPatientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetRecentPatientsResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$6.UpdatePatientRequest, $6.UpdatePatientResponse>(
      '/services.task_svc.v1.PatientService/UpdatePatient',
      ($6.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$6.AssignBedRequest, $6.AssignBedResponse>(
      '/services.task_svc.v1.PatientService/AssignBed',
      ($6.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$6.UnassignBedRequest, $6.UnassignBedResponse>(
      '/services.task_svc.v1.PatientService/UnassignBed',
      ($6.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$6.DischargePatientRequest, $6.DischargePatientResponse>(
      '/services.task_svc.v1.PatientService/DischargePatient',
      ($6.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DischargePatientResponse.fromBuffer(value));
  static final _$getPatientDetails = $grpc.ClientMethod<$6.GetPatientDetailsRequest, $6.GetPatientDetailsResponse>(
      '/services.task_svc.v1.PatientService/GetPatientDetails',
      ($6.GetPatientDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetPatientDetailsResponse.fromBuffer(value));
  static final _$getPatientList = $grpc.ClientMethod<$6.GetPatientListRequest, $6.GetPatientListResponse>(
      '/services.task_svc.v1.PatientService/GetPatientList',
      ($6.GetPatientListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetPatientListResponse.fromBuffer(value));
  static final _$deletePatient = $grpc.ClientMethod<$6.DeletePatientRequest, $6.DeletePatientResponse>(
      '/services.task_svc.v1.PatientService/DeletePatient',
      ($6.DeletePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DeletePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$6.ReadmitPatientRequest, $6.ReadmitPatientResponse>(
      '/services.task_svc.v1.PatientService/ReadmitPatient',
      ($6.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ReadmitPatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.CreatePatientResponse> createPatient($6.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetPatientResponse> getPatient($6.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetPatientByBedResponse> getPatientByBed($6.GetPatientByBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientByBed, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetPatientsByWardResponse> getPatientsByWard($6.GetPatientsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($6.GetPatientAssignmentByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientAssignmentByWard, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetRecentPatientsResponse> getRecentPatients($6.GetRecentPatientsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentPatients, request, options: options);
  }

  $grpc.ResponseFuture<$6.UpdatePatientResponse> updatePatient($6.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$6.AssignBedResponse> assignBed($6.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$6.UnassignBedResponse> unassignBed($6.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$6.DischargePatientResponse> dischargePatient($6.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetPatientDetailsResponse> getPatientDetails($6.GetPatientDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientDetails, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetPatientListResponse> getPatientList($6.GetPatientListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientList, request, options: options);
  }

  $grpc.ResponseFuture<$6.DeletePatientResponse> deletePatient($6.DeletePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePatient, request, options: options);
  }

  $grpc.ResponseFuture<$6.ReadmitPatientResponse> readmitPatient($6.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }
}

@$pb.GrpcServiceName('services.task_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'services.task_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreatePatientRequest, $6.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreatePatientRequest.fromBuffer(value),
        ($6.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetPatientRequest, $6.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetPatientRequest.fromBuffer(value),
        ($6.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetPatientByBedRequest, $6.GetPatientByBedResponse>(
        'GetPatientByBed',
        getPatientByBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetPatientByBedRequest.fromBuffer(value),
        ($6.GetPatientByBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetPatientsByWardRequest, $6.GetPatientsByWardResponse>(
        'GetPatientsByWard',
        getPatientsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetPatientsByWardRequest.fromBuffer(value),
        ($6.GetPatientsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetPatientAssignmentByWardRequest, $6.GetPatientAssignmentByWardResponse>(
        'GetPatientAssignmentByWard',
        getPatientAssignmentByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetPatientAssignmentByWardRequest.fromBuffer(value),
        ($6.GetPatientAssignmentByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetRecentPatientsRequest, $6.GetRecentPatientsResponse>(
        'GetRecentPatients',
        getRecentPatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetRecentPatientsRequest.fromBuffer(value),
        ($6.GetRecentPatientsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdatePatientRequest, $6.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdatePatientRequest.fromBuffer(value),
        ($6.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AssignBedRequest, $6.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AssignBedRequest.fromBuffer(value),
        ($6.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UnassignBedRequest, $6.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UnassignBedRequest.fromBuffer(value),
        ($6.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DischargePatientRequest, $6.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DischargePatientRequest.fromBuffer(value),
        ($6.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetPatientDetailsRequest, $6.GetPatientDetailsResponse>(
        'GetPatientDetails',
        getPatientDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetPatientDetailsRequest.fromBuffer(value),
        ($6.GetPatientDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetPatientListRequest, $6.GetPatientListResponse>(
        'GetPatientList',
        getPatientList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetPatientListRequest.fromBuffer(value),
        ($6.GetPatientListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeletePatientRequest, $6.DeletePatientResponse>(
        'DeletePatient',
        deletePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeletePatientRequest.fromBuffer(value),
        ($6.DeletePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.ReadmitPatientRequest, $6.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.ReadmitPatientRequest.fromBuffer(value),
        ($6.ReadmitPatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$6.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$6.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$6.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$6.GetPatientByBedResponse> getPatientByBed_Pre($grpc.ServiceCall call, $async.Future<$6.GetPatientByBedRequest> request) async {
    return getPatientByBed(call, await request);
  }

  $async.Future<$6.GetPatientsByWardResponse> getPatientsByWard_Pre($grpc.ServiceCall call, $async.Future<$6.GetPatientsByWardRequest> request) async {
    return getPatientsByWard(call, await request);
  }

  $async.Future<$6.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard_Pre($grpc.ServiceCall call, $async.Future<$6.GetPatientAssignmentByWardRequest> request) async {
    return getPatientAssignmentByWard(call, await request);
  }

  $async.Future<$6.GetRecentPatientsResponse> getRecentPatients_Pre($grpc.ServiceCall call, $async.Future<$6.GetRecentPatientsRequest> request) async {
    return getRecentPatients(call, await request);
  }

  $async.Future<$6.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$6.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$6.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$6.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$6.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$6.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$6.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$6.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$6.GetPatientDetailsResponse> getPatientDetails_Pre($grpc.ServiceCall call, $async.Future<$6.GetPatientDetailsRequest> request) async {
    return getPatientDetails(call, await request);
  }

  $async.Future<$6.GetPatientListResponse> getPatientList_Pre($grpc.ServiceCall call, $async.Future<$6.GetPatientListRequest> request) async {
    return getPatientList(call, await request);
  }

  $async.Future<$6.DeletePatientResponse> deletePatient_Pre($grpc.ServiceCall call, $async.Future<$6.DeletePatientRequest> request) async {
    return deletePatient(call, await request);
  }

  $async.Future<$6.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$6.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$6.CreatePatientResponse> createPatient($grpc.ServiceCall call, $6.CreatePatientRequest request);
  $async.Future<$6.GetPatientResponse> getPatient($grpc.ServiceCall call, $6.GetPatientRequest request);
  $async.Future<$6.GetPatientByBedResponse> getPatientByBed($grpc.ServiceCall call, $6.GetPatientByBedRequest request);
  $async.Future<$6.GetPatientsByWardResponse> getPatientsByWard($grpc.ServiceCall call, $6.GetPatientsByWardRequest request);
  $async.Future<$6.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($grpc.ServiceCall call, $6.GetPatientAssignmentByWardRequest request);
  $async.Future<$6.GetRecentPatientsResponse> getRecentPatients($grpc.ServiceCall call, $6.GetRecentPatientsRequest request);
  $async.Future<$6.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $6.UpdatePatientRequest request);
  $async.Future<$6.AssignBedResponse> assignBed($grpc.ServiceCall call, $6.AssignBedRequest request);
  $async.Future<$6.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $6.UnassignBedRequest request);
  $async.Future<$6.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $6.DischargePatientRequest request);
  $async.Future<$6.GetPatientDetailsResponse> getPatientDetails($grpc.ServiceCall call, $6.GetPatientDetailsRequest request);
  $async.Future<$6.GetPatientListResponse> getPatientList($grpc.ServiceCall call, $6.GetPatientListRequest request);
  $async.Future<$6.DeletePatientResponse> deletePatient($grpc.ServiceCall call, $6.DeletePatientRequest request);
  $async.Future<$6.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $6.ReadmitPatientRequest request);
}
