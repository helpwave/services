//
//  Generated code. Do not modify.
//  source: proto/services/property_svc/v1/property_value_svc.proto
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
    {'1': 'date_value', '3': 6, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.Date', '9': 0, '10': 'dateValue'},
    {'1': 'date_time_value', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'dateTimeValue'},
    {'1': 'select_value', '3': 8, '4': 1, '5': 9, '9': 0, '10': 'selectValue'},
    {'1': 'multi_select_value', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'multiSelectValue'},
  ],
  '3': [AttachPropertyValueRequest_MultiSelectValue$json],
  '8': [
    {'1': 'value'},
  ],
};

@$core.Deprecated('Use attachPropertyValueRequestDescriptor instead')
const AttachPropertyValueRequest_MultiSelectValue$json = {
  '1': 'MultiSelectValue',
  '2': [
    {'1': 'select_value', '3': 1, '4': 3, '5': 9, '10': 'selectValue'},
  ],
};

/// Descriptor for `AttachPropertyValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachPropertyValueRequestDescriptor = $convert.base64Decode(
    'ChpBdHRhY2hQcm9wZXJ0eVZhbHVlUmVxdWVzdBIdCgpzdWJqZWN0X2lkGAEgASgJUglzdWJqZW'
    'N0SWQSHwoLcHJvcGVydHlfaWQYAiABKAlSCnByb3BlcnR5SWQSHwoKdGV4dF92YWx1ZRgDIAEo'
    'CUgAUgl0ZXh0VmFsdWUSIwoMbnVtYmVyX3ZhbHVlGAQgASgBSABSC251bWJlclZhbHVlEh8KCm'
    'Jvb2xfdmFsdWUYBSABKAhIAFIJYm9vbFZhbHVlEkUKCmRhdGVfdmFsdWUYBiABKAsyJC5wcm90'
    'by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuRGF0ZUgAUglkYXRlVmFsdWUSRAoPZGF0ZV90aW'
    '1lX3ZhbHVlGAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgAUg1kYXRlVGltZVZh'
    'bHVlEiMKDHNlbGVjdF92YWx1ZRgIIAEoCUgAUgtzZWxlY3RWYWx1ZRIuChJtdWx0aV9zZWxlY3'
    'RfdmFsdWUYCSABKAlIAFIQbXVsdGlTZWxlY3RWYWx1ZRo1ChBNdWx0aVNlbGVjdFZhbHVlEiEK'
    'DHNlbGVjdF92YWx1ZRgBIAMoCVILc2VsZWN0VmFsdWVCBwoFdmFsdWU=');

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
    {'1': 'task_matcher', '3': 1, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.TaskPropertyMatcher', '9': 0, '10': 'taskMatcher'},
  ],
  '8': [
    {'1': 'matcher'},
  ],
};

/// Descriptor for `GetAttachedPropertyValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachedPropertyValuesRequestDescriptor = $convert.base64Decode(
    'CiBHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVxdWVzdBJYCgx0YXNrX21hdGNoZXIYASABKA'
    'syMy5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuVGFza1Byb3BlcnR5TWF0Y2hlckgA'
    'Ugt0YXNrTWF0Y2hlckIJCgdtYXRjaGVy');

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse$json = {
  '1': 'GetAttachedPropertyValuesResponse',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.proto.services.property_svc.v1.GetAttachedPropertyValuesResponse.Value', '10': 'values'},
  ],
  '3': [GetAttachedPropertyValuesResponse_Value$json],
};

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse_Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'property_id', '3': 1, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'field_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 5, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'text_value', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'textValue'},
    {'1': 'number_value', '3': 7, '4': 1, '5': 1, '9': 0, '10': 'numberValue'},
    {'1': 'bool_value', '3': 8, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'date_value', '3': 9, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.Date', '9': 0, '10': 'dateValue'},
    {'1': 'date_time_value', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'dateTimeValue'},
    {'1': 'select_value', '3': 11, '4': 1, '5': 9, '9': 0, '10': 'selectValue'},
    {'1': 'multi_select_value', '3': 12, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.GetAttachedPropertyValuesResponse.Value.MultiSelectValue', '9': 0, '10': 'multiSelectValue'},
  ],
  '3': [GetAttachedPropertyValuesResponse_Value_MultiSelectValue$json],
  '8': [
    {'1': 'value'},
    {'1': '_description'},
  ],
};

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse_Value_MultiSelectValue$json = {
  '1': 'MultiSelectValue',
  '2': [
    {'1': 'select_value', '3': 1, '4': 3, '5': 9, '10': 'selectValue'},
  ],
};

/// Descriptor for `GetAttachedPropertyValuesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachedPropertyValuesResponseDescriptor = $convert.base64Decode(
    'CiFHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVzcG9uc2USXwoGdmFsdWVzGAEgAygLMkcucH'
    'JvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkdldEF0dGFjaGVkUHJvcGVydHlWYWx1ZXNS'
    'ZXNwb25zZS5WYWx1ZVIGdmFsdWVzGsIFCgVWYWx1ZRIfCgtwcm9wZXJ0eV9pZBgBIAEoCVIKcH'
    'JvcGVydHlJZBJICgpmaWVsZF90eXBlGAIgASgOMikucHJvdG8uc2VydmljZXMucHJvcGVydHlf'
    'c3ZjLnYxLkZpZWxkVHlwZVIJZmllbGRUeXBlEhIKBG5hbWUYAyABKAlSBG5hbWUSJQoLZGVzY3'
    'JpcHRpb24YBCABKAlIAVILZGVzY3JpcHRpb26IAQESHwoLaXNfYXJjaGl2ZWQYBSABKAhSCmlz'
    'QXJjaGl2ZWQSHwoKdGV4dF92YWx1ZRgGIAEoCUgAUgl0ZXh0VmFsdWUSIwoMbnVtYmVyX3ZhbH'
    'VlGAcgASgBSABSC251bWJlclZhbHVlEh8KCmJvb2xfdmFsdWUYCCABKAhIAFIJYm9vbFZhbHVl'
    'EkUKCmRhdGVfdmFsdWUYCSABKAsyJC5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuRG'
    'F0ZUgAUglkYXRlVmFsdWUSRAoPZGF0ZV90aW1lX3ZhbHVlGAogASgLMhouZ29vZ2xlLnByb3Rv'
    'YnVmLlRpbWVzdGFtcEgAUg1kYXRlVGltZVZhbHVlEiMKDHNlbGVjdF92YWx1ZRgLIAEoCUgAUg'
    'tzZWxlY3RWYWx1ZRKIAQoSbXVsdGlfc2VsZWN0X3ZhbHVlGAwgASgLMlgucHJvdG8uc2Vydmlj'
    'ZXMucHJvcGVydHlfc3ZjLnYxLkdldEF0dGFjaGVkUHJvcGVydHlWYWx1ZXNSZXNwb25zZS5WYW'
    'x1ZS5NdWx0aVNlbGVjdFZhbHVlSABSEG11bHRpU2VsZWN0VmFsdWUaNQoQTXVsdGlTZWxlY3RW'
    'YWx1ZRIhCgxzZWxlY3RfdmFsdWUYASADKAlSC3NlbGVjdFZhbHVlQgcKBXZhbHVlQg4KDF9kZX'
    'NjcmlwdGlvbg==');

