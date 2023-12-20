//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use taskStatusDescriptor instead')
const TaskStatus$json = {
  '1': 'TaskStatus',
  '2': [
    {'1': 'TASK_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'TASK_STATUS_TODO', '2': 1},
    {'1': 'TASK_STATUS_IN_PROGRESS', '2': 2},
    {'1': 'TASK_STATUS_DONE', '2': 3},
  ],
};

/// Descriptor for `TaskStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskStatusDescriptor = $convert.base64Decode(
    'CgpUYXNrU3RhdHVzEhsKF1RBU0tfU1RBVFVTX1VOU1BFQ0lGSUVEEAASFAoQVEFTS19TVEFUVV'
    'NfVE9ETxABEhsKF1RBU0tfU1RBVFVTX0lOX1BST0dSRVNTEAISFAoQVEFTS19TVEFUVVNfRE9O'
    'RRAD');

@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = {
  '1': 'CreateTaskRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'patient_id', '3': 3, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 4, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueAt'},
    {'1': 'initial_status', '3': 6, '4': 1, '5': 14, '6': '.proto.services.task_svc.v1.TaskStatus', '9': 1, '10': 'initialStatus', '17': true},
  ],
  '8': [
    {'1': '_description'},
    {'1': '_initial_status'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUYXNrUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW9uGA'
    'IgASgJSABSC2Rlc2NyaXB0aW9uiAEBEh0KCnBhdGllbnRfaWQYAyABKAlSCXBhdGllbnRJZBIW'
    'CgZwdWJsaWMYBCABKAhSBnB1YmxpYxIxCgZkdWVfYXQYBSABKAsyGi5nb29nbGUucHJvdG9idW'
    'YuVGltZXN0YW1wUgVkdWVBdBJSCg5pbml0aWFsX3N0YXR1cxgGIAEoDjImLnByb3RvLnNlcnZp'
    'Y2VzLnRhc2tfc3ZjLnYxLlRhc2tTdGF0dXNIAVINaW5pdGlhbFN0YXR1c4gBAUIOCgxfZGVzY3'
    'JpcHRpb25CEQoPX2luaXRpYWxfc3RhdHVz');

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
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.proto.services.task_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '10': 'assignedUserId'},
    {'1': 'patient', '3': 6, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetTaskResponse.Patient', '10': 'patient'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueAt'},
    {'1': 'created_by', '3': 9, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 10, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTaskResponse.SubTask', '10': 'subtasks'},
    {'1': 'organization_id', '3': 11, '4': 1, '5': 9, '10': 'organizationId'},
  ],
  '3': [GetTaskResponse_SubTask$json, GetTaskResponse_Patient$json],
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

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIA'
    'oLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEj4KBnN0YXR1cxgEIAEoDjImLnByb3Rv'
    'LnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlRhc2tTdGF0dXNSBnN0YXR1cxIoChBhc3NpZ25lZF91c2'
    'VyX2lkGAUgASgJUg5hc3NpZ25lZFVzZXJJZBJNCgdwYXRpZW50GAYgASgLMjMucHJvdG8uc2Vy'
    'dmljZXMudGFza19zdmMudjEuR2V0VGFza1Jlc3BvbnNlLlBhdGllbnRSB3BhdGllbnQSFgoGcH'
    'VibGljGAcgASgIUgZwdWJsaWMSMQoGZHVlX2F0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRp'
    'bWVzdGFtcFIFZHVlQXQSHQoKY3JlYXRlZF9ieRgJIAEoCVIJY3JlYXRlZEJ5Ek8KCHN1YnRhc2'
    'tzGAogAygLMjMucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0VGFza1Jlc3BvbnNlLlN1'
    'YlRhc2tSCHN1YnRhc2tzEicKD29yZ2FuaXphdGlvbl9pZBgLIAEoCVIOb3JnYW5pemF0aW9uSW'
    'QaYAoHU3ViVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRkb25l'
    'GAMgASgIUgRkb25lEh0KCmNyZWF0ZWRfYnkYBCABKAlSCWNyZWF0ZWRCeRotCgdQYXRpZW50Eg'
    '4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');

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
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientResponse.Task', '10': 'tasks'},
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
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.proto.services.task_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'assignedUserId', '17': true},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueAt'},
    {'1': 'created_by', '3': 9, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 10, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask', '10': 'subtasks'},
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
    'ChlHZXRUYXNrc0J5UGF0aWVudFJlc3BvbnNlElAKBXRhc2tzGAEgAygLMjoucHJvdG8uc2Vydm'
    'ljZXMudGFza19zdmMudjEuR2V0VGFza3NCeVBhdGllbnRSZXNwb25zZS5UYXNrUgV0YXNrcxqb'
    'BAoEVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdG'
    'lvbhgDIAEoCVILZGVzY3JpcHRpb24SPgoGc3RhdHVzGAQgASgOMiYucHJvdG8uc2VydmljZXMu'
    'dGFza19zdmMudjEuVGFza1N0YXR1c1IGc3RhdHVzEi0KEGFzc2lnbmVkX3VzZXJfaWQYBSABKA'
    'lIAFIOYXNzaWduZWRVc2VySWSIAQESHQoKcGF0aWVudF9pZBgGIAEoCVIJcGF0aWVudElkEhYK'
    'BnB1YmxpYxgHIAEoCFIGcHVibGljEjEKBmR1ZV9hdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi'
    '5UaW1lc3RhbXBSBWR1ZUF0Eh0KCmNyZWF0ZWRfYnkYCSABKAlSCWNyZWF0ZWRCeRJeCghzdWJ0'
    'YXNrcxgKIAMoCzJCLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFRhc2tzQnlQYXRpZW'
    '50UmVzcG9uc2UuVGFzay5TdWJUYXNrUghzdWJ0YXNrcxpgCgdTdWJUYXNrEg4KAmlkGAEgASgJ'
    'UgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGRvbmUYAyABKAhSBGRvbmUSHQoKY3JlYXRlZF'
    '9ieRgEIAEoCVIJY3JlYXRlZEJ5QhMKEV9hc3NpZ25lZF91c2VyX2lk');

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
    {'1': 'todo', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task', '10': 'todo'},
    {'1': 'in_progress', '3': 2, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task', '10': 'inProgress'},
    {'1': 'done', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task', '10': 'done'},
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
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '10': 'assignedUserId'},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueAt'},
    {'1': 'created_by', '3': 9, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 10, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask', '10': 'subtasks'},
  ],
  '3': [GetTasksByPatientSortedByStatusResponse_Task_SubTask$json],
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
    'CidHZXRUYXNrc0J5UGF0aWVudFNvcnRlZEJ5U3RhdHVzUmVzcG9uc2USXAoEdG9kbxgBIAMoCz'
    'JILnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFRhc2tzQnlQYXRpZW50U29ydGVkQnlT'
    'dGF0dXNSZXNwb25zZS5UYXNrUgR0b2RvEmkKC2luX3Byb2dyZXNzGAIgAygLMkgucHJvdG8uc2'
    'VydmljZXMudGFza19zdmMudjEuR2V0VGFza3NCeVBhdGllbnRTb3J0ZWRCeVN0YXR1c1Jlc3Bv'
    'bnNlLlRhc2tSCmluUHJvZ3Jlc3MSXAoEZG9uZRgDIAMoCzJILnByb3RvLnNlcnZpY2VzLnRhc2'
    'tfc3ZjLnYxLkdldFRhc2tzQnlQYXRpZW50U29ydGVkQnlTdGF0dXNSZXNwb25zZS5UYXNrUgRk'
    'b25lGs8DCgRUYXNrEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2'
    'NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIoChBhc3NpZ25lZF91c2VyX2lkGAUgASgJUg5h'
    'c3NpZ25lZFVzZXJJZBIdCgpwYXRpZW50X2lkGAYgASgJUglwYXRpZW50SWQSFgoGcHVibGljGA'
    'cgASgIUgZwdWJsaWMSMQoGZHVlX2F0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFt'
    'cFIFZHVlQXQSHQoKY3JlYXRlZF9ieRgJIAEoCVIJY3JlYXRlZEJ5EmwKCHN1YnRhc2tzGAogAy'
    'gLMlAucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0VGFza3NCeVBhdGllbnRTb3J0ZWRC'
    'eVN0YXR1c1Jlc3BvbnNlLlRhc2suU3ViVGFza1IIc3VidGFza3MaYAoHU3ViVGFzaxIOCgJpZB'
    'gBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRkb25lGAMgASgIUgRkb25lEh0KCmNy'
    'ZWF0ZWRfYnkYBCABKAlSCWNyZWF0ZWRCeQ==');

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
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAssignedTasksResponse.Task', '10': 'tasks'},
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
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.proto.services.task_svc.v1.TaskStatus', '10': 'status'},
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '10': 'assignedUserId'},
    {'1': 'patient', '3': 6, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetAssignedTasksResponse.Task.Patient', '10': 'patient'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'due_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dueAt'},
    {'1': 'created_by', '3': 9, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 10, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAssignedTasksResponse.Task.SubTask', '10': 'subtasks'},
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
    'ChhHZXRBc3NpZ25lZFRhc2tzUmVzcG9uc2USTwoFdGFza3MYASADKAsyOS5wcm90by5zZXJ2aW'
    'Nlcy50YXNrX3N2Yy52MS5HZXRBc3NpZ25lZFRhc2tzUmVzcG9uc2UuVGFza1IFdGFza3Ma7QQK'
    'BFRhc2sSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb2'
    '4YAyABKAlSC2Rlc2NyaXB0aW9uEj4KBnN0YXR1cxgEIAEoDjImLnByb3RvLnNlcnZpY2VzLnRh'
    'c2tfc3ZjLnYxLlRhc2tTdGF0dXNSBnN0YXR1cxIoChBhc3NpZ25lZF91c2VyX2lkGAUgASgJUg'
    '5hc3NpZ25lZFVzZXJJZBJbCgdwYXRpZW50GAYgASgLMkEucHJvdG8uc2VydmljZXMudGFza19z'
    'dmMudjEuR2V0QXNzaWduZWRUYXNrc1Jlc3BvbnNlLlRhc2suUGF0aWVudFIHcGF0aWVudBIWCg'
    'ZwdWJsaWMYByABKAhSBnB1YmxpYxIxCgZkdWVfYXQYCCABKAsyGi5nb29nbGUucHJvdG9idWYu'
    'VGltZXN0YW1wUgVkdWVBdBIdCgpjcmVhdGVkX2J5GAkgASgJUgljcmVhdGVkQnkSXQoIc3VidG'
    'Fza3MYCiADKAsyQS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRBc3NpZ25lZFRhc2tz'
    'UmVzcG9uc2UuVGFzay5TdWJUYXNrUghzdWJ0YXNrcxotCgdQYXRpZW50Eg4KAmlkGAEgASgJUg'
    'JpZBISCgRuYW1lGAIgASgJUgRuYW1lGmAKB1N1YlRhc2sSDgoCaWQYASABKAlSAmlkEhIKBG5h'
    'bWUYAiABKAlSBG5hbWUSEgoEZG9uZRgDIAEoCFIEZG9uZRIdCgpjcmVhdGVkX2J5GAQgASgJUg'
    'ljcmVhdGVkQnk=');

@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = {
  '1': 'UpdateTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'due_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 2, '10': 'dueAt', '17': true},
    {'1': 'public', '3': 5, '4': 1, '5': 8, '9': 3, '10': 'public', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_due_at'},
    {'1': '_public'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEjYKBmR1ZV9hdBgE'
    'IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAlIFZHVlQXSIAQESGwoGcHVibGljGA'
    'UgASgISANSBnB1YmxpY4gBAUIHCgVfbmFtZUIOCgxfZGVzY3JpcHRpb25CCQoHX2R1ZV9hdEIJ'
    'CgdfcHVibGlj');

@$core.Deprecated('Use updateTaskResponseDescriptor instead')
const UpdateTaskResponse$json = {
  '1': 'UpdateTaskResponse',
};

/// Descriptor for `UpdateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVUYXNrUmVzcG9uc2U=');

@$core.Deprecated('Use addSubTaskRequestDescriptor instead')
const AddSubTaskRequest$json = {
  '1': 'AddSubTaskRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'task_id', '3': 2, '4': 1, '5': 9, '10': 'taskId'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'done', '17': true},
  ],
  '8': [
    {'1': '_done'},
  ],
};

/// Descriptor for `AddSubTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSubTaskRequestDescriptor = $convert.base64Decode(
    'ChFBZGRTdWJUYXNrUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhcKB3Rhc2tfaWQYAiABKA'
    'lSBnRhc2tJZBIXCgRkb25lGAMgASgISABSBGRvbmWIAQFCBwoFX2RvbmU=');

