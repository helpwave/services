//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/task_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = {
  '1': 'CreateTaskRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'patient_id', '3': 3, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 4, '4': 1, '5': 8, '9': 1, '10': 'public', '17': true},
    {'1': 'due_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueAt'},
    {'1': 'initial_status', '3': 6, '4': 1, '5': 14, '6': '.services.tasks_svc.v1.TaskStatus', '9': 2, '10': 'initialStatus', '17': true},
    {'1': 'assigned_user_id', '3': 7, '4': 1, '5': 9, '9': 3, '10': 'assignedUserId', '17': true},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.CreateTaskRequest.SubTask', '10': 'subtasks'},
  ],
  '3': [CreateTaskRequest_SubTask$json],
  '8': [
    {'1': '_description'},
    {'1': '_public'},
    {'1': '_initial_status'},
    {'1': '_assigned_user_id'},
  ],
};

@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'done', '17': true},
  ],
  '8': [
    {'1': '_done'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUYXNrUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW9uGA'
    'IgASgJSABSC2Rlc2NyaXB0aW9uiAEBEh0KCnBhdGllbnRfaWQYAyABKAlSCXBhdGllbnRJZBIb'
    'CgZwdWJsaWMYBCABKAhIAVIGcHVibGljiAEBEjEKBmR1ZV9hdBgFIAEoCzIaLmdvb2dsZS5wcm'
    '90b2J1Zi5UaW1lc3RhbXBSBWR1ZUF0Ek0KDmluaXRpYWxfc3RhdHVzGAYgASgOMiEuc2Vydmlj'
    'ZXMudGFza3Nfc3ZjLnYxLlRhc2tTdGF0dXNIAlINaW5pdGlhbFN0YXR1c4gBARItChBhc3NpZ2'
    '5lZF91c2VyX2lkGAcgASgJSANSDmFzc2lnbmVkVXNlcklkiAEBEkwKCHN1YnRhc2tzGAggAygL'
    'MjAuc2VydmljZXMudGFza3Nfc3ZjLnYxLkNyZWF0ZVRhc2tSZXF1ZXN0LlN1YlRhc2tSCHN1Yn'
    'Rhc2tzGj8KB1N1YlRhc2sSEgoEbmFtZRgBIAEoCVIEbmFtZRIXCgRkb25lGAIgASgISABSBGRv'
    'bmWIAQFCBwoFX2RvbmVCDgoMX2Rlc2NyaXB0aW9uQgkKB19wdWJsaWNCEQoPX2luaXRpYWxfc3'
    'RhdHVzQhMKEV9hc3NpZ25lZF91c2VyX2lk');

@$core.Deprecated('Use createTaskResponseDescriptor instead')
const CreateTaskResponse$json = {
  '1': 'CreateTaskResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `CreateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEiAKC2NvbnNpc3RlbmN5GAIgAS'
    'gJUgtjb25zaXN0ZW5jeQ==');

@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = {
  '1': 'UpdateTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'due_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'dueAt', '17': true},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.services.tasks_svc.v1.TaskStatus', '9': 3, '10': 'status', '17': true},
    {'1': 'public', '3': 6, '4': 1, '5': 8, '9': 4, '10': 'public', '17': true},
    {'1': 'consistency', '3': 7, '4': 1, '5': 9, '9': 5, '10': 'consistency', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_due_at'},
    {'1': '_status'},
    {'1': '_public'},
    {'1': '_consistency'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEjYKBmR1ZV9hdBgE'
    'IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAlIFZHVlQXSIAQESPgoGc3RhdHVzGA'
    'UgASgOMiEuc2VydmljZXMudGFza3Nfc3ZjLnYxLlRhc2tTdGF0dXNIA1IGc3RhdHVziAEBEhsK'
    'BnB1YmxpYxgGIAEoCEgEUgZwdWJsaWOIAQESJQoLY29uc2lzdGVuY3kYByABKAlIBVILY29uc2'
    'lzdGVuY3mIAQFCBwoFX25hbWVCDgoMX2Rlc2NyaXB0aW9uQgkKB19kdWVfYXRCCQoHX3N0YXR1'
    'c0IJCgdfcHVibGljQg4KDF9jb25zaXN0ZW5jeQ==');

@$core.Deprecated('Use updateTaskResponseDescriptor instead')
const UpdateTaskResponse$json = {
  '1': 'UpdateTaskResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `UpdateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVUYXNrUmVzcG9uc2USOQoIY29uZmxpY3QYASABKAsyGC5saWJzLmNvbW1vbi52MS'
    '5Db25mbGljdEgAUghjb25mbGljdIgBARIgCgtjb25zaXN0ZW5jeRgCIAEoCVILY29uc2lzdGVu'
    'Y3lCCwoJX2NvbmZsaWN0');

@$core.Deprecated('Use getTaskRequestDescriptor instead')
const GetTaskRequest$json = {
  '1': 'GetTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse$json = {
  '1': 'GetTaskResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'assigned_user_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'subtasks', '3': 5, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTaskResponse.SubTask', '10': 'subtasks'},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.services.tasks_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'public', '3': 8, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'dueAt', '17': true},
    {'1': 'created_by', '3': 10, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'patient', '3': 11, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetTaskResponse.Patient', '10': 'patient'},
    {'1': 'consistency', '3': 12, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '3': [GetTaskResponse_Patient$json, GetTaskResponse_SubTask$json],
  '8': [
    {'1': '_assigned_user_id'},
    {'1': '_due_at'},
  ],
};

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
    {'1': 'created_by', '3': 4, '4': 1, '5': 9, '10': 'createdBy'},
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIA'
    'oLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEi0KEGFzc2lnbmVkX3VzZXJfaWQYBCAB'
    'KAlIAFIOYXNzaWduZWRVc2VySWSIAQESSgoIc3VidGFza3MYBSADKAsyLi5zZXJ2aWNlcy50YX'
    'Nrc19zdmMudjEuR2V0VGFza1Jlc3BvbnNlLlN1YlRhc2tSCHN1YnRhc2tzEjkKBnN0YXR1cxgG'
    'IAEoDjIhLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5UYXNrU3RhdHVzUgZzdGF0dXMSOQoKY3JlYX'
    'RlZF9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBIWCgZw'
    'dWJsaWMYCCABKAhSBnB1YmxpYxI2CgZkdWVfYXQYCSABKAsyGi5nb29nbGUucHJvdG9idWYuVG'
    'ltZXN0YW1wSAFSBWR1ZUF0iAEBEh0KCmNyZWF0ZWRfYnkYCiABKAlSCWNyZWF0ZWRCeRJICgdw'
    'YXRpZW50GAsgASgLMi4uc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFRhc2tSZXNwb25zZS5QYX'
    'RpZW50UgdwYXRpZW50EiAKC2NvbnNpc3RlbmN5GAwgASgJUgtjb25zaXN0ZW5jeRp3CgdQYXRp'
    'ZW50Eg4KAmlkGAEgASgJUgJpZBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVyGAIgASgJUh'
    'dodW1hblJlYWRhYmxlSWRlbnRpZmllchIgCgtjb25zaXN0ZW5jeRgDIAEoCVILY29uc2lzdGVu'
    'Y3kaYAoHU3ViVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRkb2'
    '5lGAMgASgIUgRkb25lEh0KCmNyZWF0ZWRfYnkYBCABKAlSCWNyZWF0ZWRCeUITChFfYXNzaWdu'
    'ZWRfdXNlcl9pZEIJCgdfZHVlX2F0');

@$core.Deprecated('Use getTasksByPatientRequestDescriptor instead')
const GetTasksByPatientRequest$json = {
  '1': 'GetTasksByPatientRequest',
  '2': [
    {'1': 'patient_id', '3': 1, '4': 1, '5': 9, '10': 'patientId'},
  ],
};

/// Descriptor for `GetTasksByPatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTasksByPatientRequestDescriptor = $convert.base64Decode(
    'ChhHZXRUYXNrc0J5UGF0aWVudFJlcXVlc3QSHQoKcGF0aWVudF9pZBgBIAEoCVIJcGF0aWVudE'
    'lk');

@$core.Deprecated('Use getTasksByPatientResponseDescriptor instead')
const GetTasksByPatientResponse$json = {
  '1': 'GetTasksByPatientResponse',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTasksByPatientResponse.Task', '10': 'tasks'},
  ],
  '3': [GetTasksByPatientResponse_Task$json],
};

@$core.Deprecated('Use getTasksByPatientResponseDescriptor instead')
const GetTasksByPatientResponse_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.services.tasks_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'dueAt', '17': true},
    {'1': 'created_by', '3': 9, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 10, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTasksByPatientResponse.Task.SubTask', '10': 'subtasks'},
    {'1': 'created_at', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'consistency', '3': 12, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '3': [GetTasksByPatientResponse_Task_SubTask$json],
  '8': [
    {'1': '_assigned_user_id'},
    {'1': '_due_at'},
  ],
};

@$core.Deprecated('Use getTasksByPatientResponseDescriptor instead')
const GetTasksByPatientResponse_Task_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
    {'1': 'created_by', '3': 4, '4': 1, '5': 9, '10': 'createdBy'},
  ],
};

