///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/patient_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'patient_svc.pb.dart' as $2;
import 'patient_svc.pbjson.dart';

export 'patient_svc.pb.dart';

abstract class PatientServiceBase extends $pb.GeneratedService {
  $async.Future<$2.CreatePatientResponse> createPatient($pb.ServerContext ctx, $2.CreatePatientRequest request);
  $async.Future<$2.GetPatientResponse> getPatient($pb.ServerContext ctx, $2.GetPatientRequest request);
  $async.Future<$2.UpdatePatientResponse> updatePatient($pb.ServerContext ctx, $2.UpdatePatientRequest request);
  $async.Future<$2.AssignBedResponse> assignBed($pb.ServerContext ctx, $2.AssignBedRequest request);
  $async.Future<$2.UnassignBedResponse> unassignBed($pb.ServerContext ctx, $2.UnassignBedRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreatePatient': return $2.CreatePatientRequest();
      case 'GetPatient': return $2.GetPatientRequest();
      case 'UpdatePatient': return $2.UpdatePatientRequest();
      case 'AssignBed': return $2.AssignBedRequest();
      case 'UnassignBed': return $2.UnassignBedRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreatePatient': return this.createPatient(ctx, request as $2.CreatePatientRequest);
      case 'GetPatient': return this.getPatient(ctx, request as $2.GetPatientRequest);
      case 'UpdatePatient': return this.updatePatient(ctx, request as $2.UpdatePatientRequest);
      case 'AssignBed': return this.assignBed(ctx, request as $2.AssignBedRequest);
      case 'UnassignBed': return this.unassignBed(ctx, request as $2.UnassignBedRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PatientServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PatientServiceBase$messageJson;
}

