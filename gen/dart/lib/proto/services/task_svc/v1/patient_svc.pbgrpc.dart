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

import 'patient_svc.pb.dart' as $4;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$4.CreatePatientRequest, $4.CreatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/CreatePatient',
      ($4.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$4.GetPatientRequest, $4.GetPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatient',
      ($4.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetPatientResponse.fromBuffer(value));
  static final _$getPatientByBed = $grpc.ClientMethod<$4.GetPatientByBedRequest, $4.GetPatientByBedResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientByBed',
      ($4.GetPatientByBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetPatientByBedResponse.fromBuffer(value));
  static final _$getPatientsByWard = $grpc.ClientMethod<$4.GetPatientsByWardRequest, $4.GetPatientsByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientsByWard',
      ($4.GetPatientsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetPatientsByWardResponse.fromBuffer(value));
  static final _$getPatientAssignmentByWard = $grpc.ClientMethod<$4.GetPatientAssignmentByWardRequest, $4.GetPatientAssignmentByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientAssignmentByWard',
      ($4.GetPatientAssignmentByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetPatientAssignmentByWardResponse.fromBuffer(value));
  static final _$getRecentPatients = $grpc.ClientMethod<$4.GetRecentPatientsRequest, $4.GetRecentPatientsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetRecentPatients',
      ($4.GetRecentPatientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetRecentPatientsResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$4.UpdatePatientRequest, $4.UpdatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/UpdatePatient',
      ($4.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$4.AssignBedRequest, $4.AssignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/AssignBed',
      ($4.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$4.UnassignBedRequest, $4.UnassignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/UnassignBed',
      ($4.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$4.DischargePatientRequest, $4.DischargePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DischargePatient',
      ($4.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DischargePatientResponse.fromBuffer(value));
  static final _$getPatientDetails = $grpc.ClientMethod<$4.GetPatientDetailsRequest, $4.GetPatientDetailsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientDetails',
      ($4.GetPatientDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetPatientDetailsResponse.fromBuffer(value));
  static final _$getPatientList = $grpc.ClientMethod<$4.GetPatientListRequest, $4.GetPatientListResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientList',
      ($4.GetPatientListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetPatientListResponse.fromBuffer(value));
  static final _$deletePatient = $grpc.ClientMethod<$4.DeletePatientRequest, $4.DeletePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DeletePatient',
      ($4.DeletePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.DeletePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$4.ReadmitPatientRequest, $4.ReadmitPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/ReadmitPatient',
      ($4.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ReadmitPatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.CreatePatientResponse> createPatient($4.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetPatientResponse> getPatient($4.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetPatientByBedResponse> getPatientByBed($4.GetPatientByBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientByBed, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetPatientsByWardResponse> getPatientsByWard($4.GetPatientsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($4.GetPatientAssignmentByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientAssignmentByWard, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetRecentPatientsResponse> getRecentPatients($4.GetRecentPatientsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentPatients, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdatePatientResponse> updatePatient($4.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$4.AssignBedResponse> assignBed($4.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$4.UnassignBedResponse> unassignBed($4.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$4.DischargePatientResponse> dischargePatient($4.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetPatientDetailsResponse> getPatientDetails($4.GetPatientDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientDetails, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetPatientListResponse> getPatientList($4.GetPatientListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientList, request, options: options);
  }

  $grpc.ResponseFuture<$4.DeletePatientResponse> deletePatient($4.DeletePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePatient, request, options: options);
  }

  $grpc.ResponseFuture<$4.ReadmitPatientResponse> readmitPatient($4.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CreatePatientRequest, $4.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CreatePatientRequest.fromBuffer(value),
        ($4.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetPatientRequest, $4.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetPatientRequest.fromBuffer(value),
        ($4.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetPatientByBedRequest, $4.GetPatientByBedResponse>(
        'GetPatientByBed',
        getPatientByBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetPatientByBedRequest.fromBuffer(value),
        ($4.GetPatientByBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetPatientsByWardRequest, $4.GetPatientsByWardResponse>(
        'GetPatientsByWard',
        getPatientsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetPatientsByWardRequest.fromBuffer(value),
        ($4.GetPatientsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetPatientAssignmentByWardRequest, $4.GetPatientAssignmentByWardResponse>(
        'GetPatientAssignmentByWard',
        getPatientAssignmentByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetPatientAssignmentByWardRequest.fromBuffer(value),
        ($4.GetPatientAssignmentByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetRecentPatientsRequest, $4.GetRecentPatientsResponse>(
        'GetRecentPatients',
        getRecentPatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetRecentPatientsRequest.fromBuffer(value),
        ($4.GetRecentPatientsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdatePatientRequest, $4.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdatePatientRequest.fromBuffer(value),
        ($4.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.AssignBedRequest, $4.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.AssignBedRequest.fromBuffer(value),
        ($4.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UnassignBedRequest, $4.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UnassignBedRequest.fromBuffer(value),
        ($4.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DischargePatientRequest, $4.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DischargePatientRequest.fromBuffer(value),
        ($4.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetPatientDetailsRequest, $4.GetPatientDetailsResponse>(
        'GetPatientDetails',
        getPatientDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetPatientDetailsRequest.fromBuffer(value),
        ($4.GetPatientDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetPatientListRequest, $4.GetPatientListResponse>(
        'GetPatientList',
        getPatientList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetPatientListRequest.fromBuffer(value),
        ($4.GetPatientListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeletePatientRequest, $4.DeletePatientResponse>(
        'DeletePatient',
        deletePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DeletePatientRequest.fromBuffer(value),
        ($4.DeletePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ReadmitPatientRequest, $4.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ReadmitPatientRequest.fromBuffer(value),
        ($4.ReadmitPatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$4.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$4.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$4.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$4.GetPatientByBedResponse> getPatientByBed_Pre($grpc.ServiceCall call, $async.Future<$4.GetPatientByBedRequest> request) async {
    return getPatientByBed(call, await request);
  }

  $async.Future<$4.GetPatientsByWardResponse> getPatientsByWard_Pre($grpc.ServiceCall call, $async.Future<$4.GetPatientsByWardRequest> request) async {
    return getPatientsByWard(call, await request);
  }

  $async.Future<$4.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard_Pre($grpc.ServiceCall call, $async.Future<$4.GetPatientAssignmentByWardRequest> request) async {
    return getPatientAssignmentByWard(call, await request);
  }

  $async.Future<$4.GetRecentPatientsResponse> getRecentPatients_Pre($grpc.ServiceCall call, $async.Future<$4.GetRecentPatientsRequest> request) async {
    return getRecentPatients(call, await request);
  }

  $async.Future<$4.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$4.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$4.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$4.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$4.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$4.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$4.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$4.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$4.GetPatientDetailsResponse> getPatientDetails_Pre($grpc.ServiceCall call, $async.Future<$4.GetPatientDetailsRequest> request) async {
    return getPatientDetails(call, await request);
  }

  $async.Future<$4.GetPatientListResponse> getPatientList_Pre($grpc.ServiceCall call, $async.Future<$4.GetPatientListRequest> request) async {
    return getPatientList(call, await request);
  }

  $async.Future<$4.DeletePatientResponse> deletePatient_Pre($grpc.ServiceCall call, $async.Future<$4.DeletePatientRequest> request) async {
    return deletePatient(call, await request);
  }

  $async.Future<$4.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$4.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$4.CreatePatientResponse> createPatient($grpc.ServiceCall call, $4.CreatePatientRequest request);
  $async.Future<$4.GetPatientResponse> getPatient($grpc.ServiceCall call, $4.GetPatientRequest request);
  $async.Future<$4.GetPatientByBedResponse> getPatientByBed($grpc.ServiceCall call, $4.GetPatientByBedRequest request);
  $async.Future<$4.GetPatientsByWardResponse> getPatientsByWard($grpc.ServiceCall call, $4.GetPatientsByWardRequest request);
  $async.Future<$4.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($grpc.ServiceCall call, $4.GetPatientAssignmentByWardRequest request);
  $async.Future<$4.GetRecentPatientsResponse> getRecentPatients($grpc.ServiceCall call, $4.GetRecentPatientsRequest request);
  $async.Future<$4.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $4.UpdatePatientRequest request);
  $async.Future<$4.AssignBedResponse> assignBed($grpc.ServiceCall call, $4.AssignBedRequest request);
  $async.Future<$4.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $4.UnassignBedRequest request);
  $async.Future<$4.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $4.DischargePatientRequest request);
  $async.Future<$4.GetPatientDetailsResponse> getPatientDetails($grpc.ServiceCall call, $4.GetPatientDetailsRequest request);
  $async.Future<$4.GetPatientListResponse> getPatientList($grpc.ServiceCall call, $4.GetPatientListRequest request);
  $async.Future<$4.DeletePatientResponse> deletePatient($grpc.ServiceCall call, $4.DeletePatientRequest request);
  $async.Future<$4.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $4.ReadmitPatientRequest request);
}
