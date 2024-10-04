//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/task_template_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createTaskTemplateRequestDescriptor instead')
const CreateTaskTemplateRequest$json = {
  '1': 'CreateTaskTemplateRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'ward_id', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'wardId', '17': true},
    {'1': 'subtasks', '3': 5, '4': 3, '5': 11, '6': '.services.task_svc.v1.CreateTaskTemplateRequest.SubTask', '10': 'subtasks'},
  ],
  '3': [CreateTaskTemplateRequest_SubTask$json],
  '8': [
    {'1': '_description'},
    {'1': '_ward_id'},
  ],
};

@$core.Deprecated('Use createTaskTemplateRequestDescriptor instead')
const CreateTaskTemplateRequest_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateTaskTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskTemplateRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVUYXNrVGVtcGxhdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSJQoLZGVzY3'
    'JpcHRpb24YAiABKAlIAFILZGVzY3JpcHRpb26IAQESHAoHd2FyZF9pZBgEIAEoCUgBUgZ3YXJk'
    'SWSIAQESUwoIc3VidGFza3MYBSADKAsyNy5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVUYX'
    'NrVGVtcGxhdGVSZXF1ZXN0LlN1YlRhc2tSCHN1YnRhc2tzGh0KB1N1YlRhc2sSEgoEbmFtZRgB'
    'IAEoCVIEbmFtZUIOCgxfZGVzY3JpcHRpb25CCgoIX3dhcmRfaWQ=');

@$core.Deprecated('Use createTaskTemplateResponseDescriptor instead')
const CreateTaskTemplateResponse$json = {
  '1': 'CreateTaskTemplateResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateTaskTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskTemplateResponseDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVUYXNrVGVtcGxhdGVSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getAllTaskTemplatesRequestDescriptor instead')
const GetAllTaskTemplatesRequest$json = {
  '1': 'GetAllTaskTemplatesRequest',
};

/// Descriptor for `GetAllTaskTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesRequestDescriptor = $convert.base64Decode(
    'ChpHZXRBbGxUYXNrVGVtcGxhdGVzUmVxdWVzdA==');

@$core.Deprecated('Use getAllTaskTemplatesResponseDescriptor instead')
const GetAllTaskTemplatesResponse$json = {
  '1': 'GetAllTaskTemplatesResponse',
  '2': [
    {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetAllTaskTemplatesResponse.TaskTemplate', '10': 'templates'},
  ],
  '3': [GetAllTaskTemplatesResponse_TaskTemplate$json],
};

@$core.Deprecated('Use getAllTaskTemplatesResponseDescriptor instead')
const GetAllTaskTemplatesResponse_TaskTemplate$json = {
  '1': 'TaskTemplate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'is_public', '3': 4, '4': 1, '5': 8, '10': 'isPublic'},
    {'1': 'created_by', '3': 6, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 7, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetAllTaskTemplatesResponse.TaskTemplate.SubTask', '10': 'subtasks'},
  ],
  '3': [GetAllTaskTemplatesResponse_TaskTemplate_SubTask$json],
};

@$core.Deprecated('Use getAllTaskTemplatesResponseDescriptor instead')
const GetAllTaskTemplatesResponse_TaskTemplate_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'task_template_id', '3': 2, '4': 1, '5': 9, '10': 'taskTemplateId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetAllTaskTemplatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesResponseDescriptor = $convert.base64Decode(
    'ChtHZXRBbGxUYXNrVGVtcGxhdGVzUmVzcG9uc2USXAoJdGVtcGxhdGVzGAEgAygLMj4uc2Vydm'
    'ljZXMudGFza19zdmMudjEuR2V0QWxsVGFza1RlbXBsYXRlc1Jlc3BvbnNlLlRhc2tUZW1wbGF0'
    'ZVIJdGVtcGxhdGVzGs0CCgxUYXNrVGVtcGxhdGUSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAi'
    'ABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhsKCWlzX3B1Ymxp'
    'YxgEIAEoCFIIaXNQdWJsaWMSHQoKY3JlYXRlZF9ieRgGIAEoCVIJY3JlYXRlZEJ5EmIKCHN1Yn'
    'Rhc2tzGAcgAygLMkYuc2VydmljZXMudGFza19zdmMudjEuR2V0QWxsVGFza1RlbXBsYXRlc1Jl'
    'c3BvbnNlLlRhc2tUZW1wbGF0ZS5TdWJUYXNrUghzdWJ0YXNrcxpXCgdTdWJUYXNrEg4KAmlkGA'
    'EgASgJUgJpZBIoChB0YXNrX3RlbXBsYXRlX2lkGAIgASgJUg50YXNrVGVtcGxhdGVJZBISCgRu'
    'YW1lGAMgASgJUgRuYW1l');

