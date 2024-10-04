//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/patient_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
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
    {
      '1': 'bed_id',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '9': 0,
      '10': 'bedId',
      '17': true,
    },
    {
      '1': 'ward_id',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '9': 1,
      '10': 'wardId',
      '17': true,
    },
    {'1': 'room', '3': 7, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetPatientResponse.Room', '9': 2, '10': 'room', '17': true},
    {'1': 'bed', '3': 8, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetPatientResponse.Bed', '9': 3, '10': 'bed', '17': true},
  ],
  '3': [GetPatientResponse_Room$json, GetPatientResponse_Bed$json],
  '8': [
    {'1': '_bed_id'},
    {'1': '_ward_id'},
    {'1': '_room'},
    {'1': '_bed'},
  ],
};

@$core.Deprecated('Use getPatientResponseDescriptor instead')
const GetPatientResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ward_id', '3': 3, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

@$core.Deprecated('Use getPatientResponseDescriptor instead')
const GetPatientResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientResponseDescriptor = $convert.base64Decode(
    'ChJHZXRQYXRpZW50UmVzcG9uc2USDgoCaWQYASABKAlSAmlkEjoKGWh1bWFuX3JlYWRhYmxlX2'
    'lkZW50aWZpZXIYAiABKAlSF2h1bWFuUmVhZGFibGVJZGVudGlmaWVyEhQKBW5vdGVzGAMgASgJ'
    'UgVub3RlcxIeCgZiZWRfaWQYBCABKAlCAhgBSABSBWJlZElkiAEBEiAKB3dhcmRfaWQYBSABKA'
    'lCAhgBSAFSBndhcmRJZIgBARJGCgRyb29tGAcgASgLMi0uc2VydmljZXMudGFza19zdmMudjEu'
    'R2V0UGF0aWVudFJlc3BvbnNlLlJvb21IAlIEcm9vbYgBARJDCgNiZWQYCCABKAsyLC5zZXJ2aW'
    'Nlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50UmVzcG9uc2UuQmVkSANSA2JlZIgBARpDCgRSb29t'
    'Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhcKB3dhcmRfaWQYAyABKAlSBn'
    'dhcmRJZBopCgNCZWQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWVCCQoHX2Jl'
    'ZF9pZEIKCghfd2FyZF9pZEIHCgVfcm9vbUIGCgRfYmVk');

@$core.Deprecated('Use deletePatientRequestDescriptor instead')
const DeletePatientRequest$json = {
  '1': 'DeletePatientRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeletePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePatientRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVQYXRpZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deletePatientResponseDescriptor instead')
const DeletePatientResponse$json = {
  '1': 'DeletePatientResponse',
};

/// Descriptor for `DeletePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePatientResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVQYXRpZW50UmVzcG9uc2U=');

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
    {'1': 'patients', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientsByWardResponse.Patient', '10': 'patients'},
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
    'ChlHZXRQYXRpZW50c0J5V2FyZFJlc3BvbnNlElMKCHBhdGllbnRzGAEgAygLMjcuc2VydmljZX'
    'MudGFza19zdmMudjEuR2V0UGF0aWVudHNCeVdhcmRSZXNwb25zZS5QYXRpZW50UghwYXRpZW50'
    'cxqSAQoHUGF0aWVudBIOCgJpZBgBIAEoCVICaWQSOgoZaHVtYW5fcmVhZGFibGVfaWRlbnRpZm'
    'llchgCIAEoCVIXaHVtYW5SZWFkYWJsZUlkZW50aWZpZXISFAoFbm90ZXMYAyABKAlSBW5vdGVz'
    'EhoKBmJlZF9pZBgEIAEoCUgAUgViZWRJZIgBAUIJCgdfYmVkX2lk');

