//
//  Generated code. Do not modify.
//  source: proto/services/patient_svc/v1/patient_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createPatientRequestDescriptor instead')
const CreatePatientRequest$json = {
  '1': 'CreatePatientRequest',
  '2': [
    {'1': 'human_readable_identifier', '3': 1, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'notes', '3': 2, '4': 1, '5': 9, '10': 'notes'},
  ],
};

/// Descriptor for `CreatePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPatientRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVQYXRpZW50UmVxdWVzdBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVyGAEgAS'
    'gJUhdodW1hblJlYWRhYmxlSWRlbnRpZmllchIUCgVub3RlcxgCIAEoCVIFbm90ZXM=');

@$core.Deprecated('Use createPatientResponseDescriptor instead')
const CreatePatientResponse$json = {
  '1': 'CreatePatientResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreatePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPatientResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVQYXRpZW50UmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getPatientRequestDescriptor instead')
const GetPatientRequest$json = {
  '1': 'GetPatientRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientRequestDescriptor = $convert.base64Decode(
    'ChFHZXRQYXRpZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getPatientResponseDescriptor instead')
const GetPatientResponse$json = {
  '1': 'GetPatientResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    {'1': 'bed_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'bedId', '17': true},
  ],
  '8': [
    {'1': '_bed_id'},
  ],
};

/// Descriptor for `GetPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientResponseDescriptor = $convert.base64Decode(
    'ChJHZXRQYXRpZW50UmVzcG9uc2USDgoCaWQYASABKAlSAmlkEjoKGWh1bWFuX3JlYWRhYmxlX2'
    'lkZW50aWZpZXIYAiABKAlSF2h1bWFuUmVhZGFibGVJZGVudGlmaWVyEhQKBW5vdGVzGAMgASgJ'
    'UgVub3RlcxIaCgZiZWRfaWQYBCABKAlIAFIFYmVkSWSIAQFCCQoHX2JlZF9pZA==');

@$core.Deprecated('Use getPatientByBedRequestDescriptor instead')
const GetPatientByBedRequest$json = {
  '1': 'GetPatientByBedRequest',
  '2': [
    {'1': 'bed_id', '3': 1, '4': 1, '5': 9, '10': 'bedId'},
  ],
};

/// Descriptor for `GetPatientByBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientByBedRequestDescriptor = $convert.base64Decode(
    'ChZHZXRQYXRpZW50QnlCZWRSZXF1ZXN0EhUKBmJlZF9pZBgBIAEoCVIFYmVkSWQ=');

@$core.Deprecated('Use getPatientByBedResponseDescriptor instead')
const GetPatientByBedResponse$json = {
  '1': 'GetPatientByBedResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    {'1': 'bed_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'bedId', '17': true},
  ],
  '8': [
    {'1': '_bed_id'},
  ],
};

/// Descriptor for `GetPatientByBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientByBedResponseDescriptor = $convert.base64Decode(
    'ChdHZXRQYXRpZW50QnlCZWRSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSOgoZaHVtYW5fcmVhZG'
    'FibGVfaWRlbnRpZmllchgCIAEoCVIXaHVtYW5SZWFkYWJsZUlkZW50aWZpZXISFAoFbm90ZXMY'
    'AyABKAlSBW5vdGVzEhoKBmJlZF9pZBgEIAEoCUgAUgViZWRJZIgBAUIJCgdfYmVkX2lk');

@$core.Deprecated('Use getPatientsByWardRequestDescriptor instead')
const GetPatientsByWardRequest$json = {
  '1': 'GetPatientsByWardRequest',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

/// Descriptor for `GetPatientsByWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientsByWardRequestDescriptor = $convert.base64Decode(
    'ChhHZXRQYXRpZW50c0J5V2FyZFJlcXVlc3QSFwoHd2FyZF9pZBgBIAEoCVIGd2FyZElk');