@$core.Deprecated('Use addSubTaskResponseDescriptor instead')
const AddSubTaskResponse$json = {
  '1': 'AddSubTaskResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `AddSubTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSubTaskResponseDescriptor = $convert.base64Decode(
    'ChJBZGRTdWJUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use removeSubTaskRequestDescriptor instead')
const RemoveSubTaskRequest$json = {
  '1': 'RemoveSubTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `RemoveSubTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSubTaskRequestDescriptor = $convert.base64Decode(
    'ChRSZW1vdmVTdWJUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use removeSubTaskResponseDescriptor instead')
const RemoveSubTaskResponse$json = {
  '1': 'RemoveSubTaskResponse',
};

/// Descriptor for `RemoveSubTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSubTaskResponseDescriptor = $convert.base64Decode(
    'ChVSZW1vdmVTdWJUYXNrUmVzcG9uc2U=');

@$core.Deprecated('Use updateSubTaskRequestDescriptor instead')
const UpdateSubTaskRequest$json = {
  '1': 'UpdateSubTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `UpdateSubTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSubTaskRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVTdWJUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUg'
    'RuYW1liAEBQgcKBV9uYW1l');

@$core.Deprecated('Use updateSubTaskResponseDescriptor instead')
const UpdateSubTaskResponse$json = {
  '1': 'UpdateSubTaskResponse',
};