@$core.Deprecated('Use getPatientAssignmentByWardRequestDescriptor instead')
const GetPatientAssignmentByWardRequest$json = {
  '1': 'GetPatientAssignmentByWardRequest',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

/// Descriptor for `GetPatientAssignmentByWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientAssignmentByWardRequestDescriptor = $convert.base64Decode(
    'CiFHZXRQYXRpZW50QXNzaWdubWVudEJ5V2FyZFJlcXVlc3QSFwoHd2FyZF9pZBgBIAEoCVIGd2'
    'FyZElk');

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse$json = {
  '1': 'GetPatientAssignmentByWardResponse',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room', '10': 'rooms'},
  ],
  '3': [GetPatientAssignmentByWardResponse_Room$json],
};

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed', '10': 'beds'},
  ],
  '3': [GetPatientAssignmentByWardResponse_Room_Bed$json],
};

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse_Room_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'patient', '3': 3, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient', '9': 0, '10': 'patient', '17': true},
  ],
  '3': [GetPatientAssignmentByWardResponse_Room_Bed_Patient$json],
  '8': [
    {'1': '_patient'},
  ],
};

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse_Room_Bed_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetPatientAssignmentByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientAssignmentByWardResponseDescriptor = $convert.base64Decode(
    'CiJHZXRQYXRpZW50QXNzaWdubWVudEJ5V2FyZFJlc3BvbnNlElMKBXJvb21zGAEgAygLMj0uc2'
    'VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudEFzc2lnbm1lbnRCeVdhcmRSZXNwb25zZS5S'
    'b29tUgVyb29tcxrSAgoEUm9vbRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'JVCgRiZWRzGAMgAygLMkEuc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudEFzc2lnbm1l'
    'bnRCeVdhcmRSZXNwb25zZS5Sb29tLkJlZFIEYmVkcxrOAQoDQmVkEg4KAmlkGAEgASgJUgJpZB'
    'ISCgRuYW1lGAIgASgJUgRuYW1lEmgKB3BhdGllbnQYAyABKAsySS5zZXJ2aWNlcy50YXNrX3N2'
    'Yy52MS5HZXRQYXRpZW50QXNzaWdubWVudEJ5V2FyZFJlc3BvbnNlLlJvb20uQmVkLlBhdGllbn'
    'RIAFIHcGF0aWVudIgBARotCgdQYXRpZW50Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJ'
    'UgRuYW1lQgoKCF9wYXRpZW50');

@$core.Deprecated('Use getRecentPatientsRequestDescriptor instead')
const GetRecentPatientsRequest$json = {
  '1': 'GetRecentPatientsRequest',
};

/// Descriptor for `GetRecentPatientsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecentPatientsRequestDescriptor = $convert.base64Decode(
    'ChhHZXRSZWNlbnRQYXRpZW50c1JlcXVlc3Q=');

@$core.Deprecated('Use getRecentPatientsResponseDescriptor instead')
const GetRecentPatientsResponse$json = {
  '1': 'GetRecentPatientsResponse',
  '2': [
    {'1': 'recent_patients', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed', '10': 'recentPatients'},
  ],
  '3': [GetRecentPatientsResponse_Bed$json, GetRecentPatientsResponse_Room$json, GetRecentPatientsResponse_PatientWithRoomAndBed$json],
};

@$core.Deprecated('Use getRecentPatientsResponseDescriptor instead')
const GetRecentPatientsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use getRecentPatientsResponseDescriptor instead')
const GetRecentPatientsResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ward_id', '3': 3, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

@$core.Deprecated('Use getRecentPatientsResponseDescriptor instead')
const GetRecentPatientsResponse_PatientWithRoomAndBed$json = {
  '1': 'PatientWithRoomAndBed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'room', '3': 3, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetRecentPatientsResponse.Room', '10': 'room'},
    {'1': 'bed', '3': 4, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetRecentPatientsResponse.Bed', '10': 'bed'},
  ],
};

/// Descriptor for `GetRecentPatientsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecentPatientsResponseDescriptor = $convert.base64Decode(
    'ChlHZXRSZWNlbnRQYXRpZW50c1Jlc3BvbnNlEm4KD3JlY2VudF9wYXRpZW50cxgBIAMoCzJFLn'
    'NlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFJlY2VudFBhdGllbnRzUmVzcG9uc2UuUGF0aWVudFdp'
    'dGhSb29tQW5kQmVkUg5yZWNlbnRQYXRpZW50cxopCgNCZWQSDgoCaWQYASABKAlSAmlkEhIKBG'
    '5hbWUYAiABKAlSBG5hbWUaQwoEUm9vbRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIE'
    'bmFtZRIXCgd3YXJkX2lkGAMgASgJUgZ3YXJkSWQa9AEKFVBhdGllbnRXaXRoUm9vbUFuZEJlZB'
    'IOCgJpZBgBIAEoCVICaWQSOgoZaHVtYW5fcmVhZGFibGVfaWRlbnRpZmllchgCIAEoCVIXaHVt'
    'YW5SZWFkYWJsZUlkZW50aWZpZXISSAoEcm9vbRgDIAEoCzI0LnNlcnZpY2VzLnRhc2tfc3ZjLn'
    'YxLkdldFJlY2VudFBhdGllbnRzUmVzcG9uc2UuUm9vbVIEcm9vbRJFCgNiZWQYBCABKAsyMy5z'
    'ZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRSZWNlbnRQYXRpZW50c1Jlc3BvbnNlLkJlZFIDYmVk');

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

