//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_template_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
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
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'public', '3': 3, '4': 1, '5': 8, '10': 'public'},
    {'1': 'ward_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'wardId', '17': true},
    {'1': 'subtasks', '3': 5, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask', '10': 'subtasks'},
  ],
  '3': [CreateTaskTemplateRequest_SubTask$json],
  '8': [
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
    'ChlDcmVhdGVUYXNrVGVtcGxhdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3'
    'JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhYKBnB1YmxpYxgDIAEoCFIGcHVibGljEhwKB3dh'
    'cmRfaWQYBCABKAlIAFIGd2FyZElkiAEBElkKCHN1YnRhc2tzGAUgAygLMj0ucHJvdG8uc2Vydm'
    'ljZXMudGFza19zdmMudjEuQ3JlYXRlVGFza1RlbXBsYXRlUmVxdWVzdC5TdWJUYXNrUghzdWJ0'
    'YXNrcxodCgdTdWJUYXNrEhIKBG5hbWUYASABKAlSBG5hbWVCCgoIX3dhcmRfaWQ=');

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

const $core.Map<$core.String, $core.dynamic> TaskTemplateServiceBase$json = {
  '1': 'TaskTemplateService',
  '2': [
    {'1': 'CreateTaskTemplate', '2': '.proto.services.task_svc.v1.CreateTaskTemplateRequest', '3': '.proto.services.task_svc.v1.CreateTaskTemplateResponse', '4': {}},
    {'1': 'UpdateTaskTemplate', '2': '.proto.services.task_svc.v1.UpdateTaskTemplateRequest', '3': '.proto.services.task_svc.v1.UpdateTaskTemplateResponse', '4': {}},
    {'1': 'UpdateTaskTemplateSubTask', '2': '.proto.services.task_svc.v1.UpdateTaskTemplateSubTaskRequest', '3': '.proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse', '4': {}},
  ],
};

@$core.Deprecated('Use taskTemplateServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TaskTemplateServiceBase$messageJson = {
  '.proto.services.task_svc.v1.CreateTaskTemplateRequest': CreateTaskTemplateRequest$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask': CreateTaskTemplateRequest_SubTask$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateResponse': CreateTaskTemplateResponse$json,
  '.proto.services.task_svc.v1.UpdateTaskTemplateRequest': UpdateTaskTemplateRequest$json,
  '.proto.services.task_svc.v1.UpdateTaskTemplateResponse': UpdateTaskTemplateResponse$json,
  '.proto.services.task_svc.v1.UpdateTaskTemplateSubTaskRequest': UpdateTaskTemplateSubTaskRequest$json,
  '.proto.services.task_svc.v1.UpdateTaskTemplateSubTaskResponse': UpdateTaskTemplateSubTaskResponse$json,
};

/// Descriptor for `TaskTemplateService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List taskTemplateServiceDescriptor = $convert.base64Decode(
    'ChNUYXNrVGVtcGxhdGVTZXJ2aWNlEoUBChJDcmVhdGVUYXNrVGVtcGxhdGUSNS5wcm90by5zZX'
    'J2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVUYXNrVGVtcGxhdGVSZXF1ZXN0GjYucHJvdG8uc2Vy'
    'dmljZXMudGFza19zdmMudjEuQ3JlYXRlVGFza1RlbXBsYXRlUmVzcG9uc2UiABKFAQoSVXBkYX'
    'RlVGFza1RlbXBsYXRlEjUucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlVGFza1Rl'
    'bXBsYXRlUmVxdWVzdBo2LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVwZGF0ZVRhc2tUZW'
    '1wbGF0ZVJlc3BvbnNlIgASmgEKGVVwZGF0ZVRhc2tUZW1wbGF0ZVN1YlRhc2sSPC5wcm90by5z'
    'ZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVxdWVzdBo9Ln'
    'Byb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVwZGF0ZVRhc2tUZW1wbGF0ZVN1YlRhc2tSZXNw'
    'b25zZSIA');

