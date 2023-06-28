//
//  Generated code. Do not modify.
//  source: proto/services/patient_svc/v1/patient_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'patient_svc.pb.dart' as $2;
import 'patient_svc.pbjson.dart';

export 'patient_svc.pb.dart';

abstract class PatientServiceBase extends $pb.GeneratedService {
  $async.Future<$2.CreatePatientResponse> createPatient($pb.ServerContext ctx, $2.CreatePatientRequest request);
  $async.Future<$2.GetPatientResponse> getPatient($pb.ServerContext ctx, $2.GetPatientRequest request);
  $async.Future<$2.GetPatientByBedResponse> getPatientByBed($pb.ServerContext ctx, $2.GetPatientByBedRequest request);
  $async.Future<$2.GetPatientsByWardResponse> getPatientsByWard($pb.ServerContext ctx, $2.GetPatientsByWardRequest request);
  $async.Future<$2.UpdatePatientResponse> updatePatient($pb.ServerContext ctx, $2.UpdatePatientRequest request);
  $async.Future<$2.AssignBedResponse> assignBed($pb.ServerContext ctx, $2.AssignBedRequest request);
  $async.Future<$2.UnassignBedResponse> unassignBed($pb.ServerContext ctx, $2.UnassignBedRequest request);
  $async.Future<$2.DischargePatientResponse> dischargePatient($pb.ServerContext ctx, $2.DischargePatientRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreatePatient': return $2.CreatePatientRequest();
      case 'GetPatient': return $2.GetPatientRequest();
      case 'GetPatientByBed': return $2.GetPatientByBedRequest();
      case 'GetPatientsByWard': return $2.GetPatientsByWardRequest();
      case 'UpdatePatient': return $2.UpdatePatientRequest();
      case 'AssignBed': return $2.AssignBedRequest();
      case 'UnassignBed': return $2.UnassignBedRequest();
      case 'DischargePatient': return $2.DischargePatientRequest();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreatePatient': return this.createPatient(ctx, request as $2.CreatePatientRequest);
      case 'GetPatient': return this.getPatient(ctx, request as $2.GetPatientRequest);
      case 'GetPatientByBed': return this.getPatientByBed(ctx, request as $2.GetPatientByBedRequest);
      case 'GetPatientsByWard': return this.getPatientsByWard(ctx, request as $2.GetPatientsByWardRequest);
      case 'UpdatePatient': return this.updatePatient(ctx, request as $2.UpdatePatientRequest);
      case 'AssignBed': return this.assignBed(ctx, request as $2.AssignBedRequest);
      case 'UnassignBed': return this.unassignBed(ctx, request as $2.UnassignBedRequest);
      case 'DischargePatient': return this.dischargePatient(ctx, request as $2.DischargePatientRequest);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PatientServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PatientServiceBase$messageJson;
}

