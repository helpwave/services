//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/patient_svc.proto
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
    {'1': 'notes', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'notes', '17': true},
  ],
  '8': [
    {'1': '_notes'},
  ],
};

/// Descriptor for `CreatePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPatientRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVQYXRpZW50UmVxdWVzdBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVyGAEgAS'
    'gJUhdodW1hblJlYWRhYmxlSWRlbnRpZmllchIZCgVub3RlcxgCIAEoCUgAUgVub3Rlc4gBAUII'
    'CgZfbm90ZXM=');

@$core.Deprecated('Use createPatientResponseDescriptor instead')
const CreatePatientResponse$json = {
  '1': 'CreatePatientResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `CreatePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPatientResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVQYXRpZW50UmVzcG9uc2USDgoCaWQYASABKAlSAmlkEiAKC2NvbnNpc3RlbmN5GA'
    'IgASgJUgtjb25zaXN0ZW5jeQ==');

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
    {'1': 'room', '3': 7, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetPatientResponse.Room', '9': 0, '10': 'room', '17': true},
    {'1': 'bed', '3': 8, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetPatientResponse.Bed', '9': 1, '10': 'bed', '17': true},
    {'1': 'consistency', '3': 9, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '3': [GetPatientResponse_Room$json, GetPatientResponse_Bed$json],
  '8': [
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
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getPatientResponseDescriptor instead')
const GetPatientResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientResponseDescriptor = $convert.base64Decode(
    'ChJHZXRQYXRpZW50UmVzcG9uc2USDgoCaWQYASABKAlSAmlkEjoKGWh1bWFuX3JlYWRhYmxlX2'
    'lkZW50aWZpZXIYAiABKAlSF2h1bWFuUmVhZGFibGVJZGVudGlmaWVyEhQKBW5vdGVzGAMgASgJ'
    'UgVub3RlcxJHCgRyb29tGAcgASgLMi4uc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFBhdGllbn'
    'RSZXNwb25zZS5Sb29tSABSBHJvb22IAQESRAoDYmVkGAggASgLMi0uc2VydmljZXMudGFza3Nf'
    'c3ZjLnYxLkdldFBhdGllbnRSZXNwb25zZS5CZWRIAVIDYmVkiAEBEiAKC2NvbnNpc3RlbmN5GA'
    'kgASgJUgtjb25zaXN0ZW5jeRplCgRSb29tEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJ'
    'UgRuYW1lEhcKB3dhcmRfaWQYAyABKAlSBndhcmRJZBIgCgtjb25zaXN0ZW5jeRgEIAEoCVILY2'
    '9uc2lzdGVuY3kaSwoDQmVkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAK'
    'C2NvbnNpc3RlbmN5GAMgASgJUgtjb25zaXN0ZW5jeUIHCgVfcm9vbUIGCgRfYmVk');

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
    {'1': 'bed_id', '3': 4, '4': 1, '5': 9, '10': 'bedId'},
    {'1': 'consistency', '3': 5, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetPatientByBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientByBedResponseDescriptor = $convert.base64Decode(
    'ChdHZXRQYXRpZW50QnlCZWRSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSOgoZaHVtYW5fcmVhZG'
    'FibGVfaWRlbnRpZmllchgCIAEoCVIXaHVtYW5SZWFkYWJsZUlkZW50aWZpZXISFAoFbm90ZXMY'
    'AyABKAlSBW5vdGVzEhUKBmJlZF9pZBgEIAEoCVIFYmVkSWQSIAoLY29uc2lzdGVuY3kYBSABKA'
    'lSC2NvbnNpc3RlbmN5');

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
    {'1': 'patients', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientsByWardResponse.Patient', '10': 'patients'},
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
    {'1': 'consistency', '3': 5, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_bed_id'},
  ],
};

/// Descriptor for `GetPatientsByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientsByWardResponseDescriptor = $convert.base64Decode(
    'ChlHZXRQYXRpZW50c0J5V2FyZFJlc3BvbnNlElQKCHBhdGllbnRzGAEgAygLMjguc2VydmljZX'
    'MudGFza3Nfc3ZjLnYxLkdldFBhdGllbnRzQnlXYXJkUmVzcG9uc2UuUGF0aWVudFIIcGF0aWVu'
    'dHMatAEKB1BhdGllbnQSDgoCaWQYASABKAlSAmlkEjoKGWh1bWFuX3JlYWRhYmxlX2lkZW50aW'
    'ZpZXIYAiABKAlSF2h1bWFuUmVhZGFibGVJZGVudGlmaWVyEhQKBW5vdGVzGAMgASgJUgVub3Rl'
    'cxIaCgZiZWRfaWQYBCABKAlIAFIFYmVkSWSIAQESIAoLY29uc2lzdGVuY3kYBSABKAlSC2Nvbn'
    'Npc3RlbmN5QgkKB19iZWRfaWQ=');

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
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientAssignmentByWardResponse.Room', '10': 'rooms'},
  ],
  '3': [GetPatientAssignmentByWardResponse_Room$json],
};

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed', '10': 'beds'},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '3': [GetPatientAssignmentByWardResponse_Room_Bed$json],
};

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse_Room_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'patient', '3': 3, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient', '9': 0, '10': 'patient', '17': true},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
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
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetPatientAssignmentByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientAssignmentByWardResponseDescriptor = $convert.base64Decode(
    'CiJHZXRQYXRpZW50QXNzaWdubWVudEJ5V2FyZFJlc3BvbnNlElQKBXJvb21zGAEgAygLMj4uc2'
    'VydmljZXMudGFza3Nfc3ZjLnYxLkdldFBhdGllbnRBc3NpZ25tZW50QnlXYXJkUmVzcG9uc2Uu'
    'Um9vbVIFcm9vbXMaugMKBFJvb20SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USVgoEYmVkcxgDIAMoCzJCLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQYXRpZW50QXNzaWdu'
    'bWVudEJ5V2FyZFJlc3BvbnNlLlJvb20uQmVkUgRiZWRzEiAKC2NvbnNpc3RlbmN5GAQgASgJUg'
    'tjb25zaXN0ZW5jeRqTAgoDQmVkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l'
    'EmkKB3BhdGllbnQYAyABKAsySi5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0UGF0aWVudEFzc2'
    'lnbm1lbnRCeVdhcmRSZXNwb25zZS5Sb29tLkJlZC5QYXRpZW50SABSB3BhdGllbnSIAQESIAoL'
    'Y29uc2lzdGVuY3kYBCABKAlSC2NvbnNpc3RlbmN5Gk8KB1BhdGllbnQSDgoCaWQYASABKAlSAm'
    'lkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLY29uc2lzdGVuY3kYAyABKAlSC2NvbnNpc3RlbmN5'
    'QgoKCF9wYXRpZW50');

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
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    {'1': 'tasks', '3': 4, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientDetailsResponse.Task', '10': 'tasks'},
    {'1': 'room', '3': 5, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetPatientDetailsResponse.Room', '9': 0, '10': 'room', '17': true},
    {'1': 'bed', '3': 6, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetPatientDetailsResponse.Bed', '9': 1, '10': 'bed', '17': true},
    {'1': 'is_discharged', '3': 7, '4': 1, '5': 8, '10': 'isDischarged'},
    {'1': 'consistency', '3': 8, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '3': [GetPatientDetailsResponse_Room$json, GetPatientDetailsResponse_Bed$json, GetPatientDetailsResponse_Task$json],
  '8': [
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
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getPatientDetailsResponseDescriptor instead')
const GetPatientDetailsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getPatientDetailsResponseDescriptor instead')
const GetPatientDetailsResponse_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.services.tasks_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientDetailsResponse.Task.SubTask', '10': 'subtasks'},
    {'1': 'consistency', '3': 9, '4': 1, '5': 9, '10': 'consistency'},
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

/// Descriptor for `GetPatientDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientDetailsResponseDescriptor = $convert.base64Decode(
    'ChlHZXRQYXRpZW50RGV0YWlsc1Jlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBI6ChlodW1hbl9yZW'
    'FkYWJsZV9pZGVudGlmaWVyGAIgASgJUhdodW1hblJlYWRhYmxlSWRlbnRpZmllchIUCgVub3Rl'
    'cxgDIAEoCVIFbm90ZXMSSwoFdGFza3MYBCADKAsyNS5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2'
    'V0UGF0aWVudERldGFpbHNSZXNwb25zZS5UYXNrUgV0YXNrcxJOCgRyb29tGAUgASgLMjUuc2Vy'
    'dmljZXMudGFza3Nfc3ZjLnYxLkdldFBhdGllbnREZXRhaWxzUmVzcG9uc2UuUm9vbUgAUgRyb2'
    '9tiAEBEksKA2JlZBgGIAEoCzI0LnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQYXRpZW50RGV0'
    'YWlsc1Jlc3BvbnNlLkJlZEgBUgNiZWSIAQESIwoNaXNfZGlzY2hhcmdlZBgHIAEoCFIMaXNEaX'
    'NjaGFyZ2VkEiAKC2NvbnNpc3RlbmN5GAggASgJUgtjb25zaXN0ZW5jeRplCgRSb29tEg4KAmlk'
    'GAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhcKB3dhcmRfaWQYAyABKAlSBndhcmRJZB'
    'IgCgtjb25zaXN0ZW5jeRgEIAEoCVILY29uc2lzdGVuY3kaSwoDQmVkEg4KAmlkGAEgASgJUgJp'
    'ZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2NvbnNpc3RlbmN5GAMgASgJUgtjb25zaXN0ZW5jeR'
    'rCAwoEVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlw'
    'dGlvbhgDIAEoCVILZGVzY3JpcHRpb24SOQoGc3RhdHVzGAQgASgOMiEuc2VydmljZXMudGFza3'
    'Nfc3ZjLnYxLlRhc2tTdGF0dXNSBnN0YXR1cxItChBhc3NpZ25lZF91c2VyX2lkGAUgASgJSABS'
    'DmFzc2lnbmVkVXNlcklkiAEBEh0KCnBhdGllbnRfaWQYBiABKAlSCXBhdGllbnRJZBIWCgZwdW'
    'JsaWMYByABKAhSBnB1YmxpYxJZCghzdWJ0YXNrcxgIIAMoCzI9LnNlcnZpY2VzLnRhc2tzX3N2'
    'Yy52MS5HZXRQYXRpZW50RGV0YWlsc1Jlc3BvbnNlLlRhc2suU3ViVGFza1IIc3VidGFza3MSIA'
    'oLY29uc2lzdGVuY3kYCSABKAlSC2NvbnNpc3RlbmN5GkEKB1N1YlRhc2sSDgoCaWQYASABKAlS'
    'AmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEZG9uZRgDIAEoCFIEZG9uZUITChFfYXNzaWduZW'
    'RfdXNlcl9pZEIHCgVfcm9vbUIGCgRfYmVk');

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
    {'1': 'active', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientListResponse.Patient', '10': 'active'},
    {'1': 'unassigned_patients', '3': 2, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientListResponse.Patient', '10': 'unassignedPatients'},
    {'1': 'discharged_patients', '3': 3, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientListResponse.Patient', '10': 'dischargedPatients'},
  ],
  '3': [GetPatientListResponse_Bed$json, GetPatientListResponse_Room$json, GetPatientListResponse_Patient$json, GetPatientListResponse_Task$json],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ward_id', '3': 3, '4': 1, '5': 9, '10': 'wardId'},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'room', '3': 3, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetPatientListResponse.Room', '10': 'room'},
    {'1': 'bed', '3': 4, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetPatientListResponse.Bed', '10': 'bed'},
    {'1': 'notes', '3': 5, '4': 1, '5': 9, '10': 'notes'},
    {'1': 'tasks', '3': 6, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientListResponse.Task', '10': 'tasks'},
    {'1': 'consistency', '3': 7, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.services.tasks_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetPatientListResponse.Task.SubTask', '10': 'subtasks'},
    {'1': 'consistency', '3': 9, '4': 1, '5': 9, '10': 'consistency'},
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

/// Descriptor for `GetPatientListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientListResponseDescriptor = $convert.base64Decode(
    'ChZHZXRQYXRpZW50TGlzdFJlc3BvbnNlEk0KBmFjdGl2ZRgBIAMoCzI1LnNlcnZpY2VzLnRhc2'
    'tzX3N2Yy52MS5HZXRQYXRpZW50TGlzdFJlc3BvbnNlLlBhdGllbnRSBmFjdGl2ZRJmChN1bmFz'
    'c2lnbmVkX3BhdGllbnRzGAIgAygLMjUuc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFBhdGllbn'
    'RMaXN0UmVzcG9uc2UuUGF0aWVudFISdW5hc3NpZ25lZFBhdGllbnRzEmYKE2Rpc2NoYXJnZWRf'
    'cGF0aWVudHMYAyADKAsyNS5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0UGF0aWVudExpc3RSZX'
    'Nwb25zZS5QYXRpZW50UhJkaXNjaGFyZ2VkUGF0aWVudHMaSwoDQmVkEg4KAmlkGAEgASgJUgJp'
    'ZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2NvbnNpc3RlbmN5GAMgASgJUgtjb25zaXN0ZW5jeR'
    'plCgRSb29tEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhcKB3dhcmRfaWQY'
    'AyABKAlSBndhcmRJZBIgCgtjb25zaXN0ZW5jeRgEIAEoCVILY29uc2lzdGVuY3ka5AIKB1BhdG'
    'llbnQSDgoCaWQYASABKAlSAmlkEjoKGWh1bWFuX3JlYWRhYmxlX2lkZW50aWZpZXIYAiABKAlS'
    'F2h1bWFuUmVhZGFibGVJZGVudGlmaWVyEkYKBHJvb20YAyABKAsyMi5zZXJ2aWNlcy50YXNrc1'
    '9zdmMudjEuR2V0UGF0aWVudExpc3RSZXNwb25zZS5Sb29tUgRyb29tEkMKA2JlZBgEIAEoCzIx'
    'LnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQYXRpZW50TGlzdFJlc3BvbnNlLkJlZFIDYmVkEh'
    'QKBW5vdGVzGAUgASgJUgVub3RlcxJICgV0YXNrcxgGIAMoCzIyLnNlcnZpY2VzLnRhc2tzX3N2'
    'Yy52MS5HZXRQYXRpZW50TGlzdFJlc3BvbnNlLlRhc2tSBXRhc2tzEiAKC2NvbnNpc3RlbmN5GA'
    'cgASgJUgtjb25zaXN0ZW5jeRq/AwoEVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEo'
    'CVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SOQoGc3RhdHVzGAQgAS'
    'gOMiEuc2VydmljZXMudGFza3Nfc3ZjLnYxLlRhc2tTdGF0dXNSBnN0YXR1cxItChBhc3NpZ25l'
    'ZF91c2VyX2lkGAUgASgJSABSDmFzc2lnbmVkVXNlcklkiAEBEh0KCnBhdGllbnRfaWQYBiABKA'
    'lSCXBhdGllbnRJZBIWCgZwdWJsaWMYByABKAhSBnB1YmxpYxJWCghzdWJ0YXNrcxgIIAMoCzI6'
    'LnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQYXRpZW50TGlzdFJlc3BvbnNlLlRhc2suU3ViVG'
    'Fza1IIc3VidGFza3MSIAoLY29uc2lzdGVuY3kYCSABKAlSC2NvbnNpc3RlbmN5GkEKB1N1YlRh'
    'c2sSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEZG9uZRgDIAEoCFIEZG'
    '9uZUITChFfYXNzaWduZWRfdXNlcl9pZA==');

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
    {'1': 'recent_patients', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetRecentPatientsResponse.Patient', '10': 'recentPatients'},
  ],
  '3': [GetRecentPatientsResponse_Bed$json, GetRecentPatientsResponse_Room$json, GetRecentPatientsResponse_Patient$json],
};

@$core.Deprecated('Use getRecentPatientsResponseDescriptor instead')
const GetRecentPatientsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getRecentPatientsResponseDescriptor instead')
const GetRecentPatientsResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ward_id', '3': 3, '4': 1, '5': 9, '10': 'wardId'},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getRecentPatientsResponseDescriptor instead')
const GetRecentPatientsResponse_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'room', '3': 3, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetRecentPatientsResponse.Room', '9': 0, '10': 'room', '17': true},
    {'1': 'bed', '3': 4, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetRecentPatientsResponse.Bed', '9': 1, '10': 'bed', '17': true},
    {'1': 'consistency', '3': 5, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_room'},
    {'1': '_bed'},
  ],
};

/// Descriptor for `GetRecentPatientsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecentPatientsResponseDescriptor = $convert.base64Decode(
    'ChlHZXRSZWNlbnRQYXRpZW50c1Jlc3BvbnNlEmEKD3JlY2VudF9wYXRpZW50cxgBIAMoCzI4Ln'
    'NlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRSZWNlbnRQYXRpZW50c1Jlc3BvbnNlLlBhdGllbnRS'
    'DnJlY2VudFBhdGllbnRzGksKA0JlZBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbm'
    'FtZRIgCgtjb25zaXN0ZW5jeRgDIAEoCVILY29uc2lzdGVuY3kaZQoEUm9vbRIOCgJpZBgBIAEo'
    'CVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIXCgd3YXJkX2lkGAMgASgJUgZ3YXJkSWQSIAoLY2'
    '9uc2lzdGVuY3kYBCABKAlSC2NvbnNpc3RlbmN5GqUCCgdQYXRpZW50Eg4KAmlkGAEgASgJUgJp'
    'ZBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVyGAIgASgJUhdodW1hblJlYWRhYmxlSWRlbn'
    'RpZmllchJOCgRyb29tGAMgASgLMjUuc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFJlY2VudFBh'
    'dGllbnRzUmVzcG9uc2UuUm9vbUgAUgRyb29tiAEBEksKA2JlZBgEIAEoCzI0LnNlcnZpY2VzLn'
    'Rhc2tzX3N2Yy52MS5HZXRSZWNlbnRQYXRpZW50c1Jlc3BvbnNlLkJlZEgBUgNiZWSIAQESIAoL'
    'Y29uc2lzdGVuY3kYBSABKAlSC2NvbnNpc3RlbmN5QgcKBV9yb29tQgYKBF9iZWQ=');

@$core.Deprecated('Use updatePatientRequestDescriptor instead')
const UpdatePatientRequest$json = {
  '1': 'UpdatePatientRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'humanReadableIdentifier', '17': true},
    {'1': 'notes', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'notes', '17': true},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'consistency', '17': true},
  ],
  '8': [
    {'1': '_human_readable_identifier'},
    {'1': '_notes'},
    {'1': '_consistency'},
  ],
};

/// Descriptor for `UpdatePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQYXRpZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSPwoZaHVtYW5fcmVhZGFibG'
    'VfaWRlbnRpZmllchgCIAEoCUgAUhdodW1hblJlYWRhYmxlSWRlbnRpZmllcogBARIZCgVub3Rl'
    'cxgDIAEoCUgBUgVub3Rlc4gBARIlCgtjb25zaXN0ZW5jeRgEIAEoCUgCUgtjb25zaXN0ZW5jeY'
    'gBAUIcChpfaHVtYW5fcmVhZGFibGVfaWRlbnRpZmllckIICgZfbm90ZXNCDgoMX2NvbnNpc3Rl'
    'bmN5');

@$core.Deprecated('Use updatePatientResponseDescriptor instead')
const UpdatePatientResponse$json = {
  '1': 'UpdatePatientResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `UpdatePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVQYXRpZW50UmVzcG9uc2USOQoIY29uZmxpY3QYASABKAsyGC5saWJzLmNvbW1vbi'
    '52MS5Db25mbGljdEgAUghjb25mbGljdIgBARIgCgtjb25zaXN0ZW5jeRgCIAEoCVILY29uc2lz'
    'dGVuY3lCCwoJX2NvbmZsaWN0');

@$core.Deprecated('Use assignBedRequestDescriptor instead')
const AssignBedRequest$json = {
  '1': 'AssignBedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'bed_id', '3': 2, '4': 1, '5': 9, '10': 'bedId'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'consistency', '17': true},
  ],
  '8': [
    {'1': '_consistency'},
  ],
};

/// Descriptor for `AssignBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignBedRequestDescriptor = $convert.base64Decode(
    'ChBBc3NpZ25CZWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIVCgZiZWRfaWQYAiABKAlSBWJlZE'
    'lkEiUKC2NvbnNpc3RlbmN5GAMgASgJSABSC2NvbnNpc3RlbmN5iAEBQg4KDF9jb25zaXN0ZW5j'
    'eQ==');