/// Descriptor for `GetTasksByPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTasksByPatientResponseDescriptor = $convert.base64Decode(
    'ChlHZXRUYXNrc0J5UGF0aWVudFJlc3BvbnNlEksKBXRhc2tzGAEgAygLMjUuc2VydmljZXMudG'
    'Fza3Nfc3ZjLnYxLkdldFRhc2tzQnlQYXRpZW50UmVzcG9uc2UuVGFza1IFdGFza3Ma/gQKBFRh'
    'c2sSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAy'
    'ABKAlSC2Rlc2NyaXB0aW9uEjkKBnN0YXR1cxgEIAEoDjIhLnNlcnZpY2VzLnRhc2tzX3N2Yy52'
    'MS5UYXNrU3RhdHVzUgZzdGF0dXMSLQoQYXNzaWduZWRfdXNlcl9pZBgFIAEoCUgAUg5hc3NpZ2'
    '5lZFVzZXJJZIgBARIdCgpwYXRpZW50X2lkGAYgASgJUglwYXRpZW50SWQSFgoGcHVibGljGAcg'
    'ASgIUgZwdWJsaWMSNgoGZHVlX2F0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcE'
    'gBUgVkdWVBdIgBARIdCgpjcmVhdGVkX2J5GAkgASgJUgljcmVhdGVkQnkSWQoIc3VidGFza3MY'
    'CiADKAsyPS5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0VGFza3NCeVBhdGllbnRSZXNwb25zZS'
    '5UYXNrLlN1YlRhc2tSCHN1YnRhc2tzEjkKCmNyZWF0ZWRfYXQYCyABKAsyGi5nb29nbGUucHJv'
    'dG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSIAoLY29uc2lzdGVuY3kYDCABKAlSC2NvbnNpc3'
    'RlbmN5GmAKB1N1YlRhc2sSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoE'
    'ZG9uZRgDIAEoCFIEZG9uZRIdCgpjcmVhdGVkX2J5GAQgASgJUgljcmVhdGVkQnlCEwoRX2Fzc2'
    'lnbmVkX3VzZXJfaWRCCQoHX2R1ZV9hdA==');