@$core.Deprecated('Use getPatientDetailsRequestDescriptor instead')
const GetPatientDetailsRequest$json = {
  '1': 'GetPatientDetailsRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPatientDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientDetailsRequestDescriptor = $convert.base64Decode(
    'ChhHZXRQYXRpZW50RGV0YWlsc1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getPatientDetailsResponseDescriptor instead')
const GetPatientDetailsResponse$json = {
  '1': 'GetPatientDetailsResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'human_readable_identifier', '3': 3, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'notes', '3': 4, '4': 1, '5': 9, '10': 'notes'},
    {'1': 'tasks', '3': 5, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientDetailsResponse.Task', '10': 'tasks'},
    {
      '1': 'ward_id',
      '3': 6,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '9': 0,
      '10': 'wardId',
      '17': true,
    },
    {'1': 'room', '3': 7, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetPatientDetailsResponse.Room', '9': 1, '10': 'room', '17': true},
    {'1': 'bed', '3': 8, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetPatientDetailsResponse.Bed', '9': 2, '10': 'bed', '17': true},
    {'1': 'is_discharged', '3': 9, '4': 1, '5': 8, '10': 'isDischarged'},
  ],
  '3': [GetPatientDetailsResponse_Room$json, GetPatientDetailsResponse_Bed$json, GetPatientDetailsResponse_Task$json],
  '4': [GetPatientDetailsResponse_TaskStatus$json],
  '8': [
    {'1': '_ward_id'},
    {'1': '_room'},
    {'1': '_bed'},
  ],
};

@$core.Deprecated('Use getPatientDetailsResponseDescriptor instead')
const GetPatientDetailsResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ward_id', '3': 3, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

@$core.Deprecated('Use getPatientDetailsResponseDescriptor instead')
const GetPatientDetailsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use getPatientDetailsResponseDescriptor instead')
const GetPatientDetailsResponse_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.services.task_svc.v1.GetPatientDetailsResponse.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask', '10': 'subtasks'},
  ],
  '3': [GetPatientDetailsResponse_Task_SubTask$json],
  '8': [
    {'1': '_assigned_user_id'},
  ],
};

@$core.Deprecated('Use getPatientDetailsResponseDescriptor instead')
const GetPatientDetailsResponse_Task_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

@$core.Deprecated('Use getPatientDetailsResponseDescriptor instead')
const GetPatientDetailsResponse_TaskStatus$json = {
  '1': 'TaskStatus',
  '2': [
    {'1': 'TASK_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'TASK_STATUS_TODO', '2': 1},
    {'1': 'TASK_STATUS_IN_PROGRESS', '2': 2},
    {'1': 'TASK_STATUS_DONE', '2': 3},
  ],
};

/// Descriptor for `GetPatientDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientDetailsResponseDescriptor = $convert.base64Decode(
    'ChlHZXRQYXRpZW50RGV0YWlsc1Jlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgAS'
    'gJUgRuYW1lEjoKGWh1bWFuX3JlYWRhYmxlX2lkZW50aWZpZXIYAyABKAlSF2h1bWFuUmVhZGFi'
    'bGVJZGVudGlmaWVyEhQKBW5vdGVzGAQgASgJUgVub3RlcxJKCgV0YXNrcxgFIAMoCzI0LnNlcn'
    'ZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnREZXRhaWxzUmVzcG9uc2UuVGFza1IFdGFza3MS'
    'IAoHd2FyZF9pZBgGIAEoCUICGAFIAFIGd2FyZElkiAEBEk0KBHJvb20YByABKAsyNC5zZXJ2aW'
    'Nlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50RGV0YWlsc1Jlc3BvbnNlLlJvb21IAVIEcm9vbYgB'
    'ARJKCgNiZWQYCCABKAsyMy5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50RGV0YWlsc1'
    'Jlc3BvbnNlLkJlZEgCUgNiZWSIAQESIwoNaXNfZGlzY2hhcmdlZBgJIAEoCFIMaXNEaXNjaGFy'
    'Z2VkGkMKBFJvb20SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFwoHd2FyZF'
    '9pZBgDIAEoCVIGd2FyZElkGikKA0JlZBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIE'
    'bmFtZRq4AwoEVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZX'
    'NjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SUgoGc3RhdHVzGAQgASgOMjouc2VydmljZXMu'
    'dGFza19zdmMudjEuR2V0UGF0aWVudERldGFpbHNSZXNwb25zZS5UYXNrU3RhdHVzUgZzdGF0dX'
    'MSLQoQYXNzaWduZWRfdXNlcl9pZBgFIAEoCUgAUg5hc3NpZ25lZFVzZXJJZIgBARIdCgpwYXRp'
    'ZW50X2lkGAYgASgJUglwYXRpZW50SWQSFgoGcHVibGljGAcgASgIUgZwdWJsaWMSWAoIc3VidG'
    'Fza3MYCCADKAsyPC5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50RGV0YWlsc1Jlc3Bv'
    'bnNlLlRhc2suU3ViVGFza1IIc3VidGFza3MaQQoHU3ViVGFzaxIOCgJpZBgBIAEoCVICaWQSEg'
    'oEbmFtZRgCIAEoCVIEbmFtZRISCgRkb25lGAMgASgIUgRkb25lQhMKEV9hc3NpZ25lZF91c2Vy'
    'X2lkInIKClRhc2tTdGF0dXMSGwoXVEFTS19TVEFUVVNfVU5TUEVDSUZJRUQQABIUChBUQVNLX1'
    'NUQVRVU19UT0RPEAESGwoXVEFTS19TVEFUVVNfSU5fUFJPR1JFU1MQAhIUChBUQVNLX1NUQVRV'
    'U19ET05FEANCCgoIX3dhcmRfaWRCBwoFX3Jvb21CBgoEX2JlZA==');

