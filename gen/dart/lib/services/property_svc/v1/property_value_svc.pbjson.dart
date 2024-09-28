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
    {'1': 'multi_select_value', '3': 9, '4': 1, '5': 11, '6': '.services.property_svc.v1.AttachPropertyValueRequest.MultiSelectValue', '9': 0, '10': 'multiSelectValue'},
    {'1': 'consistency', '3': 10, '4': 1, '5': 9, '9': 1, '10': 'consistency', '17': true},
  ],
  '3': [AttachPropertyValueRequest_MultiSelectValue$json],
  '8': [
    {'1': 'value'},
    {'1': '_consistency'},
  ],
};

@$core.Deprecated('Use attachPropertyValueRequestDescriptor instead')
const AttachPropertyValueRequest_MultiSelectValue$json = {
  '1': 'MultiSelectValue',
  '2': [
    {'1': 'select_values', '3': 1, '4': 3, '5': 9, '10': 'selectValues'},
    {'1': 'remove_select_values', '3': 2, '4': 3, '5': 9, '10': 'removeSelectValues'},
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
    'DHNlbGVjdF92YWx1ZRgIIAEoCUgAUgtzZWxlY3RWYWx1ZRJ1ChJtdWx0aV9zZWxlY3RfdmFsdW'
    'UYCSABKAsyRS5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuQXR0YWNoUHJvcGVydHlWYWx1ZVJl'
    'cXVlc3QuTXVsdGlTZWxlY3RWYWx1ZUgAUhBtdWx0aVNlbGVjdFZhbHVlEiUKC2NvbnNpc3Rlbm'
    'N5GAogASgJSAFSC2NvbnNpc3RlbmN5iAEBGmkKEE11bHRpU2VsZWN0VmFsdWUSIwoNc2VsZWN0'
    'X3ZhbHVlcxgBIAMoCVIMc2VsZWN0VmFsdWVzEjAKFHJlbW92ZV9zZWxlY3RfdmFsdWVzGAIgAy'
    'gJUhJyZW1vdmVTZWxlY3RWYWx1ZXNCBwoFdmFsdWVCDgoMX2NvbnNpc3RlbmN5');

@$core.Deprecated('Use attachPropertyValueResponseDescriptor instead')
const AttachPropertyValueResponse$json = {
  '1': 'AttachPropertyValueResponse',
  '2': [
    {'1': 'property_value_id', '3': 1, '4': 1, '5': 9, '10': 'propertyValueId'},
    {'1': 'conflict', '3': 2, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `AttachPropertyValueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachPropertyValueResponseDescriptor = $convert.base64Decode(
    'ChtBdHRhY2hQcm9wZXJ0eVZhbHVlUmVzcG9uc2USKgoRcHJvcGVydHlfdmFsdWVfaWQYASABKA'
    'lSD3Byb3BlcnR5VmFsdWVJZBI5Cghjb25mbGljdBgCIAEoCzIYLmxpYnMuY29tbW9uLnYxLkNv'
    'bmZsaWN0SABSCGNvbmZsaWN0iAEBEiAKC2NvbnNpc3RlbmN5GAMgASgJUgtjb25zaXN0ZW5jeU'
    'ILCglfY29uZmxpY3Q=');

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

@$core.Deprecated('Use patientPropertyMatcherDescriptor instead')
const PatientPropertyMatcher$json = {
  '1': 'PatientPropertyMatcher',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'wardId', '17': true},
    {'1': 'patient_id', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'patientId', '17': true},
  ],
  '8': [
    {'1': '_ward_id'},
    {'1': '_patient_id'},
  ],
};

/// Descriptor for `PatientPropertyMatcher`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patientPropertyMatcherDescriptor = $convert.base64Decode(
    'ChZQYXRpZW50UHJvcGVydHlNYXRjaGVyEhwKB3dhcmRfaWQYASABKAlIAFIGd2FyZElkiAEBEi'
    'IKCnBhdGllbnRfaWQYAiABKAlIAVIJcGF0aWVudElkiAEBQgoKCF93YXJkX2lkQg0KC19wYXRp'
    'ZW50X2lk');

@$core.Deprecated('Use getAttachedPropertyValuesRequestDescriptor instead')
const GetAttachedPropertyValuesRequest$json = {
  '1': 'GetAttachedPropertyValuesRequest',
  '2': [
    {'1': 'task_matcher', '3': 1, '4': 1, '5': 11, '6': '.services.property_svc.v1.TaskPropertyMatcher', '9': 0, '10': 'taskMatcher'},
    {'1': 'patient_matcher', '3': 2, '4': 1, '5': 11, '6': '.services.property_svc.v1.PatientPropertyMatcher', '9': 0, '10': 'patientMatcher'},
  ],
  '8': [
    {'1': 'matcher'},
  ],
};

/// Descriptor for `GetAttachedPropertyValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachedPropertyValuesRequestDescriptor = $convert.base64Decode(
    'CiBHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVxdWVzdBJSCgx0YXNrX21hdGNoZXIYASABKA'
    'syLS5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuVGFza1Byb3BlcnR5TWF0Y2hlckgAUgt0YXNr'
    'TWF0Y2hlchJbCg9wYXRpZW50X21hdGNoZXIYAiABKAsyMC5zZXJ2aWNlcy5wcm9wZXJ0eV9zdm'
    'MudjEuUGF0aWVudFByb3BlcnR5TWF0Y2hlckgAUg5wYXRpZW50TWF0Y2hlckIJCgdtYXRjaGVy');

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
    {'1': 'select_value', '3': 11, '4': 1, '5': 11, '6': '.services.property_svc.v1.GetAttachedPropertyValuesResponse.Value.SelectValueOption', '9': 0, '10': 'selectValue'},
    {'1': 'multi_select_value', '3': 12, '4': 1, '5': 11, '6': '.services.property_svc.v1.GetAttachedPropertyValuesResponse.Value.MultiSelectValue', '9': 0, '10': 'multiSelectValue'},
    {'1': 'property_consistency', '3': 13, '4': 1, '5': 9, '10': 'propertyConsistency'},
    {'1': 'value_consistency', '3': 14, '4': 1, '5': 9, '9': 2, '10': 'valueConsistency', '17': true},
  ],
  '3': [GetAttachedPropertyValuesResponse_Value_SelectValueOption$json, GetAttachedPropertyValuesResponse_Value_MultiSelectValue$json],
  '8': [
    {'1': 'value'},
    {'1': '_description'},
    {'1': '_value_consistency'},
  ],
};

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse_Value_SelectValueOption$json = {
  '1': 'SelectValueOption',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse_Value_MultiSelectValue$json = {
  '1': 'MultiSelectValue',
  '2': [
    {'1': 'select_values', '3': 1, '4': 3, '5': 11, '6': '.services.property_svc.v1.GetAttachedPropertyValuesResponse.Value.SelectValueOption', '10': 'selectValues'},
  ],
};

/// Descriptor for `GetAttachedPropertyValuesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachedPropertyValuesResponseDescriptor = $convert.base64Decode(
    'CiFHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVzcG9uc2USWQoGdmFsdWVzGAEgAygLMkEuc2'
    'VydmljZXMucHJvcGVydHlfc3ZjLnYxLkdldEF0dGFjaGVkUHJvcGVydHlWYWx1ZXNSZXNwb25z'
    'ZS5WYWx1ZVIGdmFsdWVzGrMICgVWYWx1ZRIfCgtwcm9wZXJ0eV9pZBgBIAEoCVIKcHJvcGVydH'
    'lJZBJCCgpmaWVsZF90eXBlGAIgASgOMiMuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkZpZWxk'
    'VHlwZVIJZmllbGRUeXBlEhIKBG5hbWUYAyABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YBCABKA'
    'lIAVILZGVzY3JpcHRpb26IAQESHwoLaXNfYXJjaGl2ZWQYBSABKAhSCmlzQXJjaGl2ZWQSHwoK'
    'dGV4dF92YWx1ZRgGIAEoCUgAUgl0ZXh0VmFsdWUSIwoMbnVtYmVyX3ZhbHVlGAcgASgBSABSC2'
    '51bWJlclZhbHVlEh8KCmJvb2xfdmFsdWUYCCABKAhIAFIJYm9vbFZhbHVlEj8KCmRhdGVfdmFs'
    'dWUYCSABKAsyHi5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuRGF0ZUgAUglkYXRlVmFsdWUSRA'
    'oPZGF0ZV90aW1lX3ZhbHVlGAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgAUg1k'
    'YXRlVGltZVZhbHVlEngKDHNlbGVjdF92YWx1ZRgLIAEoCzJTLnNlcnZpY2VzLnByb3BlcnR5X3'
    'N2Yy52MS5HZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVzcG9uc2UuVmFsdWUuU2VsZWN0VmFs'
    'dWVPcHRpb25IAFILc2VsZWN0VmFsdWUSggEKEm11bHRpX3NlbGVjdF92YWx1ZRgMIAEoCzJSLn'
    'NlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5HZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVzcG9u'
    'c2UuVmFsdWUuTXVsdGlTZWxlY3RWYWx1ZUgAUhBtdWx0aVNlbGVjdFZhbHVlEjEKFHByb3Blcn'
    'R5X2NvbnNpc3RlbmN5GA0gASgJUhNwcm9wZXJ0eUNvbnNpc3RlbmN5EjAKEXZhbHVlX2NvbnNp'
    'c3RlbmN5GA4gASgJSAJSEHZhbHVlQ29uc2lzdGVuY3mIAQEaWQoRU2VsZWN0VmFsdWVPcHRpb2'
    '4SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyAB'
    'KAlSC2Rlc2NyaXB0aW9uGowBChBNdWx0aVNlbGVjdFZhbHVlEngKDXNlbGVjdF92YWx1ZXMYAS'
    'ADKAsyUy5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuR2V0QXR0YWNoZWRQcm9wZXJ0eVZhbHVl'
    'c1Jlc3BvbnNlLlZhbHVlLlNlbGVjdFZhbHVlT3B0aW9uUgxzZWxlY3RWYWx1ZXNCBwoFdmFsdW'
    'VCDgoMX2Rlc2NyaXB0aW9uQhQKEl92YWx1ZV9jb25zaXN0ZW5jeQ==');

