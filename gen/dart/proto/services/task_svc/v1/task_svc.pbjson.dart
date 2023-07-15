//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
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
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'patient_id', '3': 3, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 4, '4': 1, '5': 8, '10': 'public'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUYXNrUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGA'
    'IgASgJUgtkZXNjcmlwdGlvbhIdCgpwYXRpZW50X2lkGAMgASgJUglwYXRpZW50SWQSFgoGcHVi'
    'bGljGAQgASgIUgZwdWJsaWM=');

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
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTaskResponse.SubTask', '10': 'subtasks'},
  ],
  '3': [GetTaskResponse_SubTask$json],
};

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIA'
    'oLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEj4KBnN0YXR1cxgEIAEoDjImLnByb3Rv'
    'LnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlRhc2tTdGF0dXNSBnN0YXR1cxIoChBhc3NpZ25lZF91c2'
    'VyX2lkGAUgASgJUg5hc3NpZ25lZFVzZXJJZBIdCgpwYXRpZW50X2lkGAYgASgJUglwYXRpZW50'
    'SWQSFgoGcHVibGljGAcgASgIUgZwdWJsaWMSTwoIc3VidGFza3MYCCADKAsyMy5wcm90by5zZX'
    'J2aWNlcy50YXNrX3N2Yy52MS5HZXRUYXNrUmVzcG9uc2UuU3ViVGFza1IIc3VidGFza3MaQQoH'
    'U3ViVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRISCgRkb25lGAMgAS'
    'gIUgRkb25l');

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
    {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '10': 'assignedUserId'},
    {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask', '10': 'subtasks'},
  ],
  '3': [GetTasksByPatientResponse_Task_SubTask$json],
};

@$core.Deprecated('Use getTasksByPatientResponseDescriptor instead')
const GetTasksByPatientResponse_Task_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

/// Descriptor for `GetTasksByPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTasksByPatientResponseDescriptor = $convert.base64Decode(
    'ChlHZXRUYXNrc0J5UGF0aWVudFJlc3BvbnNlElAKBXRhc2tzGAEgAygLMjoucHJvdG8uc2Vydm'
    'ljZXMudGFza19zdmMudjEuR2V0VGFza3NCeVBhdGllbnRSZXNwb25zZS5UYXNrUgV0YXNrcxqQ'
    'AwoEVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdG'
    'lvbhgDIAEoCVILZGVzY3JpcHRpb24SPgoGc3RhdHVzGAQgASgOMiYucHJvdG8uc2VydmljZXMu'
    'dGFza19zdmMudjEuVGFza1N0YXR1c1IGc3RhdHVzEigKEGFzc2lnbmVkX3VzZXJfaWQYBSABKA'
    'lSDmFzc2lnbmVkVXNlcklkEh0KCnBhdGllbnRfaWQYBiABKAlSCXBhdGllbnRJZBIWCgZwdWJs'
    'aWMYByABKAhSBnB1YmxpYxJeCghzdWJ0YXNrcxgIIAMoCzJCLnByb3RvLnNlcnZpY2VzLnRhc2'
    'tfc3ZjLnYxLkdldFRhc2tzQnlQYXRpZW50UmVzcG9uc2UuVGFzay5TdWJUYXNrUghzdWJ0YXNr'
    'cxpBCgdTdWJUYXNrEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhIKBGRvbm'
    'UYAyABKAhSBGRvbmU=');

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
    {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask', '10': 'subtasks'},
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
    'b25lGt4CCgRUYXNrEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2Rlc2'
    'NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIoChBhc3NpZ25lZF91c2VyX2lkGAUgASgJUg5h'
    'c3NpZ25lZFVzZXJJZBIdCgpwYXRpZW50X2lkGAYgASgJUglwYXRpZW50SWQSFgoGcHVibGljGA'
    'cgASgIUgZwdWJsaWMSbAoIc3VidGFza3MYCCADKAsyUC5wcm90by5zZXJ2aWNlcy50YXNrX3N2'
    'Yy52MS5HZXRUYXNrc0J5UGF0aWVudFNvcnRlZEJ5U3RhdHVzUmVzcG9uc2UuVGFzay5TdWJUYX'
    'NrUghzdWJ0YXNrcxpBCgdTdWJUYXNrEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRu'
    'YW1lEhIKBGRvbmUYAyABKAhSBGRvbmU=');

@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = {
  '1': 'UpdateTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBQgcKBV9uYW1lQg4K'
    'DF9kZXNjcmlwdGlvbg==');

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

