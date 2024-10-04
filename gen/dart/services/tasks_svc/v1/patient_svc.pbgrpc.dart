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

import 'patient_svc.pb.dart' as $12;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$12.CreatePatientRequest, $12.CreatePatientResponse>(
      '/services.tasks_svc.v1.PatientService/CreatePatient',
      ($12.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$12.GetPatientRequest, $12.GetPatientResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatient',
      ($12.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetPatientResponse.fromBuffer(value));
  static final _$getPatientByBed = $grpc.ClientMethod<$12.GetPatientByBedRequest, $12.GetPatientByBedResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientByBed',
      ($12.GetPatientByBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetPatientByBedResponse.fromBuffer(value));
  static final _$getPatientsByWard = $grpc.ClientMethod<$12.GetPatientsByWardRequest, $12.GetPatientsByWardResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientsByWard',
      ($12.GetPatientsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetPatientsByWardResponse.fromBuffer(value));
  static final _$getPatientAssignmentByWard = $grpc.ClientMethod<$12.GetPatientAssignmentByWardRequest, $12.GetPatientAssignmentByWardResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientAssignmentByWard',
      ($12.GetPatientAssignmentByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetPatientAssignmentByWardResponse.fromBuffer(value));
  static final _$getPatientDetails = $grpc.ClientMethod<$12.GetPatientDetailsRequest, $12.GetPatientDetailsResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientDetails',
      ($12.GetPatientDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetPatientDetailsResponse.fromBuffer(value));
  static final _$getPatientList = $grpc.ClientMethod<$12.GetPatientListRequest, $12.GetPatientListResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientList',
      ($12.GetPatientListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetPatientListResponse.fromBuffer(value));
  static final _$getRecentPatients = $grpc.ClientMethod<$12.GetRecentPatientsRequest, $12.GetRecentPatientsResponse>(
      '/services.tasks_svc.v1.PatientService/GetRecentPatients',
      ($12.GetRecentPatientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.GetRecentPatientsResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$12.UpdatePatientRequest, $12.UpdatePatientResponse>(
      '/services.tasks_svc.v1.PatientService/UpdatePatient',
      ($12.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$12.AssignBedRequest, $12.AssignBedResponse>(
      '/services.tasks_svc.v1.PatientService/AssignBed',
      ($12.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$12.UnassignBedRequest, $12.UnassignBedResponse>(
      '/services.tasks_svc.v1.PatientService/UnassignBed',
      ($12.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$12.DischargePatientRequest, $12.DischargePatientResponse>(
      '/services.tasks_svc.v1.PatientService/DischargePatient',
      ($12.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DischargePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$12.ReadmitPatientRequest, $12.ReadmitPatientResponse>(
      '/services.tasks_svc.v1.PatientService/ReadmitPatient',
      ($12.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.ReadmitPatientResponse.fromBuffer(value));
  static final _$deletePatient = $grpc.ClientMethod<$12.DeletePatientRequest, $12.DeletePatientResponse>(
      '/services.tasks_svc.v1.PatientService/DeletePatient',
      ($12.DeletePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.DeletePatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.CreatePatientResponse> createPatient($12.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetPatientResponse> getPatient($12.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetPatientByBedResponse> getPatientByBed($12.GetPatientByBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientByBed, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetPatientsByWardResponse> getPatientsByWard($12.GetPatientsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($12.GetPatientAssignmentByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientAssignmentByWard, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetPatientDetailsResponse> getPatientDetails($12.GetPatientDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientDetails, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetPatientListResponse> getPatientList($12.GetPatientListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientList, request, options: options);
  }

  $grpc.ResponseFuture<$12.GetRecentPatientsResponse> getRecentPatients($12.GetRecentPatientsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentPatients, request, options: options);
  }

  $grpc.ResponseFuture<$12.UpdatePatientResponse> updatePatient($12.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$12.AssignBedResponse> assignBed($12.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$12.UnassignBedResponse> unassignBed($12.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$12.DischargePatientResponse> dischargePatient($12.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$12.ReadmitPatientResponse> readmitPatient($12.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }

  $grpc.ResponseFuture<$12.DeletePatientResponse> deletePatient($12.DeletePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePatient, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.CreatePatientRequest, $12.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.CreatePatientRequest.fromBuffer(value),
        ($12.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetPatientRequest, $12.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetPatientRequest.fromBuffer(value),
        ($12.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetPatientByBedRequest, $12.GetPatientByBedResponse>(
        'GetPatientByBed',
        getPatientByBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetPatientByBedRequest.fromBuffer(value),
        ($12.GetPatientByBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetPatientsByWardRequest, $12.GetPatientsByWardResponse>(
        'GetPatientsByWard',
        getPatientsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetPatientsByWardRequest.fromBuffer(value),
        ($12.GetPatientsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetPatientAssignmentByWardRequest, $12.GetPatientAssignmentByWardResponse>(
        'GetPatientAssignmentByWard',
        getPatientAssignmentByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetPatientAssignmentByWardRequest.fromBuffer(value),
        ($12.GetPatientAssignmentByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetPatientDetailsRequest, $12.GetPatientDetailsResponse>(
        'GetPatientDetails',
        getPatientDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetPatientDetailsRequest.fromBuffer(value),
        ($12.GetPatientDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetPatientListRequest, $12.GetPatientListResponse>(
        'GetPatientList',
        getPatientList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetPatientListRequest.fromBuffer(value),
        ($12.GetPatientListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.GetRecentPatientsRequest, $12.GetRecentPatientsResponse>(
        'GetRecentPatients',
        getRecentPatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.GetRecentPatientsRequest.fromBuffer(value),
        ($12.GetRecentPatientsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UpdatePatientRequest, $12.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UpdatePatientRequest.fromBuffer(value),
        ($12.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.AssignBedRequest, $12.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.AssignBedRequest.fromBuffer(value),
        ($12.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.UnassignBedRequest, $12.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.UnassignBedRequest.fromBuffer(value),
        ($12.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DischargePatientRequest, $12.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DischargePatientRequest.fromBuffer(value),
        ($12.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.ReadmitPatientRequest, $12.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.ReadmitPatientRequest.fromBuffer(value),
        ($12.ReadmitPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.DeletePatientRequest, $12.DeletePatientResponse>(
        'DeletePatient',
        deletePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.DeletePatientRequest.fromBuffer(value),
        ($12.DeletePatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$12.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$12.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$12.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$12.GetPatientByBedResponse> getPatientByBed_Pre($grpc.ServiceCall call, $async.Future<$12.GetPatientByBedRequest> request) async {
    return getPatientByBed(call, await request);
  }

  $async.Future<$12.GetPatientsByWardResponse> getPatientsByWard_Pre($grpc.ServiceCall call, $async.Future<$12.GetPatientsByWardRequest> request) async {
    return getPatientsByWard(call, await request);
  }

  $async.Future<$12.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard_Pre($grpc.ServiceCall call, $async.Future<$12.GetPatientAssignmentByWardRequest> request) async {
    return getPatientAssignmentByWard(call, await request);
  }

  $async.Future<$12.GetPatientDetailsResponse> getPatientDetails_Pre($grpc.ServiceCall call, $async.Future<$12.GetPatientDetailsRequest> request) async {
    return getPatientDetails(call, await request);
  }

  $async.Future<$12.GetPatientListResponse> getPatientList_Pre($grpc.ServiceCall call, $async.Future<$12.GetPatientListRequest> request) async {
    return getPatientList(call, await request);
  }

  $async.Future<$12.GetRecentPatientsResponse> getRecentPatients_Pre($grpc.ServiceCall call, $async.Future<$12.GetRecentPatientsRequest> request) async {
    return getRecentPatients(call, await request);
  }

  $async.Future<$12.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$12.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$12.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$12.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$12.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$12.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$12.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$12.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$12.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$12.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$12.DeletePatientResponse> deletePatient_Pre($grpc.ServiceCall call, $async.Future<$12.DeletePatientRequest> request) async {
    return deletePatient(call, await request);
  }

  $async.Future<$12.CreatePatientResponse> createPatient($grpc.ServiceCall call, $12.CreatePatientRequest request);
  $async.Future<$12.GetPatientResponse> getPatient($grpc.ServiceCall call, $12.GetPatientRequest request);
  $async.Future<$12.GetPatientByBedResponse> getPatientByBed($grpc.ServiceCall call, $12.GetPatientByBedRequest request);
  $async.Future<$12.GetPatientsByWardResponse> getPatientsByWard($grpc.ServiceCall call, $12.GetPatientsByWardRequest request);
  $async.Future<$12.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($grpc.ServiceCall call, $12.GetPatientAssignmentByWardRequest request);
  $async.Future<$12.GetPatientDetailsResponse> getPatientDetails($grpc.ServiceCall call, $12.GetPatientDetailsRequest request);
  $async.Future<$12.GetPatientListResponse> getPatientList($grpc.ServiceCall call, $12.GetPatientListRequest request);
  $async.Future<$12.GetRecentPatientsResponse> getRecentPatients($grpc.ServiceCall call, $12.GetRecentPatientsRequest request);
  $async.Future<$12.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $12.UpdatePatientRequest request);
  $async.Future<$12.AssignBedResponse> assignBed($grpc.ServiceCall call, $12.AssignBedRequest request);
  $async.Future<$12.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $12.UnassignBedRequest request);
  $async.Future<$12.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $12.DischargePatientRequest request);
  $async.Future<$12.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $12.ReadmitPatientRequest request);
  $async.Future<$12.DeletePatientResponse> deletePatient($grpc.ServiceCall call, $12.DeletePatientRequest request);
}