@$core.Deprecated('Use getTasksByPatientSortedByStatusRequestDescriptor instead')
const GetTasksByPatientSortedByStatusRequest$json = {
  '1': 'GetTasksByPatientSortedByStatusRequest',
  '2': [
    {'1': 'patient_id', '3': 1, '4': 1, '5': 9, '10': 'patientId'},
  ],
};

/// Descriptor for `GetTasksByPatientSortedByStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTasksByPatientSortedByStatusRequestDescriptor = $convert.base64Decode(
    'CiZHZXRUYXNrc0J5UGF0aWVudFNvcnRlZEJ5U3RhdHVzUmVxdWVzdBIdCgpwYXRpZW50X2lkGA'
    'EgASgJUglwYXRpZW50SWQ=');

@$core.Deprecated('Use getTasksByPatientSortedByStatusResponseDescriptor instead')
const GetTasksByPatientSortedByStatusResponse$json = {
  '1': 'GetTasksByPatientSortedByStatusResponse',
  '2': [
    {'1': 'todo', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTasksByPatientSortedByStatusResponse.Task', '10': 'todo'},
    {'1': 'in_progress', '3': 2, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTasksByPatientSortedByStatusResponse.Task', '10': 'inProgress'},
    {'1': 'done', '3': 3, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTasksByPatientSortedByStatusResponse.Task', '10': 'done'},
  ],
  '3': [GetTasksByPatientSortedByStatusResponse_Task$json],
};

@$core.Deprecated('Use getTasksByPatientSortedByStatusResponseDescriptor instead')
const GetTasksByPatientSortedByStatusResponse_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'assigned_user_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 5, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 6, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'dueAt', '17': true},
    {'1': 'created_by', '3': 8, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 9, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask', '10': 'subtasks'},
    {'1': 'created_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'consistency', '3': 11, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '3': [GetTasksByPatientSortedByStatusResponse_Task_SubTask$json],
  '8': [
    {'1': '_assigned_user_id'},
    {'1': '_due_at'},
  ],
};

@$core.Deprecated('Use getTasksByPatientSortedByStatusResponseDescriptor instead')
const GetTasksByPatientSortedByStatusResponse_Task_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
    {'1': 'created_by', '3': 4, '4': 1, '5': 9, '10': 'createdBy'},
  ],
};

/// Descriptor for `GetTasksByPatientSortedByStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTasksByPatientSortedByStatusResponseDescriptor = $convert.base64Decode(
    'CidHZXRUYXNrc0J5UGF0aWVudFNvcnRlZEJ5U3RhdHVzUmVzcG9uc2USVwoEdG9kbxgBIAMoCz'
    'JDLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRUYXNrc0J5UGF0aWVudFNvcnRlZEJ5U3RhdHVz'
    'UmVzcG9uc2UuVGFza1IEdG9kbxJkCgtpbl9wcm9ncmVzcxgCIAMoCzJDLnNlcnZpY2VzLnRhc2'
    'tzX3N2Yy52MS5HZXRUYXNrc0J5UGF0aWVudFNvcnRlZEJ5U3RhdHVzUmVzcG9uc2UuVGFza1IK'
    'aW5Qcm9ncmVzcxJXCgRkb25lGAMgAygLMkMuc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFRhc2'
    'tzQnlQYXRpZW50U29ydGVkQnlTdGF0dXNSZXNwb25zZS5UYXNrUgRkb25lGtEECgRUYXNrEg4K'
    'AmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUg'
    'tkZXNjcmlwdGlvbhItChBhc3NpZ25lZF91c2VyX2lkGAQgASgJSABSDmFzc2lnbmVkVXNlcklk'
    'iAEBEh0KCnBhdGllbnRfaWQYBSABKAlSCXBhdGllbnRJZBIWCgZwdWJsaWMYBiABKAhSBnB1Ym'
    'xpYxI2CgZkdWVfYXQYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSAFSBWR1ZUF0'
    'iAEBEh0KCmNyZWF0ZWRfYnkYCCABKAlSCWNyZWF0ZWRCeRJnCghzdWJ0YXNrcxgJIAMoCzJLLn'
    'NlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRUYXNrc0J5UGF0aWVudFNvcnRlZEJ5U3RhdHVzUmVz'
    'cG9uc2UuVGFzay5TdWJUYXNrUghzdWJ0YXNrcxI5CgpjcmVhdGVkX2F0GAogASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EiAKC2NvbnNpc3RlbmN5GAsgASgJUgtj'
    'b25zaXN0ZW5jeRpgCgdTdWJUYXNrEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW'
    '1lEhIKBGRvbmUYAyABKAhSBGRvbmUSHQoKY3JlYXRlZF9ieRgEIAEoCVIJY3JlYXRlZEJ5QhMK'
    'EV9hc3NpZ25lZF91c2VyX2lkQgkKB19kdWVfYXQ=');

@$core.Deprecated('Use getAssignedTasksRequestDescriptor instead')
const GetAssignedTasksRequest$json = {
  '1': 'GetAssignedTasksRequest',
};

/// Descriptor for `GetAssignedTasksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssignedTasksRequestDescriptor = $convert.base64Decode(
    'ChdHZXRBc3NpZ25lZFRhc2tzUmVxdWVzdA==');