@$core.Deprecated('Use assignBedResponseDescriptor instead')
const AssignBedResponse$json = {
  '1': 'AssignBedResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `AssignBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignBedResponseDescriptor = $convert.base64Decode(
    'ChFBc3NpZ25CZWRSZXNwb25zZRI5Cghjb25mbGljdBgBIAEoCzIYLmxpYnMuY29tbW9uLnYxLk'
    'NvbmZsaWN0SABSCGNvbmZsaWN0iAEBEiAKC2NvbnNpc3RlbmN5GAIgASgJUgtjb25zaXN0ZW5j'
    'eUILCglfY29uZmxpY3Q=');

@$core.Deprecated('Use unassignBedRequestDescriptor instead')
const UnassignBedRequest$json = {
  '1': 'UnassignBedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'consistency', '17': true},
  ],
  '8': [
    {'1': '_consistency'},
  ],
};

/// Descriptor for `UnassignBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignBedRequestDescriptor = $convert.base64Decode(
    'ChJVbmFzc2lnbkJlZFJlcXVlc3QSDgoCaWQYASABKAlSAmlkEiUKC2NvbnNpc3RlbmN5GAIgAS'
    'gJSABSC2NvbnNpc3RlbmN5iAEBQg4KDF9jb25zaXN0ZW5jeQ==');

