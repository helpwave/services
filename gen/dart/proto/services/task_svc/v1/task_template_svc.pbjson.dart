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

@$core.Deprecated('Use getAllTaskTemplatesByUserRequestDescriptor instead')
const GetAllTaskTemplatesByUserRequest$json = {
  '1': 'GetAllTaskTemplatesByUserRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetAllTaskTemplatesByUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesByUserRequestDescriptor = $convert.base64Decode(
    'CiBHZXRBbGxUYXNrVGVtcGxhdGVzQnlVc2VyUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2'
    'VySWQ=');

@$core.Deprecated('Use getAllTaskTemplatesByUserResponseDescriptor instead')
const GetAllTaskTemplatesByUserResponse$json = {
  '1': 'GetAllTaskTemplatesByUserResponse',
  '2': [
    {'1': 'templates', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse.TaskTemplate', '10': 'templates'},
  ],
  '3': [GetAllTaskTemplatesByUserResponse_TaskTemplate$json],
};

@$core.Deprecated('Use getAllTaskTemplatesByUserResponseDescriptor instead')
const GetAllTaskTemplatesByUserResponse_TaskTemplate$json = {
  '1': 'TaskTemplate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'is_public', '3': 4, '4': 1, '5': 8, '10': 'isPublic'},
    {'1': 'user_id', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'userId', '17': true},
    {'1': 'subtasks', '3': 7, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse.TaskTemplate.SubTask', '10': 'subtasks'},
  ],
  '3': [GetAllTaskTemplatesByUserResponse_TaskTemplate_SubTask$json],
  '8': [
    {'1': '_user_id'},
  ],
};

@$core.Deprecated('Use getAllTaskTemplatesByUserResponseDescriptor instead')
const GetAllTaskTemplatesByUserResponse_TaskTemplate_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'task_template_id', '3': 2, '4': 1, '5': 9, '10': 'taskTemplateId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetAllTaskTemplatesByUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskTemplatesByUserResponseDescriptor = $convert.base64Decode(
    'CiFHZXRBbGxUYXNrVGVtcGxhdGVzQnlVc2VyUmVzcG9uc2USaAoJdGVtcGxhdGVzGAEgAygLMk'
    'oucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0QWxsVGFza1RlbXBsYXRlc0J5VXNlclJl'
    'c3BvbnNlLlRhc2tUZW1wbGF0ZVIJdGVtcGxhdGVzGuQCCgxUYXNrVGVtcGxhdGUSDgoCaWQYAS'
    'ABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2Ny'
    'aXB0aW9uEhsKCWlzX3B1YmxpYxgEIAEoCFIIaXNQdWJsaWMSHAoHdXNlcl9pZBgGIAEoCUgAUg'
    'Z1c2VySWSIAQESbgoIc3VidGFza3MYByADKAsyUi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52'
    'MS5HZXRBbGxUYXNrVGVtcGxhdGVzQnlVc2VyUmVzcG9uc2UuVGFza1RlbXBsYXRlLlN1YlRhc2'
    'tSCHN1YnRhc2tzGlcKB1N1YlRhc2sSDgoCaWQYASABKAlSAmlkEigKEHRhc2tfdGVtcGxhdGVf'
    'aWQYAiABKAlSDnRhc2tUZW1wbGF0ZUlkEhIKBG5hbWUYAyABKAlSBG5hbWVCCgoIX3VzZXJfaW'
    'Q=');

const $core.Map<$core.String, $core.dynamic> TaskTemplateServiceBase$json = {
  '1': 'TaskTemplateService',
  '2': [
    {'1': 'CreateTaskTemplate', '2': '.proto.services.task_svc.v1.CreateTaskTemplateRequest', '3': '.proto.services.task_svc.v1.CreateTaskTemplateResponse', '4': {}},
    {'1': 'GetAllTaskTemplatesByUser', '2': '.proto.services.task_svc.v1.GetAllTaskTemplatesByUserRequest', '3': '.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse', '4': {}},
  ],
};

@$core.Deprecated('Use taskTemplateServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TaskTemplateServiceBase$messageJson = {
  '.proto.services.task_svc.v1.CreateTaskTemplateRequest': CreateTaskTemplateRequest$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask': CreateTaskTemplateRequest_SubTask$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateResponse': CreateTaskTemplateResponse$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByUserRequest': GetAllTaskTemplatesByUserRequest$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse': GetAllTaskTemplatesByUserResponse$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse.TaskTemplate': GetAllTaskTemplatesByUserResponse_TaskTemplate$json,
  '.proto.services.task_svc.v1.GetAllTaskTemplatesByUserResponse.TaskTemplate.SubTask': GetAllTaskTemplatesByUserResponse_TaskTemplate_SubTask$json,
};

/// Descriptor for `TaskTemplateService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List taskTemplateServiceDescriptor = $convert.base64Decode(
    'ChNUYXNrVGVtcGxhdGVTZXJ2aWNlEoUBChJDcmVhdGVUYXNrVGVtcGxhdGUSNS5wcm90by5zZX'
    'J2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVUYXNrVGVtcGxhdGVSZXF1ZXN0GjYucHJvdG8uc2Vy'
    'dmljZXMudGFza19zdmMudjEuQ3JlYXRlVGFza1RlbXBsYXRlUmVzcG9uc2UiABKaAQoZR2V0QW'
    'xsVGFza1RlbXBsYXRlc0J5VXNlchI8LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldEFs'
    'bFRhc2tUZW1wbGF0ZXNCeVVzZXJSZXF1ZXN0Gj0ucHJvdG8uc2VydmljZXMudGFza19zdmMudj'
    'EuR2V0QWxsVGFza1RlbXBsYXRlc0J5VXNlclJlc3BvbnNlIgA=');