@$core.Deprecated('Use getAssignedTasksResponseDescriptor instead')
const GetAssignedTasksResponse$json = {
  '1': 'GetAssignedTasksResponse',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetAssignedTasksResponse.Task', '10': 'tasks'},
  ],
  '3': [GetAssignedTasksResponse_Task$json],
};

@$core.Deprecated('Use getAssignedTasksResponseDescriptor instead')
const GetAssignedTasksResponse_Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.services.tasks_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '10': 'assignedUserId'},
    {'1': 'patient', '3': 6, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetAssignedTasksResponse.Task.Patient', '10': 'patient'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'dueAt', '17': true},
    {'1': 'created_by', '3': 9, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 10, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetAssignedTasksResponse.Task.SubTask', '10': 'subtasks'},
    {'1': 'created_at', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'consistency', '3': 12, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '3': [GetAssignedTasksResponse_Task_Patient$json, GetAssignedTasksResponse_Task_SubTask$json],
  '8': [
    {'1': '_due_at'},
  ],
};

@$core.Deprecated('Use getAssignedTasksResponseDescriptor instead')
const GetAssignedTasksResponse_Task_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getAssignedTasksResponseDescriptor instead')
const GetAssignedTasksResponse_Task_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
    {'1': 'created_by', '3': 4, '4': 1, '5': 9, '10': 'createdBy'},
  ],
};