const $core.Map<$core.String, $core.dynamic> TaskServiceBase$json = {
  '1': 'TaskService',
  '2': [
    {'1': 'CreateTask', '2': '.proto.services.task_svc.v1.CreateTaskRequest', '3': '.proto.services.task_svc.v1.CreateTaskResponse', '4': {}},
    {'1': 'GetTask', '2': '.proto.services.task_svc.v1.GetTaskRequest', '3': '.proto.services.task_svc.v1.GetTaskResponse', '4': {}},
    {'1': 'GetTasksByPatient', '2': '.proto.services.task_svc.v1.GetTasksByPatientRequest', '3': '.proto.services.task_svc.v1.GetTasksByPatientResponse', '4': {}},
    {'1': 'GetTasksByPatientSortedByStatus', '2': '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest', '3': '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse', '4': {}},
    {'1': 'UpdateTask', '2': '.proto.services.task_svc.v1.UpdateTaskRequest', '3': '.proto.services.task_svc.v1.UpdateTaskResponse', '4': {}},
    {'1': 'AddSubTask', '2': '.proto.services.task_svc.v1.AddSubTaskRequest', '3': '.proto.services.task_svc.v1.AddSubTaskResponse', '4': {}},
    {'1': 'RemoveSubTask', '2': '.proto.services.task_svc.v1.RemoveSubTaskRequest', '3': '.proto.services.task_svc.v1.RemoveSubTaskResponse', '4': {}},
    {'1': 'UpdateSubTask', '2': '.proto.services.task_svc.v1.UpdateSubTaskRequest', '3': '.proto.services.task_svc.v1.UpdateSubTaskResponse', '4': {}},
    {'1': 'SubTaskToToDo', '2': '.proto.services.task_svc.v1.SubTaskToToDoRequest', '3': '.proto.services.task_svc.v1.SubTaskToToDoResponse', '4': {}},
    {'1': 'SubTaskToDone', '2': '.proto.services.task_svc.v1.SubTaskToDoneRequest', '3': '.proto.services.task_svc.v1.SubTaskToDoneResponse', '4': {}},
    {'1': 'TaskToToDo', '2': '.proto.services.task_svc.v1.TaskToToDoRequest', '3': '.proto.services.task_svc.v1.TaskToToDoResponse', '4': {}},
    {'1': 'TaskToInProgress', '2': '.proto.services.task_svc.v1.TaskToInProgressRequest', '3': '.proto.services.task_svc.v1.TaskToInProgressResponse', '4': {}},
    {'1': 'TaskToDone', '2': '.proto.services.task_svc.v1.TaskToDoneRequest', '3': '.proto.services.task_svc.v1.TaskToDoneResponse', '4': {}},
    {'1': 'AssignTaskToUser', '2': '.proto.services.task_svc.v1.AssignTaskToUserRequest', '3': '.proto.services.task_svc.v1.AssignTaskToUserResponse', '4': {}},
    {'1': 'UnassignTaskFromUser', '2': '.proto.services.task_svc.v1.UnassignTaskFromUserRequest', '3': '.proto.services.task_svc.v1.UnassignTaskFromUserResponse', '4': {}},
    {'1': 'PublishTask', '2': '.proto.services.task_svc.v1.PublishTaskRequest', '3': '.proto.services.task_svc.v1.PublishTaskResponse', '4': {}},
    {'1': 'UnpublishTask', '2': '.proto.services.task_svc.v1.UnpublishTaskRequest', '3': '.proto.services.task_svc.v1.UnpublishTaskResponse', '4': {}},
    {'1': 'DeleteTask', '2': '.proto.services.task_svc.v1.DeleteTaskRequest', '3': '.proto.services.task_svc.v1.DeleteTaskResponse', '4': {}},
  ],
};