@$core.Deprecated('Use getPatientsByWardResponseDescriptor instead')
const GetPatientsByWardResponse$json = {
  '1': 'GetPatientsByWardResponse',
  '2': [
    {'1': 'patients', '3': 1, '4': 3, '5': 11, '6': '.proto.services.patient_svc.v1.GetPatientsByWardResponse.Patient', '10': 'patients'},
  ],
  '3': [GetPatientsByWardResponse_Patient$json],
};

@$core.Deprecated('Use getPatientsByWardResponseDescriptor instead')
const GetPatientsByWardResponse_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    {'1': 'bed_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'bedId', '17': true},
  ],
  '8': [
    {'1': '_bed_id'},
  ],
};

/// Descriptor for `GetPatientsByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientsByWardResponseDescriptor = $convert.base64Decode(
    'ChlHZXRQYXRpZW50c0J5V2FyZFJlc3BvbnNlElwKCHBhdGllbnRzGAEgAygLMkAucHJvdG8uc2'
    'VydmljZXMucGF0aWVudF9zdmMudjEuR2V0UGF0aWVudHNCeVdhcmRSZXNwb25zZS5QYXRpZW50'
    'UghwYXRpZW50cxqSAQoHUGF0aWVudBIOCgJpZBgBIAEoCVICaWQSOgoZaHVtYW5fcmVhZGFibG'
    'VfaWRlbnRpZmllchgCIAEoCVIXaHVtYW5SZWFkYWJsZUlkZW50aWZpZXISFAoFbm90ZXMYAyAB'
    'KAlSBW5vdGVzEhoKBmJlZF9pZBgEIAEoCUgAUgViZWRJZIgBAUIJCgdfYmVkX2lk');

@$core.Deprecated('Use updatePatientRequestDescriptor instead')
const UpdatePatientRequest$json = {
  '1': 'UpdatePatientRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'humanReadableIdentifier', '17': true},
    {'1': 'notes', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'notes', '17': true},
  ],
  '8': [
    {'1': '_human_readable_identifier'},
    {'1': '_notes'},
  ],
};

/// Descriptor for `UpdatePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQYXRpZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSPwoZaHVtYW5fcmVhZGFibG'
    'VfaWRlbnRpZmllchgCIAEoCUgAUhdodW1hblJlYWRhYmxlSWRlbnRpZmllcogBARIZCgVub3Rl'
    'cxgDIAEoCUgBUgVub3Rlc4gBAUIcChpfaHVtYW5fcmVhZGFibGVfaWRlbnRpZmllckIICgZfbm'
    '90ZXM=');

@$core.Deprecated('Use updatePatientResponseDescriptor instead')
const UpdatePatientResponse$json = {
  '1': 'UpdatePatientResponse',
};

/// Descriptor for `UpdatePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVQYXRpZW50UmVzcG9uc2U=');

@$core.Deprecated('Use assignBedRequestDescriptor instead')
const AssignBedRequest$json = {
  '1': 'AssignBedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'bed_id', '3': 2, '4': 1, '5': 9, '10': 'bedId'},
  ],
};

/// Descriptor for `AssignBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignBedRequestDescriptor = $convert.base64Decode(
    'ChBBc3NpZ25CZWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIVCgZiZWRfaWQYAiABKAlSBWJlZE'
    'lk');

@$core.Deprecated('Use assignBedResponseDescriptor instead')
const AssignBedResponse$json = {
  '1': 'AssignBedResponse',
};

/// Descriptor for `AssignBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignBedResponseDescriptor = $convert.base64Decode(
    'ChFBc3NpZ25CZWRSZXNwb25zZQ==');

@$core.Deprecated('Use unassignBedRequestDescriptor instead')
const UnassignBedRequest$json = {
  '1': 'UnassignBedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UnassignBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignBedRequestDescriptor = $convert.base64Decode(
    'ChJVbmFzc2lnbkJlZFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use unassignBedResponseDescriptor instead')
const UnassignBedResponse$json = {
  '1': 'UnassignBedResponse',
};