/// Descriptor for `UpdateSubTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSubTaskResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVTdWJUYXNrUmVzcG9uc2U=');

@$core.Deprecated('Use subTaskToToDoRequestDescriptor instead')
const SubTaskToToDoRequest$json = {
  '1': 'SubTaskToToDoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `SubTaskToToDoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subTaskToToDoRequestDescriptor = $convert.base64Decode(
    'ChRTdWJUYXNrVG9Ub0RvUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use subTaskToToDoResponseDescriptor instead')
const SubTaskToToDoResponse$json = {
  '1': 'SubTaskToToDoResponse',
};

/// Descriptor for `SubTaskToToDoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subTaskToToDoResponseDescriptor = $convert.base64Decode(
    'ChVTdWJUYXNrVG9Ub0RvUmVzcG9uc2U=');

@$core.Deprecated('Use subTaskToDoneRequestDescriptor instead')
const SubTaskToDoneRequest$json = {
  '1': 'SubTaskToDoneRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `SubTaskToDoneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subTaskToDoneRequestDescriptor = $convert.base64Decode(
    'ChRTdWJUYXNrVG9Eb25lUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use subTaskToDoneResponseDescriptor instead')
const SubTaskToDoneResponse$json = {
  '1': 'SubTaskToDoneResponse',
};

