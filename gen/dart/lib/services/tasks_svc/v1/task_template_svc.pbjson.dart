//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/task_template_svc.proto
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
    {'1': 'subtasks', '3': 5, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.CreateTaskTemplateRequest.SubTask', '10': 'subtasks'},
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
    'SWSIAQESVAoIc3VidGFza3MYBSADKAsyOC5zZXJ2aWNlcy50YXNrc19zdmMudjEuQ3JlYXRlVG'
    'Fza1RlbXBsYXRlUmVxdWVzdC5TdWJUYXNrUghzdWJ0YXNrcxodCgdTdWJUYXNrEhIKBG5hbWUY'
    'ASABKAlSBG5hbWVCDgoMX2Rlc2NyaXB0aW9uQgoKCF93YXJkX2lk');

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

@$core.Deprecated('Use getAllTaskTemplatesRequestDescriptor instead')
const GetAllTaskTemplatesRequest$json = {
  '1': 'GetAllTaskTemplatesRequest',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'wardId', '17': true},
    {'1': 'created_by', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'createdBy', '17': true},
    {'1': 'private_only', '3': 3, '4': 1, '5': 8, '10': 'privateOnly'},
  ],
  '8': [
    {'1': '_ward_id'},
    {'1': '_created_by'},
  ],
};

/// Descriptor for `GetAllTaskTemplatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesRequestDescriptor = $convert.base64Decode(
    'ChpHZXRBbGxUYXNrVGVtcGxhdGVzUmVxdWVzdBIcCgd3YXJkX2lkGAEgASgJSABSBndhcmRJZI'
    'gBARIiCgpjcmVhdGVkX2J5GAIgASgJSAFSCWNyZWF0ZWRCeYgBARIhCgxwcml2YXRlX29ubHkY'
    'AyABKAhSC3ByaXZhdGVPbmx5QgoKCF93YXJkX2lkQg0KC19jcmVhdGVkX2J5');

@$core.Deprecated('Use getAllTaskTemplatesResponseDescriptor instead')
const GetAllTaskTemplatesResponse$json = {
  '1': 'GetAllTaskTemplatesResponse',
  '2': [
    {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetAllTaskTemplatesResponse.TaskTemplate', '10': 'templates'},
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
    {'1': 'subtasks', '3': 7, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetAllTaskTemplatesResponse.TaskTemplate.SubTask', '10': 'subtasks'},
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
    'ChtHZXRBbGxUYXNrVGVtcGxhdGVzUmVzcG9uc2USXQoJdGVtcGxhdGVzGAEgAygLMj8uc2Vydm'
    'ljZXMudGFza3Nfc3ZjLnYxLkdldEFsbFRhc2tUZW1wbGF0ZXNSZXNwb25zZS5UYXNrVGVtcGxh'
    'dGVSCXRlbXBsYXRlcxrOAgoMVGFza1RlbXBsYXRlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGA'
    'IgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIbCglpc19wdWJs'
    'aWMYBCABKAhSCGlzUHVibGljEh0KCmNyZWF0ZWRfYnkYBiABKAlSCWNyZWF0ZWRCeRJjCghzdW'
    'J0YXNrcxgHIAMoCzJHLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5HZXRBbGxUYXNrVGVtcGxhdGVz'
    'UmVzcG9uc2UuVGFza1RlbXBsYXRlLlN1YlRhc2tSCHN1YnRhc2tzGlcKB1N1YlRhc2sSDgoCaW'
    'QYASABKAlSAmlkEigKEHRhc2tfdGVtcGxhdGVfaWQYAiABKAlSDnRhc2tUZW1wbGF0ZUlkEhIK'
    'BG5hbWUYAyABKAlSBG5hbWU=');

