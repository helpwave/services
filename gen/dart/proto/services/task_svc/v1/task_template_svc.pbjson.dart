//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_template_svc.proto
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
    {'1': 'subtasks', '3': 5, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask', '10': 'subtasks'},
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
    'SWSIAQESWQoIc3VidGFza3MYBSADKAsyPS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5Dcm'
    'VhdGVUYXNrVGVtcGxhdGVSZXF1ZXN0LlN1YlRhc2tSCHN1YnRhc2tzGh0KB1N1YlRhc2sSEgoE'
    'bmFtZRgBIAEoCVIEbmFtZUIOCgxfZGVzY3JpcHRpb25CCgoIX3dhcmRfaWQ=');

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
    {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAllTaskTemplatesResponse.TaskTemplate', '10': 'templates'},
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
    {'1': 'created_by', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'createdBy', '17': true},
    {'1': 'subtasks', '3': 7, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAllTaskTemplatesResponse.TaskTemplate.SubTask', '10': 'subtasks'},
  ],
  '3': [GetAllTaskTemplatesResponse_TaskTemplate_SubTask$json],
  '8': [
    {'1': '_created_by'},
  ],
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
    'ChtHZXRBbGxUYXNrVGVtcGxhdGVzUmVzcG9uc2USYgoJdGVtcGxhdGVzGAEgAygLMkQucHJvdG'
    '8uc2VydmljZXMudGFza19zdmMudjEuR2V0QWxsVGFza1RlbXBsYXRlc1Jlc3BvbnNlLlRhc2tU'
    'ZW1wbGF0ZVIJdGVtcGxhdGVzGucCCgxUYXNrVGVtcGxhdGUSDgoCaWQYASABKAlSAmlkEhIKBG'
    '5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhsKCWlz'
    'X3B1YmxpYxgEIAEoCFIIaXNQdWJsaWMSIgoKY3JlYXRlZF9ieRgGIAEoCUgAUgljcmVhdGVkQn'
    'mIAQESaAoIc3VidGFza3MYByADKAsyTC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRB'
    'bGxUYXNrVGVtcGxhdGVzUmVzcG9uc2UuVGFza1RlbXBsYXRlLlN1YlRhc2tSCHN1YnRhc2tzGl'
    'cKB1N1YlRhc2sSDgoCaWQYASABKAlSAmlkEigKEHRhc2tfdGVtcGxhdGVfaWQYAiABKAlSDnRh'
    'c2tUZW1wbGF0ZUlkEhIKBG5hbWUYAyABKAlSBG5hbWVCDQoLX2NyZWF0ZWRfYnk=');

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
  ],
};

/// Descriptor for `GetAllTaskTemplatesByCreatorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesByCreatorRequestDescriptor = $convert.base64Decode(
    'CiNHZXRBbGxUYXNrVGVtcGxhdGVzQnlDcmVhdG9yUmVxdWVzdBIdCgpjcmVhdGVkX2J5GAEgAS'
    'gJUgljcmVhdGVkQnk=');