/// Descriptor for `GetAssignedTasksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssignedTasksResponseDescriptor = $convert.base64Decode(
    'ChhHZXRBc3NpZ25lZFRhc2tzUmVzcG9uc2USSgoFdGFza3MYASADKAsyNC5zZXJ2aWNlcy50YX'
    'Nrc19zdmMudjEuR2V0QXNzaWduZWRUYXNrc1Jlc3BvbnNlLlRhc2tSBXRhc2tzGpUGCgRUYXNr'
    'Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgAS'
    'gJUgtkZXNjcmlwdGlvbhI5CgZzdGF0dXMYBCABKA4yIS5zZXJ2aWNlcy50YXNrc19zdmMudjEu'
    'VGFza1N0YXR1c1IGc3RhdHVzEigKEGFzc2lnbmVkX3VzZXJfaWQYBSABKAlSDmFzc2lnbmVkVX'
    'NlcklkElYKB3BhdGllbnQYBiABKAsyPC5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0QXNzaWdu'
    'ZWRUYXNrc1Jlc3BvbnNlLlRhc2suUGF0aWVudFIHcGF0aWVudBIWCgZwdWJsaWMYByABKAhSBn'
    'B1YmxpYxI2CgZkdWVfYXQYCCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSABSBWR1'
    'ZUF0iAEBEh0KCmNyZWF0ZWRfYnkYCSABKAlSCWNyZWF0ZWRCeRJYCghzdWJ0YXNrcxgKIAMoCz'
    'I8LnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRBc3NpZ25lZFRhc2tzUmVzcG9uc2UuVGFzay5T'
    'dWJUYXNrUghzdWJ0YXNrcxI5CgpjcmVhdGVkX2F0GAsgASgLMhouZ29vZ2xlLnByb3RvYnVmLl'
    'RpbWVzdGFtcFIJY3JlYXRlZEF0EiAKC2NvbnNpc3RlbmN5GAwgASgJUgtjb25zaXN0ZW5jeRp3'
    'CgdQYXRpZW50Eg4KAmlkGAEgASgJUgJpZBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVyGA'
    'IgASgJUhdodW1hblJlYWRhYmxlSWRlbnRpZmllchIgCgtjb25zaXN0ZW5jeRgDIAEoCVILY29u'
    'c2lzdGVuY3kaYAoHU3ViVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'ISCgRkb25lGAMgASgIUgRkb25lEh0KCmNyZWF0ZWRfYnkYBCABKAlSCWNyZWF0ZWRCeUIJCgdf'
    'ZHVlX2F0');

@$core.Deprecated('Use assignTaskRequestDescriptor instead')
const AssignTaskRequest$json = {
  '1': 'AssignTaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'consistency', '17': true},
  ],
  '8': [
    {'1': '_consistency'},
  ],
};

/// Descriptor for `AssignTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignTaskRequestDescriptor = $convert.base64Decode(
    'ChFBc3NpZ25UYXNrUmVxdWVzdBIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSFwoHdXNlcl9pZB'
    'gCIAEoCVIGdXNlcklkEiUKC2NvbnNpc3RlbmN5GAMgASgJSABSC2NvbnNpc3RlbmN5iAEBQg4K'
    'DF9jb25zaXN0ZW5jeQ==');

