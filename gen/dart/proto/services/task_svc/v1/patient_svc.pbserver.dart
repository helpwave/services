//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/patient_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'patient_svc.pb.dart' as $3;
import 'patient_svc.pbjson.dart';

export 'patient_svc.pb.dart';

abstract class PatientServiceBase extends $pb.GeneratedService {
  $async.Future<$3.CreatePatientResponse> createPatient($pb.ServerContext ctx, $3.CreatePatientRequest request);
  $async.Future<$3.GetPatientResponse> getPatient($pb.ServerContext ctx, $3.GetPatientRequest request);
  $async.Future<$3.GetPatientByBedResponse> getPatientByBed($pb.ServerContext ctx, $3.GetPatientByBedRequest request);
  $async.Future<$3.GetPatientsByWardResponse> getPatientsByWard($pb.ServerContext ctx, $3.GetPatientsByWardRequest request);
  $async.Future<$3.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($pb.ServerContext ctx, $3.GetPatientAssignmentByWardRequest request);
  $async.Future<$3.UpdatePatientResponse> updatePatient($pb.ServerContext ctx, $3.UpdatePatientRequest request);
  $async.Future<$3.AssignBedResponse> assignBed($pb.ServerContext ctx, $3.AssignBedRequest request);
  $async.Future<$3.UnassignBedResponse> unassignBed($pb.ServerContext ctx, $3.UnassignBedRequest request);
  $async.Future<$3.DischargePatientResponse> dischargePatient($pb.ServerContext ctx, $3.DischargePatientRequest request);
  $async.Future<$3.GetPatientDetailsResponse> getPatientDetails($pb.ServerContext ctx, $3.GetPatientDetailsRequest request);
  $async.Future<$3.GetPatientListResponse> getPatientList($pb.ServerContext ctx, $3.GetPatientListRequest request);
  $async.Future<$3.DeletePatientResponse> deletePatient($pb.ServerContext ctx, $3.DeletePatientRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreatePatient': return $3.CreatePatientRequest();
      case 'GetPatient': return $3.GetPatientRequest();
      case 'GetPatientByBed': return $3.GetPatientByBedRequest();
      case 'GetPatientsByWard': return $3.GetPatientsByWardRequest();
      case 'GetPatientAssignmentByWard': return $3.GetPatientAssignmentByWardRequest();
      case 'UpdatePatient': return $3.UpdatePatientRequest();
      case 'AssignBed': return $3.AssignBedRequest();
      case 'UnassignBed': return $3.UnassignBedRequest();
      case 'DischargePatient': return $3.DischargePatientRequest();
      case 'GetPatientDetails': return $3.GetPatientDetailsRequest();
      case 'GetPatientList': return $3.GetPatientListRequest();
      case 'DeletePatient': return $3.DeletePatientRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreatePatient': return this.createPatient(ctx, request as $3.CreatePatientRequest);
      case 'GetPatient': return this.getPatient(ctx, request as $3.GetPatientRequest);
      case 'GetPatientByBed': return this.getPatientByBed(ctx, request as $3.GetPatientByBedRequest);
      case 'GetPatientsByWard': return this.getPatientsByWard(ctx, request as $3.GetPatientsByWardRequest);
      case 'GetPatientAssignmentByWard': return this.getPatientAssignmentByWard(ctx, request as $3.GetPatientAssignmentByWardRequest);
      case 'UpdatePatient': return this.updatePatient(ctx, request as $3.UpdatePatientRequest);
      case 'AssignBed': return this.assignBed(ctx, request as $3.AssignBedRequest);
      case 'UnassignBed': return this.unassignBed(ctx, request as $3.UnassignBedRequest);
      case 'DischargePatient': return this.dischargePatient(ctx, request as $3.DischargePatientRequest);
      case 'GetPatientDetails': return this.getPatientDetails(ctx, request as $3.GetPatientDetailsRequest);
      case 'GetPatientList': return this.getPatientList(ctx, request as $3.GetPatientListRequest);
      case 'DeletePatient': return this.deletePatient(ctx, request as $3.DeletePatientRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PatientServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PatientServiceBase$messageJson;
}

