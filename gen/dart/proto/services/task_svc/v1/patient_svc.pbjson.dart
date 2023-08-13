//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/patient_svc.proto
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
    {'1': 'patients', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientsByWardResponse.Patient', '10': 'patients'},
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
    'ChlHZXRQYXRpZW50c0J5V2FyZFJlc3BvbnNlElkKCHBhdGllbnRzGAEgAygLMj0ucHJvdG8uc2'
    'VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudHNCeVdhcmRSZXNwb25zZS5QYXRpZW50Ughw'
    'YXRpZW50cxqSAQoHUGF0aWVudBIOCgJpZBgBIAEoCVICaWQSOgoZaHVtYW5fcmVhZGFibGVfaW'
    'RlbnRpZmllchgCIAEoCVIXaHVtYW5SZWFkYWJsZUlkZW50aWZpZXISFAoFbm90ZXMYAyABKAlS'
    'BW5vdGVzEhoKBmJlZF9pZBgEIAEoCUgAUgViZWRJZIgBAUIJCgdfYmVkX2lk');

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
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room', '10': 'rooms'},
  ],
  '3': [GetPatientAssignmentByWardResponse_Room$json],
};

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed', '10': 'beds'},
  ],
  '3': [GetPatientAssignmentByWardResponse_Room_Bed$json],
};

@$core.Deprecated('Use getPatientAssignmentByWardResponseDescriptor instead')
const GetPatientAssignmentByWardResponse_Room_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'patient', '3': 3, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient', '9': 0, '10': 'patient', '17': true},
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
    'CiJHZXRQYXRpZW50QXNzaWdubWVudEJ5V2FyZFJlc3BvbnNlElkKBXJvb21zGAEgAygLMkMucH'
    'JvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudEFzc2lnbm1lbnRCeVdhcmRSZXNw'
    'b25zZS5Sb29tUgVyb29tcxreAgoEUm9vbRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCV'
    'IEbmFtZRJbCgRiZWRzGAMgAygLMkcucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0'
    'aWVudEFzc2lnbm1lbnRCeVdhcmRSZXNwb25zZS5Sb29tLkJlZFIEYmVkcxrUAQoDQmVkEg4KAm'
    'lkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEm4KB3BhdGllbnQYAyABKAsyTy5wcm90'
    'by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50QXNzaWdubWVudEJ5V2FyZFJlc3Bvbn'
    'NlLlJvb20uQmVkLlBhdGllbnRIAFIHcGF0aWVudIgBARotCgdQYXRpZW50Eg4KAmlkGAEgASgJ'
    'UgJpZBISCgRuYW1lGAIgASgJUgRuYW1lQgoKCF9wYXRpZW50');

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
    {'1': 'tasks', '3': 5, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientDetailsResponse.Task', '10': 'tasks'},
  ],
  '3': [GetPatientDetailsResponse_Task$json],
  '4': [GetPatientDetailsResponse_TaskStatus$json],
};

@$core.Deprecated('Use getPatientDetailsResponseDescriptor instead')
const GetPatientDetailsResponse_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.proto.services.task_svc.v1.GetPatientDetailsResponse.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '10': 'assignedUserId'},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask', '10': 'subtasks'},
  ],
  '3': [GetPatientDetailsResponse_Task_SubTask$json],
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
    'bGVJZGVudGlmaWVyEhQKBW5vdGVzGAQgASgJUgVub3RlcxJQCgV0YXNrcxgFIAMoCzI6LnByb3'
    'RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnREZXRhaWxzUmVzcG9uc2UuVGFza1IF'
    'dGFza3MaqgMKBFRhc2sSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZG'
    'VzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uElgKBnN0YXR1cxgEIAEoDjJALnByb3RvLnNl'
    'cnZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnREZXRhaWxzUmVzcG9uc2UuVGFza1N0YXR1c1'
    'IGc3RhdHVzEigKEGFzc2lnbmVkX3VzZXJfaWQYBSABKAlSDmFzc2lnbmVkVXNlcklkEh0KCnBh'
    'dGllbnRfaWQYBiABKAlSCXBhdGllbnRJZBIWCgZwdWJsaWMYByABKAhSBnB1YmxpYxJeCghzdW'
    'J0YXNrcxgIIAMoCzJCLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnREZXRh'
    'aWxzUmVzcG9uc2UuVGFzay5TdWJUYXNrUghzdWJ0YXNrcxpBCgdTdWJUYXNrEg4KAmlkGAEgAS'
    'gJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGRvbmUYAyABKAhSBGRvbmUicgoKVGFza1N0'
    'YXR1cxIbChdUQVNLX1NUQVRVU19VTlNQRUNJRklFRBAAEhQKEFRBU0tfU1RBVFVTX1RPRE8QAR'
    'IbChdUQVNLX1NUQVRVU19JTl9QUk9HUkVTUxACEhQKEFRBU0tfU1RBVFVTX0RPTkUQAw==');