@$core.Deprecated('Use assignTaskResponseDescriptor instead')
const AssignTaskResponse$json = {
  '1': 'AssignTaskResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `AssignTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignTaskResponseDescriptor = $convert.base64Decode(
    'ChJBc3NpZ25UYXNrUmVzcG9uc2USOQoIY29uZmxpY3QYASABKAsyGC5saWJzLmNvbW1vbi52MS'
    '5Db25mbGljdEgAUghjb25mbGljdIgBARIgCgtjb25zaXN0ZW5jeRgCIAEoCVILY29uc2lzdGVu'
    'Y3lCCwoJX2NvbmZsaWN0');

@$core.Deprecated('Use unassignTaskRequestDescriptor instead')
const UnassignTaskRequest$json = {
  '1': 'UnassignTaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'consistency', '17': true},
  ],
  '8': [
    {'1': '_consistency'},
  ],
};

/// Descriptor for `UnassignTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignTaskRequestDescriptor = $convert.base64Decode(
    'ChNVbmFzc2lnblRhc2tSZXF1ZXN0EhcKB3Rhc2tfaWQYASABKAlSBnRhc2tJZBIXCgd1c2VyX2'
    'lkGAIgASgJUgZ1c2VySWQSJQoLY29uc2lzdGVuY3kYAyABKAlIAFILY29uc2lzdGVuY3mIAQFC'
    'DgoMX2NvbnNpc3RlbmN5');

@$core.Deprecated('Use unassignTaskResponseDescriptor instead')
const UnassignTaskResponse$json = {
  '1': 'UnassignTaskResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `UnassignTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignTaskResponseDescriptor = $convert.base64Decode(
    'ChRVbmFzc2lnblRhc2tSZXNwb25zZRI5Cghjb25mbGljdBgBIAEoCzIYLmxpYnMuY29tbW9uLn'
    'YxLkNvbmZsaWN0SABSCGNvbmZsaWN0iAEBEiAKC2NvbnNpc3RlbmN5GAIgASgJUgtjb25zaXN0'
    'ZW5jeUILCglfY29uZmxpY3Q=');

@$core.Deprecated('Use createSubtaskRequestDescriptor instead')
const CreateSubtaskRequest$json = {
  '1': 'CreateSubtaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'subtask', '3': 2, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.CreateSubtaskRequest.Subtask', '10': 'subtask'},
  ],
  '3': [CreateSubtaskRequest_Subtask$json],
};

@$core.Deprecated('Use createSubtaskRequestDescriptor instead')
const CreateSubtaskRequest_Subtask$json = {
  '1': 'Subtask',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'done', '17': true},
  ],
  '8': [
    {'1': '_done'},
  ],
};

/// Descriptor for `CreateSubtaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSubtaskRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVTdWJ0YXNrUmVxdWVzdBIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSTQoHc3VidG'
    'FzaxgCIAEoCzIzLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5DcmVhdGVTdWJ0YXNrUmVxdWVzdC5T'
    'dWJ0YXNrUgdzdWJ0YXNrGj8KB1N1YnRhc2sSEgoEbmFtZRgBIAEoCVIEbmFtZRIXCgRkb25lGA'
    'IgASgISABSBGRvbmWIAQFCBwoFX2RvbmU=');

@$core.Deprecated('Use createSubtaskResponseDescriptor instead')
const CreateSubtaskResponse$json = {
  '1': 'CreateSubtaskResponse',
  '2': [
    {'1': 'subtask_id', '3': 1, '4': 1, '5': 9, '10': 'subtaskId'},
    {'1': 'task_consistency', '3': 2, '4': 1, '5': 9, '10': 'taskConsistency'},
  ],
};

/// Descriptor for `CreateSubtaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSubtaskResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVTdWJ0YXNrUmVzcG9uc2USHQoKc3VidGFza19pZBgBIAEoCVIJc3VidGFza0lkEi'
    'kKEHRhc2tfY29uc2lzdGVuY3kYAiABKAlSD3Rhc2tDb25zaXN0ZW5jeQ==');

@$core.Deprecated('Use updateSubtaskRequestDescriptor instead')
const UpdateSubtaskRequest$json = {
  '1': 'UpdateSubtaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'subtask_id', '3': 2, '4': 1, '5': 9, '10': 'subtaskId'},
    {'1': 'subtask', '3': 3, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.UpdateSubtaskRequest.Subtask', '10': 'subtask'},
    {'1': 'task_consistency', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'taskConsistency', '17': true},
  ],
  '3': [UpdateSubtaskRequest_Subtask$json],
  '8': [
    {'1': '_task_consistency'},
  ],
};