/// Descriptor for `SubTaskToDoneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subTaskToDoneResponseDescriptor = $convert.base64Decode(
    'ChVTdWJUYXNrVG9Eb25lUmVzcG9uc2U=');

@$core.Deprecated('Use taskToToDoRequestDescriptor instead')
const TaskToToDoRequest$json = {
  '1': 'TaskToToDoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TaskToToDoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToToDoRequestDescriptor = $convert.base64Decode(
    'ChFUYXNrVG9Ub0RvUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use taskToToDoResponseDescriptor instead')
const TaskToToDoResponse$json = {
  '1': 'TaskToToDoResponse',
};

/// Descriptor for `TaskToToDoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToToDoResponseDescriptor = $convert.base64Decode(
    'ChJUYXNrVG9Ub0RvUmVzcG9uc2U=');

@$core.Deprecated('Use taskToInProgressRequestDescriptor instead')
const TaskToInProgressRequest$json = {
  '1': 'TaskToInProgressRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TaskToInProgressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToInProgressRequestDescriptor = $convert.base64Decode(
    'ChdUYXNrVG9JblByb2dyZXNzUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use taskToInProgressResponseDescriptor instead')
const TaskToInProgressResponse$json = {
  '1': 'TaskToInProgressResponse',
};

/// Descriptor for `TaskToInProgressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToInProgressResponseDescriptor = $convert.base64Decode(
    'ChhUYXNrVG9JblByb2dyZXNzUmVzcG9uc2U=');

