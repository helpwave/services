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

import 'patient_svc.pb.dart' as $8;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$8.CreatePatientRequest, $8.CreatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/CreatePatient',
      ($8.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$8.GetPatientRequest, $8.GetPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatient',
      ($8.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetPatientResponse.fromBuffer(value));
  static final _$getPatientByBed = $grpc.ClientMethod<$8.GetPatientByBedRequest, $8.GetPatientByBedResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientByBed',
      ($8.GetPatientByBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetPatientByBedResponse.fromBuffer(value));
  static final _$getPatientsByWard = $grpc.ClientMethod<$8.GetPatientsByWardRequest, $8.GetPatientsByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientsByWard',
      ($8.GetPatientsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetPatientsByWardResponse.fromBuffer(value));
  static final _$getPatientAssignmentByWard = $grpc.ClientMethod<$8.GetPatientAssignmentByWardRequest, $8.GetPatientAssignmentByWardResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientAssignmentByWard',
      ($8.GetPatientAssignmentByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetPatientAssignmentByWardResponse.fromBuffer(value));
  static final _$getRecentPatients = $grpc.ClientMethod<$8.GetRecentPatientsRequest, $8.GetRecentPatientsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetRecentPatients',
      ($8.GetRecentPatientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetRecentPatientsResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$8.UpdatePatientRequest, $8.UpdatePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/UpdatePatient',
      ($8.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$8.AssignBedRequest, $8.AssignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/AssignBed',
      ($8.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$8.UnassignBedRequest, $8.UnassignBedResponse>(
      '/proto.services.task_svc.v1.PatientService/UnassignBed',
      ($8.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$8.DischargePatientRequest, $8.DischargePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DischargePatient',
      ($8.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DischargePatientResponse.fromBuffer(value));
  static final _$getPatientDetails = $grpc.ClientMethod<$8.GetPatientDetailsRequest, $8.GetPatientDetailsResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientDetails',
      ($8.GetPatientDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetPatientDetailsResponse.fromBuffer(value));
  static final _$getPatientList = $grpc.ClientMethod<$8.GetPatientListRequest, $8.GetPatientListResponse>(
      '/proto.services.task_svc.v1.PatientService/GetPatientList',
      ($8.GetPatientListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetPatientListResponse.fromBuffer(value));
  static final _$deletePatient = $grpc.ClientMethod<$8.DeletePatientRequest, $8.DeletePatientResponse>(
      '/proto.services.task_svc.v1.PatientService/DeletePatient',
      ($8.DeletePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.DeletePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$8.ReadmitPatientRequest, $8.ReadmitPatientResponse>(
      '/proto.services.task_svc.v1.PatientService/ReadmitPatient',
      ($8.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ReadmitPatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.CreatePatientResponse> createPatient($8.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetPatientResponse> getPatient($8.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetPatientByBedResponse> getPatientByBed($8.GetPatientByBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientByBed, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetPatientsByWardResponse> getPatientsByWard($8.GetPatientsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($8.GetPatientAssignmentByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientAssignmentByWard, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetRecentPatientsResponse> getRecentPatients($8.GetRecentPatientsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentPatients, request, options: options);
  }

  $grpc.ResponseFuture<$8.UpdatePatientResponse> updatePatient($8.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$8.AssignBedResponse> assignBed($8.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$8.UnassignBedResponse> unassignBed($8.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$8.DischargePatientResponse> dischargePatient($8.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetPatientDetailsResponse> getPatientDetails($8.GetPatientDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientDetails, request, options: options);
  }

  $grpc.ResponseFuture<$8.GetPatientListResponse> getPatientList($8.GetPatientListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientList, request, options: options);
  }

  $grpc.ResponseFuture<$8.DeletePatientResponse> deletePatient($8.DeletePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePatient, request, options: options);
  }

  $grpc.ResponseFuture<$8.ReadmitPatientResponse> readmitPatient($8.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.services.task_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.services.task_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.CreatePatientRequest, $8.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreatePatientRequest.fromBuffer(value),
        ($8.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetPatientRequest, $8.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetPatientRequest.fromBuffer(value),
        ($8.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetPatientByBedRequest, $8.GetPatientByBedResponse>(
        'GetPatientByBed',
        getPatientByBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetPatientByBedRequest.fromBuffer(value),
        ($8.GetPatientByBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetPatientsByWardRequest, $8.GetPatientsByWardResponse>(
        'GetPatientsByWard',
        getPatientsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetPatientsByWardRequest.fromBuffer(value),
        ($8.GetPatientsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetPatientAssignmentByWardRequest, $8.GetPatientAssignmentByWardResponse>(
        'GetPatientAssignmentByWard',
        getPatientAssignmentByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetPatientAssignmentByWardRequest.fromBuffer(value),
        ($8.GetPatientAssignmentByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetRecentPatientsRequest, $8.GetRecentPatientsResponse>(
        'GetRecentPatients',
        getRecentPatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetRecentPatientsRequest.fromBuffer(value),
        ($8.GetRecentPatientsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdatePatientRequest, $8.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdatePatientRequest.fromBuffer(value),
        ($8.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AssignBedRequest, $8.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.AssignBedRequest.fromBuffer(value),
        ($8.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UnassignBedRequest, $8.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UnassignBedRequest.fromBuffer(value),
        ($8.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DischargePatientRequest, $8.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DischargePatientRequest.fromBuffer(value),
        ($8.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetPatientDetailsRequest, $8.GetPatientDetailsResponse>(
        'GetPatientDetails',
        getPatientDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetPatientDetailsRequest.fromBuffer(value),
        ($8.GetPatientDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetPatientListRequest, $8.GetPatientListResponse>(
        'GetPatientList',
        getPatientList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetPatientListRequest.fromBuffer(value),
        ($8.GetPatientListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeletePatientRequest, $8.DeletePatientResponse>(
        'DeletePatient',
        deletePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeletePatientRequest.fromBuffer(value),
        ($8.DeletePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ReadmitPatientRequest, $8.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.ReadmitPatientRequest.fromBuffer(value),
        ($8.ReadmitPatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$8.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$8.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$8.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$8.GetPatientByBedResponse> getPatientByBed_Pre($grpc.ServiceCall call, $async.Future<$8.GetPatientByBedRequest> request) async {
    return getPatientByBed(call, await request);
  }

  $async.Future<$8.GetPatientsByWardResponse> getPatientsByWard_Pre($grpc.ServiceCall call, $async.Future<$8.GetPatientsByWardRequest> request) async {
    return getPatientsByWard(call, await request);
  }

  $async.Future<$8.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard_Pre($grpc.ServiceCall call, $async.Future<$8.GetPatientAssignmentByWardRequest> request) async {
    return getPatientAssignmentByWard(call, await request);
  }

  $async.Future<$8.GetRecentPatientsResponse> getRecentPatients_Pre($grpc.ServiceCall call, $async.Future<$8.GetRecentPatientsRequest> request) async {
    return getRecentPatients(call, await request);
  }

  $async.Future<$8.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$8.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$8.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$8.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$8.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$8.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$8.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$8.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$8.GetPatientDetailsResponse> getPatientDetails_Pre($grpc.ServiceCall call, $async.Future<$8.GetPatientDetailsRequest> request) async {
    return getPatientDetails(call, await request);
  }

  $async.Future<$8.GetPatientListResponse> getPatientList_Pre($grpc.ServiceCall call, $async.Future<$8.GetPatientListRequest> request) async {
    return getPatientList(call, await request);
  }

  $async.Future<$8.DeletePatientResponse> deletePatient_Pre($grpc.ServiceCall call, $async.Future<$8.DeletePatientRequest> request) async {
    return deletePatient(call, await request);
  }

  $async.Future<$8.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$8.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$8.CreatePatientResponse> createPatient($grpc.ServiceCall call, $8.CreatePatientRequest request);
  $async.Future<$8.GetPatientResponse> getPatient($grpc.ServiceCall call, $8.GetPatientRequest request);
  $async.Future<$8.GetPatientByBedResponse> getPatientByBed($grpc.ServiceCall call, $8.GetPatientByBedRequest request);
  $async.Future<$8.GetPatientsByWardResponse> getPatientsByWard($grpc.ServiceCall call, $8.GetPatientsByWardRequest request);
  $async.Future<$8.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($grpc.ServiceCall call, $8.GetPatientAssignmentByWardRequest request);
  $async.Future<$8.GetRecentPatientsResponse> getRecentPatients($grpc.ServiceCall call, $8.GetRecentPatientsRequest request);
  $async.Future<$8.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $8.UpdatePatientRequest request);
  $async.Future<$8.AssignBedResponse> assignBed($grpc.ServiceCall call, $8.AssignBedRequest request);
  $async.Future<$8.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $8.UnassignBedRequest request);
  $async.Future<$8.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $8.DischargePatientRequest request);
  $async.Future<$8.GetPatientDetailsResponse> getPatientDetails($grpc.ServiceCall call, $8.GetPatientDetailsRequest request);
  $async.Future<$8.GetPatientListResponse> getPatientList($grpc.ServiceCall call, $8.GetPatientListRequest request);
  $async.Future<$8.DeletePatientResponse> deletePatient($grpc.ServiceCall call, $8.DeletePatientRequest request);
  $async.Future<$8.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $8.ReadmitPatientRequest request);
}