@$core.Deprecated('Use getPatientListRequestDescriptor instead')
const GetPatientListRequest$json = {
  '1': 'GetPatientListRequest',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'wardId', '17': true},
  ],
  '8': [
    {'1': '_ward_id'},
  ],
};

/// Descriptor for `GetPatientListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientListRequestDescriptor = $convert.base64Decode(
    'ChVHZXRQYXRpZW50TGlzdFJlcXVlc3QSHAoHd2FyZF9pZBgBIAEoCUgAUgZ3YXJkSWSIAQFCCg'
    'oIX3dhcmRfaWQ=');

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse$json = {
  '1': 'GetPatientListResponse',
  '2': [
    {'1': 'active', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed', '10': 'active'},
    {'1': 'unassigned_patients', '3': 2, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientListResponse.Patient', '10': 'unassignedPatients'},
    {'1': 'discharged_patients', '3': 3, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientListResponse.Patient', '10': 'dischargedPatients'},
  ],
  '3': [GetPatientListResponse_Patient$json, GetPatientListResponse_Bed$json, GetPatientListResponse_Room$json, GetPatientListResponse_PatientWithRoomAndBed$json, GetPatientListResponse_Task$json],
  '4': [GetPatientListResponse_TaskStatus$json],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    {'1': 'tasks', '3': 4, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientListResponse.Task', '10': 'tasks'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ward_id', '3': 3, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_PatientWithRoomAndBed$json = {
  '1': 'PatientWithRoomAndBed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'room', '3': 3, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetPatientListResponse.Room', '10': 'room'},
    {'1': 'bed', '3': 4, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetPatientListResponse.Bed', '10': 'bed'},
    {'1': 'notes', '3': 5, '4': 1, '5': 9, '10': 'notes'},
    {'1': 'tasks', '3': 6, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientListResponse.Task', '10': 'tasks'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.services.task_svc.v1.GetPatientListResponse.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetPatientListResponse.Task.SubTask', '10': 'subtasks'},
  ],
  '3': [GetPatientListResponse_Task_SubTask$json],
  '8': [
    {'1': '_assigned_user_id'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Task_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_TaskStatus$json = {
  '1': 'TaskStatus',
  '2': [
    {'1': 'TASK_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'TASK_STATUS_TODO', '2': 1},
    {'1': 'TASK_STATUS_IN_PROGRESS', '2': 2},
    {'1': 'TASK_STATUS_DONE', '2': 3},
  ],
};

/// Descriptor for `GetPatientListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientListResponseDescriptor = $convert.base64Decode(
    'ChZHZXRQYXRpZW50TGlzdFJlc3BvbnNlEloKBmFjdGl2ZRgBIAMoCzJCLnNlcnZpY2VzLnRhc2'
    'tfc3ZjLnYxLkdldFBhdGllbnRMaXN0UmVzcG9uc2UuUGF0aWVudFdpdGhSb29tQW5kQmVkUgZh'
    'Y3RpdmUSZQoTdW5hc3NpZ25lZF9wYXRpZW50cxgCIAMoCzI0LnNlcnZpY2VzLnRhc2tfc3ZjLn'
    'YxLkdldFBhdGllbnRMaXN0UmVzcG9uc2UuUGF0aWVudFISdW5hc3NpZ25lZFBhdGllbnRzEmUK'
    'E2Rpc2NoYXJnZWRfcGF0aWVudHMYAyADKAsyNC5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYX'
    'RpZW50TGlzdFJlc3BvbnNlLlBhdGllbnRSEmRpc2NoYXJnZWRQYXRpZW50cxq0AQoHUGF0aWVu'
    'dBIOCgJpZBgBIAEoCVICaWQSOgoZaHVtYW5fcmVhZGFibGVfaWRlbnRpZmllchgCIAEoCVIXaH'
    'VtYW5SZWFkYWJsZUlkZW50aWZpZXISFAoFbm90ZXMYAyABKAlSBW5vdGVzEkcKBXRhc2tzGAQg'
    'AygLMjEuc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudExpc3RSZXNwb25zZS5UYXNrUg'
    'V0YXNrcxopCgNCZWQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUaQwoEUm9v'
    'bRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIXCgd3YXJkX2lkGAMgASgJUg'
    'Z3YXJkSWQazQIKFVBhdGllbnRXaXRoUm9vbUFuZEJlZBIOCgJpZBgBIAEoCVICaWQSOgoZaHVt'
    'YW5fcmVhZGFibGVfaWRlbnRpZmllchgCIAEoCVIXaHVtYW5SZWFkYWJsZUlkZW50aWZpZXISRQ'
    'oEcm9vbRgDIAEoCzIxLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnRMaXN0UmVzcG9u'
    'c2UuUm9vbVIEcm9vbRJCCgNiZWQYBCABKAsyMC5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYX'
    'RpZW50TGlzdFJlc3BvbnNlLkJlZFIDYmVkEhQKBW5vdGVzGAUgASgJUgVub3RlcxJHCgV0YXNr'
    'cxgGIAMoCzIxLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnRMaXN0UmVzcG9uc2UuVG'
    'Fza1IFdGFza3MasgMKBFRhc2sSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUS'
    'IAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEk8KBnN0YXR1cxgEIAEoDjI3LnNlcn'
    'ZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnRMaXN0UmVzcG9uc2UuVGFza1N0YXR1c1IGc3Rh'
    'dHVzEi0KEGFzc2lnbmVkX3VzZXJfaWQYBSABKAlIAFIOYXNzaWduZWRVc2VySWSIAQESHQoKcG'
    'F0aWVudF9pZBgGIAEoCVIJcGF0aWVudElkEhYKBnB1YmxpYxgHIAEoCFIGcHVibGljElUKCHN1'
    'YnRhc2tzGAggAygLMjkuc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudExpc3RSZXNwb2'
    '5zZS5UYXNrLlN1YlRhc2tSCHN1YnRhc2tzGkEKB1N1YlRhc2sSDgoCaWQYASABKAlSAmlkEhIK'
    'BG5hbWUYAiABKAlSBG5hbWUSEgoEZG9uZRgDIAEoCFIEZG9uZUITChFfYXNzaWduZWRfdXNlcl'
    '9pZCJyCgpUYXNrU3RhdHVzEhsKF1RBU0tfU1RBVFVTX1VOU1BFQ0lGSUVEEAASFAoQVEFTS19T'
    'VEFUVVNfVE9ETxABEhsKF1RBU0tfU1RBVFVTX0lOX1BST0dSRVNTEAISFAoQVEFTS19TVEFUVV'
    'NfRE9ORRAD');

@$core.Deprecated('Use readmitPatientRequestDescriptor instead')
const ReadmitPatientRequest$json = {
  '1': 'ReadmitPatientRequest',
  '2': [
    {'1': 'patient_id', '3': 1, '4': 1, '5': 9, '10': 'patientId'},
  ],
};

/// Descriptor for `ReadmitPatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readmitPatientRequestDescriptor = $convert.base64Decode(
    'ChVSZWFkbWl0UGF0aWVudFJlcXVlc3QSHQoKcGF0aWVudF9pZBgBIAEoCVIJcGF0aWVudElk');

@$core.Deprecated('Use readmitPatientResponseDescriptor instead')
const ReadmitPatientResponse$json = {
  '1': 'ReadmitPatientResponse',
};

/// Descriptor for `ReadmitPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readmitPatientResponseDescriptor = $convert.base64Decode(
    'ChZSZWFkbWl0UGF0aWVudFJlc3BvbnNl');