@$core.Deprecated('Use deleteTaskTemplateRequestDescriptor instead')
const DeleteTaskTemplateRequest$json = {
  '1': 'DeleteTaskTemplateRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskTemplateRequestDescriptor = $convert.base64Decode(
    'ChlEZWxldGVUYXNrVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteTaskTemplateResponseDescriptor instead')
const DeleteTaskTemplateResponse$json = {
  '1': 'DeleteTaskTemplateResponse',
};

/// Descriptor for `DeleteTaskTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskTemplateResponseDescriptor = $convert.base64Decode(
    'ChpEZWxldGVUYXNrVGVtcGxhdGVSZXNwb25zZQ==');

@$core.Deprecated('Use deleteTaskTemplateSubTaskRequestDescriptor instead')
const DeleteTaskTemplateSubTaskRequest$json = {
  '1': 'DeleteTaskTemplateSubTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskTemplateSubTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskTemplateSubTaskRequestDescriptor = $convert.base64Decode(
    'CiBEZWxldGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteTaskTemplateSubTaskResponseDescriptor instead')
const DeleteTaskTemplateSubTaskResponse$json = {
  '1': 'DeleteTaskTemplateSubTaskResponse',
};

/// Descriptor for `DeleteTaskTemplateSubTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskTemplateSubTaskResponseDescriptor = $convert.base64Decode(
    'CiFEZWxldGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVzcG9uc2U=');

@$core.Deprecated('Use updateTaskTemplateRequestDescriptor instead')
const UpdateTaskTemplateRequest$json = {
  '1': 'UpdateTaskTemplateRequest',
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

/// Descriptor for `UpdateTaskTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskTemplateRequestDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVUYXNrVGVtcGxhdGVSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIXCgRuYW1lGAIgAS'
    'gJSABSBG5hbWWIAQESJQoLZGVzY3JpcHRpb24YAyABKAlIAVILZGVzY3JpcHRpb26IAQFCBwoF'
    'X25hbWVCDgoMX2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use updateTaskTemplateResponseDescriptor instead')
const UpdateTaskTemplateResponse$json = {
  '1': 'UpdateTaskTemplateResponse',
};

/// Descriptor for `UpdateTaskTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskTemplateResponseDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVUYXNrVGVtcGxhdGVSZXNwb25zZQ==');

