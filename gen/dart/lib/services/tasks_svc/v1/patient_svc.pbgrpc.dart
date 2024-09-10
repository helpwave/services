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

import 'patient_svc.pb.dart' as $13;

export 'patient_svc.pb.dart';

@$pb.GrpcServiceName('services.tasks_svc.v1.PatientService')
class PatientServiceClient extends $grpc.Client {
  static final _$createPatient = $grpc.ClientMethod<$13.CreatePatientRequest, $13.CreatePatientResponse>(
      '/services.tasks_svc.v1.PatientService/CreatePatient',
      ($13.CreatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.CreatePatientResponse.fromBuffer(value));
  static final _$getPatient = $grpc.ClientMethod<$13.GetPatientRequest, $13.GetPatientResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatient',
      ($13.GetPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetPatientResponse.fromBuffer(value));
  static final _$getPatientByBed = $grpc.ClientMethod<$13.GetPatientByBedRequest, $13.GetPatientByBedResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientByBed',
      ($13.GetPatientByBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetPatientByBedResponse.fromBuffer(value));
  static final _$getPatientsByWard = $grpc.ClientMethod<$13.GetPatientsByWardRequest, $13.GetPatientsByWardResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientsByWard',
      ($13.GetPatientsByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetPatientsByWardResponse.fromBuffer(value));
  static final _$getPatientAssignmentByWard = $grpc.ClientMethod<$13.GetPatientAssignmentByWardRequest, $13.GetPatientAssignmentByWardResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientAssignmentByWard',
      ($13.GetPatientAssignmentByWardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetPatientAssignmentByWardResponse.fromBuffer(value));
  static final _$getPatientDetails = $grpc.ClientMethod<$13.GetPatientDetailsRequest, $13.GetPatientDetailsResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientDetails',
      ($13.GetPatientDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetPatientDetailsResponse.fromBuffer(value));
  static final _$getPatientList = $grpc.ClientMethod<$13.GetPatientListRequest, $13.GetPatientListResponse>(
      '/services.tasks_svc.v1.PatientService/GetPatientList',
      ($13.GetPatientListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetPatientListResponse.fromBuffer(value));
  static final _$getRecentPatients = $grpc.ClientMethod<$13.GetRecentPatientsRequest, $13.GetRecentPatientsResponse>(
      '/services.tasks_svc.v1.PatientService/GetRecentPatients',
      ($13.GetRecentPatientsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.GetRecentPatientsResponse.fromBuffer(value));
  static final _$updatePatient = $grpc.ClientMethod<$13.UpdatePatientRequest, $13.UpdatePatientResponse>(
      '/services.tasks_svc.v1.PatientService/UpdatePatient',
      ($13.UpdatePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UpdatePatientResponse.fromBuffer(value));
  static final _$assignBed = $grpc.ClientMethod<$13.AssignBedRequest, $13.AssignBedResponse>(
      '/services.tasks_svc.v1.PatientService/AssignBed',
      ($13.AssignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AssignBedResponse.fromBuffer(value));
  static final _$unassignBed = $grpc.ClientMethod<$13.UnassignBedRequest, $13.UnassignBedResponse>(
      '/services.tasks_svc.v1.PatientService/UnassignBed',
      ($13.UnassignBedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.UnassignBedResponse.fromBuffer(value));
  static final _$dischargePatient = $grpc.ClientMethod<$13.DischargePatientRequest, $13.DischargePatientResponse>(
      '/services.tasks_svc.v1.PatientService/DischargePatient',
      ($13.DischargePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DischargePatientResponse.fromBuffer(value));
  static final _$readmitPatient = $grpc.ClientMethod<$13.ReadmitPatientRequest, $13.ReadmitPatientResponse>(
      '/services.tasks_svc.v1.PatientService/ReadmitPatient',
      ($13.ReadmitPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.ReadmitPatientResponse.fromBuffer(value));
  static final _$deletePatient = $grpc.ClientMethod<$13.DeletePatientRequest, $13.DeletePatientResponse>(
      '/services.tasks_svc.v1.PatientService/DeletePatient',
      ($13.DeletePatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.DeletePatientResponse.fromBuffer(value));

  PatientServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreatePatientResponse> createPatient($13.CreatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPatient, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetPatientResponse> getPatient($13.GetPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatient, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetPatientByBedResponse> getPatientByBed($13.GetPatientByBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientByBed, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetPatientsByWardResponse> getPatientsByWard($13.GetPatientsByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientsByWard, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($13.GetPatientAssignmentByWardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientAssignmentByWard, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetPatientDetailsResponse> getPatientDetails($13.GetPatientDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientDetails, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetPatientListResponse> getPatientList($13.GetPatientListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientList, request, options: options);
  }

  $grpc.ResponseFuture<$13.GetRecentPatientsResponse> getRecentPatients($13.GetRecentPatientsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecentPatients, request, options: options);
  }

  $grpc.ResponseFuture<$13.UpdatePatientResponse> updatePatient($13.UpdatePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePatient, request, options: options);
  }

  $grpc.ResponseFuture<$13.AssignBedResponse> assignBed($13.AssignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignBed, request, options: options);
  }

  $grpc.ResponseFuture<$13.UnassignBedResponse> unassignBed($13.UnassignBedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unassignBed, request, options: options);
  }

  $grpc.ResponseFuture<$13.DischargePatientResponse> dischargePatient($13.DischargePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dischargePatient, request, options: options);
  }

  $grpc.ResponseFuture<$13.ReadmitPatientResponse> readmitPatient($13.ReadmitPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readmitPatient, request, options: options);
  }

  $grpc.ResponseFuture<$13.DeletePatientResponse> deletePatient($13.DeletePatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePatient, request, options: options);
  }
}

@$pb.GrpcServiceName('services.tasks_svc.v1.PatientService')
abstract class PatientServiceBase extends $grpc.Service {
  $core.String get $name => 'services.tasks_svc.v1.PatientService';

  PatientServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreatePatientRequest, $13.CreatePatientResponse>(
        'CreatePatient',
        createPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.CreatePatientRequest.fromBuffer(value),
        ($13.CreatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetPatientRequest, $13.GetPatientResponse>(
        'GetPatient',
        getPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetPatientRequest.fromBuffer(value),
        ($13.GetPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetPatientByBedRequest, $13.GetPatientByBedResponse>(
        'GetPatientByBed',
        getPatientByBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetPatientByBedRequest.fromBuffer(value),
        ($13.GetPatientByBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetPatientsByWardRequest, $13.GetPatientsByWardResponse>(
        'GetPatientsByWard',
        getPatientsByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetPatientsByWardRequest.fromBuffer(value),
        ($13.GetPatientsByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetPatientAssignmentByWardRequest, $13.GetPatientAssignmentByWardResponse>(
        'GetPatientAssignmentByWard',
        getPatientAssignmentByWard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetPatientAssignmentByWardRequest.fromBuffer(value),
        ($13.GetPatientAssignmentByWardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetPatientDetailsRequest, $13.GetPatientDetailsResponse>(
        'GetPatientDetails',
        getPatientDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetPatientDetailsRequest.fromBuffer(value),
        ($13.GetPatientDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetPatientListRequest, $13.GetPatientListResponse>(
        'GetPatientList',
        getPatientList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetPatientListRequest.fromBuffer(value),
        ($13.GetPatientListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.GetRecentPatientsRequest, $13.GetRecentPatientsResponse>(
        'GetRecentPatients',
        getRecentPatients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.GetRecentPatientsRequest.fromBuffer(value),
        ($13.GetRecentPatientsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UpdatePatientRequest, $13.UpdatePatientResponse>(
        'UpdatePatient',
        updatePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UpdatePatientRequest.fromBuffer(value),
        ($13.UpdatePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.AssignBedRequest, $13.AssignBedResponse>(
        'AssignBed',
        assignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.AssignBedRequest.fromBuffer(value),
        ($13.AssignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.UnassignBedRequest, $13.UnassignBedResponse>(
        'UnassignBed',
        unassignBed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.UnassignBedRequest.fromBuffer(value),
        ($13.UnassignBedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DischargePatientRequest, $13.DischargePatientResponse>(
        'DischargePatient',
        dischargePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DischargePatientRequest.fromBuffer(value),
        ($13.DischargePatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.ReadmitPatientRequest, $13.ReadmitPatientResponse>(
        'ReadmitPatient',
        readmitPatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.ReadmitPatientRequest.fromBuffer(value),
        ($13.ReadmitPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$13.DeletePatientRequest, $13.DeletePatientResponse>(
        'DeletePatient',
        deletePatient_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DeletePatientRequest.fromBuffer(value),
        ($13.DeletePatientResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreatePatientResponse> createPatient_Pre($grpc.ServiceCall call, $async.Future<$13.CreatePatientRequest> request) async {
    return createPatient(call, await request);
  }

  $async.Future<$13.GetPatientResponse> getPatient_Pre($grpc.ServiceCall call, $async.Future<$13.GetPatientRequest> request) async {
    return getPatient(call, await request);
  }

  $async.Future<$13.GetPatientByBedResponse> getPatientByBed_Pre($grpc.ServiceCall call, $async.Future<$13.GetPatientByBedRequest> request) async {
    return getPatientByBed(call, await request);
  }

  $async.Future<$13.GetPatientsByWardResponse> getPatientsByWard_Pre($grpc.ServiceCall call, $async.Future<$13.GetPatientsByWardRequest> request) async {
    return getPatientsByWard(call, await request);
  }

  $async.Future<$13.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard_Pre($grpc.ServiceCall call, $async.Future<$13.GetPatientAssignmentByWardRequest> request) async {
    return getPatientAssignmentByWard(call, await request);
  }

  $async.Future<$13.GetPatientDetailsResponse> getPatientDetails_Pre($grpc.ServiceCall call, $async.Future<$13.GetPatientDetailsRequest> request) async {
    return getPatientDetails(call, await request);
  }

  $async.Future<$13.GetPatientListResponse> getPatientList_Pre($grpc.ServiceCall call, $async.Future<$13.GetPatientListRequest> request) async {
    return getPatientList(call, await request);
  }

  $async.Future<$13.GetRecentPatientsResponse> getRecentPatients_Pre($grpc.ServiceCall call, $async.Future<$13.GetRecentPatientsRequest> request) async {
    return getRecentPatients(call, await request);
  }

  $async.Future<$13.UpdatePatientResponse> updatePatient_Pre($grpc.ServiceCall call, $async.Future<$13.UpdatePatientRequest> request) async {
    return updatePatient(call, await request);
  }

  $async.Future<$13.AssignBedResponse> assignBed_Pre($grpc.ServiceCall call, $async.Future<$13.AssignBedRequest> request) async {
    return assignBed(call, await request);
  }

  $async.Future<$13.UnassignBedResponse> unassignBed_Pre($grpc.ServiceCall call, $async.Future<$13.UnassignBedRequest> request) async {
    return unassignBed(call, await request);
  }

  $async.Future<$13.DischargePatientResponse> dischargePatient_Pre($grpc.ServiceCall call, $async.Future<$13.DischargePatientRequest> request) async {
    return dischargePatient(call, await request);
  }

  $async.Future<$13.ReadmitPatientResponse> readmitPatient_Pre($grpc.ServiceCall call, $async.Future<$13.ReadmitPatientRequest> request) async {
    return readmitPatient(call, await request);
  }

  $async.Future<$13.DeletePatientResponse> deletePatient_Pre($grpc.ServiceCall call, $async.Future<$13.DeletePatientRequest> request) async {
    return deletePatient(call, await request);
  }

  $async.Future<$13.CreatePatientResponse> createPatient($grpc.ServiceCall call, $13.CreatePatientRequest request);
  $async.Future<$13.GetPatientResponse> getPatient($grpc.ServiceCall call, $13.GetPatientRequest request);
  $async.Future<$13.GetPatientByBedResponse> getPatientByBed($grpc.ServiceCall call, $13.GetPatientByBedRequest request);
  $async.Future<$13.GetPatientsByWardResponse> getPatientsByWard($grpc.ServiceCall call, $13.GetPatientsByWardRequest request);
  $async.Future<$13.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($grpc.ServiceCall call, $13.GetPatientAssignmentByWardRequest request);
  $async.Future<$13.GetPatientDetailsResponse> getPatientDetails($grpc.ServiceCall call, $13.GetPatientDetailsRequest request);
  $async.Future<$13.GetPatientListResponse> getPatientList($grpc.ServiceCall call, $13.GetPatientListRequest request);
  $async.Future<$13.GetRecentPatientsResponse> getRecentPatients($grpc.ServiceCall call, $13.GetRecentPatientsRequest request);
  $async.Future<$13.UpdatePatientResponse> updatePatient($grpc.ServiceCall call, $13.UpdatePatientRequest request);
  $async.Future<$13.AssignBedResponse> assignBed($grpc.ServiceCall call, $13.AssignBedRequest request);
  $async.Future<$13.UnassignBedResponse> unassignBed($grpc.ServiceCall call, $13.UnassignBedRequest request);
  $async.Future<$13.DischargePatientResponse> dischargePatient($grpc.ServiceCall call, $13.DischargePatientRequest request);
  $async.Future<$13.ReadmitPatientResponse> readmitPatient($grpc.ServiceCall call, $13.ReadmitPatientRequest request);
  $async.Future<$13.DeletePatientResponse> deletePatient($grpc.ServiceCall call, $13.DeletePatientRequest request);
}