/// Descriptor for `UnassignBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignBedResponseDescriptor = $convert.base64Decode(
    'ChNVbmFzc2lnbkJlZFJlc3BvbnNl');

@$core.Deprecated('Use dischargePatientRequestDescriptor instead')
const DischargePatientRequest$json = {
  '1': 'DischargePatientRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DischargePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dischargePatientRequestDescriptor = $convert.base64Decode(
    'ChdEaXNjaGFyZ2VQYXRpZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use dischargePatientResponseDescriptor instead')
const DischargePatientResponse$json = {
  '1': 'DischargePatientResponse',
};

/// Descriptor for `DischargePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dischargePatientResponseDescriptor = $convert.base64Decode(
    'ChhEaXNjaGFyZ2VQYXRpZW50UmVzcG9uc2U=');

const $core.Map<$core.String, $core.dynamic> PatientServiceBase$json = {
  '1': 'PatientService',
  '2': [
    {'1': 'CreatePatient', '2': '.proto.services.patient_svc.v1.CreatePatientRequest', '3': '.proto.services.patient_svc.v1.CreatePatientResponse', '4': {}},
    {'1': 'GetPatient', '2': '.proto.services.patient_svc.v1.GetPatientRequest', '3': '.proto.services.patient_svc.v1.GetPatientResponse', '4': {}},
    {'1': 'GetPatientByBed', '2': '.proto.services.patient_svc.v1.GetPatientByBedRequest', '3': '.proto.services.patient_svc.v1.GetPatientByBedResponse', '4': {}},
    {'1': 'GetPatientsByWard', '2': '.proto.services.patient_svc.v1.GetPatientsByWardRequest', '3': '.proto.services.patient_svc.v1.GetPatientsByWardResponse', '4': {}},
    {'1': 'UpdatePatient', '2': '.proto.services.patient_svc.v1.UpdatePatientRequest', '3': '.proto.services.patient_svc.v1.UpdatePatientResponse', '4': {}},
    {'1': 'AssignBed', '2': '.proto.services.patient_svc.v1.AssignBedRequest', '3': '.proto.services.patient_svc.v1.AssignBedResponse', '4': {}},
    {'1': 'UnassignBed', '2': '.proto.services.patient_svc.v1.UnassignBedRequest', '3': '.proto.services.patient_svc.v1.UnassignBedResponse', '4': {}},
    {'1': 'DischargePatient', '2': '.proto.services.patient_svc.v1.DischargePatientRequest', '3': '.proto.services.patient_svc.v1.DischargePatientResponse', '4': {}},
  ],
};

@$core.Deprecated('Use patientServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> PatientServiceBase$messageJson = {
  '.proto.services.patient_svc.v1.CreatePatientRequest': CreatePatientRequest$json,
  '.proto.services.patient_svc.v1.CreatePatientResponse': CreatePatientResponse$json,
  '.proto.services.patient_svc.v1.GetPatientRequest': GetPatientRequest$json,
  '.proto.services.patient_svc.v1.GetPatientResponse': GetPatientResponse$json,
  '.proto.services.patient_svc.v1.GetPatientByBedRequest': GetPatientByBedRequest$json,
  '.proto.services.patient_svc.v1.GetPatientByBedResponse': GetPatientByBedResponse$json,
  '.proto.services.patient_svc.v1.GetPatientsByWardRequest': GetPatientsByWardRequest$json,
  '.proto.services.patient_svc.v1.GetPatientsByWardResponse': GetPatientsByWardResponse$json,
  '.proto.services.patient_svc.v1.GetPatientsByWardResponse.Patient': GetPatientsByWardResponse_Patient$json,
  '.proto.services.patient_svc.v1.UpdatePatientRequest': UpdatePatientRequest$json,
  '.proto.services.patient_svc.v1.UpdatePatientResponse': UpdatePatientResponse$json,
  '.proto.services.patient_svc.v1.AssignBedRequest': AssignBedRequest$json,
  '.proto.services.patient_svc.v1.AssignBedResponse': AssignBedResponse$json,
  '.proto.services.patient_svc.v1.UnassignBedRequest': UnassignBedRequest$json,
  '.proto.services.patient_svc.v1.UnassignBedResponse': UnassignBedResponse$json,
  '.proto.services.patient_svc.v1.DischargePatientRequest': DischargePatientRequest$json,
  '.proto.services.patient_svc.v1.DischargePatientResponse': DischargePatientResponse$json,
};