@$core.Deprecated('Use updateTaskTemplateSubTaskRequestDescriptor instead')
const UpdateTaskTemplateSubTaskRequest$json = {
  '1': 'UpdateTaskTemplateSubTaskRequest',
  '2': [
    {'1': 'subtask_id', '3': 1, '4': 1, '5': 9, '10': 'subtaskId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `UpdateTaskTemplateSubTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskTemplateSubTaskRequestDescriptor = $convert.base64Decode(
    'CiBVcGRhdGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVxdWVzdBIdCgpzdWJ0YXNrX2lkGAEgASgJUg'
    'lzdWJ0YXNrSWQSFwoEbmFtZRgCIAEoCUgAUgRuYW1liAEBQgcKBV9uYW1l');

@$core.Deprecated('Use updateTaskTemplateSubTaskResponseDescriptor instead')
const UpdateTaskTemplateSubTaskResponse$json = {
  '1': 'UpdateTaskTemplateSubTaskResponse',
};

/// Descriptor for `UpdateTaskTemplateSubTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskTemplateSubTaskResponseDescriptor = $convert.base64Decode(
    'CiFVcGRhdGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVzcG9uc2U=');

@$core.Deprecated('Use createTaskTemplateSubTaskRequestDescriptor instead')
const CreateTaskTemplateSubTaskRequest$json = {
  '1': 'CreateTaskTemplateSubTaskRequest',
  '2': [
    {'1': 'task_template_id', '3': 1, '4': 1, '5': 9, '10': 'taskTemplateId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateTaskTemplateSubTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskTemplateSubTaskRequestDescriptor = $convert.base64Decode(
    'CiBDcmVhdGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVxdWVzdBIoChB0YXNrX3RlbXBsYXRlX2lkGA'
    'EgASgJUg50YXNrVGVtcGxhdGVJZBISCgRuYW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use createTaskTemplateSubTaskResponseDescriptor instead')
const CreateTaskTemplateSubTaskResponse$json = {
  '1': 'CreateTaskTemplateSubTaskResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateTaskTemplateSubTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskTemplateSubTaskResponseDescriptor = $convert.base64Decode(
    'CiFDcmVhdGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getAllTaskTemplatesByCreatorRequestDescriptor instead')
const GetAllTaskTemplatesByCreatorRequest$json = {
  '1': 'GetAllTaskTemplatesByCreatorRequest',
  '2': [
    {'1': 'created_by', '3': 1, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'private_only', '3': 2, '4': 1, '5': 8, '9': 0, '10': 'privateOnly', '17': true},
  ],
  '8': [
    {'1': '_private_only'},
  ],
};

/// Descriptor for `GetAllTaskTemplatesByCreatorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesByCreatorRequestDescriptor = $convert.base64Decode(
    'CiNHZXRBbGxUYXNrVGVtcGxhdGVzQnlDcmVhdG9yUmVxdWVzdBIdCgpjcmVhdGVkX2J5GAEgAS'
    'gJUgljcmVhdGVkQnkSJgoMcHJpdmF0ZV9vbmx5GAIgASgISABSC3ByaXZhdGVPbmx5iAEBQg8K'
    'DV9wcml2YXRlX29ubHk=');

@$core.Deprecated('Use getAllTaskTemplatesByCreatorResponseDescriptor instead')
const GetAllTaskTemplatesByCreatorResponse$json = {
  '1': 'GetAllTaskTemplatesByCreatorResponse',
  '2': [
    {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse.TaskTemplate', '10': 'templates'},
  ],
  '3': [GetAllTaskTemplatesByCreatorResponse_TaskTemplate$json],
};

@$core.Deprecated('Use getAllTaskTemplatesByCreatorResponseDescriptor instead')
const GetAllTaskTemplatesByCreatorResponse_TaskTemplate$json = {
  '1': 'TaskTemplate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'is_public', '3': 4, '4': 1, '5': 8, '10': 'isPublic'},
    {'1': 'subtasks', '3': 7, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse.TaskTemplate.SubTask', '10': 'subtasks'},
  ],
  '3': [GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask$json],
};

@$core.Deprecated('Use getAllTaskTemplatesByCreatorResponseDescriptor instead')
const GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'task_template_id', '3': 2, '4': 1, '5': 9, '10': 'taskTemplateId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetAllTaskTemplatesByCreatorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesByCreatorResponseDescriptor = $convert.base64Decode(
    'CiRHZXRBbGxUYXNrVGVtcGxhdGVzQnlDcmVhdG9yUmVzcG9uc2USZQoJdGVtcGxhdGVzGAEgAy'
    'gLMkcuc2VydmljZXMudGFza19zdmMudjEuR2V0QWxsVGFza1RlbXBsYXRlc0J5Q3JlYXRvclJl'
    'c3BvbnNlLlRhc2tUZW1wbGF0ZVIJdGVtcGxhdGVzGrcCCgxUYXNrVGVtcGxhdGUSDgoCaWQYAS'
    'ABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2Ny'
    'aXB0aW9uEhsKCWlzX3B1YmxpYxgEIAEoCFIIaXNQdWJsaWMSawoIc3VidGFza3MYByADKAsyTy'
    '5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRBbGxUYXNrVGVtcGxhdGVzQnlDcmVhdG9yUmVzcG9u'
    'c2UuVGFza1RlbXBsYXRlLlN1YlRhc2tSCHN1YnRhc2tzGlcKB1N1YlRhc2sSDgoCaWQYASABKA'
    'lSAmlkEigKEHRhc2tfdGVtcGxhdGVfaWQYAiABKAlSDnRhc2tUZW1wbGF0ZUlkEhIKBG5hbWUY'
    'AyABKAlSBG5hbWU=');

@$core.Deprecated('Use getAllTaskTemplatesByWardRequestDescriptor instead')
const GetAllTaskTemplatesByWardRequest$json = {
  '1': 'GetAllTaskTemplatesByWardRequest',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

/// Descriptor for `GetAllTaskTemplatesByWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesByWardRequestDescriptor = $convert.base64Decode(
    'CiBHZXRBbGxUYXNrVGVtcGxhdGVzQnlXYXJkUmVxdWVzdBIXCgd3YXJkX2lkGAEgASgJUgZ3YX'
    'JkSWQ=');

@$core.Deprecated('Use getAllTaskTemplatesByWardResponseDescriptor instead')
const GetAllTaskTemplatesByWardResponse$json = {
  '1': 'GetAllTaskTemplatesByWardResponse',
  '2': [
    {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetAllTaskTemplatesByWardResponse.TaskTemplate', '10': 'templates'},
  ],
  '3': [GetAllTaskTemplatesByWardResponse_TaskTemplate$json],
};

@$core.Deprecated('Use getAllTaskTemplatesByWardResponseDescriptor instead')
const GetAllTaskTemplatesByWardResponse_TaskTemplate$json = {
  '1': 'TaskTemplate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'is_public', '3': 4, '4': 1, '5': 8, '10': 'isPublic'},
    {'1': 'created_by', '3': 6, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'subtasks', '3': 7, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetAllTaskTemplatesByWardResponse.TaskTemplate.SubTask', '10': 'subtasks'},
  ],
  '3': [GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask$json],
};

@$core.Deprecated('Use getAllTaskTemplatesByWardResponseDescriptor instead')
const GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'task_template_id', '3': 2, '4': 1, '5': 9, '10': 'taskTemplateId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetAllTaskTemplatesByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesByWardResponseDescriptor = $convert.base64Decode(
    'CiFHZXRBbGxUYXNrVGVtcGxhdGVzQnlXYXJkUmVzcG9uc2USYgoJdGVtcGxhdGVzGAEgAygLMk'
    'Quc2VydmljZXMudGFza19zdmMudjEuR2V0QWxsVGFza1RlbXBsYXRlc0J5V2FyZFJlc3BvbnNl'
    'LlRhc2tUZW1wbGF0ZVIJdGVtcGxhdGVzGtMCCgxUYXNrVGVtcGxhdGUSDgoCaWQYASABKAlSAm'
    'lkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9u'
    'EhsKCWlzX3B1YmxpYxgEIAEoCFIIaXNQdWJsaWMSHQoKY3JlYXRlZF9ieRgGIAEoCVIJY3JlYX'
    'RlZEJ5EmgKCHN1YnRhc2tzGAcgAygLMkwuc2VydmljZXMudGFza19zdmMudjEuR2V0QWxsVGFz'
    'a1RlbXBsYXRlc0J5V2FyZFJlc3BvbnNlLlRhc2tUZW1wbGF0ZS5TdWJUYXNrUghzdWJ0YXNrcx'
    'pXCgdTdWJUYXNrEg4KAmlkGAEgASgJUgJpZBIoChB0YXNrX3RlbXBsYXRlX2lkGAIgASgJUg50'
    'YXNrVGVtcGxhdGVJZBISCgRuYW1lGAMgASgJUgRuYW1l');