@$core.Deprecated('Use updateSubtaskRequestDescriptor instead')
const UpdateSubtaskRequest_Subtask$json = {
  '1': 'Subtask',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'done', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'done', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_done'},
  ],
};

/// Descriptor for `UpdateSubtaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSubtaskRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVTdWJ0YXNrUmVxdWVzdBIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSHQoKc3VidG'
    'Fza19pZBgCIAEoCVIJc3VidGFza0lkEk0KB3N1YnRhc2sYAyABKAsyMy5zZXJ2aWNlcy50YXNr'
    'c19zdmMudjEuVXBkYXRlU3VidGFza1JlcXVlc3QuU3VidGFza1IHc3VidGFzaxIuChB0YXNrX2'
    'NvbnNpc3RlbmN5GAQgASgJSABSD3Rhc2tDb25zaXN0ZW5jeYgBARpNCgdTdWJ0YXNrEhcKBG5h'
    'bWUYASABKAlIAFIEbmFtZYgBARIXCgRkb25lGAIgASgISAFSBGRvbmWIAQFCBwoFX25hbWVCBw'
    'oFX2RvbmVCEwoRX3Rhc2tfY29uc2lzdGVuY3k=');

@$core.Deprecated('Use updateSubtaskResponseDescriptor instead')
const UpdateSubtaskResponse$json = {
  '1': 'UpdateSubtaskResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'task_consistency', '3': 2, '4': 1, '5': 9, '10': 'taskConsistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `UpdateSubtaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSubtaskResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVTdWJ0YXNrUmVzcG9uc2USOQoIY29uZmxpY3QYASABKAsyGC5saWJzLmNvbW1vbi'
    '52MS5Db25mbGljdEgAUghjb25mbGljdIgBARIpChB0YXNrX2NvbnNpc3RlbmN5GAIgASgJUg90'
    'YXNrQ29uc2lzdGVuY3lCCwoJX2NvbmZsaWN0');

@$core.Deprecated('Use deleteSubtaskRequestDescriptor instead')
const DeleteSubtaskRequest$json = {
  '1': 'DeleteSubtaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'subtask_id', '3': 2, '4': 1, '5': 9, '10': 'subtaskId'},
  ],
};

/// Descriptor for `DeleteSubtaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSubtaskRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVTdWJ0YXNrUmVxdWVzdBIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSHQoKc3VidG'
    'Fza19pZBgCIAEoCVIJc3VidGFza0lk');

@$core.Deprecated('Use deleteSubtaskResponseDescriptor instead')
const DeleteSubtaskResponse$json = {
  '1': 'DeleteSubtaskResponse',
};

/// Descriptor for `DeleteSubtaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSubtaskResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVTdWJ0YXNrUmVzcG9uc2U=');

@$core.Deprecated('Use removeTaskDueDateRequestDescriptor instead')
const RemoveTaskDueDateRequest$json = {
  '1': 'RemoveTaskDueDateRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
  ],
};

/// Descriptor for `RemoveTaskDueDateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTaskDueDateRequestDescriptor = $convert.base64Decode(
    'ChhSZW1vdmVUYXNrRHVlRGF0ZVJlcXVlc3QSFwoHdGFza19pZBgBIAEoCVIGdGFza0lk');

@$core.Deprecated('Use removeTaskDueDateResponseDescriptor instead')
const RemoveTaskDueDateResponse$json = {
  '1': 'RemoveTaskDueDateResponse',
  '2': [
    {'1': 'consistency', '3': 1, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `RemoveTaskDueDateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTaskDueDateResponseDescriptor = $convert.base64Decode(
    'ChlSZW1vdmVUYXNrRHVlRGF0ZVJlc3BvbnNlEiAKC2NvbnNpc3RlbmN5GAEgASgJUgtjb25zaX'
    'N0ZW5jeQ==');

@$core.Deprecated('Use deleteTaskRequestDescriptor instead')
const DeleteTaskRequest$json = {
  '1': 'DeleteTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteTaskResponseDescriptor instead')
const DeleteTaskResponse$json = {
  '1': 'DeleteTaskResponse',
};

/// Descriptor for `DeleteTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVUYXNrUmVzcG9uc2U=');

