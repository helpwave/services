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

import 'patient_svc.pb.dart' as $7;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$7.CreatePatientRequest, $7.CreatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/CreatePatient',
      ($7.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$7.GetPatientRequest, $7.GetPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatient',
      ($7.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetPatientResponse.fromBuffer(value));
  static final _$getPatientByBed = $grpc.ClientMethod<$7.GetPatientByBedRequest, $7.GetPatientByBedResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientByBed',
      ($7.GetPatientByBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetPatientByBedResponse.fromBuffer(value));
  static final _$getPatientsByWard = $grpc.ClientMethod<$7.GetPatientsByWardRequest, $7.GetPatientsByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientsByWard',
      ($7.GetPatientsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetPatientsByWardResponse.fromBuffer(value));
  static final _$getPatientAssignmentByWard = $grpc.ClientMethod<$7.GetPatientAssignmentByWardRequest, $7.GetPatientAssignmentByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientAssignmentByWard',
      ($7.GetPatientAssignmentByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetPatientAssignmentByWardResponse.fromBuffer(value));
  static final _$getRecentPatients = $grpc.ClientMethod<$7.GetRecentPatientsRequest, $7.GetRecentPatientsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetRecentPatients',
      ($7.GetRecentPatientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetRecentPatientsResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$7.UpdatePatientRequest, $7.UpdatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/UpdatePatient',
      ($7.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$7.AssignBedRequest, $7.AssignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/AssignBed',
      ($7.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$7.UnassignBedRequest, $7.UnassignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/UnassignBed',
      ($7.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$7.DischargePatientRequest, $7.DischargePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DischargePatient',
      ($7.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DischargePatientResponse.fromBuffer(value));
  static final _$getPatientDetails = $grpc.ClientMethod<$7.GetPatientDetailsRequest, $7.GetPatientDetailsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientDetails',
      ($7.GetPatientDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetPatientDetailsResponse.fromBuffer(value));
  static final _$getPatientList = $grpc.ClientMethod<$7.GetPatientListRequest, $7.GetPatientListResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientList',
      ($7.GetPatientListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.GetPatientListResponse.fromBuffer(value));
  static final _$deletePatient = $grpc.ClientMethod<$7.DeletePatientRequest, $7.DeletePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DeletePatient',
      ($7.DeletePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DeletePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$7.ReadmitPatientRequest, $7.ReadmitPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/ReadmitPatient',
      ($7.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ReadmitPatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.CreatePatientResponse> createPatient($7.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetPatientResponse> getPatient($7.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetPatientByBedResponse> getPatientByBed($7.GetPatientByBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientByBed, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetPatientsByWardResponse> getPatientsByWard($7.GetPatientsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($7.GetPatientAssignmentByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientAssignmentByWard, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetRecentPatientsResponse> getRecentPatients($7.GetRecentPatientsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentPatients, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdatePatientResponse> updatePatient($7.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$7.AssignBedResponse> assignBed($7.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$7.UnassignBedResponse> unassignBed($7.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$7.DischargePatientResponse> dischargePatient($7.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetPatientDetailsResponse> getPatientDetails($7.GetPatientDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientDetails, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetPatientListResponse> getPatientList($7.GetPatientListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientList, request, options: options);
  }

  $grpc.ResponseFuture<$7.DeletePatientResponse> deletePatient($7.DeletePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePatient, request, options: options);
  }

  $grpc.ResponseFuture<$7.ReadmitPatientResponse> readmitPatient($7.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.CreatePatientRequest, $7.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreatePatientRequest.fromBuffer(value),
        ($7.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetPatientRequest, $7.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetPatientRequest.fromBuffer(value),
        ($7.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetPatientByBedRequest, $7.GetPatientByBedResponse>(
        'GetPatientByBed',
        getPatientByBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetPatientByBedRequest.fromBuffer(value),
        ($7.GetPatientByBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetPatientsByWardRequest, $7.GetPatientsByWardResponse>(
        'GetPatientsByWard',
        getPatientsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetPatientsByWardRequest.fromBuffer(value),
        ($7.GetPatientsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetPatientAssignmentByWardRequest, $7.GetPatientAssignmentByWardResponse>(
        'GetPatientAssignmentByWard',
        getPatientAssignmentByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetPatientAssignmentByWardRequest.fromBuffer(value),
        ($7.GetPatientAssignmentByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetRecentPatientsRequest, $7.GetRecentPatientsResponse>(
        'GetRecentPatients',
        getRecentPatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetRecentPatientsRequest.fromBuffer(value),
        ($7.GetRecentPatientsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdatePatientRequest, $7.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdatePatientRequest.fromBuffer(value),
        ($7.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.AssignBedRequest, $7.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.AssignBedRequest.fromBuffer(value),
        ($7.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UnassignBedRequest, $7.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UnassignBedRequest.fromBuffer(value),
        ($7.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DischargePatientRequest, $7.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DischargePatientRequest.fromBuffer(value),
        ($7.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetPatientDetailsRequest, $7.GetPatientDetailsResponse>(
        'GetPatientDetails',
        getPatientDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetPatientDetailsRequest.fromBuffer(value),
        ($7.GetPatientDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetPatientListRequest, $7.GetPatientListResponse>(
        'GetPatientList',
        getPatientList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetPatientListRequest.fromBuffer(value),
        ($7.GetPatientListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeletePatientRequest, $7.DeletePatientResponse>(
        'DeletePatient',
        deletePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeletePatientRequest.fromBuffer(value),
        ($7.DeletePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ReadmitPatientRequest, $7.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ReadmitPatientRequest.fromBuffer(value),
        ($7.ReadmitPatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$7.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$7.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$7.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$7.GetPatientByBedResponse> getPatientByBed_Pre($grpc.ServiceCall call, $async.Future<$7.GetPatientByBedRequest> request) async {
    return getPatientByBed(call, await request);
  }

  $async.Future<$7.GetPatientsByWardResponse> getPatientsByWard_Pre($grpc.ServiceCall call, $async.Future<$7.GetPatientsByWardRequest> request) async {
    return getPatientsByWard(call, await request);
  }

  $async.Future<$7.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard_Pre($grpc.ServiceCall call, $async.Future<$7.GetPatientAssignmentByWardRequest> request) async {
    return getPatientAssignmentByWard(call, await request);
  }

  $async.Future<$7.GetRecentPatientsResponse> getRecentPatients_Pre($grpc.ServiceCall call, $async.Future<$7.GetRecentPatientsRequest> request) async {
    return getRecentPatients(call, await request);
  }

  $async.Future<$7.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$7.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$7.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$7.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$7.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$7.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$7.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$7.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$7.GetPatientDetailsResponse> getPatientDetails_Pre($grpc.ServiceCall call, $async.Future<$7.GetPatientDetailsRequest> request) async {
    return getPatientDetails(call, await request);
  }

  $async.Future<$7.GetPatientListResponse> getPatientList_Pre($grpc.ServiceCall call, $async.Future<$7.GetPatientListRequest> request) async {
    return getPatientList(call, await request);
  }

  $async.Future<$7.DeletePatientResponse> deletePatient_Pre($grpc.ServiceCall call, $async.Future<$7.DeletePatientRequest> request) async {
    return deletePatient(call, await request);
  }

  $async.Future<$7.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$7.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$7.CreatePatientResponse> createPatient($grpc.ServiceCall call, $7.CreatePatientRequest request);
  $async.Future<$7.GetPatientResponse> getPatient($grpc.ServiceCall call, $7.GetPatientRequest request);
  $async.Future<$7.GetPatientByBedResponse> getPatientByBed($grpc.ServiceCall call, $7.GetPatientByBedRequest request);
  $async.Future<$7.GetPatientsByWardResponse> getPatientsByWard($grpc.ServiceCall call, $7.GetPatientsByWardRequest request);
  $async.Future<$7.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($grpc.ServiceCall call, $7.GetPatientAssignmentByWardRequest request);
  $async.Future<$7.GetRecentPatientsResponse> getRecentPatients($grpc.ServiceCall call, $7.GetRecentPatientsRequest request);
  $async.Future<$7.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $7.UpdatePatientRequest request);
  $async.Future<$7.AssignBedResponse> assignBed($grpc.ServiceCall call, $7.AssignBedRequest request);
  $async.Future<$7.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $7.UnassignBedRequest request);
  $async.Future<$7.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $7.DischargePatientRequest request);
  $async.Future<$7.GetPatientDetailsResponse> getPatientDetails($grpc.ServiceCall call, $7.GetPatientDetailsRequest request);
  $async.Future<$7.GetPatientListResponse> getPatientList($grpc.ServiceCall call, $7.GetPatientListRequest request);
  $async.Future<$7.DeletePatientResponse> deletePatient($grpc.ServiceCall call, $7.DeletePatientRequest request);
  $async.Future<$7.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $7.ReadmitPatientRequest request);
}
