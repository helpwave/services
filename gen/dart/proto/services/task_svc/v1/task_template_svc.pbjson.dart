///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_template_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createTaskTemplateRequestDescriptor instead')
const CreateTaskTemplateRequest$json = const {
  '1': 'CreateTaskTemplateRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'public', '3': 3, '4': 1, '5': 8, '10': 'public'},
    const {'1': 'user_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'userId', '17': true},
    const {'1': 'ward_id', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'wardId', '17': true},
    const {'1': 'subtasks', '3': 6, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask', '10': 'subtasks'},
  ],
  '3': const [CreateTaskTemplateRequest_SubTask$json],
  '8': const [
    const {'1': '_user_id'},
    const {'1': '_ward_id'},
  ],
};

@$core.Deprecated('Use createTaskTemplateRequestDescriptor instead')
const CreateTaskTemplateRequest_SubTask$json = const {
  '1': 'SubTask',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateTaskTemplateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskTemplateRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVUYXNrVGVtcGxhdGVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhYKBnB1YmxpYxgDIAEoCFIGcHVibGljEhwKB3VzZXJfaWQYBCABKAlIAFIGdXNlcklkiAEBEhwKB3dhcmRfaWQYBSABKAlIAVIGd2FyZElkiAEBElkKCHN1YnRhc2tzGAYgAygLMj0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3JlYXRlVGFza1RlbXBsYXRlUmVxdWVzdC5TdWJUYXNrUghzdWJ0YXNrcxodCgdTdWJUYXNrEhIKBG5hbWUYASABKAlSBG5hbWVCCgoIX3VzZXJfaWRCCgoIX3dhcmRfaWQ=');
@$core.Deprecated('Use createTaskTemplateResponseDescriptor instead')
const CreateTaskTemplateResponse$json = const {
  '1': 'CreateTaskTemplateResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateTaskTemplateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskTemplateResponseDescriptor = $convert.base64Decode('ChpDcmVhdGVUYXNrVGVtcGxhdGVSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');
const $core.Map<$core.String, $core.dynamic> TaskTemplateServiceBase$json = const {
  '1': 'TaskTemplateService',
  '2': const [
    const {'1': 'CreateTaskTemplate', '2': '.proto.services.task_svc.v1.CreateTaskTemplateRequest', '3': '.proto.services.task_svc.v1.CreateTaskTemplateResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use taskTemplateServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TaskTemplateServiceBase$messageJson = const {
  '.proto.services.task_svc.v1.CreateTaskTemplateRequest': CreateTaskTemplateRequest$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateRequest.SubTask': CreateTaskTemplateRequest_SubTask$json,
  '.proto.services.task_svc.v1.CreateTaskTemplateResponse': CreateTaskTemplateResponse$json,
};

/// Descriptor for `TaskTemplateService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List taskTemplateServiceDescriptor = $convert.base64Decode('ChNUYXNrVGVtcGxhdGVTZXJ2aWNlEoUBChJDcmVhdGVUYXNrVGVtcGxhdGUSNS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVUYXNrVGVtcGxhdGVSZXF1ZXN0GjYucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3JlYXRlVGFza1RlbXBsYXRlUmVzcG9uc2UiAA==');
