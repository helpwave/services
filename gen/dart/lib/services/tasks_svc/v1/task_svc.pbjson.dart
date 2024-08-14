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
  ],
  '8': [
    {'1': '_description'},
    {'1': '_public'},
    {'1': '_initial_status'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUYXNrUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW9uGA'
    'IgASgJSABSC2Rlc2NyaXB0aW9uiAEBEh0KCnBhdGllbnRfaWQYAyABKAlSCXBhdGllbnRJZBIb'
    'CgZwdWJsaWMYBCABKAhIAVIGcHVibGljiAEBEjEKBmR1ZV9hdBgFIAEoCzIaLmdvb2dsZS5wcm'
    '90b2J1Zi5UaW1lc3RhbXBSBWR1ZUF0Ek0KDmluaXRpYWxfc3RhdHVzGAYgASgOMiEuc2Vydmlj'
    'ZXMudGFza3Nfc3ZjLnYxLlRhc2tTdGF0dXNIAlINaW5pdGlhbFN0YXR1c4gBAUIOCgxfZGVzY3'
    'JpcHRpb25CCQoHX3B1YmxpY0IRCg9faW5pdGlhbF9zdGF0dXM=');

@$core.Deprecated('Use createTaskResponseDescriptor instead')
const CreateTaskResponse$json = {
  '1': 'CreateTaskResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = {
  '1': 'UpdateTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'due_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'dueAt', '17': true},
    {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.services.tasks_svc.v1.TaskStatus', '9': 3, '10': 'status', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_due_at'},
    {'1': '_status'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEjYKBmR1ZV9hdBgE'
    'IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAlIFZHVlQXSIAQESPgoGc3RhdHVzGA'
    'UgASgOMiEuc2VydmljZXMudGFza3Nfc3ZjLnYxLlRhc2tTdGF0dXNIA1IGc3RhdHVziAEBQgcK'
    'BV9uYW1lQg4KDF9kZXNjcmlwdGlvbkIJCgdfZHVlX2F0QgkKB19zdGF0dXM=');

@$core.Deprecated('Use updateTaskResponseDescriptor instead')
const UpdateTaskResponse$json = {
  '1': 'UpdateTaskResponse',
};

/// Descriptor for `UpdateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVUYXNrUmVzcG9uc2U=');

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
    {'1': 'assigned_users', '3': 4, '4': 3, '5': 9, '10': 'assignedUsers'},
    {'1': 'subtasks', '3': 5, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTaskResponse.Subtask', '10': 'subtasks'},
    {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.services.tasks_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
  '3': [GetTaskResponse_Subtask$json],
};

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse_Subtask$json = {
  '1': 'Subtask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIA'
    'oLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEiUKDmFzc2lnbmVkX3VzZXJzGAQgAygJ'
    'Ug1hc3NpZ25lZFVzZXJzEkoKCHN1YnRhc2tzGAUgAygLMi4uc2VydmljZXMudGFza3Nfc3ZjLn'
    'YxLkdldFRhc2tSZXNwb25zZS5TdWJ0YXNrUghzdWJ0YXNrcxI5CgZzdGF0dXMYBiABKA4yIS5z'
    'ZXJ2aWNlcy50YXNrc19zdmMudjEuVGFza1N0YXR1c1IGc3RhdHVzEjkKCmNyZWF0ZWRfYXQYBy'
    'ABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQaQQoHU3VidGFzaxIO'
    'CgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRkb25lGAMgASgIUgRkb25l');

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
    {'1': 'due_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueAt'},
    {'1': 'created_by', '3': 9, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 10, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTasksByPatientResponse.Task.SubTask', '10': 'subtasks'},
    {'1': 'created_at', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
  '3': [GetTasksByPatientResponse_Task_SubTask$json],
  '8': [
    {'1': '_assigned_user_id'},
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
    'Fza3Nfc3ZjLnYxLkdldFRhc2tzQnlQYXRpZW50UmVzcG9uc2UuVGFza1IFdGFza3MazAQKBFRh'
    'c2sSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAy'
    'ABKAlSC2Rlc2NyaXB0aW9uEjkKBnN0YXR1cxgEIAEoDjIhLnNlcnZpY2VzLnRhc2tzX3N2Yy52'
    'MS5UYXNrU3RhdHVzUgZzdGF0dXMSLQoQYXNzaWduZWRfdXNlcl9pZBgFIAEoCUgAUg5hc3NpZ2'
    '5lZFVzZXJJZIgBARIdCgpwYXRpZW50X2lkGAYgASgJUglwYXRpZW50SWQSFgoGcHVibGljGAcg'
    'ASgIUgZwdWJsaWMSMQoGZHVlX2F0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcF'
    'IFZHVlQXQSHQoKY3JlYXRlZF9ieRgJIAEoCVIJY3JlYXRlZEJ5ElkKCHN1YnRhc2tzGAogAygL'
    'Mj0uc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFRhc2tzQnlQYXRpZW50UmVzcG9uc2UuVGFzay'
    '5TdWJUYXNrUghzdWJ0YXNrcxI5CgpjcmVhdGVkX2F0GAsgASgLMhouZ29vZ2xlLnByb3RvYnVm'
    'LlRpbWVzdGFtcFIJY3JlYXRlZEF0GmAKB1N1YlRhc2sSDgoCaWQYASABKAlSAmlkEhIKBG5hbW'
    'UYAiABKAlSBG5hbWUSEgoEZG9uZRgDIAEoCFIEZG9uZRIdCgpjcmVhdGVkX2J5GAQgASgJUglj'
    'cmVhdGVkQnlCEwoRX2Fzc2lnbmVkX3VzZXJfaWQ=');

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
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueAt'},
    {'1': 'created_by', '3': 9, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 10, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask', '10': 'subtasks'},
    {'1': 'created_at', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
  '3': [GetTasksByPatientSortedByStatusResponse_Task_SubTask$json],
  '8': [
    {'1': '_assigned_user_id'},
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
    'tzQnlQYXRpZW50U29ydGVkQnlTdGF0dXNSZXNwb25zZS5UYXNrUgRkb25lGp8ECgRUYXNrEg4K'
    'AmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUg'
    'tkZXNjcmlwdGlvbhItChBhc3NpZ25lZF91c2VyX2lkGAUgASgJSABSDmFzc2lnbmVkVXNlcklk'
    'iAEBEh0KCnBhdGllbnRfaWQYBiABKAlSCXBhdGllbnRJZBIWCgZwdWJsaWMYByABKAhSBnB1Ym'
    'xpYxIxCgZkdWVfYXQYCCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgVkdWVBdBId'
    'CgpjcmVhdGVkX2J5GAkgASgJUgljcmVhdGVkQnkSZwoIc3VidGFza3MYCiADKAsySy5zZXJ2aW'
    'Nlcy50YXNrc19zdmMudjEuR2V0VGFza3NCeVBhdGllbnRTb3J0ZWRCeVN0YXR1c1Jlc3BvbnNl'
    'LlRhc2suU3ViVGFza1IIc3VidGFza3MSOQoKY3JlYXRlZF9hdBgLIAEoCzIaLmdvb2dsZS5wcm'
    '90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBpgCgdTdWJUYXNrEg4KAmlkGAEgASgJUgJpZBIS'
    'CgRuYW1lGAIgASgJUgRuYW1lEhIKBGRvbmUYAyABKAhSBGRvbmUSHQoKY3JlYXRlZF9ieRgEIA'
    'EoCVIJY3JlYXRlZEJ5QhMKEV9hc3NpZ25lZF91c2VyX2lk');

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
    {'1': 'due_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueAt'},
    {'1': 'created_by', '3': 9, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 10, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetAssignedTasksResponse.Task.SubTask', '10': 'subtasks'},
    {'1': 'created_at', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
  '3': [GetAssignedTasksResponse_Task_Patient$json, GetAssignedTasksResponse_Task_SubTask$json],
};

@$core.Deprecated('Use getAssignedTasksResponseDescriptor instead')
const GetAssignedTasksResponse_Task_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
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
    'Nrc19zdmMudjEuR2V0QXNzaWduZWRUYXNrc1Jlc3BvbnNlLlRhc2tSBXRhc2tzGpkFCgRUYXNr'
    'Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgAS'
    'gJUgtkZXNjcmlwdGlvbhI5CgZzdGF0dXMYBCABKA4yIS5zZXJ2aWNlcy50YXNrc19zdmMudjEu'
    'VGFza1N0YXR1c1IGc3RhdHVzEigKEGFzc2lnbmVkX3VzZXJfaWQYBSABKAlSDmFzc2lnbmVkVX'
    'NlcklkElYKB3BhdGllbnQYBiABKAsyPC5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0QXNzaWdu'
    'ZWRUYXNrc1Jlc3BvbnNlLlRhc2suUGF0aWVudFIHcGF0aWVudBIWCgZwdWJsaWMYByABKAhSBn'
    'B1YmxpYxIxCgZkdWVfYXQYCCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgVkdWVB'
    'dBIdCgpjcmVhdGVkX2J5GAkgASgJUgljcmVhdGVkQnkSWAoIc3VidGFza3MYCiADKAsyPC5zZX'
    'J2aWNlcy50YXNrc19zdmMudjEuR2V0QXNzaWduZWRUYXNrc1Jlc3BvbnNlLlRhc2suU3ViVGFz'
    'a1IIc3VidGFza3MSOQoKY3JlYXRlZF9hdBgLIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3'
    'RhbXBSCWNyZWF0ZWRBdBotCgdQYXRpZW50Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJ'
    'UgRuYW1lGmAKB1N1YlRhc2sSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEg'
    'oEZG9uZRgDIAEoCFIEZG9uZRIdCgpjcmVhdGVkX2J5GAQgASgJUgljcmVhdGVkQnk=');

@$core.Deprecated('Use assignTaskRequestDescriptor instead')
const AssignTaskRequest$json = {
  '1': 'AssignTaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `AssignTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignTaskRequestDescriptor = $convert.base64Decode(
    'ChFBc3NpZ25UYXNrUmVxdWVzdBIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSFwoHdXNlcl9pZB'
    'gCIAEoCVIGdXNlcklk');

@$core.Deprecated('Use assignTaskResponseDescriptor instead')
const AssignTaskResponse$json = {
  '1': 'AssignTaskResponse',
};

/// Descriptor for `AssignTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignTaskResponseDescriptor = $convert.base64Decode(
    'ChJBc3NpZ25UYXNrUmVzcG9uc2U=');

@$core.Deprecated('Use unassignTaskRequestDescriptor instead')
const UnassignTaskRequest$json = {
  '1': 'UnassignTaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `UnassignTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignTaskRequestDescriptor = $convert.base64Decode(
    'ChNVbmFzc2lnblRhc2tSZXF1ZXN0EhcKB3Rhc2tfaWQYASABKAlSBnRhc2tJZBIXCgd1c2VyX2'
    'lkGAIgASgJUgZ1c2VySWQ=');

@$core.Deprecated('Use unassignTaskResponseDescriptor instead')
const UnassignTaskResponse$json = {
  '1': 'UnassignTaskResponse',
};

/// Descriptor for `UnassignTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignTaskResponseDescriptor = $convert.base64Decode(
    'ChRVbmFzc2lnblRhc2tSZXNwb25zZQ==');

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
  ],
};

/// Descriptor for `CreateSubtaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSubtaskRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVTdWJ0YXNrUmVxdWVzdBIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSTQoHc3VidG'
    'FzaxgCIAEoCzIzLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5DcmVhdGVTdWJ0YXNrUmVxdWVzdC5T'
    'dWJ0YXNrUgdzdWJ0YXNrGh0KB1N1YnRhc2sSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use createSubtaskResponseDescriptor instead')
const CreateSubtaskResponse$json = {
  '1': 'CreateSubtaskResponse',
  '2': [
    {'1': 'subtask_id', '3': 1, '4': 1, '5': 9, '10': 'subtaskId'},
  ],
};

/// Descriptor for `CreateSubtaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSubtaskResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVTdWJ0YXNrUmVzcG9uc2USHQoKc3VidGFza19pZBgBIAEoCVIJc3VidGFza0lk');

@$core.Deprecated('Use updateSubtaskRequestDescriptor instead')
const UpdateSubtaskRequest$json = {
  '1': 'UpdateSubtaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'subtask_id', '3': 2, '4': 1, '5': 9, '10': 'subtaskId'},
    {'1': 'subtask', '3': 3, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.UpdateSubtaskRequest.Subtask', '10': 'subtask'},
  ],
  '3': [UpdateSubtaskRequest_Subtask$json],
};

@$core.Deprecated('Use updateSubtaskRequestDescriptor instead')
const UpdateSubtaskRequest_Subtask$json = {
  '1': 'Subtask',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `UpdateSubtaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSubtaskRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVTdWJ0YXNrUmVxdWVzdBIXCgd0YXNrX2lkGAEgASgJUgZ0YXNrSWQSHQoKc3VidG'
    'Fza19pZBgCIAEoCVIJc3VidGFza0lkEk0KB3N1YnRhc2sYAyABKAsyMy5zZXJ2aWNlcy50YXNr'
    'c19zdmMudjEuVXBkYXRlU3VidGFza1JlcXVlc3QuU3VidGFza1IHc3VidGFzaxorCgdTdWJ0YX'
    'NrEhcKBG5hbWUYASABKAlIAFIEbmFtZYgBAUIHCgVfbmFtZQ==');

@$core.Deprecated('Use updateSubtaskResponseDescriptor instead')
const UpdateSubtaskResponse$json = {
  '1': 'UpdateSubtaskResponse',
};

/// Descriptor for `UpdateSubtaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSubtaskResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVTdWJ0YXNrUmVzcG9uc2U=');

@$core.Deprecated('Use completeSubtaskRequestDescriptor instead')
const CompleteSubtaskRequest$json = {
  '1': 'CompleteSubtaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'subtask_id', '3': 2, '4': 1, '5': 9, '10': 'subtaskId'},
  ],
};

/// Descriptor for `CompleteSubtaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List completeSubtaskRequestDescriptor = $convert.base64Decode(
    'ChZDb21wbGV0ZVN1YnRhc2tSZXF1ZXN0EhcKB3Rhc2tfaWQYASABKAlSBnRhc2tJZBIdCgpzdW'
    'J0YXNrX2lkGAIgASgJUglzdWJ0YXNrSWQ=');