@$core.Deprecated('Use unassignBedResponseDescriptor instead')
const UnassignBedResponse$json = {
  '1': 'UnassignBedResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `UnassignBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignBedResponseDescriptor = $convert.base64Decode(
    'ChNVbmFzc2lnbkJlZFJlc3BvbnNlEjkKCGNvbmZsaWN0GAEgASgLMhgubGlicy5jb21tb24udj'
    'EuQ29uZmxpY3RIAFIIY29uZmxpY3SIAQESIAoLY29uc2lzdGVuY3kYAiABKAlSC2NvbnNpc3Rl'
    'bmN5QgsKCV9jb25mbGljdA==');

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
  '2': [
    {'1': 'consistency', '3': 1, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `DischargePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dischargePatientResponseDescriptor = $convert.base64Decode(
    'ChhEaXNjaGFyZ2VQYXRpZW50UmVzcG9uc2USIAoLY29uc2lzdGVuY3kYASABKAlSC2NvbnNpc3'
    'RlbmN5');

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
  '2': [
    {'1': 'consistency', '3': 1, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `ReadmitPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readmitPatientResponseDescriptor = $convert.base64Decode(
    'ChZSZWFkbWl0UGF0aWVudFJlc3BvbnNlEiAKC2NvbnNpc3RlbmN5GAEgASgJUgtjb25zaXN0ZW'
    '5jeQ==');

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