@$core.Deprecated('Use taskServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TaskServiceBase$messageJson = {
  '.proto.services.task_svc.v1.CreateTaskRequest': CreateTaskRequest$json,
  '.proto.services.task_svc.v1.CreateTaskResponse': CreateTaskResponse$json,
  '.proto.services.task_svc.v1.GetTaskRequest': GetTaskRequest$json,
  '.proto.services.task_svc.v1.GetTaskResponse': GetTaskResponse$json,
  '.proto.services.task_svc.v1.GetTaskResponse.SubTask': GetTaskResponse_SubTask$json,
  '.proto.services.task_svc.v1.GetTasksByPatientRequest': GetTasksByPatientRequest$json,
  '.proto.services.task_svc.v1.GetTasksByPatientResponse': GetTasksByPatientResponse$json,
  '.proto.services.task_svc.v1.GetTasksByPatientResponse.Task': GetTasksByPatientResponse_Task$json,
  '.proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask': GetTasksByPatientResponse_Task_SubTask$json,
  '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusRequest': GetTasksByPatientSortedByStatusRequest$json,
  '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse': GetTasksByPatientSortedByStatusResponse$json,
  '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task': GetTasksByPatientSortedByStatusResponse_Task$json,
  '.proto.services.task_svc.v1.GetTasksByPatientSortedByStatusResponse.Task.SubTask': GetTasksByPatientSortedByStatusResponse_Task_SubTask$json,
  '.proto.services.task_svc.v1.UpdateTaskRequest': UpdateTaskRequest$json,
  '.proto.services.task_svc.v1.UpdateTaskResponse': UpdateTaskResponse$json,
  '.proto.services.task_svc.v1.AddSubTaskRequest': AddSubTaskRequest$json,
  '.proto.services.task_svc.v1.AddSubTaskResponse': AddSubTaskResponse$json,
  '.proto.services.task_svc.v1.RemoveSubTaskRequest': RemoveSubTaskRequest$json,
  '.proto.services.task_svc.v1.RemoveSubTaskResponse': RemoveSubTaskResponse$json,
  '.proto.services.task_svc.v1.UpdateSubTaskRequest': UpdateSubTaskRequest$json,
  '.proto.services.task_svc.v1.UpdateSubTaskResponse': UpdateSubTaskResponse$json,
  '.proto.services.task_svc.v1.SubTaskToToDoRequest': SubTaskToToDoRequest$json,
  '.proto.services.task_svc.v1.SubTaskToToDoResponse': SubTaskToToDoResponse$json,
  '.proto.services.task_svc.v1.SubTaskToDoneRequest': SubTaskToDoneRequest$json,
  '.proto.services.task_svc.v1.SubTaskToDoneResponse': SubTaskToDoneResponse$json,
  '.proto.services.task_svc.v1.TaskToToDoRequest': TaskToToDoRequest$json,
  '.proto.services.task_svc.v1.TaskToToDoResponse': TaskToToDoResponse$json,
  '.proto.services.task_svc.v1.TaskToInProgressRequest': TaskToInProgressRequest$json,
  '.proto.services.task_svc.v1.TaskToInProgressResponse': TaskToInProgressResponse$json,
  '.proto.services.task_svc.v1.TaskToDoneRequest': TaskToDoneRequest$json,
  '.proto.services.task_svc.v1.TaskToDoneResponse': TaskToDoneResponse$json,
  '.proto.services.task_svc.v1.AssignTaskToUserRequest': AssignTaskToUserRequest$json,
  '.proto.services.task_svc.v1.AssignTaskToUserResponse': AssignTaskToUserResponse$json,
  '.proto.services.task_svc.v1.UnassignTaskFromUserRequest': UnassignTaskFromUserRequest$json,
  '.proto.services.task_svc.v1.UnassignTaskFromUserResponse': UnassignTaskFromUserResponse$json,
  '.proto.services.task_svc.v1.PublishTaskRequest': PublishTaskRequest$json,
  '.proto.services.task_svc.v1.PublishTaskResponse': PublishTaskResponse$json,
  '.proto.services.task_svc.v1.UnpublishTaskRequest': UnpublishTaskRequest$json,
  '.proto.services.task_svc.v1.UnpublishTaskResponse': UnpublishTaskResponse$json,
  '.proto.services.task_svc.v1.DeleteTaskRequest': DeleteTaskRequest$json,
  '.proto.services.task_svc.v1.DeleteTaskResponse': DeleteTaskResponse$json,
};

