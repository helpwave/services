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
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVUYXNrUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhIdCgpwYXRpZW50X2lkGAMgASgJUglwYXRpZW50SWQ=');
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
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode('Cg9HZXRUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEj4KBnN0YXR1cxgEIAEoDjImLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlRhc2tTdGF0dXNSBnN0YXR1cxIoChBhc3NpZ25lZF91c2VyX2lkGAUgASgJUg5hc3NpZ25lZFVzZXJJZBIdCgpwYXRpZW50X2lkGAYgASgJUglwYXRpZW50SWQ=');
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
const $core.Map<$core.String, $core.dynamic> TaskServiceBase$json = const {
  '1': 'TaskService',
  '2': const [
    const {'1': 'CreateTask', '2': '.proto.services.task_svc.v1.CreateTaskRequest', '3': '.proto.services.task_svc.v1.CreateTaskResponse', '4': const {}},
    const {'1': 'GetTask', '2': '.proto.services.task_svc.v1.GetTaskRequest', '3': '.proto.services.task_svc.v1.GetTaskResponse', '4': const {}},
    const {'1': 'UpdateTask', '2': '.proto.services.task_svc.v1.UpdateTaskRequest', '3': '.proto.services.task_svc.v1.UpdateTaskResponse', '4': const {}},
    const {'1': 'TaskToInProgress', '2': '.proto.services.task_svc.v1.TaskToInProgressRequest', '3': '.proto.services.task_svc.v1.TaskToInProgressResponse', '4': const {}},
    const {'1': 'TaskToDone', '2': '.proto.services.task_svc.v1.TaskToDoneRequest', '3': '.proto.services.task_svc.v1.TaskToDoneResponse', '4': const {}},
    const {'1': 'AssignTaskToUser', '2': '.proto.services.task_svc.v1.AssignTaskToUserRequest', '3': '.proto.services.task_svc.v1.AssignTaskToUserResponse', '4': const {}},
    const {'1': 'UnassignTaskFromUser', '2': '.proto.services.task_svc.v1.UnassignTaskFromUserRequest', '3': '.proto.services.task_svc.v1.UnassignTaskFromUserResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use taskServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TaskServiceBase$messageJson = const {
  '.proto.services.task_svc.v1.CreateTaskRequest': CreateTaskRequest$json,
  '.proto.services.task_svc.v1.CreateTaskResponse': CreateTaskResponse$json,
  '.proto.services.task_svc.v1.GetTaskRequest': GetTaskRequest$json,
  '.proto.services.task_svc.v1.GetTaskResponse': GetTaskResponse$json,
  '.proto.services.task_svc.v1.UpdateTaskRequest': UpdateTaskRequest$json,
  '.proto.services.task_svc.v1.UpdateTaskResponse': UpdateTaskResponse$json,
  '.proto.services.task_svc.v1.TaskToInProgressRequest': TaskToInProgressRequest$json,
  '.proto.services.task_svc.v1.TaskToInProgressResponse': TaskToInProgressResponse$json,
  '.proto.services.task_svc.v1.TaskToDoneRequest': TaskToDoneRequest$json,
  '.proto.services.task_svc.v1.TaskToDoneResponse': TaskToDoneResponse$json,
  '.proto.services.task_svc.v1.AssignTaskToUserRequest': AssignTaskToUserRequest$json,
  '.proto.services.task_svc.v1.AssignTaskToUserResponse': AssignTaskToUserResponse$json,
  '.proto.services.task_svc.v1.UnassignTaskFromUserRequest': UnassignTaskFromUserRequest$json,
  '.proto.services.task_svc.v1.UnassignTaskFromUserResponse': UnassignTaskFromUserResponse$json,
};

/// Descriptor for `TaskService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List taskServiceDescriptor = $convert.base64Decode('CgtUYXNrU2VydmljZRJtCgpDcmVhdGVUYXNrEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3JlYXRlVGFza1JlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVUYXNrUmVzcG9uc2UiABJkCgdHZXRUYXNrEioucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0VGFza1JlcXVlc3QaKy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRUYXNrUmVzcG9uc2UiABJtCgpVcGRhdGVUYXNrEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlVGFza1JlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVUYXNrUmVzcG9uc2UiABJ/ChBUYXNrVG9JblByb2dyZXNzEjMucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVGFza1RvSW5Qcm9ncmVzc1JlcXVlc3QaNC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5UYXNrVG9JblByb2dyZXNzUmVzcG9uc2UiABJtCgpUYXNrVG9Eb25lEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVGFza1RvRG9uZVJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5UYXNrVG9Eb25lUmVzcG9uc2UiABJ/ChBBc3NpZ25UYXNrVG9Vc2VyEjMucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQXNzaWduVGFza1RvVXNlclJlcXVlc3QaNC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5Bc3NpZ25UYXNrVG9Vc2VyUmVzcG9uc2UiABKLAQoUVW5hc3NpZ25UYXNrRnJvbVVzZXISNy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VbmFzc2lnblRhc2tGcm9tVXNlclJlcXVlc3QaOC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VbmFzc2lnblRhc2tGcm9tVXNlclJlc3BvbnNlIgA=');