@$core.Deprecated('Use getAllTaskTemplatesByCreatorResponseDescriptor instead')
const GetAllTaskTemplatesByCreatorResponse$json = {
  '1': 'GetAllTaskTemplatesByCreatorResponse',
  '2': [
    {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse.TaskTemplate', '10': 'templates'},
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
    {'1': 'subtasks', '3': 7, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse.TaskTemplate.SubTask', '10': 'subtasks'},
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
    'CiRHZXRBbGxUYXNrVGVtcGxhdGVzQnlDcmVhdG9yUmVzcG9uc2USawoJdGVtcGxhdGVzGAEgAy'
    'gLMk0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0QWxsVGFza1RlbXBsYXRlc0J5Q3Jl'
    'YXRvclJlc3BvbnNlLlRhc2tUZW1wbGF0ZVIJdGVtcGxhdGVzGr0CCgxUYXNrVGVtcGxhdGUSDg'
    'oCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlS'
    'C2Rlc2NyaXB0aW9uEhsKCWlzX3B1YmxpYxgEIAEoCFIIaXNQdWJsaWMScQoIc3VidGFza3MYBy'
    'ADKAsyVS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRBbGxUYXNrVGVtcGxhdGVzQnlD'
    'cmVhdG9yUmVzcG9uc2UuVGFza1RlbXBsYXRlLlN1YlRhc2tSCHN1YnRhc2tzGlcKB1N1YlRhc2'
    'sSDgoCaWQYASABKAlSAmlkEigKEHRhc2tfdGVtcGxhdGVfaWQYAiABKAlSDnRhc2tUZW1wbGF0'
    'ZUlkEhIKBG5hbWUYAyABKAlSBG5hbWU=');

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
    {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse.TaskTemplate', '10': 'templates'},
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
    {'1': 'created_by', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'createdBy', '17': true},
    {'1': 'subtasks', '3': 7, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse.TaskTemplate.SubTask', '10': 'subtasks'},
  ],
  '3': [GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask$json],
  '8': [
    {'1': '_created_by'},
  ],
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
    'CiFHZXRBbGxUYXNrVGVtcGxhdGVzQnlXYXJkUmVzcG9uc2USaAoJdGVtcGxhdGVzGAEgAygLMk'
    'oucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0QWxsVGFza1RlbXBsYXRlc0J5V2FyZFJl'
    'c3BvbnNlLlRhc2tUZW1wbGF0ZVIJdGVtcGxhdGVzGu0CCgxUYXNrVGVtcGxhdGUSDgoCaWQYAS'
    'ABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2Ny'
    'aXB0aW9uEhsKCWlzX3B1YmxpYxgEIAEoCFIIaXNQdWJsaWMSIgoKY3JlYXRlZF9ieRgGIAEoCU'
    'gAUgljcmVhdGVkQnmIAQESbgoIc3VidGFza3MYByADKAsyUi5wcm90by5zZXJ2aWNlcy50YXNr'
    'X3N2Yy52MS5HZXRBbGxUYXNrVGVtcGxhdGVzQnlXYXJkUmVzcG9uc2UuVGFza1RlbXBsYXRlLl'
    'N1YlRhc2tSCHN1YnRhc2tzGlcKB1N1YlRhc2sSDgoCaWQYASABKAlSAmlkEigKEHRhc2tfdGVt'
    'cGxhdGVfaWQYAiABKAlSDnRhc2tUZW1wbGF0ZUlkEhIKBG5hbWUYAyABKAlSBG5hbWVCDQoLX2'
    'NyZWF0ZWRfYnk=');

const $core.Map<$core.String, $core.dynamic> TaskTemplateServiceBase$json = {
  '1': 'TaskTemplateService',
  '2': [
    {'1': 'CreateTaskTemplate', '2': '.proto.services.task_svc.v1.CreateTaskTemplateRequest', '3': '.proto.services.task_svc.v1.CreateTaskTemplateResponse', '4': {}},
    {'1': 'GetAllTaskTemplates', '2': '.proto.services.task_svc.v1.GetAllTaskTemplatesRequest', '3': '.proto.services.task_svc.v1.GetAllTaskTemplatesResponse', '4': {}},
    {'1': 'DeleteTaskTemplate', '2': '.proto.services.task_svc.v1.DeleteTaskTemplateRequest', '3': '.proto.services.task_svc.v1.DeleteTaskTemplateResponse', '4': {}},
    {'1': 'DeleteTaskTemplateSubTask', '2': '.proto.services.task_svc.v1.DeleteTaskTemplateSubTaskRequest', '3': '.proto.services.task_svc.v1.DeleteTaskTemplateSubTaskResponse', '4': {}},
    {'1': 'UpdateTaskTemplate', '2': '.proto.services.task_svc.v1.UpdateTaskTemplateRequest', '3': '.proto.services.task_svc.v1.UpdateTaskTemplateResponse', '4': {}},
    {'1': 'UpdateTaskTemplateSubTask', '2': '.proto.services.task_svc.v1.UpdateTaskTemplateSubTaskRequest', '3': '.proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse', '4': {}},
    {'1': 'CreateTaskTemplateSubTask', '2': '.proto.services.task_svc.v1.CreateTaskTemplateSubTaskRequest', '3': '.proto.services.task_svc.v1.CreateTaskTemplateSubTaskResponse', '4': {}},
    {'1': 'GetAllTaskTemplatesByCreator', '2': '.proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorRequest', '3': '.proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse', '4': {}},
    {'1': 'GetAllTaskTemplatesByWard', '2': '.proto.services.task_svc.v1.GetAllTaskTemplatesByWardRequest', '3': '.proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse', '4': {}},
  ],
};

@$core.Deprecated('Use taskTemplateServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TaskTemplateServiceBase$messageJson = {
  '.proto.services.task_svc.v1.CreateTaskTemplateRequest': CreateTaskTemplateRequest$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask': CreateTaskTemplateRequest_SubTask$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateResponse': CreateTaskTemplateResponse$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesRequest': GetAllTaskTemplatesRequest$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesResponse': GetAllTaskTemplatesResponse$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesResponse.TaskTemplate': GetAllTaskTemplatesResponse_TaskTemplate$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesResponse.TaskTemplate.SubTask': GetAllTaskTemplatesResponse_TaskTemplate_SubTask$json,
  '.proto.services.task_svc.v1.DeleteTaskTemplateRequest': DeleteTaskTemplateRequest$json,
  '.proto.services.task_svc.v1.DeleteTaskTemplateResponse': DeleteTaskTemplateResponse$json,
  '.proto.services.task_svc.v1.DeleteTaskTemplateSubTaskRequest': DeleteTaskTemplateSubTaskRequest$json,
  '.proto.services.task_svc.v1.DeleteTaskTemplateSubTaskResponse': DeleteTaskTemplateSubTaskResponse$json,
  '.proto.services.task_svc.v1.UpdateTaskTemplateRequest': UpdateTaskTemplateRequest$json,
  '.proto.services.task_svc.v1.UpdateTaskTemplateResponse': UpdateTaskTemplateResponse$json,
  '.proto.services.task_svc.v1.UpdateTaskTemplateSubTaskRequest': UpdateTaskTemplateSubTaskRequest$json,
  '.proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse': UpdateTaskTemplateSubTaskResponse$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateSubTaskRequest': CreateTaskTemplateSubTaskRequest$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateSubTaskResponse': CreateTaskTemplateSubTaskResponse$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorRequest': GetAllTaskTemplatesByCreatorRequest$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse': GetAllTaskTemplatesByCreatorResponse$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse.TaskTemplate': GetAllTaskTemplatesByCreatorResponse_TaskTemplate$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByCreatorResponse.TaskTemplate.SubTask': GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByWardRequest': GetAllTaskTemplatesByWardRequest$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse': GetAllTaskTemplatesByWardResponse$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse.TaskTemplate': GetAllTaskTemplatesByWardResponse_TaskTemplate$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByWardResponse.TaskTemplate.SubTask': GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask$json,
};

/// Descriptor for `TaskTemplateService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List taskTemplateServiceDescriptor = $convert.base64Decode(
    'ChNUYXNrVGVtcGxhdGVTZXJ2aWNlEoUBChJDcmVhdGVUYXNrVGVtcGxhdGUSNS5wcm90by5zZX'
    'J2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVUYXNrVGVtcGxhdGVSZXF1ZXN0GjYucHJvdG8uc2Vy'
    'dmljZXMudGFza19zdmMudjEuQ3JlYXRlVGFza1RlbXBsYXRlUmVzcG9uc2UiABKIAQoTR2V0QW'
    'xsVGFza1RlbXBsYXRlcxI2LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldEFsbFRhc2tU'
    'ZW1wbGF0ZXNSZXF1ZXN0GjcucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0QWxsVGFza1'
    'RlbXBsYXRlc1Jlc3BvbnNlIgAShQEKEkRlbGV0ZVRhc2tUZW1wbGF0ZRI1LnByb3RvLnNlcnZp'
    'Y2VzLnRhc2tfc3ZjLnYxLkRlbGV0ZVRhc2tUZW1wbGF0ZVJlcXVlc3QaNi5wcm90by5zZXJ2aW'
    'Nlcy50YXNrX3N2Yy52MS5EZWxldGVUYXNrVGVtcGxhdGVSZXNwb25zZSIAEpoBChlEZWxldGVU'
    'YXNrVGVtcGxhdGVTdWJUYXNrEjwucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuRGVsZXRlVG'
    'Fza1RlbXBsYXRlU3ViVGFza1JlcXVlc3QaPS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5E'
    'ZWxldGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVzcG9uc2UiABKFAQoSVXBkYXRlVGFza1RlbXBsYX'
    'RlEjUucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlVGFza1RlbXBsYXRlUmVxdWVz'
    'dBo2LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVwZGF0ZVRhc2tUZW1wbGF0ZVJlc3Bvbn'
    'NlIgASmgEKGVVwZGF0ZVRhc2tUZW1wbGF0ZVN1YlRhc2sSPC5wcm90by5zZXJ2aWNlcy50YXNr'
    'X3N2Yy52MS5VcGRhdGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVxdWVzdBo9LnByb3RvLnNlcnZpY2'
    'VzLnRhc2tfc3ZjLnYxLlVwZGF0ZVRhc2tUZW1wbGF0ZVN1YlRhc2tSZXNwb25zZSIAEpoBChlD'
    'cmVhdGVUYXNrVGVtcGxhdGVTdWJUYXNrEjwucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3'
    'JlYXRlVGFza1RlbXBsYXRlU3ViVGFza1JlcXVlc3QaPS5wcm90by5zZXJ2aWNlcy50YXNrX3N2'
    'Yy52MS5DcmVhdGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVzcG9uc2UiABKjAQocR2V0QWxsVGFza1'
    'RlbXBsYXRlc0J5Q3JlYXRvchI/LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldEFsbFRh'
    'c2tUZW1wbGF0ZXNCeUNyZWF0b3JSZXF1ZXN0GkAucHJvdG8uc2VydmljZXMudGFza19zdmMudj'
    'EuR2V0QWxsVGFza1RlbXBsYXRlc0J5Q3JlYXRvclJlc3BvbnNlIgASmgEKGUdldEFsbFRhc2tU'
    'ZW1wbGF0ZXNCeVdhcmQSPC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRBbGxUYXNrVG'
    'VtcGxhdGVzQnlXYXJkUmVxdWVzdBo9LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldEFs'
    'bFRhc2tUZW1wbGF0ZXNCeVdhcmRSZXNwb25zZSIA');

