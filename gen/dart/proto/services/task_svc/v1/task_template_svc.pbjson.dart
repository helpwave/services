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
    {'1': 'user_id', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'userId', '17': true},
    {'1': 'subtasks', '3': 7, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAllTaskTemplatesResponse.TaskTemplate.SubTask', '10': 'subtasks'},
  ],
  '3': [GetAllTaskTemplatesResponse_TaskTemplate_SubTask$json],
  '8': [
    {'1': '_user_id'},
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
    'ZW1wbGF0ZVIJdGVtcGxhdGVzGt4CCgxUYXNrVGVtcGxhdGUSDgoCaWQYASABKAlSAmlkEhIKBG'
    '5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhsKCWlz'
    'X3B1YmxpYxgEIAEoCFIIaXNQdWJsaWMSHAoHdXNlcl9pZBgGIAEoCUgAUgZ1c2VySWSIAQESaA'
    'oIc3VidGFza3MYByADKAsyTC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRBbGxUYXNr'
    'VGVtcGxhdGVzUmVzcG9uc2UuVGFza1RlbXBsYXRlLlN1YlRhc2tSCHN1YnRhc2tzGlcKB1N1Yl'
    'Rhc2sSDgoCaWQYASABKAlSAmlkEigKEHRhc2tfdGVtcGxhdGVfaWQYAiABKAlSDnRhc2tUZW1w'
    'bGF0ZUlkEhIKBG5hbWUYAyABKAlSBG5hbWVCCgoIX3VzZXJfaWQ=');

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

const $core.Map<$core.String, $core.dynamic> TaskTemplateServiceBase$json = {
  '1': 'TaskTemplateService',
  '2': [
    {'1': 'CreateTaskTemplate', '2': '.proto.services.task_svc.v1.CreateTaskTemplateRequest', '3': '.proto.services.task_svc.v1.CreateTaskTemplateResponse', '4': {}},
    {'1': 'GetAllTaskTemplates', '2': '.proto.services.task_svc.v1.GetAllTaskTemplatesRequest', '3': '.proto.services.task_svc.v1.GetAllTaskTemplatesResponse', '4': {}},
    {'1': 'DeleteTaskTemplate', '2': '.proto.services.task_svc.v1.DeleteTaskTemplateRequest', '3': '.proto.services.task_svc.v1.DeleteTaskTemplateResponse', '4': {}},
    {'1': 'DeleteTaskTemplateSubTask', '2': '.proto.services.task_svc.v1.DeleteTaskTemplateSubTaskRequest', '3': '.proto.services.task_svc.v1.DeleteTaskTemplateSubTaskResponse', '4': {}},
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
    'ZWxldGVUYXNrVGVtcGxhdGVTdWJUYXNrUmVzcG9uc2UiAA==');

