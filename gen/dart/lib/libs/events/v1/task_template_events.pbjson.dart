//
//  Generated code. Do not modify.
//  source: libs/events/v1/task_template_events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use taskTemplateCreatedEventDescriptor instead')
const TaskTemplateCreatedEvent$json = {
  '1': 'TaskTemplateCreatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'subtasks', '3': 4, '4': 3, '5': 11, '6': '.libs.events.v1.TaskTemplateCreatedEvent.SubTask', '10': 'subtasks'},
  ],
  '3': [TaskTemplateCreatedEvent_SubTask$json],
  '7': {},
};

@$core.Deprecated('Use taskTemplateCreatedEventDescriptor instead')
const TaskTemplateCreatedEvent_SubTask$json = {
  '1': 'SubTask',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TaskTemplateCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskTemplateCreatedEventDescriptor = $convert.base64Decode(
    'ChhUYXNrVGVtcGxhdGVDcmVhdGVkRXZlbnQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEkwKCHN1YnRhc2tzGAQg'
    'AygLMjAubGlicy5ldmVudHMudjEuVGFza1RlbXBsYXRlQ3JlYXRlZEV2ZW50LlN1YlRhc2tSCH'
    'N1YnRhc2tzGh0KB1N1YlRhc2sSEgoEbmFtZRgBIAEoCVIEbmFtZTod2oQBGVRBU0tfVEVNUExB'
    'VEVEX0NSRUFURURfdjE=');

@$core.Deprecated('Use taskTemplateUpdatedEventDescriptor instead')
const TaskTemplateUpdatedEvent$json = {
  '1': 'TaskTemplateUpdatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
  '7': {},
};

/// Descriptor for `TaskTemplateUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskTemplateUpdatedEventDescriptor = $convert.base64Decode(
    'ChhUYXNrVGVtcGxhdGVVcGRhdGVkRXZlbnQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uOhzahAEYVEFTS19URU1Q'
    'TEFURV9VUERBVEVEX3Yx');

@$core.Deprecated('Use taskTemplateDeletedEventDescriptor instead')
const TaskTemplateDeletedEvent$json = {
  '1': 'TaskTemplateDeletedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
  '7': {},
};

/// Descriptor for `TaskTemplateDeletedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskTemplateDeletedEventDescriptor = $convert.base64Decode(
    'ChhUYXNrVGVtcGxhdGVEZWxldGVkRXZlbnQSDgoCaWQYASABKAlSAmlkOhzahAEYVEFTS19URU'
    '1QTEFURV9ERUxFVEVEX3Yx');

@$core.Deprecated('Use taskTemplateSubTaskCreatedEventDescriptor instead')
const TaskTemplateSubTaskCreatedEvent$json = {
  '1': 'TaskTemplateSubTaskCreatedEvent',
  '2': [
    {'1': 'task_template_id', '3': 1, '4': 1, '5': 9, '10': 'taskTemplateId'},
    {'1': 'sub_task_id', '3': 2, '4': 1, '5': 9, '10': 'subTaskId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': {},
};

/// Descriptor for `TaskTemplateSubTaskCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskTemplateSubTaskCreatedEventDescriptor = $convert.base64Decode(
    'Ch9UYXNrVGVtcGxhdGVTdWJUYXNrQ3JlYXRlZEV2ZW50EigKEHRhc2tfdGVtcGxhdGVfaWQYAS'
    'ABKAlSDnRhc2tUZW1wbGF0ZUlkEh4KC3N1Yl90YXNrX2lkGAIgASgJUglzdWJUYXNrSWQSEgoE'
    'bmFtZRgDIAEoCVIEbmFtZTol2oQBIVRBU0tfVEVNUExBVEVfU1VCX1RBU0tfQ1JFQVRFRF92MQ'
    '==');

@$core.Deprecated('Use taskTemplateSubTaskUpdatedEventDescriptor instead')
const TaskTemplateSubTaskUpdatedEvent$json = {
  '1': 'TaskTemplateSubTaskUpdatedEvent',
  '2': [
    {'1': 'task_template_id', '3': 1, '4': 1, '5': 9, '10': 'taskTemplateId'},
    {'1': 'sub_task_id', '3': 2, '4': 1, '5': 9, '10': 'subTaskId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': {},
};

/// Descriptor for `TaskTemplateSubTaskUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskTemplateSubTaskUpdatedEventDescriptor = $convert.base64Decode(
    'Ch9UYXNrVGVtcGxhdGVTdWJUYXNrVXBkYXRlZEV2ZW50EigKEHRhc2tfdGVtcGxhdGVfaWQYAS'
    'ABKAlSDnRhc2tUZW1wbGF0ZUlkEh4KC3N1Yl90YXNrX2lkGAIgASgJUglzdWJUYXNrSWQSEgoE'
    'bmFtZRgDIAEoCVIEbmFtZTol2oQBIVRBU0tfVEVNUExBVEVfU1VCX1RBU0tfVVBEQVRFRF92MQ'
    '==');

@$core.Deprecated('Use taskTemplateSubTaskDeletedEventDescriptor instead')
const TaskTemplateSubTaskDeletedEvent$json = {
  '1': 'TaskTemplateSubTaskDeletedEvent',
  '2': [
    {'1': 'task_template_id', '3': 1, '4': 1, '5': 9, '10': 'taskTemplateId'},
    {'1': 'sub_task_id', '3': 2, '4': 1, '5': 9, '10': 'subTaskId'},
  ],
  '7': {},
};

/// Descriptor for `TaskTemplateSubTaskDeletedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskTemplateSubTaskDeletedEventDescriptor = $convert.base64Decode(
    'Ch9UYXNrVGVtcGxhdGVTdWJUYXNrRGVsZXRlZEV2ZW50EigKEHRhc2tfdGVtcGxhdGVfaWQYAS'
    'ABKAlSDnRhc2tUZW1wbGF0ZUlkEh4KC3N1Yl90YXNrX2lkGAIgASgJUglzdWJUYXNrSWQ6JdqE'
    'ASFUQVNLX1RFTVBMQVRFX1NVQl9UQVNLX0RFTEVURURfdjE=');

