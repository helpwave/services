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

import 'patient_svc.pb.dart' as $4;
import 'patient_svc.pbjson.dart';

export 'patient_svc.pb.dart';

abstract class PatientServiceBase extends $pb.GeneratedService {
  $async.Future<$4.CreatePatientResponse> createPatient($pb.ServerContext ctx, $4.CreatePatientRequest request);
  $async.Future<$4.GetPatientResponse> getPatient($pb.ServerContext ctx, $4.GetPatientRequest request);
  $async.Future<$4.GetPatientByBedResponse> getPatientByBed($pb.ServerContext ctx, $4.GetPatientByBedRequest request);
  $async.Future<$4.GetPatientsByWardResponse> getPatientsByWard($pb.ServerContext ctx, $4.GetPatientsByWardRequest request);
  $async.Future<$4.GetPatientAssignmentByWardResponse> getPatientAssignmentByWard($pb.ServerContext ctx, $4.GetPatientAssignmentByWardRequest request);
  $async.Future<$4.UpdatePatientResponse> updatePatient($pb.ServerContext ctx, $4.UpdatePatientRequest request);
  $async.Future<$4.AssignBedResponse> assignBed($pb.ServerContext ctx, $4.AssignBedRequest request);
  $async.Future<$4.UnassignBedResponse> unassignBed($pb.ServerContext ctx, $4.UnassignBedRequest request);
  $async.Future<$4.DischargePatientResponse> dischargePatient($pb.ServerContext ctx, $4.DischargePatientRequest request);
  $async.Future<$4.GetPatientDetailsResponse> getPatientDetails($pb.ServerContext ctx, $4.GetPatientDetailsRequest request);
  $async.Future<$4.GetPatientListResponse> getPatientList($pb.ServerContext ctx, $4.GetPatientListRequest request);
  $async.Future<$4.DeletePatientResponse> deletePatient($pb.ServerContext ctx, $4.DeletePatientRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreatePatient': return $4.CreatePatientRequest();
      case 'GetPatient': return $4.GetPatientRequest();
      case 'GetPatientByBed': return $4.GetPatientByBedRequest();
      case 'GetPatientsByWard': return $4.GetPatientsByWardRequest();
      case 'GetPatientAssignmentByWard': return $4.GetPatientAssignmentByWardRequest();
      case 'UpdatePatient': return $4.UpdatePatientRequest();
      case 'AssignBed': return $4.AssignBedRequest();
      case 'UnassignBed': return $4.UnassignBedRequest();
      case 'DischargePatient': return $4.DischargePatientRequest();
      case 'GetPatientDetails': return $4.GetPatientDetailsRequest();
      case 'GetPatientList': return $4.GetPatientListRequest();
      case 'DeletePatient': return $4.DeletePatientRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreatePatient': return this.createPatient(ctx, request as $4.CreatePatientRequest);
      case 'GetPatient': return this.getPatient(ctx, request as $4.GetPatientRequest);
      case 'GetPatientByBed': return this.getPatientByBed(ctx, request as $4.GetPatientByBedRequest);
      case 'GetPatientsByWard': return this.getPatientsByWard(ctx, request as $4.GetPatientsByWardRequest);
      case 'GetPatientAssignmentByWard': return this.getPatientAssignmentByWard(ctx, request as $4.GetPatientAssignmentByWardRequest);
      case 'UpdatePatient': return this.updatePatient(ctx, request as $4.UpdatePatientRequest);
      case 'AssignBed': return this.assignBed(ctx, request as $4.AssignBedRequest);
      case 'UnassignBed': return this.unassignBed(ctx, request as $4.UnassignBedRequest);
      case 'DischargePatient': return this.dischargePatient(ctx, request as $4.DischargePatientRequest);
      case 'GetPatientDetails': return this.getPatientDetails(ctx, request as $4.GetPatientDetailsRequest);
      case 'GetPatientList': return this.getPatientList(ctx, request as $4.GetPatientListRequest);
      case 'DeletePatient': return this.deletePatient(ctx, request as $4.DeletePatientRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PatientServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PatientServiceBase$messageJson;
}