/// Descriptor for `PatientService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List patientServiceDescriptor = $convert.base64Decode(
    'Cg5QYXRpZW50U2VydmljZRJ8Cg1DcmVhdGVQYXRpZW50EjMucHJvdG8uc2VydmljZXMucGF0aW'
    'VudF9zdmMudjEuQ3JlYXRlUGF0aWVudFJlcXVlc3QaNC5wcm90by5zZXJ2aWNlcy5wYXRpZW50'
    'X3N2Yy52MS5DcmVhdGVQYXRpZW50UmVzcG9uc2UiABJzCgpHZXRQYXRpZW50EjAucHJvdG8uc2'
    'VydmljZXMucGF0aWVudF9zdmMudjEuR2V0UGF0aWVudFJlcXVlc3QaMS5wcm90by5zZXJ2aWNl'
    'cy5wYXRpZW50X3N2Yy52MS5HZXRQYXRpZW50UmVzcG9uc2UiABKCAQoPR2V0UGF0aWVudEJ5Qm'
    'VkEjUucHJvdG8uc2VydmljZXMucGF0aWVudF9zdmMudjEuR2V0UGF0aWVudEJ5QmVkUmVxdWVz'
    'dBo2LnByb3RvLnNlcnZpY2VzLnBhdGllbnRfc3ZjLnYxLkdldFBhdGllbnRCeUJlZFJlc3Bvbn'
    'NlIgASiAEKEUdldFBhdGllbnRzQnlXYXJkEjcucHJvdG8uc2VydmljZXMucGF0aWVudF9zdmMu'
    'djEuR2V0UGF0aWVudHNCeVdhcmRSZXF1ZXN0GjgucHJvdG8uc2VydmljZXMucGF0aWVudF9zdm'
    'MudjEuR2V0UGF0aWVudHNCeVdhcmRSZXNwb25zZSIAEnwKDVVwZGF0ZVBhdGllbnQSMy5wcm90'
    'by5zZXJ2aWNlcy5wYXRpZW50X3N2Yy52MS5VcGRhdGVQYXRpZW50UmVxdWVzdBo0LnByb3RvLn'
    'NlcnZpY2VzLnBhdGllbnRfc3ZjLnYxLlVwZGF0ZVBhdGllbnRSZXNwb25zZSIAEnAKCUFzc2ln'
    'bkJlZBIvLnByb3RvLnNlcnZpY2VzLnBhdGllbnRfc3ZjLnYxLkFzc2lnbkJlZFJlcXVlc3QaMC'
    '5wcm90by5zZXJ2aWNlcy5wYXRpZW50X3N2Yy52MS5Bc3NpZ25CZWRSZXNwb25zZSIAEnYKC1Vu'
    'YXNzaWduQmVkEjEucHJvdG8uc2VydmljZXMucGF0aWVudF9zdmMudjEuVW5hc3NpZ25CZWRSZX'
    'F1ZXN0GjIucHJvdG8uc2VydmljZXMucGF0aWVudF9zdmMudjEuVW5hc3NpZ25CZWRSZXNwb25z'
    'ZSIAEoUBChBEaXNjaGFyZ2VQYXRpZW50EjYucHJvdG8uc2VydmljZXMucGF0aWVudF9zdmMudj'
    'EuRGlzY2hhcmdlUGF0aWVudFJlcXVlc3QaNy5wcm90by5zZXJ2aWNlcy5wYXRpZW50X3N2Yy52'
    'MS5EaXNjaGFyZ2VQYXRpZW50UmVzcG9uc2UiAA==');

