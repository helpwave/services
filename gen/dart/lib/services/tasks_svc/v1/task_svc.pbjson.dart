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
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_due_at'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEjYKBmR1ZV9hdBgE'
    'IAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAlIFZHVlQXSIAQFCBwoFX25hbWVCDg'
    'oMX2Rlc2NyaXB0aW9uQgkKB19kdWVfYXQ=');

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

