//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_value_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use attachPropertyValueRequestDescriptor instead')
const AttachPropertyValueRequest$json = {
  '1': 'AttachPropertyValueRequest',
  '2': [
    {'1': 'subject_id', '3': 1, '4': 1, '5': 9, '10': 'subjectId'},
    {'1': 'property_id', '3': 2, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'text_value', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'textValue'},
    {'1': 'number_value', '3': 4, '4': 1, '5': 1, '9': 0, '10': 'numberValue'},
    {'1': 'bool_value', '3': 5, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'date_value', '3': 6, '4': 1, '5': 11, '6': '.services.property_svc.v1.Date', '9': 0, '10': 'dateValue'},
    {'1': 'date_time_value', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'dateTimeValue'},
    {'1': 'select_value', '3': 8, '4': 1, '5': 9, '9': 0, '10': 'selectValue'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AttachPropertyValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachPropertyValueRequestDescriptor = $convert.base64Decode(
    'ChpBdHRhY2hQcm9wZXJ0eVZhbHVlUmVxdWVzdBIdCgpzdWJqZWN0X2lkGAEgASgJUglzdWJqZW'
    'N0SWQSHwoLcHJvcGVydHlfaWQYAiABKAlSCnByb3BlcnR5SWQSHwoKdGV4dF92YWx1ZRgDIAEo'
    'CUgAUgl0ZXh0VmFsdWUSIwoMbnVtYmVyX3ZhbHVlGAQgASgBSABSC251bWJlclZhbHVlEh8KCm'
    'Jvb2xfdmFsdWUYBSABKAhIAFIJYm9vbFZhbHVlEj8KCmRhdGVfdmFsdWUYBiABKAsyHi5zZXJ2'
    'aWNlcy5wcm9wZXJ0eV9zdmMudjEuRGF0ZUgAUglkYXRlVmFsdWUSRAoPZGF0ZV90aW1lX3ZhbH'
    'VlGAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgAUg1kYXRlVGltZVZhbHVlEiMK'
    'DHNlbGVjdF92YWx1ZRgIIAEoCUgAUgtzZWxlY3RWYWx1ZUIHCgV2YWx1ZQ==');

@$core.Deprecated('Use attachPropertyValueResponseDescriptor instead')
const AttachPropertyValueResponse$json = {
  '1': 'AttachPropertyValueResponse',
  '2': [
    {'1': 'property_value_id', '3': 1, '4': 1, '5': 9, '10': 'propertyValueId'},
  ],
};

/// Descriptor for `AttachPropertyValueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachPropertyValueResponseDescriptor = $convert.base64Decode(
    'ChtBdHRhY2hQcm9wZXJ0eVZhbHVlUmVzcG9uc2USKgoRcHJvcGVydHlfdmFsdWVfaWQYASABKA'
    'lSD3Byb3BlcnR5VmFsdWVJZA==');

@$core.Deprecated('Use taskPropertyMatcherDescriptor instead')
const TaskPropertyMatcher$json = {
  '1': 'TaskPropertyMatcher',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'wardId', '17': true},
    {'1': 'task_id', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'taskId', '17': true},
  ],
  '8': [
    {'1': '_ward_id'},
    {'1': '_task_id'},
  ],
};

/// Descriptor for `TaskPropertyMatcher`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskPropertyMatcherDescriptor = $convert.base64Decode(
    'ChNUYXNrUHJvcGVydHlNYXRjaGVyEhwKB3dhcmRfaWQYASABKAlIAFIGd2FyZElkiAEBEhwKB3'
    'Rhc2tfaWQYAiABKAlIAVIGdGFza0lkiAEBQgoKCF93YXJkX2lkQgoKCF90YXNrX2lk');

@$core.Deprecated('Use getAttachedPropertyValuesRequestDescriptor instead')
const GetAttachedPropertyValuesRequest$json = {
  '1': 'GetAttachedPropertyValuesRequest',
  '2': [
    {'1': 'task_matcher', '3': 1, '4': 1, '5': 11, '6': '.services.property_svc.v1.TaskPropertyMatcher', '9': 0, '10': 'taskMatcher'},
  ],
  '8': [
    {'1': 'matcher'},
  ],
};

/// Descriptor for `GetAttachedPropertyValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachedPropertyValuesRequestDescriptor = $convert.base64Decode(
    'CiBHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVxdWVzdBJSCgx0YXNrX21hdGNoZXIYASABKA'
    'syLS5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuVGFza1Byb3BlcnR5TWF0Y2hlckgAUgt0YXNr'
    'TWF0Y2hlckIJCgdtYXRjaGVy');

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse$json = {
  '1': 'GetAttachedPropertyValuesResponse',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.services.property_svc.v1.GetAttachedPropertyValuesResponse.Value', '10': 'values'},
  ],
  '3': [GetAttachedPropertyValuesResponse_Value$json],
};

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse_Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'property_id', '3': 1, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'field_type', '3': 2, '4': 1, '5': 14, '6': '.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 5, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'text_value', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'textValue'},
    {'1': 'number_value', '3': 7, '4': 1, '5': 1, '9': 0, '10': 'numberValue'},
    {'1': 'bool_value', '3': 8, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'date_value', '3': 9, '4': 1, '5': 11, '6': '.services.property_svc.v1.Date', '9': 0, '10': 'dateValue'},
    {'1': 'date_time_value', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'dateTimeValue'},
    {'1': 'select_value', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'selectValue'},
  ],
  '8': [
    {'1': 'value'},
    {'1': '_description'},
  ],
};

/// Descriptor for `GetAttachedPropertyValuesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachedPropertyValuesResponseDescriptor = $convert.base64Decode(
    'CiFHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVzcG9uc2USWQoGdmFsdWVzGAEgAygLMkEuc2'
    'VydmljZXMucHJvcGVydHlfc3ZjLnYxLkdldEF0dGFjaGVkUHJvcGVydHlWYWx1ZXNSZXNwb25z'
    'ZS5WYWx1ZVIGdmFsdWVzGvQDCgVWYWx1ZRIfCgtwcm9wZXJ0eV9pZBgBIAEoCVIKcHJvcGVydH'
    'lJZBJCCgpmaWVsZF90eXBlGAIgASgOMiMuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkZpZWxk'
    'VHlwZVIJZmllbGRUeXBlEhIKBG5hbWUYAyABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YBCABKA'
    'lIAVILZGVzY3JpcHRpb26IAQESHwoLaXNfYXJjaGl2ZWQYBSABKAhSCmlzQXJjaGl2ZWQSHwoK'
    'dGV4dF92YWx1ZRgGIAEoCUgAUgl0ZXh0VmFsdWUSIwoMbnVtYmVyX3ZhbHVlGAcgASgBSABSC2'
    '51bWJlclZhbHVlEh8KCmJvb2xfdmFsdWUYCCABKAhIAFIJYm9vbFZhbHVlEj8KCmRhdGVfdmFs'
    'dWUYCSABKAsyHi5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuRGF0ZUgAUglkYXRlVmFsdWUSRA'
    'oPZGF0ZV90aW1lX3ZhbHVlGAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgAUg1k'
    'YXRlVGltZVZhbHVlEiMKDHNlbGVjdF92YWx1ZRgLIAEoCUgAUgtzZWxlY3RWYWx1ZUIHCgV2YW'
    'x1ZUIOCgxfZGVzY3JpcHRpb24=');

