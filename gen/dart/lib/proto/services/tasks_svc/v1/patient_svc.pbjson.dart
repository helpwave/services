//
//  Generated code. Do not modify.
//  source: proto/services/tasks_svc/v1/patient_svc.proto
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
    {'1': 'ward_id', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'wardId', '17': true},
    {'1': 'room', '3': 7, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientResponse.Room', '9': 2, '10': 'room', '17': true},
    {'1': 'bed', '3': 8, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientResponse.Bed', '9': 3, '10': 'bed', '17': true},
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
    'UgVub3RlcxIaCgZiZWRfaWQYBCABKAlIAFIFYmVkSWSIAQESHAoHd2FyZF9pZBgFIAEoCUgBUg'
    'Z3YXJkSWSIAQESTQoEcm9vbRgHIAEoCzI0LnByb3RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5H'
    'ZXRQYXRpZW50UmVzcG9uc2UuUm9vbUgCUgRyb29tiAEBEkoKA2JlZBgIIAEoCzIzLnByb3RvLn'
    'NlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQYXRpZW50UmVzcG9uc2UuQmVkSANSA2JlZIgBARpD'
    'CgRSb29tEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhcKB3dhcmRfaWQYAy'
    'ABKAlSBndhcmRJZBopCgNCZWQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWVC'
    'CQoHX2JlZF9pZEIKCghfd2FyZF9pZEIHCgVfcm9vbUIGCgRfYmVk');

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
    {'1': 'patients', '3': 1, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientsByWardResponse.Patient', '10': 'patients'},
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
    'ChlHZXRQYXRpZW50c0J5V2FyZFJlc3BvbnNlEloKCHBhdGllbnRzGAEgAygLMj4ucHJvdG8uc2'
    'VydmljZXMudGFza3Nfc3ZjLnYxLkdldFBhdGllbnRzQnlXYXJkUmVzcG9uc2UuUGF0aWVudFII'
    'cGF0aWVudHMakgEKB1BhdGllbnQSDgoCaWQYASABKAlSAmlkEjoKGWh1bWFuX3JlYWRhYmxlX2'
    'lkZW50aWZpZXIYAiABKAlSF2h1bWFuUmVhZGFibGVJZGVudGlmaWVyEhQKBW5vdGVzGAMgASgJ'
    'UgVub3RlcxIaCgZiZWRfaWQYBCABKAlIAFIFYmVkSWSIAQFCCQoHX2JlZF9pZA==');

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
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientAssignmentByWardResponse.Room', '10': 'rooms'},
  ],
  '3': [GetPatientAssignmentByWardResponse_Room$json],
};

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed', '10': 'beds'},
  ],
  '3': [GetPatientAssignmentByWardResponse_Room_Bed$json],
};

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse_Room_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'patient', '3': 3, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient', '9': 0, '10': 'patient', '17': true},
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
    'CiJHZXRQYXRpZW50QXNzaWdubWVudEJ5V2FyZFJlc3BvbnNlEloKBXJvb21zGAEgAygLMkQucH'
    'JvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFBhdGllbnRBc3NpZ25tZW50QnlXYXJkUmVz'
    'cG9uc2UuUm9vbVIFcm9vbXMa4AIKBFJvb20SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSXAoEYmVkcxgDIAMoCzJILnByb3RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQ'
    'YXRpZW50QXNzaWdubWVudEJ5V2FyZFJlc3BvbnNlLlJvb20uQmVkUgRiZWRzGtUBCgNCZWQSDg'
    'oCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSbwoHcGF0aWVudBgDIAEoCzJQLnBy'
    'b3RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQYXRpZW50QXNzaWdubWVudEJ5V2FyZFJlc3'
    'BvbnNlLlJvb20uQmVkLlBhdGllbnRIAFIHcGF0aWVudIgBARotCgdQYXRpZW50Eg4KAmlkGAEg'
    'ASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lQgoKCF9wYXRpZW50');

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
    {'1': 'tasks', '3': 4, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientDetailsResponse.Task', '10': 'tasks'},
    {'1': 'room', '3': 5, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientDetailsResponse.Room', '9': 0, '10': 'room', '17': true},
    {'1': 'bed', '3': 6, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientDetailsResponse.Bed', '9': 1, '10': 'bed', '17': true},
    {'1': 'is_discharged', '3': 7, '4': 1, '5': 8, '10': 'isDischarged'},
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
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientDetailsResponse.Task.SubTask', '10': 'subtasks'},
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
    'cxgDIAEoCVIFbm90ZXMSUQoFdGFza3MYBCADKAsyOy5wcm90by5zZXJ2aWNlcy50YXNrc19zdm'
    'MudjEuR2V0UGF0aWVudERldGFpbHNSZXNwb25zZS5UYXNrUgV0YXNrcxJUCgRyb29tGAUgASgL'
    'MjsucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFBhdGllbnREZXRhaWxzUmVzcG9uc2'
    'UuUm9vbUgAUgRyb29tiAEBElEKA2JlZBgGIAEoCzI6LnByb3RvLnNlcnZpY2VzLnRhc2tzX3N2'
    'Yy52MS5HZXRQYXRpZW50RGV0YWlsc1Jlc3BvbnNlLkJlZEgBUgNiZWSIAQESIwoNaXNfZGlzY2'
    'hhcmdlZBgHIAEoCFIMaXNEaXNjaGFyZ2VkGkMKBFJvb20SDgoCaWQYASABKAlSAmlkEhIKBG5h'
    'bWUYAiABKAlSBG5hbWUSFwoHd2FyZF9pZBgDIAEoCVIGd2FyZElkGikKA0JlZBIOCgJpZBgBIA'
    'EoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRqsAwoEVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoE'
    'bmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SPwoGc3'
    'RhdHVzGAQgASgOMicucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYxLlRhc2tTdGF0dXNSBnN0'
    'YXR1cxItChBhc3NpZ25lZF91c2VyX2lkGAUgASgJSABSDmFzc2lnbmVkVXNlcklkiAEBEh0KCn'
    'BhdGllbnRfaWQYBiABKAlSCXBhdGllbnRJZBIWCgZwdWJsaWMYByABKAhSBnB1YmxpYxJfCghz'
    'dWJ0YXNrcxgIIAMoCzJDLnByb3RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQYXRpZW50RG'
    'V0YWlsc1Jlc3BvbnNlLlRhc2suU3ViVGFza1IIc3VidGFza3MaQQoHU3ViVGFzaxIOCgJpZBgB'
    'IAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRkb25lGAMgASgIUgRkb25lQhMKEV9hc3'
    'NpZ25lZF91c2VyX2lkQgcKBV9yb29tQgYKBF9iZWQ=');

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
    {'1': 'active', '3': 1, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientListResponse.Patient', '10': 'active'},
    {'1': 'unassigned_patients', '3': 2, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientListResponse.Patient', '10': 'unassignedPatients'},
    {'1': 'discharged_patients', '3': 3, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientListResponse.Patient', '10': 'dischargedPatients'},
  ],
  '3': [GetPatientListResponse_Bed$json, GetPatientListResponse_Room$json, GetPatientListResponse_Patient$json, GetPatientListResponse_Task$json],
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
const GetPatientListResponse_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'room', '3': 3, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientListResponse.Room', '10': 'room'},
    {'1': 'bed', '3': 4, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientListResponse.Bed', '10': 'bed'},
    {'1': 'notes', '3': 5, '4': 1, '5': 9, '10': 'notes'},
    {'1': 'tasks', '3': 6, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientListResponse.Task', '10': 'tasks'},
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPatientListResponse.Task.SubTask', '10': 'subtasks'},
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
    'ChZHZXRQYXRpZW50TGlzdFJlc3BvbnNlElMKBmFjdGl2ZRgBIAMoCzI7LnByb3RvLnNlcnZpY2'
    'VzLnRhc2tzX3N2Yy52MS5HZXRQYXRpZW50TGlzdFJlc3BvbnNlLlBhdGllbnRSBmFjdGl2ZRJs'
    'ChN1bmFzc2lnbmVkX3BhdGllbnRzGAIgAygLMjsucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLn'
    'YxLkdldFBhdGllbnRMaXN0UmVzcG9uc2UuUGF0aWVudFISdW5hc3NpZ25lZFBhdGllbnRzEmwK'
    'E2Rpc2NoYXJnZWRfcGF0aWVudHMYAyADKAsyOy5wcm90by5zZXJ2aWNlcy50YXNrc19zdmMudj'
    'EuR2V0UGF0aWVudExpc3RSZXNwb25zZS5QYXRpZW50UhJkaXNjaGFyZ2VkUGF0aWVudHMaKQoD'
    'QmVkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lGkMKBFJvb20SDgoCaWQYAS'
    'ABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFwoHd2FyZF9pZBgDIAEoCVIGd2FyZElkGtQC'
    'CgdQYXRpZW50Eg4KAmlkGAEgASgJUgJpZBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVyGA'
    'IgASgJUhdodW1hblJlYWRhYmxlSWRlbnRpZmllchJMCgRyb29tGAMgASgLMjgucHJvdG8uc2Vy'
    'dmljZXMudGFza3Nfc3ZjLnYxLkdldFBhdGllbnRMaXN0UmVzcG9uc2UuUm9vbVIEcm9vbRJJCg'
    'NiZWQYBCABKAsyNy5wcm90by5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0UGF0aWVudExpc3RS'
    'ZXNwb25zZS5CZWRSA2JlZBIUCgVub3RlcxgFIAEoCVIFbm90ZXMSTgoFdGFza3MYBiADKAsyOC'
    '5wcm90by5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0UGF0aWVudExpc3RSZXNwb25zZS5UYXNr'
    'UgV0YXNrcxqpAwoEVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCg'
    'tkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SPwoGc3RhdHVzGAQgASgOMicucHJvdG8u'
    'c2VydmljZXMudGFza3Nfc3ZjLnYxLlRhc2tTdGF0dXNSBnN0YXR1cxItChBhc3NpZ25lZF91c2'
    'VyX2lkGAUgASgJSABSDmFzc2lnbmVkVXNlcklkiAEBEh0KCnBhdGllbnRfaWQYBiABKAlSCXBh'
    'dGllbnRJZBIWCgZwdWJsaWMYByABKAhSBnB1YmxpYxJcCghzdWJ0YXNrcxgIIAMoCzJALnByb3'
    'RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQYXRpZW50TGlzdFJlc3BvbnNlLlRhc2suU3Vi'
    'VGFza1IIc3VidGFza3MaQQoHU3ViVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCV'
    'IEbmFtZRISCgRkb25lGAMgASgIUgRkb25lQhMKEV9hc3NpZ25lZF91c2VyX2lk');

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
    {'1': 'recent_patients', '3': 1, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetRecentPatientsResponse.PatientWithRoomAndBed', '10': 'recentPatients'},
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
    {'1': 'room', '3': 3, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetRecentPatientsResponse.Room', '10': 'room'},
    {'1': 'bed', '3': 4, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetRecentPatientsResponse.Bed', '10': 'bed'},
  ],
};

/// Descriptor for `GetRecentPatientsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecentPatientsResponseDescriptor = $convert.base64Decode(
    'ChlHZXRSZWNlbnRQYXRpZW50c1Jlc3BvbnNlEnUKD3JlY2VudF9wYXRpZW50cxgBIAMoCzJMLn'
    'Byb3RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRSZWNlbnRQYXRpZW50c1Jlc3BvbnNlLlBh'
    'dGllbnRXaXRoUm9vbUFuZEJlZFIOcmVjZW50UGF0aWVudHMaKQoDQmVkEg4KAmlkGAEgASgJUg'
    'JpZBISCgRuYW1lGAIgASgJUgRuYW1lGkMKBFJvb20SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUY'
    'AiABKAlSBG5hbWUSFwoHd2FyZF9pZBgDIAEoCVIGd2FyZElkGoICChVQYXRpZW50V2l0aFJvb2'
    '1BbmRCZWQSDgoCaWQYASABKAlSAmlkEjoKGWh1bWFuX3JlYWRhYmxlX2lkZW50aWZpZXIYAiAB'
    'KAlSF2h1bWFuUmVhZGFibGVJZGVudGlmaWVyEk8KBHJvb20YAyABKAsyOy5wcm90by5zZXJ2aW'
    'Nlcy50YXNrc19zdmMudjEuR2V0UmVjZW50UGF0aWVudHNSZXNwb25zZS5Sb29tUgRyb29tEkwK'
    'A2JlZBgEIAEoCzI6LnByb3RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRSZWNlbnRQYXRpZW'
    '50c1Jlc3BvbnNlLkJlZFIDYmVk');

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

