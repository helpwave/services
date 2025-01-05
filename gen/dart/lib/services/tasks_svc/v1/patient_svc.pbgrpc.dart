//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/patient_svc.proto
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

import 'patient_svc.pb.dart' as $1;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$1.CreatePatientRequest, $1.CreatePatientResponse>(
      '/services.tasks_svc.v1.PatientService/CreatePatient',
      ($1.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$1.GetPatientRequest, $1.GetPatientResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatient',
      ($1.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPatientResponse.fromBuffer(value));
  static final _$getPatientByBed = $grpc.ClientMethod<$1.GetPatientByBedRequest, $1.GetPatientByBedResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientByBed',
      ($1.GetPatientByBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPatientByBedResponse.fromBuffer(value));
  static final _$getPatientsByWard = $grpc.ClientMethod<$1.GetPatientsByWardRequest, $1.GetPatientsByWardResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientsByWard',
      ($1.GetPatientsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPatientsByWardResponse.fromBuffer(value));
  static final _$getPatientAssignmentByWard = $grpc.ClientMethod<$1.GetPatientAssignmentByWardRequest, $1.GetPatientAssignmentByWardResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientAssignmentByWard',
      ($1.GetPatientAssignmentByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPatientAssignmentByWardResponse.fromBuffer(value));
  static final _$getPatientDetails = $grpc.ClientMethod<$1.GetPatientDetailsRequest, $1.GetPatientDetailsResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientDetails',
      ($1.GetPatientDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPatientDetailsResponse.fromBuffer(value));
  static final _$getPatientList = $grpc.ClientMethod<$1.GetPatientListRequest, $1.GetPatientListResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientList',
      ($1.GetPatientListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPatientListResponse.fromBuffer(value));
  static final _$getRecentPatients = $grpc.ClientMethod<$1.GetRecentPatientsRequest, $1.GetRecentPatientsResponse>(
      '/services.tasks_svc.v1.PatientService/GetRecentPatients',
      ($1.GetRecentPatientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetRecentPatientsResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$1.UpdatePatientRequest, $1.UpdatePatientResponse>(
      '/services.tasks_svc.v1.PatientService/UpdatePatient',
      ($1.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$1.AssignBedRequest, $1.AssignBedResponse>(
      '/services.tasks_svc.v1.PatientService/AssignBed',
      ($1.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$1.UnassignBedRequest, $1.UnassignBedResponse>(
      '/services.tasks_svc.v1.PatientService/UnassignBed',
      ($1.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$1.DischargePatientRequest, $1.DischargePatientResponse>(
      '/services.tasks_svc.v1.PatientService/DischargePatient',
      ($1.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DischargePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$1.ReadmitPatientRequest, $1.ReadmitPatientResponse>(
      '/services.tasks_svc.v1.PatientService/ReadmitPatient',
      ($1.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ReadmitPatientResponse.fromBuffer(value));
  static final _$deletePatient = $grpc.ClientMethod<$1.DeletePatientRequest, $1.DeletePatientResponse>(
      '/services.tasks_svc.v1.PatientService/DeletePatient',
      ($1.DeletePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.DeletePatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.CreatePatientResponse> createPatient($1.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPatientResponse> getPatient($1.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPatientByBedResponse> getPatientByBed($1.GetPatientByBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientByBed, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPatientsByWardResponse> getPatientsByWard($1.GetPatientsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($1.GetPatientAssignmentByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientAssignmentByWard, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPatientDetailsResponse> getPatientDetails($1.GetPatientDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientDetails, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetPatientListResponse> getPatientList($1.GetPatientListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientList, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetRecentPatientsResponse> getRecentPatients($1.GetRecentPatientsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentPatients, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdatePatientResponse> updatePatient($1.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$1.AssignBedResponse> assignBed($1.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$1.UnassignBedResponse> unassignBed($1.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$1.DischargePatientResponse> dischargePatient($1.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$1.ReadmitPatientResponse> readmitPatient($1.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeletePatientResponse> deletePatient($1.DeletePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePatient, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreatePatientRequest, $1.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreatePatientRequest.fromBuffer(value),
        ($1.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPatientRequest, $1.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPatientRequest.fromBuffer(value),
        ($1.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPatientByBedRequest, $1.GetPatientByBedResponse>(
        'GetPatientByBed',
        getPatientByBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPatientByBedRequest.fromBuffer(value),
        ($1.GetPatientByBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPatientsByWardRequest, $1.GetPatientsByWardResponse>(
        'GetPatientsByWard',
        getPatientsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPatientsByWardRequest.fromBuffer(value),
        ($1.GetPatientsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPatientAssignmentByWardRequest, $1.GetPatientAssignmentByWardResponse>(
        'GetPatientAssignmentByWard',
        getPatientAssignmentByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPatientAssignmentByWardRequest.fromBuffer(value),
        ($1.GetPatientAssignmentByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPatientDetailsRequest, $1.GetPatientDetailsResponse>(
        'GetPatientDetails',
        getPatientDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPatientDetailsRequest.fromBuffer(value),
        ($1.GetPatientDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPatientListRequest, $1.GetPatientListResponse>(
        'GetPatientList',
        getPatientList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPatientListRequest.fromBuffer(value),
        ($1.GetPatientListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetRecentPatientsRequest, $1.GetRecentPatientsResponse>(
        'GetRecentPatients',
        getRecentPatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetRecentPatientsRequest.fromBuffer(value),
        ($1.GetRecentPatientsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdatePatientRequest, $1.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdatePatientRequest.fromBuffer(value),
        ($1.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AssignBedRequest, $1.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AssignBedRequest.fromBuffer(value),
        ($1.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UnassignBedRequest, $1.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UnassignBedRequest.fromBuffer(value),
        ($1.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DischargePatientRequest, $1.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DischargePatientRequest.fromBuffer(value),
        ($1.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ReadmitPatientRequest, $1.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ReadmitPatientRequest.fromBuffer(value),
        ($1.ReadmitPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeletePatientRequest, $1.DeletePatientResponse>(
        'DeletePatient',
        deletePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeletePatientRequest.fromBuffer(value),
        ($1.DeletePatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$1.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$1.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$1.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$1.GetPatientByBedResponse> getPatientByBed_Pre($grpc.ServiceCall call, $async.Future<$1.GetPatientByBedRequest> request) async {
    return getPatientByBed(call, await request);
  }

  $async.Future<$1.GetPatientsByWardResponse> getPatientsByWard_Pre($grpc.ServiceCall call, $async.Future<$1.GetPatientsByWardRequest> request) async {
    return getPatientsByWard(call, await request);
  }

  $async.Future<$1.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard_Pre($grpc.ServiceCall call, $async.Future<$1.GetPatientAssignmentByWardRequest> request) async {
    return getPatientAssignmentByWard(call, await request);
  }

  $async.Future<$1.GetPatientDetailsResponse> getPatientDetails_Pre($grpc.ServiceCall call, $async.Future<$1.GetPatientDetailsRequest> request) async {
    return getPatientDetails(call, await request);
  }

  $async.Future<$1.GetPatientListResponse> getPatientList_Pre($grpc.ServiceCall call, $async.Future<$1.GetPatientListRequest> request) async {
    return getPatientList(call, await request);
  }

  $async.Future<$1.GetRecentPatientsResponse> getRecentPatients_Pre($grpc.ServiceCall call, $async.Future<$1.GetRecentPatientsRequest> request) async {
    return getRecentPatients(call, await request);
  }

  $async.Future<$1.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$1.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$1.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$1.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$1.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$1.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$1.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$1.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$1.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$1.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$1.DeletePatientResponse> deletePatient_Pre($grpc.ServiceCall call, $async.Future<$1.DeletePatientRequest> request) async {
    return deletePatient(call, await request);
  }

  $async.Future<$1.CreatePatientResponse> createPatient($grpc.ServiceCall call, $1.CreatePatientRequest request);
  $async.Future<$1.GetPatientResponse> getPatient($grpc.ServiceCall call, $1.GetPatientRequest request);
  $async.Future<$1.GetPatientByBedResponse> getPatientByBed($grpc.ServiceCall call, $1.GetPatientByBedRequest request);
  $async.Future<$1.GetPatientsByWardResponse> getPatientsByWard($grpc.ServiceCall call, $1.GetPatientsByWardRequest request);
  $async.Future<$1.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($grpc.ServiceCall call, $1.GetPatientAssignmentByWardRequest request);
  $async.Future<$1.GetPatientDetailsResponse> getPatientDetails($grpc.ServiceCall call, $1.GetPatientDetailsRequest request);
  $async.Future<$1.GetPatientListResponse> getPatientList($grpc.ServiceCall call, $1.GetPatientListRequest request);
  $async.Future<$1.GetRecentPatientsResponse> getRecentPatients($grpc.ServiceCall call, $1.GetRecentPatientsRequest request);
  $async.Future<$1.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $1.UpdatePatientRequest request);
  $async.Future<$1.AssignBedResponse> assignBed($grpc.ServiceCall call, $1.AssignBedRequest request);
  $async.Future<$1.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $1.UnassignBedRequest request);
  $async.Future<$1.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $1.DischargePatientRequest request);
  $async.Future<$1.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $1.ReadmitPatientRequest request);
  $async.Future<$1.DeletePatientResponse> deletePatient($grpc.ServiceCall call, $1.DeletePatientRequest request);
}