@$core.Deprecated('Use taskToDoneRequestDescriptor instead')
const TaskToDoneRequest$json = {
  '1': 'TaskToDoneRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TaskToDoneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToDoneRequestDescriptor = $convert.base64Decode(
    'ChFUYXNrVG9Eb25lUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use taskToDoneResponseDescriptor instead')
const TaskToDoneResponse$json = {
  '1': 'TaskToDoneResponse',
};

/// Descriptor for `TaskToDoneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToDoneResponseDescriptor = $convert.base64Decode(
    'ChJUYXNrVG9Eb25lUmVzcG9uc2U=');

@$core.Deprecated('Use assignTaskToUserRequestDescriptor instead')
const AssignTaskToUserRequest$json = {
  '1': 'AssignTaskToUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `AssignTaskToUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignTaskToUserRequestDescriptor = $convert.base64Decode(
    'ChdBc3NpZ25UYXNrVG9Vc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoHdXNlcl9pZBgCIA'
    'EoCVIGdXNlcklk');

@$core.Deprecated('Use assignTaskToUserResponseDescriptor instead')
const AssignTaskToUserResponse$json = {
  '1': 'AssignTaskToUserResponse',
};

/// Descriptor for `AssignTaskToUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignTaskToUserResponseDescriptor = $convert.base64Decode(
    'ChhBc3NpZ25UYXNrVG9Vc2VyUmVzcG9uc2U=');

@$core.Deprecated('Use unassignTaskFromUserRequestDescriptor instead')
const UnassignTaskFromUserRequest$json = {
  '1': 'UnassignTaskFromUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UnassignTaskFromUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignTaskFromUserRequestDescriptor = $convert.base64Decode(
    'ChtVbmFzc2lnblRhc2tGcm9tVXNlclJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use unassignTaskFromUserResponseDescriptor instead')
const UnassignTaskFromUserResponse$json = {
  '1': 'UnassignTaskFromUserResponse',
};

/// Descriptor for `UnassignTaskFromUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignTaskFromUserResponseDescriptor = $convert.base64Decode(
    'ChxVbmFzc2lnblRhc2tGcm9tVXNlclJlc3BvbnNl');

@$core.Deprecated('Use publishTaskRequestDescriptor instead')
const PublishTaskRequest$json = {
  '1': 'PublishTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `PublishTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishTaskRequestDescriptor = $convert.base64Decode(
    'ChJQdWJsaXNoVGFza1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use publishTaskResponseDescriptor instead')
const PublishTaskResponse$json = {
  '1': 'PublishTaskResponse',
};

/// Descriptor for `PublishTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishTaskResponseDescriptor = $convert.base64Decode(
    'ChNQdWJsaXNoVGFza1Jlc3BvbnNl');

@$core.Deprecated('Use unpublishTaskRequestDescriptor instead')
const UnpublishTaskRequest$json = {
  '1': 'UnpublishTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UnpublishTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unpublishTaskRequestDescriptor = $convert.base64Decode(
    'ChRVbnB1Ymxpc2hUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use unpublishTaskResponseDescriptor instead')
const UnpublishTaskResponse$json = {
  '1': 'UnpublishTaskResponse',
};

/// Descriptor for `UnpublishTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unpublishTaskResponseDescriptor = $convert.base64Decode(
    'ChVVbnB1Ymxpc2hUYXNrUmVzcG9uc2U=');

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