@$core.Deprecated('Use getPatientListRequestDescriptor instead')
const GetPatientListRequest$json = {
  '1': 'GetPatientListRequest',
  '2': [
    {'1': 'organisation_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'organisationId', '17': true},
  ],
  '8': [
    {'1': '_organisation_id'},
  ],
};

/// Descriptor for `GetPatientListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientListRequestDescriptor = $convert.base64Decode(
    'ChVHZXRQYXRpZW50TGlzdFJlcXVlc3QSLAoPb3JnYW5pc2F0aW9uX2lkGAEgASgJSABSDm9yZ2'
    'FuaXNhdGlvbklkiAEBQhIKEF9vcmdhbmlzYXRpb25faWQ=');

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse$json = {
  '1': 'GetPatientListResponse',
  '2': [
    {'1': 'active', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed', '10': 'active'},
    {'1': 'unassigned_patients', '3': 2, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientListResponse.Patient', '10': 'unassignedPatients'},
    {'1': 'discharged_patients', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientListResponse.Patient', '10': 'dischargedPatients'},
  ],
  '3': [GetPatientListResponse_Patient$json, GetPatientListResponse_Bed$json, GetPatientListResponse_Room$json, GetPatientListResponse_PatientWithRoomAndBed$json],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
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
  ],
};

@$core.Deprecated('Use getPatientListResponseDescriptor instead')
const GetPatientListResponse_PatientWithRoomAndBed$json = {
  '1': 'PatientWithRoomAndBed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'room', '3': 3, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientListResponse.Room', '10': 'room'},
    {'1': 'bed', '3': 4, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientListResponse.Bed', '10': 'bed'},
  ],
};

/// Descriptor for `GetPatientListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientListResponseDescriptor = $convert.base64Decode(
    'ChZHZXRQYXRpZW50TGlzdFJlc3BvbnNlEmAKBmFjdGl2ZRgBIAMoCzJILnByb3RvLnNlcnZpY2'
    'VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnRMaXN0UmVzcG9uc2UuUGF0aWVudFdpdGhSb29tQW5k'
    'QmVkUgZhY3RpdmUSawoTdW5hc3NpZ25lZF9wYXRpZW50cxgCIAMoCzI6LnByb3RvLnNlcnZpY2'
    'VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnRMaXN0UmVzcG9uc2UuUGF0aWVudFISdW5hc3NpZ25l'
    'ZFBhdGllbnRzEmsKE2Rpc2NoYXJnZWRfcGF0aWVudHMYAyADKAsyOi5wcm90by5zZXJ2aWNlcy'
    '50YXNrX3N2Yy52MS5HZXRQYXRpZW50TGlzdFJlc3BvbnNlLlBhdGllbnRSEmRpc2NoYXJnZWRQ'
    'YXRpZW50cxpVCgdQYXRpZW50Eg4KAmlkGAEgASgJUgJpZBI6ChlodW1hbl9yZWFkYWJsZV9pZG'
    'VudGlmaWVyGAIgASgJUhdodW1hblJlYWRhYmxlSWRlbnRpZmllchopCgNCZWQSDgoCaWQYASAB'
    'KAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUaKgoEUm9vbRIOCgJpZBgBIAEoCVICaWQSEgoEbm'
    'FtZRgCIAEoCVIEbmFtZRr6AQoVUGF0aWVudFdpdGhSb29tQW5kQmVkEg4KAmlkGAEgASgJUgJp'
    'ZBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVyGAIgASgJUhdodW1hblJlYWRhYmxlSWRlbn'
    'RpZmllchJLCgRyb29tGAMgASgLMjcucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0'
    'aWVudExpc3RSZXNwb25zZS5Sb29tUgRyb29tEkgKA2JlZBgEIAEoCzI2LnByb3RvLnNlcnZpY2'
    'VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnRMaXN0UmVzcG9uc2UuQmVkUgNiZWQ=');

