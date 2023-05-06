///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use taskStatusDescriptor instead')
const TaskStatus$json = const {
  '1': 'TaskStatus',
  '2': const [
    const {'1': 'TASK_STATUS_UNSPECIFIED', '2': 0},
    const {'1': 'TASK_STATUS_TODO', '2': 1},
    const {'1': 'TASK_STATUS_IN_PROGRESS', '2': 2},
    const {'1': 'TASK_STATUS_DONE', '2': 3},
  ],
};

/// Descriptor for `TaskStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List taskStatusDescriptor = $convert.base64Decode('CgpUYXNrU3RhdHVzEhsKF1RBU0tfU1RBVFVTX1VOU1BFQ0lGSUVEEAASFAoQVEFTS19TVEFUVVNfVE9ETxABEhsKF1RBU0tfU1RBVFVTX0lOX1BST0dSRVNTEAISFAoQVEFTS19TVEFUVVNfRE9ORRAD');
@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = const {
  '1': 'CreateTaskRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'patient_id', '3': 3, '4': 1, '5': 9, '10': 'patientId'},
    const {'1': 'public', '3': 4, '4': 1, '5': 8, '10': 'public'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVUYXNrUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIdCgpwYXRpZW50X2lkGAMgASgJUglwYXRpZW50SWQSFgoGcHVibGljGAQgASgIUgZwdWJsaWM=');
@$core.Deprecated('Use createTaskResponseDescriptor instead')
const CreateTaskResponse$json = const {
  '1': 'CreateTaskResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getTaskRequestDescriptor instead')
const GetTaskRequest$json = const {
  '1': 'GetTaskRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskRequestDescriptor = $convert.base64Decode('Cg5HZXRUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse$json = const {
  '1': 'GetTaskResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.proto.services.task_svc.v1.TaskStatus', '10': 'status'},
    const {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '10': 'assignedUserId'},
    const {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    const {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    const {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTaskResponse.SubTask', '10': 'subtasks'},
  ],
  '3': const [GetTaskResponse_SubTask$json],
};

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse_SubTask$json = const {
  '1': 'SubTask',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode('Cg9HZXRUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEj4KBnN0YXR1cxgEIAEoDjImLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlRhc2tTdGF0dXNSBnN0YXR1cxIoChBhc3NpZ25lZF91c2VyX2lkGAUgASgJUg5hc3NpZ25lZFVzZXJJZBIdCgpwYXRpZW50X2lkGAYgASgJUglwYXRpZW50SWQSFgoGcHVibGljGAcgASgIUgZwdWJsaWMSTwoIc3VidGFza3MYCCADKAsyMy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRUYXNrUmVzcG9uc2UuU3ViVGFza1IIc3VidGFza3MaQwoHU3ViVGFzaxIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhIKBGRvbmUYAyABKAhSBGRvbmU=');
@$core.Deprecated('Use getTasksByPatientRequestDescriptor instead')
const GetTasksByPatientRequest$json = const {
  '1': 'GetTasksByPatientRequest',
  '2': const [
    const {'1': 'patient_id', '3': 1, '4': 1, '5': 9, '10': 'patientId'},
  ],
};

/// Descriptor for `GetTasksByPatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTasksByPatientRequestDescriptor = $convert.base64Decode('ChhHZXRUYXNrc0J5UGF0aWVudFJlcXVlc3QSHQoKcGF0aWVudF9pZBgBIAEoCVIJcGF0aWVudElk');
@$core.Deprecated('Use getTasksByPatientResponseDescriptor instead')
const GetTasksByPatientResponse$json = const {
  '1': 'GetTasksByPatientResponse',
  '2': const [
    const {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientResponse.Task', '10': 'tasks'},
  ],
  '3': const [GetTasksByPatientResponse_Task$json],
};

@$core.Deprecated('Use getTasksByPatientResponseDescriptor instead')
const GetTasksByPatientResponse_Task$json = const {
  '1': 'Task',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.proto.services.task_svc.v1.TaskStatus', '10': 'status'},
    const {'1': 'assigned_user_id', '3': 5, '4': 1, '5': 9, '10': 'assignedUserId'},
    const {'1': 'patient_id', '3': 6, '4': 1, '5': 9, '10': 'patientId'},
    const {'1': 'public', '3': 7, '4': 1, '5': 8, '10': 'public'},
    const {'1': 'subtasks', '3': 8, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask', '10': 'subtasks'},
  ],
  '3': const [GetTasksByPatientResponse_Task_SubTask$json],
};

@$core.Deprecated('Use getTasksByPatientResponseDescriptor instead')
const GetTasksByPatientResponse_Task_SubTask$json = const {
  '1': 'SubTask',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'done', '3': 3, '4': 1, '5': 8, '10': 'done'},
  ],
};

/// Descriptor for `GetTasksByPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTasksByPatientResponseDescriptor = $convert.base64Decode('ChlHZXRUYXNrc0J5UGF0aWVudFJlc3BvbnNlElAKBXRhc2tzGAEgAygLMjoucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0VGFza3NCeVBhdGllbnRSZXNwb25zZS5UYXNrUgV0YXNrcxqSAwoEVGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SPgoGc3RhdHVzGAQgASgOMiYucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVGFza1N0YXR1c1IGc3RhdHVzEigKEGFzc2lnbmVkX3VzZXJfaWQYBSABKAlSDmFzc2lnbmVkVXNlcklkEh0KCnBhdGllbnRfaWQYBiABKAlSCXBhdGllbnRJZBIWCgZwdWJsaWMYByABKAhSBnB1YmxpYxJeCghzdWJ0YXNrcxgIIAMoCzJCLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFRhc2tzQnlQYXRpZW50UmVzcG9uc2UuVGFzay5TdWJUYXNrUghzdWJ0YXNrcxpDCgdTdWJUYXNrEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSEgoEZG9uZRgDIAEoCFIEZG9uZQ==');
@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = const {
  '1': 'UpdateTaskRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
  ],
  '8': const [
    const {'1': '_name'},
    const {'1': '_description'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBQgcKBV9uYW1lQg4KDF9kZXNjcmlwdGlvbg==');
@$core.Deprecated('Use updateTaskResponseDescriptor instead')
const UpdateTaskResponse$json = const {
  '1': 'UpdateTaskResponse',
};

/// Descriptor for `UpdateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVUYXNrUmVzcG9uc2U=');
@$core.Deprecated('Use addSubTaskRequestDescriptor instead')
const AddSubTaskRequest$json = const {
  '1': 'AddSubTaskRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'task_id', '3': 2, '4': 1, '5': 9, '10': 'taskId'},
    const {'1': 'done', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'done', '17': true},
  ],
  '8': const [
    const {'1': '_done'},
  ],
};

/// Descriptor for `AddSubTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSubTaskRequestDescriptor = $convert.base64Decode('ChFBZGRTdWJUYXNrUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSFwoHdGFza19pZBgCIAEoCVIGdGFza0lkEhcKBGRvbmUYAyABKAhIAFIEZG9uZYgBAUIHCgVfZG9uZQ==');
@$core.Deprecated('Use addSubTaskResponseDescriptor instead')
const AddSubTaskResponse$json = const {
  '1': 'AddSubTaskResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `AddSubTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSubTaskResponseDescriptor = $convert.base64Decode('ChJBZGRTdWJUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use removeSubTaskRequestDescriptor instead')
const RemoveSubTaskRequest$json = const {
  '1': 'RemoveSubTaskRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `RemoveSubTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSubTaskRequestDescriptor = $convert.base64Decode('ChRSZW1vdmVTdWJUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use removeSubTaskResponseDescriptor instead')
const RemoveSubTaskResponse$json = const {
  '1': 'RemoveSubTaskResponse',
};

/// Descriptor for `RemoveSubTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSubTaskResponseDescriptor = $convert.base64Decode('ChVSZW1vdmVTdWJUYXNrUmVzcG9uc2U=');
@$core.Deprecated('Use subTaskToToDoRequestDescriptor instead')
const SubTaskToToDoRequest$json = const {
  '1': 'SubTaskToToDoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `SubTaskToToDoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subTaskToToDoRequestDescriptor = $convert.base64Decode('ChRTdWJUYXNrVG9Ub0RvUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use subTaskToToDoResponseDescriptor instead')
const SubTaskToToDoResponse$json = const {
  '1': 'SubTaskToToDoResponse',
};

/// Descriptor for `SubTaskToToDoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subTaskToToDoResponseDescriptor = $convert.base64Decode('ChVTdWJUYXNrVG9Ub0RvUmVzcG9uc2U=');
@$core.Deprecated('Use subTaskToDoneRequestDescriptor instead')
const SubTaskToDoneRequest$json = const {
  '1': 'SubTaskToDoneRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `SubTaskToDoneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subTaskToDoneRequestDescriptor = $convert.base64Decode('ChRTdWJUYXNrVG9Eb25lUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use subTaskToDoneResponseDescriptor instead')
const SubTaskToDoneResponse$json = const {
  '1': 'SubTaskToDoneResponse',
};

/// Descriptor for `SubTaskToDoneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subTaskToDoneResponseDescriptor = $convert.base64Decode('ChVTdWJUYXNrVG9Eb25lUmVzcG9uc2U=');
@$core.Deprecated('Use taskToToDoRequestDescriptor instead')
const TaskToToDoRequest$json = const {
  '1': 'TaskToToDoRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TaskToToDoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToToDoRequestDescriptor = $convert.base64Decode('ChFUYXNrVG9Ub0RvUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use taskToToDoResponseDescriptor instead')
const TaskToToDoResponse$json = const {
  '1': 'TaskToToDoResponse',
};

/// Descriptor for `TaskToToDoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToToDoResponseDescriptor = $convert.base64Decode('ChJUYXNrVG9Ub0RvUmVzcG9uc2U=');
@$core.Deprecated('Use taskToInProgressRequestDescriptor instead')
const TaskToInProgressRequest$json = const {
  '1': 'TaskToInProgressRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TaskToInProgressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToInProgressRequestDescriptor = $convert.base64Decode('ChdUYXNrVG9JblByb2dyZXNzUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use taskToInProgressResponseDescriptor instead')
const TaskToInProgressResponse$json = const {
  '1': 'TaskToInProgressResponse',
};

/// Descriptor for `TaskToInProgressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToInProgressResponseDescriptor = $convert.base64Decode('ChhUYXNrVG9JblByb2dyZXNzUmVzcG9uc2U=');
@$core.Deprecated('Use taskToDoneRequestDescriptor instead')
const TaskToDoneRequest$json = const {
  '1': 'TaskToDoneRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `TaskToDoneRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToDoneRequestDescriptor = $convert.base64Decode('ChFUYXNrVG9Eb25lUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use taskToDoneResponseDescriptor instead')
const TaskToDoneResponse$json = const {
  '1': 'TaskToDoneResponse',
};

/// Descriptor for `TaskToDoneResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskToDoneResponseDescriptor = $convert.base64Decode('ChJUYXNrVG9Eb25lUmVzcG9uc2U=');
@$core.Deprecated('Use assignTaskToUserRequestDescriptor instead')
const AssignTaskToUserRequest$json = const {
  '1': 'AssignTaskToUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `AssignTaskToUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignTaskToUserRequestDescriptor = $convert.base64Decode('ChdBc3NpZ25UYXNrVG9Vc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoHdXNlcl9pZBgCIAEoCVIGdXNlcklk');
@$core.Deprecated('Use assignTaskToUserResponseDescriptor instead')
const AssignTaskToUserResponse$json = const {
  '1': 'AssignTaskToUserResponse',
};

/// Descriptor for `AssignTaskToUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignTaskToUserResponseDescriptor = $convert.base64Decode('ChhBc3NpZ25UYXNrVG9Vc2VyUmVzcG9uc2U=');
@$core.Deprecated('Use unassignTaskFromUserRequestDescriptor instead')
const UnassignTaskFromUserRequest$json = const {
  '1': 'UnassignTaskFromUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UnassignTaskFromUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignTaskFromUserRequestDescriptor = $convert.base64Decode('ChtVbmFzc2lnblRhc2tGcm9tVXNlclJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use unassignTaskFromUserResponseDescriptor instead')
const UnassignTaskFromUserResponse$json = const {
  '1': 'UnassignTaskFromUserResponse',
};

/// Descriptor for `UnassignTaskFromUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignTaskFromUserResponseDescriptor = $convert.base64Decode('ChxVbmFzc2lnblRhc2tGcm9tVXNlclJlc3BvbnNl');
@$core.Deprecated('Use publishTaskRequestDescriptor instead')
const PublishTaskRequest$json = const {
  '1': 'PublishTaskRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `PublishTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishTaskRequestDescriptor = $convert.base64Decode('ChJQdWJsaXNoVGFza1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use publishTaskResponseDescriptor instead')
const PublishTaskResponse$json = const {
  '1': 'PublishTaskResponse',
};

/// Descriptor for `PublishTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishTaskResponseDescriptor = $convert.base64Decode('ChNQdWJsaXNoVGFza1Jlc3BvbnNl');
@$core.Deprecated('Use unpublishTaskRequestDescriptor instead')
const UnpublishTaskRequest$json = const {
  '1': 'UnpublishTaskRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UnpublishTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unpublishTaskRequestDescriptor = $convert.base64Decode('ChRVbnB1Ymxpc2hUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use unpublishTaskResponseDescriptor instead')
const UnpublishTaskResponse$json = const {
  '1': 'UnpublishTaskResponse',
};

/// Descriptor for `UnpublishTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unpublishTaskResponseDescriptor = $convert.base64Decode('ChVVbnB1Ymxpc2hUYXNrUmVzcG9uc2U=');
@$core.Deprecated('Use deleteTaskRequestDescriptor instead')
const DeleteTaskRequest$json = const {
  '1': 'DeleteTaskRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskRequestDescriptor = $convert.base64Decode('ChFEZWxldGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use deleteTaskResponseDescriptor instead')
const DeleteTaskResponse$json = const {
  '1': 'DeleteTaskResponse',
};

/// Descriptor for `DeleteTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskResponseDescriptor = $convert.base64Decode('ChJEZWxldGVUYXNrUmVzcG9uc2U=');
const $core.Map<$core.String, $core.dynamic> TaskServiceBase$json = const {
  '1': 'TaskService',
  '2': const [
    const {'1': 'CreateTask', '2': '.proto.services.task_svc.v1.CreateTaskRequest', '3': '.proto.services.task_svc.v1.CreateTaskResponse', '4': const {}},
    const {'1': 'GetTask', '2': '.proto.services.task_svc.v1.GetTaskRequest', '3': '.proto.services.task_svc.v1.GetTaskResponse', '4': const {}},
    const {'1': 'GetTasksByPatient', '2': '.proto.services.task_svc.v1.GetTasksByPatientRequest', '3': '.proto.services.task_svc.v1.GetTasksByPatientResponse', '4': const {}},
    const {'1': 'UpdateTask', '2': '.proto.services.task_svc.v1.UpdateTaskRequest', '3': '.proto.services.task_svc.v1.UpdateTaskResponse', '4': const {}},
    const {'1': 'AddSubTask', '2': '.proto.services.task_svc.v1.AddSubTaskRequest', '3': '.proto.services.task_svc.v1.AddSubTaskResponse', '4': const {}},
    const {'1': 'RemoveSubTask', '2': '.proto.services.task_svc.v1.RemoveSubTaskRequest', '3': '.proto.services.task_svc.v1.RemoveSubTaskResponse', '4': const {}},
    const {'1': 'SubTaskToToDo', '2': '.proto.services.task_svc.v1.SubTaskToToDoRequest', '3': '.proto.services.task_svc.v1.SubTaskToToDoResponse', '4': const {}},
    const {'1': 'SubTaskToDone', '2': '.proto.services.task_svc.v1.SubTaskToDoneRequest', '3': '.proto.services.task_svc.v1.SubTaskToDoneResponse', '4': const {}},
    const {'1': 'TaskToToDo', '2': '.proto.services.task_svc.v1.TaskToToDoRequest', '3': '.proto.services.task_svc.v1.TaskToToDoResponse', '4': const {}},
    const {'1': 'TaskToInProgress', '2': '.proto.services.task_svc.v1.TaskToInProgressRequest', '3': '.proto.services.task_svc.v1.TaskToInProgressResponse', '4': const {}},
    const {'1': 'TaskToDone', '2': '.proto.services.task_svc.v1.TaskToDoneRequest', '3': '.proto.services.task_svc.v1.TaskToDoneResponse', '4': const {}},
    const {'1': 'AssignTaskToUser', '2': '.proto.services.task_svc.v1.AssignTaskToUserRequest', '3': '.proto.services.task_svc.v1.AssignTaskToUserResponse', '4': const {}},
    const {'1': 'UnassignTaskFromUser', '2': '.proto.services.task_svc.v1.UnassignTaskFromUserRequest', '3': '.proto.services.task_svc.v1.UnassignTaskFromUserResponse', '4': const {}},
    const {'1': 'PublishTask', '2': '.proto.services.task_svc.v1.PublishTaskRequest', '3': '.proto.services.task_svc.v1.PublishTaskResponse', '4': const {}},
    const {'1': 'UnpublishTask', '2': '.proto.services.task_svc.v1.UnpublishTaskRequest', '3': '.proto.services.task_svc.v1.UnpublishTaskResponse', '4': const {}},
    const {'1': 'DeleteTask', '2': '.proto.services.task_svc.v1.DeleteTaskRequest', '3': '.proto.services.task_svc.v1.DeleteTaskResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use taskServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TaskServiceBase$messageJson = const {
  '.proto.services.task_svc.v1.CreateTaskRequest': CreateTaskRequest$json,
  '.proto.services.task_svc.v1.CreateTaskResponse': CreateTaskResponse$json,
  '.proto.services.task_svc.v1.GetTaskRequest': GetTaskRequest$json,
  '.proto.services.task_svc.v1.GetTaskResponse': GetTaskResponse$json,
  '.proto.services.task_svc.v1.GetTaskResponse.SubTask': GetTaskResponse_SubTask$json,
  '.proto.services.task_svc.v1.GetTasksByPatientRequest': GetTasksByPatientRequest$json,
  '.proto.services.task_svc.v1.GetTasksByPatientResponse': GetTasksByPatientResponse$json,
  '.proto.services.task_svc.v1.GetTasksByPatientResponse.Task': GetTasksByPatientResponse_Task$json,
  '.proto.services.task_svc.v1.GetTasksByPatientResponse.Task.SubTask': GetTasksByPatientResponse_Task_SubTask$json,
  '.proto.services.task_svc.v1.UpdateTaskRequest': UpdateTaskRequest$json,
  '.proto.services.task_svc.v1.UpdateTaskResponse': UpdateTaskResponse$json,
  '.proto.services.task_svc.v1.AddSubTaskRequest': AddSubTaskRequest$json,
  '.proto.services.task_svc.v1.AddSubTaskResponse': AddSubTaskResponse$json,
  '.proto.services.task_svc.v1.RemoveSubTaskRequest': RemoveSubTaskRequest$json,
  '.proto.services.task_svc.v1.RemoveSubTaskResponse': RemoveSubTaskResponse$json,
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
final $typed_data.Uint8List taskServiceDescriptor = $convert.base64Decode('CgtUYXNrU2VydmljZRJtCgpDcmVhdGVUYXNrEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3JlYXRlVGFza1JlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVUYXNrUmVzcG9uc2UiABJkCgdHZXRUYXNrEioucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0VGFza1JlcXVlc3QaKy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRUYXNrUmVzcG9uc2UiABKCAQoRR2V0VGFza3NCeVBhdGllbnQSNC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRUYXNrc0J5UGF0aWVudFJlcXVlc3QaNS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRUYXNrc0J5UGF0aWVudFJlc3BvbnNlIgASbQoKVXBkYXRlVGFzaxItLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVwZGF0ZVRhc2tSZXF1ZXN0Gi4ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlVGFza1Jlc3BvbnNlIgASbQoKQWRkU3ViVGFzaxItLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkFkZFN1YlRhc2tSZXF1ZXN0Gi4ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQWRkU3ViVGFza1Jlc3BvbnNlIgASdgoNUmVtb3ZlU3ViVGFzaxIwLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlJlbW92ZVN1YlRhc2tSZXF1ZXN0GjEucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuUmVtb3ZlU3ViVGFza1Jlc3BvbnNlIgASdgoNU3ViVGFza1RvVG9EbxIwLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlN1YlRhc2tUb1RvRG9SZXF1ZXN0GjEucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuU3ViVGFza1RvVG9Eb1Jlc3BvbnNlIgASdgoNU3ViVGFza1RvRG9uZRIwLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlN1YlRhc2tUb0RvbmVSZXF1ZXN0GjEucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuU3ViVGFza1RvRG9uZVJlc3BvbnNlIgASbQoKVGFza1RvVG9EbxItLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlRhc2tUb1RvRG9SZXF1ZXN0Gi4ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVGFza1RvVG9Eb1Jlc3BvbnNlIgASfwoQVGFza1RvSW5Qcm9ncmVzcxIzLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlRhc2tUb0luUHJvZ3Jlc3NSZXF1ZXN0GjQucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVGFza1RvSW5Qcm9ncmVzc1Jlc3BvbnNlIgASbQoKVGFza1RvRG9uZRItLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlRhc2tUb0RvbmVSZXF1ZXN0Gi4ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVGFza1RvRG9uZVJlc3BvbnNlIgASfwoQQXNzaWduVGFza1RvVXNlchIzLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkFzc2lnblRhc2tUb1VzZXJSZXF1ZXN0GjQucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQXNzaWduVGFza1RvVXNlclJlc3BvbnNlIgASiwEKFFVuYXNzaWduVGFza0Zyb21Vc2VyEjcucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVW5hc3NpZ25UYXNrRnJvbVVzZXJSZXF1ZXN0GjgucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVW5hc3NpZ25UYXNrRnJvbVVzZXJSZXNwb25zZSIAEnAKC1B1Ymxpc2hUYXNrEi4ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuUHVibGlzaFRhc2tSZXF1ZXN0Gi8ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuUHVibGlzaFRhc2tSZXNwb25zZSIAEnYKDVVucHVibGlzaFRhc2sSMC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VbnB1Ymxpc2hUYXNrUmVxdWVzdBoxLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVucHVibGlzaFRhc2tSZXNwb25zZSIAEm0KCkRlbGV0ZVRhc2sSLS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5EZWxldGVUYXNrUmVxdWVzdBouLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkRlbGV0ZVRhc2tSZXNwb25zZSIA');