/// Descriptor for `TaskService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List taskServiceDescriptor = $convert.base64Decode(
    'CgtUYXNrU2VydmljZRJtCgpDcmVhdGVUYXNrEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudj'
    'EuQ3JlYXRlVGFza1JlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVU'
    'YXNrUmVzcG9uc2UiABJkCgdHZXRUYXNrEioucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2'
    'V0VGFza1JlcXVlc3QaKy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRUYXNrUmVzcG9u'
    'c2UiABKCAQoRR2V0VGFza3NCeVBhdGllbnQSNC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS'
    '5HZXRUYXNrc0J5UGF0aWVudFJlcXVlc3QaNS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5H'
    'ZXRUYXNrc0J5UGF0aWVudFJlc3BvbnNlIgASrAEKH0dldFRhc2tzQnlQYXRpZW50U29ydGVkQn'
    'lTdGF0dXMSQi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRUYXNrc0J5UGF0aWVudFNv'
    'cnRlZEJ5U3RhdHVzUmVxdWVzdBpDLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFRhc2'
    'tzQnlQYXRpZW50U29ydGVkQnlTdGF0dXNSZXNwb25zZSIAEm0KClVwZGF0ZVRhc2sSLS5wcm90'
    'by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVUYXNrUmVxdWVzdBouLnByb3RvLnNlcnZpY2'
    'VzLnRhc2tfc3ZjLnYxLlVwZGF0ZVRhc2tSZXNwb25zZSIAEm0KCkFkZFN1YlRhc2sSLS5wcm90'
    'by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5BZGRTdWJUYXNrUmVxdWVzdBouLnByb3RvLnNlcnZpY2'
    'VzLnRhc2tfc3ZjLnYxLkFkZFN1YlRhc2tSZXNwb25zZSIAEnYKDVJlbW92ZVN1YlRhc2sSMC5w'
    'cm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5SZW1vdmVTdWJUYXNrUmVxdWVzdBoxLnByb3RvLn'
    'NlcnZpY2VzLnRhc2tfc3ZjLnYxLlJlbW92ZVN1YlRhc2tSZXNwb25zZSIAEnYKDVVwZGF0ZVN1'
    'YlRhc2sSMC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVTdWJUYXNrUmVxdWVzdB'
    'oxLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVwZGF0ZVN1YlRhc2tSZXNwb25zZSIAEnYK'
    'DVN1YlRhc2tUb1RvRG8SMC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5TdWJUYXNrVG9Ub0'
    'RvUmVxdWVzdBoxLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlN1YlRhc2tUb1RvRG9SZXNw'
    'b25zZSIAEnYKDVN1YlRhc2tUb0RvbmUSMC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5TdW'
    'JUYXNrVG9Eb25lUmVxdWVzdBoxLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlN1YlRhc2tU'
    'b0RvbmVSZXNwb25zZSIAEm0KClRhc2tUb1RvRG8SLS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy'
    '52MS5UYXNrVG9Ub0RvUmVxdWVzdBouLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlRhc2tU'
    'b1RvRG9SZXNwb25zZSIAEn8KEFRhc2tUb0luUHJvZ3Jlc3MSMy5wcm90by5zZXJ2aWNlcy50YX'
    'NrX3N2Yy52MS5UYXNrVG9JblByb2dyZXNzUmVxdWVzdBo0LnByb3RvLnNlcnZpY2VzLnRhc2tf'
    'c3ZjLnYxLlRhc2tUb0luUHJvZ3Jlc3NSZXNwb25zZSIAEm0KClRhc2tUb0RvbmUSLS5wcm90by'
    '5zZXJ2aWNlcy50YXNrX3N2Yy52MS5UYXNrVG9Eb25lUmVxdWVzdBouLnByb3RvLnNlcnZpY2Vz'
    'LnRhc2tfc3ZjLnYxLlRhc2tUb0RvbmVSZXNwb25zZSIAEn8KEEFzc2lnblRhc2tUb1VzZXISMy'
    '5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5Bc3NpZ25UYXNrVG9Vc2VyUmVxdWVzdBo0LnBy'
    'b3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkFzc2lnblRhc2tUb1VzZXJSZXNwb25zZSIAEosBCh'
    'RVbmFzc2lnblRhc2tGcm9tVXNlchI3LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVuYXNz'
    'aWduVGFza0Zyb21Vc2VyUmVxdWVzdBo4LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVuYX'
    'NzaWduVGFza0Zyb21Vc2VyUmVzcG9uc2UiABJwCgtQdWJsaXNoVGFzaxIuLnByb3RvLnNlcnZp'
    'Y2VzLnRhc2tfc3ZjLnYxLlB1Ymxpc2hUYXNrUmVxdWVzdBovLnByb3RvLnNlcnZpY2VzLnRhc2'
    'tfc3ZjLnYxLlB1Ymxpc2hUYXNrUmVzcG9uc2UiABJ2Cg1VbnB1Ymxpc2hUYXNrEjAucHJvdG8u'
    'c2VydmljZXMudGFza19zdmMudjEuVW5wdWJsaXNoVGFza1JlcXVlc3QaMS5wcm90by5zZXJ2aW'
    'Nlcy50YXNrX3N2Yy52MS5VbnB1Ymxpc2hUYXNrUmVzcG9uc2UiABJtCgpEZWxldGVUYXNrEi0u'
    'cHJvdG8uc2VydmljZXMudGFza19zdmMudjEuRGVsZXRlVGFza1JlcXVlc3QaLi5wcm90by5zZX'
    'J2aWNlcy50YXNrX3N2Yy52MS5EZWxldGVUYXNrUmVzcG9uc2UiAA==');

