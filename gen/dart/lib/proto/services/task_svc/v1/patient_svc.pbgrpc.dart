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

import 'patient_svc.pb.dart' as $5;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$5.CreatePatientRequest, $5.CreatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/CreatePatient',
      ($5.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$5.GetPatientRequest, $5.GetPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatient',
      ($5.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetPatientResponse.fromBuffer(value));
  static final _$getPatientByBed = $grpc.ClientMethod<$5.GetPatientByBedRequest, $5.GetPatientByBedResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientByBed',
      ($5.GetPatientByBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetPatientByBedResponse.fromBuffer(value));
  static final _$getPatientsByWard = $grpc.ClientMethod<$5.GetPatientsByWardRequest, $5.GetPatientsByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientsByWard',
      ($5.GetPatientsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetPatientsByWardResponse.fromBuffer(value));
  static final _$getPatientAssignmentByWard = $grpc.ClientMethod<$5.GetPatientAssignmentByWardRequest, $5.GetPatientAssignmentByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientAssignmentByWard',
      ($5.GetPatientAssignmentByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetPatientAssignmentByWardResponse.fromBuffer(value));
  static final _$getRecentPatients = $grpc.ClientMethod<$5.GetRecentPatientsRequest, $5.GetRecentPatientsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetRecentPatients',
      ($5.GetRecentPatientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetRecentPatientsResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$5.UpdatePatientRequest, $5.UpdatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/UpdatePatient',
      ($5.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$5.AssignBedRequest, $5.AssignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/AssignBed',
      ($5.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$5.UnassignBedRequest, $5.UnassignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/UnassignBed',
      ($5.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$5.DischargePatientRequest, $5.DischargePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DischargePatient',
      ($5.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DischargePatientResponse.fromBuffer(value));
  static final _$getPatientDetails = $grpc.ClientMethod<$5.GetPatientDetailsRequest, $5.GetPatientDetailsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientDetails',
      ($5.GetPatientDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetPatientDetailsResponse.fromBuffer(value));
  static final _$getPatientList = $grpc.ClientMethod<$5.GetPatientListRequest, $5.GetPatientListResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientList',
      ($5.GetPatientListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetPatientListResponse.fromBuffer(value));
  static final _$deletePatient = $grpc.ClientMethod<$5.DeletePatientRequest, $5.DeletePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DeletePatient',
      ($5.DeletePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.DeletePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$5.ReadmitPatientRequest, $5.ReadmitPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/ReadmitPatient',
      ($5.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ReadmitPatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.CreatePatientResponse> createPatient($5.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetPatientResponse> getPatient($5.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetPatientByBedResponse> getPatientByBed($5.GetPatientByBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientByBed, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetPatientsByWardResponse> getPatientsByWard($5.GetPatientsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($5.GetPatientAssignmentByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientAssignmentByWard, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetRecentPatientsResponse> getRecentPatients($5.GetRecentPatientsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentPatients, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdatePatientResponse> updatePatient($5.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$5.AssignBedResponse> assignBed($5.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$5.UnassignBedResponse> unassignBed($5.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$5.DischargePatientResponse> dischargePatient($5.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetPatientDetailsResponse> getPatientDetails($5.GetPatientDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientDetails, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetPatientListResponse> getPatientList($5.GetPatientListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientList, request, options: options);
  }

  $grpc.ResponseFuture<$5.DeletePatientResponse> deletePatient($5.DeletePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePatient, request, options: options);
  }

  $grpc.ResponseFuture<$5.ReadmitPatientResponse> readmitPatient($5.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.CreatePatientRequest, $5.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreatePatientRequest.fromBuffer(value),
        ($5.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetPatientRequest, $5.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetPatientRequest.fromBuffer(value),
        ($5.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetPatientByBedRequest, $5.GetPatientByBedResponse>(
        'GetPatientByBed',
        getPatientByBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetPatientByBedRequest.fromBuffer(value),
        ($5.GetPatientByBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetPatientsByWardRequest, $5.GetPatientsByWardResponse>(
        'GetPatientsByWard',
        getPatientsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetPatientsByWardRequest.fromBuffer(value),
        ($5.GetPatientsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetPatientAssignmentByWardRequest, $5.GetPatientAssignmentByWardResponse>(
        'GetPatientAssignmentByWard',
        getPatientAssignmentByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetPatientAssignmentByWardRequest.fromBuffer(value),
        ($5.GetPatientAssignmentByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetRecentPatientsRequest, $5.GetRecentPatientsResponse>(
        'GetRecentPatients',
        getRecentPatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetRecentPatientsRequest.fromBuffer(value),
        ($5.GetRecentPatientsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdatePatientRequest, $5.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdatePatientRequest.fromBuffer(value),
        ($5.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AssignBedRequest, $5.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AssignBedRequest.fromBuffer(value),
        ($5.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UnassignBedRequest, $5.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UnassignBedRequest.fromBuffer(value),
        ($5.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DischargePatientRequest, $5.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DischargePatientRequest.fromBuffer(value),
        ($5.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetPatientDetailsRequest, $5.GetPatientDetailsResponse>(
        'GetPatientDetails',
        getPatientDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetPatientDetailsRequest.fromBuffer(value),
        ($5.GetPatientDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetPatientListRequest, $5.GetPatientListResponse>(
        'GetPatientList',
        getPatientList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetPatientListRequest.fromBuffer(value),
        ($5.GetPatientListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeletePatientRequest, $5.DeletePatientResponse>(
        'DeletePatient',
        deletePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeletePatientRequest.fromBuffer(value),
        ($5.DeletePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ReadmitPatientRequest, $5.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ReadmitPatientRequest.fromBuffer(value),
        ($5.ReadmitPatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$5.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$5.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$5.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$5.GetPatientByBedResponse> getPatientByBed_Pre($grpc.ServiceCall call, $async.Future<$5.GetPatientByBedRequest> request) async {
    return getPatientByBed(call, await request);
  }

  $async.Future<$5.GetPatientsByWardResponse> getPatientsByWard_Pre($grpc.ServiceCall call, $async.Future<$5.GetPatientsByWardRequest> request) async {
    return getPatientsByWard(call, await request);
  }

  $async.Future<$5.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard_Pre($grpc.ServiceCall call, $async.Future<$5.GetPatientAssignmentByWardRequest> request) async {
    return getPatientAssignmentByWard(call, await request);
  }

  $async.Future<$5.GetRecentPatientsResponse> getRecentPatients_Pre($grpc.ServiceCall call, $async.Future<$5.GetRecentPatientsRequest> request) async {
    return getRecentPatients(call, await request);
  }

  $async.Future<$5.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$5.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$5.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$5.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$5.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$5.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$5.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$5.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$5.GetPatientDetailsResponse> getPatientDetails_Pre($grpc.ServiceCall call, $async.Future<$5.GetPatientDetailsRequest> request) async {
    return getPatientDetails(call, await request);
  }

  $async.Future<$5.GetPatientListResponse> getPatientList_Pre($grpc.ServiceCall call, $async.Future<$5.GetPatientListRequest> request) async {
    return getPatientList(call, await request);
  }

  $async.Future<$5.DeletePatientResponse> deletePatient_Pre($grpc.ServiceCall call, $async.Future<$5.DeletePatientRequest> request) async {
    return deletePatient(call, await request);
  }

  $async.Future<$5.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$5.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$5.CreatePatientResponse> createPatient($grpc.ServiceCall call, $5.CreatePatientRequest request);
  $async.Future<$5.GetPatientResponse> getPatient($grpc.ServiceCall call, $5.GetPatientRequest request);
  $async.Future<$5.GetPatientByBedResponse> getPatientByBed($grpc.ServiceCall call, $5.GetPatientByBedRequest request);
  $async.Future<$5.GetPatientsByWardResponse> getPatientsByWard($grpc.ServiceCall call, $5.GetPatientsByWardRequest request);
  $async.Future<$5.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($grpc.ServiceCall call, $5.GetPatientAssignmentByWardRequest request);
  $async.Future<$5.GetRecentPatientsResponse> getRecentPatients($grpc.ServiceCall call, $5.GetRecentPatientsRequest request);
  $async.Future<$5.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $5.UpdatePatientRequest request);
  $async.Future<$5.AssignBedResponse> assignBed($grpc.ServiceCall call, $5.AssignBedRequest request);
  $async.Future<$5.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $5.UnassignBedRequest request);
  $async.Future<$5.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $5.DischargePatientRequest request);
  $async.Future<$5.GetPatientDetailsResponse> getPatientDetails($grpc.ServiceCall call, $5.GetPatientDetailsRequest request);
  $async.Future<$5.GetPatientListResponse> getPatientList($grpc.ServiceCall call, $5.GetPatientListRequest request);
  $async.Future<$5.DeletePatientResponse> deletePatient($grpc.ServiceCall call, $5.DeletePatientRequest request);
  $async.Future<$5.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $5.ReadmitPatientRequest request);
}