@$core.Deprecated('Use completeSubtaskResponseDescriptor instead')
const CompleteSubtaskResponse$json = {
  '1': 'CompleteSubtaskResponse',
};

/// Descriptor for `CompleteSubtaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List completeSubtaskResponseDescriptor = $convert.base64Decode(
    'ChdDb21wbGV0ZVN1YnRhc2tSZXNwb25zZQ==');

@$core.Deprecated('Use uncompleteSubtaskRequestDescriptor instead')
const UncompleteSubtaskRequest$json = {
  '1': 'UncompleteSubtaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'subtask_id', '3': 2, '4': 1, '5': 9, '10': 'subtaskId'},
  ],
};

/// Descriptor for `UncompleteSubtaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uncompleteSubtaskRequestDescriptor = $convert.base64Decode(
    'ChhVbmNvbXBsZXRlU3VidGFza1JlcXVlc3QSFwoHdGFza19pZBgBIAEoCVIGdGFza0lkEh0KCn'
    'N1YnRhc2tfaWQYAiABKAlSCXN1YnRhc2tJZA==');

@$core.Deprecated('Use uncompleteSubtaskResponseDescriptor instead')
const UncompleteSubtaskResponse$json = {
  '1': 'UncompleteSubtaskResponse',
};

/// Descriptor for `UncompleteSubtaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uncompleteSubtaskResponseDescriptor = $convert.base64Decode(
    'ChlVbmNvbXBsZXRlU3VidGFza1Jlc3BvbnNl');

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