const $core.Map<$core.String, $core.dynamic> PatientServiceBase$json = {
  '1': 'PatientService',
  '2': [
    {'1': 'CreatePatient', '2': '.proto.services.task_svc.v1.CreatePatientRequest', '3': '.proto.services.task_svc.v1.CreatePatientResponse', '4': {}},
    {'1': 'GetPatient', '2': '.proto.services.task_svc.v1.GetPatientRequest', '3': '.proto.services.task_svc.v1.GetPatientResponse', '4': {}},
    {'1': 'GetPatientByBed', '2': '.proto.services.task_svc.v1.GetPatientByBedRequest', '3': '.proto.services.task_svc.v1.GetPatientByBedResponse', '4': {}},
    {'1': 'GetPatientsByWard', '2': '.proto.services.task_svc.v1.GetPatientsByWardRequest', '3': '.proto.services.task_svc.v1.GetPatientsByWardResponse', '4': {}},
    {'1': 'GetPatientAssignmentByWard', '2': '.proto.services.task_svc.v1.GetPatientAssignmentByWardRequest', '3': '.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse', '4': {}},
    {'1': 'UpdatePatient', '2': '.proto.services.task_svc.v1.UpdatePatientRequest', '3': '.proto.services.task_svc.v1.UpdatePatientResponse', '4': {}},
    {'1': 'AssignBed', '2': '.proto.services.task_svc.v1.AssignBedRequest', '3': '.proto.services.task_svc.v1.AssignBedResponse', '4': {}},
    {'1': 'UnassignBed', '2': '.proto.services.task_svc.v1.UnassignBedRequest', '3': '.proto.services.task_svc.v1.UnassignBedResponse', '4': {}},
    {'1': 'DischargePatient', '2': '.proto.services.task_svc.v1.DischargePatientRequest', '3': '.proto.services.task_svc.v1.DischargePatientResponse', '4': {}},
    {'1': 'GetPatientDetails', '2': '.proto.services.task_svc.v1.GetPatientDetailsRequest', '3': '.proto.services.task_svc.v1.GetPatientDetailsResponse', '4': {}},
    {'1': 'GetPatientList', '2': '.proto.services.task_svc.v1.GetPatientListRequest', '3': '.proto.services.task_svc.v1.GetPatientListResponse', '4': {}},
    {'1': 'DeletePatient', '2': '.proto.services.task_svc.v1.DeletePatientRequest', '3': '.proto.services.task_svc.v1.DeletePatientResponse', '4': {}},
  ],
};

@$core.Deprecated('Use patientServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> PatientServiceBase$messageJson = {
  '.proto.services.task_svc.v1.CreatePatientRequest': CreatePatientRequest$json,
  '.proto.services.task_svc.v1.CreatePatientResponse': CreatePatientResponse$json,
  '.proto.services.task_svc.v1.GetPatientRequest': GetPatientRequest$json,
  '.proto.services.task_svc.v1.GetPatientResponse': GetPatientResponse$json,
  '.proto.services.task_svc.v1.GetPatientByBedRequest': GetPatientByBedRequest$json,
  '.proto.services.task_svc.v1.GetPatientByBedResponse': GetPatientByBedResponse$json,
  '.proto.services.task_svc.v1.GetPatientsByWardRequest': GetPatientsByWardRequest$json,
  '.proto.services.task_svc.v1.GetPatientsByWardResponse': GetPatientsByWardResponse$json,
  '.proto.services.task_svc.v1.GetPatientsByWardResponse.Patient': GetPatientsByWardResponse_Patient$json,
  '.proto.services.task_svc.v1.GetPatientAssignmentByWardRequest': GetPatientAssignmentByWardRequest$json,
  '.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse': GetPatientAssignmentByWardResponse$json,
  '.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room': GetPatientAssignmentByWardResponse_Room$json,
  '.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed': GetPatientAssignmentByWardResponse_Room_Bed$json,
  '.proto.services.task_svc.v1.GetPatientAssignmentByWardResponse.Room.Bed.Patient': GetPatientAssignmentByWardResponse_Room_Bed_Patient$json,
  '.proto.services.task_svc.v1.UpdatePatientRequest': UpdatePatientRequest$json,
  '.proto.services.task_svc.v1.UpdatePatientResponse': UpdatePatientResponse$json,
  '.proto.services.task_svc.v1.AssignBedRequest': AssignBedRequest$json,
  '.proto.services.task_svc.v1.AssignBedResponse': AssignBedResponse$json,
  '.proto.services.task_svc.v1.UnassignBedRequest': UnassignBedRequest$json,
  '.proto.services.task_svc.v1.UnassignBedResponse': UnassignBedResponse$json,
  '.proto.services.task_svc.v1.DischargePatientRequest': DischargePatientRequest$json,
  '.proto.services.task_svc.v1.DischargePatientResponse': DischargePatientResponse$json,
  '.proto.services.task_svc.v1.GetPatientDetailsRequest': GetPatientDetailsRequest$json,
  '.proto.services.task_svc.v1.GetPatientDetailsResponse': GetPatientDetailsResponse$json,
  '.proto.services.task_svc.v1.GetPatientDetailsResponse.Task': GetPatientDetailsResponse_Task$json,
  '.proto.services.task_svc.v1.GetPatientDetailsResponse.Task.SubTask': GetPatientDetailsResponse_Task_SubTask$json,
  '.proto.services.task_svc.v1.GetPatientListRequest': GetPatientListRequest$json,
  '.proto.services.task_svc.v1.GetPatientListResponse': GetPatientListResponse$json,
  '.proto.services.task_svc.v1.GetPatientListResponse.PatientWithRoomAndBed': GetPatientListResponse_PatientWithRoomAndBed$json,
  '.proto.services.task_svc.v1.GetPatientListResponse.Room': GetPatientListResponse_Room$json,
  '.proto.services.task_svc.v1.GetPatientListResponse.Bed': GetPatientListResponse_Bed$json,
  '.proto.services.task_svc.v1.GetPatientListResponse.Patient': GetPatientListResponse_Patient$json,
  '.proto.services.task_svc.v1.DeletePatientRequest': DeletePatientRequest$json,
  '.proto.services.task_svc.v1.DeletePatientResponse': DeletePatientResponse$json,
};

/// Descriptor for `PatientService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List patientServiceDescriptor = $convert.base64Decode(
    'Cg5QYXRpZW50U2VydmljZRJ2Cg1DcmVhdGVQYXRpZW50EjAucHJvdG8uc2VydmljZXMudGFza1'
    '9zdmMudjEuQ3JlYXRlUGF0aWVudFJlcXVlc3QaMS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52'
    'MS5DcmVhdGVQYXRpZW50UmVzcG9uc2UiABJtCgpHZXRQYXRpZW50Ei0ucHJvdG8uc2VydmljZX'
    'MudGFza19zdmMudjEuR2V0UGF0aWVudFJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2'
    'Yy52MS5HZXRQYXRpZW50UmVzcG9uc2UiABJ8Cg9HZXRQYXRpZW50QnlCZWQSMi5wcm90by5zZX'
    'J2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50QnlCZWRSZXF1ZXN0GjMucHJvdG8uc2Vydmlj'
    'ZXMudGFza19zdmMudjEuR2V0UGF0aWVudEJ5QmVkUmVzcG9uc2UiABKCAQoRR2V0UGF0aWVudH'
    'NCeVdhcmQSNC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50c0J5V2FyZFJl'
    'cXVlc3QaNS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50c0J5V2FyZFJlc3'
    'BvbnNlIgASnQEKGkdldFBhdGllbnRBc3NpZ25tZW50QnlXYXJkEj0ucHJvdG8uc2VydmljZXMu'
    'dGFza19zdmMudjEuR2V0UGF0aWVudEFzc2lnbm1lbnRCeVdhcmRSZXF1ZXN0Gj4ucHJvdG8uc2'
    'VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudEFzc2lnbm1lbnRCeVdhcmRSZXNwb25zZSIA'
    'EnYKDVVwZGF0ZVBhdGllbnQSMC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVQYX'
    'RpZW50UmVxdWVzdBoxLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVwZGF0ZVBhdGllbnRS'
    'ZXNwb25zZSIAEmoKCUFzc2lnbkJlZBIsLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkFzc2'
    'lnbkJlZFJlcXVlc3QaLS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5Bc3NpZ25CZWRSZXNw'
    'b25zZSIAEnAKC1VuYXNzaWduQmVkEi4ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVW5hc3'
    'NpZ25CZWRSZXF1ZXN0Gi8ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVW5hc3NpZ25CZWRS'
    'ZXNwb25zZSIAEn8KEERpc2NoYXJnZVBhdGllbnQSMy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy'
    '52MS5EaXNjaGFyZ2VQYXRpZW50UmVxdWVzdBo0LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYx'
    'LkRpc2NoYXJnZVBhdGllbnRSZXNwb25zZSIAEoIBChFHZXRQYXRpZW50RGV0YWlscxI0LnByb3'
    'RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnREZXRhaWxzUmVxdWVzdBo1LnByb3Rv'
    'LnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnREZXRhaWxzUmVzcG9uc2UiABJ5Cg5HZX'
    'RQYXRpZW50TGlzdBIxLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnRMaXN0'
    'UmVxdWVzdBoyLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFBhdGllbnRMaXN0UmVzcG'
    '9uc2UiABJ2Cg1EZWxldGVQYXRpZW50EjAucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuRGVs'
    'ZXRlUGF0aWVudFJlcXVlc3QaMS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5EZWxldGVQYX'
    'RpZW50UmVzcG9uc2UiAA==');

