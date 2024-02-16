//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/values.proto
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
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'property_id', '3': 3, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'is_undefined', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'isUndefined'},
    {'1': 'text_value', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'textValue'},
    {'1': 'number_value', '3': 6, '4': 1, '5': 2, '9': 0, '10': 'numberValue'},
    {'1': 'bool_value', '3': 7, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'date_value', '3': 8, '4': 1, '5': 9, '9': 0, '10': 'dateValue'},
    {'1': 'date_time_value', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'dateTimeValue'},
    {'1': 'select_value', '3': 10, '4': 1, '5': 9, '9': 0, '10': 'selectValue'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AttachPropertyValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachPropertyValueRequestDescriptor = $convert.base64Decode(
    'ChpBdHRhY2hQcm9wZXJ0eVZhbHVlUmVxdWVzdBIdCgpzdWJqZWN0X2lkGAEgASgJUglzdWJqZW'
    'N0SWQSUAoMc3ViamVjdF90eXBlGAIgASgOMi0ucHJvdG8uc2VydmljZXMucHJvcGVydGllc19z'
    'dmMudjEuU3ViamVjdFR5cGVSC3N1YmplY3RUeXBlEh8KC3Byb3BlcnR5X2lkGAMgASgJUgpwcm'
    '9wZXJ0eUlkEiMKDGlzX3VuZGVmaW5lZBgEIAEoCEgAUgtpc1VuZGVmaW5lZBIfCgp0ZXh0X3Zh'
    'bHVlGAUgASgJSABSCXRleHRWYWx1ZRIjCgxudW1iZXJfdmFsdWUYBiABKAJIAFILbnVtYmVyVm'
    'FsdWUSHwoKYm9vbF92YWx1ZRgHIAEoCEgAUglib29sVmFsdWUSHwoKZGF0ZV92YWx1ZRgIIAEo'
    'CUgAUglkYXRlVmFsdWUSKAoPZGF0ZV90aW1lX3ZhbHVlGAkgASgJSABSDWRhdGVUaW1lVmFsdW'
    'USIwoMc2VsZWN0X3ZhbHVlGAogASgJSABSC3NlbGVjdFZhbHVlQgcKBXZhbHVl');

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

@$core.Deprecated('Use getAttachedPropertyValuesRequestDescriptor instead')
const GetAttachedPropertyValuesRequest$json = {
  '1': 'GetAttachedPropertyValuesRequest',
  '2': [
    {'1': 'subject_id', '3': 1, '4': 1, '5': 9, '10': 'subjectId'},
  ],
};

/// Descriptor for `GetAttachedPropertyValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachedPropertyValuesRequestDescriptor = $convert.base64Decode(
    'CiBHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVxdWVzdBIdCgpzdWJqZWN0X2lkGAEgASgJUg'
    'lzdWJqZWN0SWQ=');

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse$json = {
  '1': 'GetAttachedPropertyValuesResponse',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value', '10': 'values'},
  ],
  '3': [GetAttachedPropertyValuesResponse_Value$json],
};

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse_Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'property_id', '3': 1, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'field_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 5, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'set', '3': 7, '4': 1, '5': 11, '6': '.proto.services.properties_svc.v1.GetAttachedPropertyValuesResponse.Value.Set', '9': 2, '10': 'set', '17': true},
    {'1': 'is_undefined', '3': 8, '4': 1, '5': 8, '9': 0, '10': 'isUndefined'},
    {'1': 'text_value', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'textValue'},
    {'1': 'number_value', '3': 10, '4': 1, '5': 2, '9': 0, '10': 'numberValue'},
    {'1': 'bool_value', '3': 11, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'date_value', '3': 12, '4': 1, '5': 9, '9': 0, '10': 'dateValue'},
    {'1': 'date_time_value', '3': 13, '4': 1, '5': 9, '9': 0, '10': 'dateTimeValue'},
    {'1': 'select_value', '3': 14, '4': 1, '5': 9, '9': 0, '10': 'selectValue'},
  ],
  '3': [GetAttachedPropertyValuesResponse_Value_Set$json],
  '8': [
    {'1': 'value'},
    {'1': '_description'},
    {'1': '_set'},
  ],
};

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse_Value_Set$json = {
  '1': 'Set',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetAttachedPropertyValuesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachedPropertyValuesResponseDescriptor = $convert.base64Decode(
    'CiFHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVzcG9uc2USYQoGdmFsdWVzGAEgAygLMkkucH'
    'JvdG8uc2VydmljZXMucHJvcGVydGllc19zdmMudjEuR2V0QXR0YWNoZWRQcm9wZXJ0eVZhbHVl'
    'c1Jlc3BvbnNlLlZhbHVlUgZ2YWx1ZXMa/gQKBVZhbHVlEh8KC3Byb3BlcnR5X2lkGAEgASgJUg'
    'pwcm9wZXJ0eUlkEkoKCmZpZWxkX3R5cGUYAiABKA4yKy5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0'
    'aWVzX3N2Yy52MS5GaWVsZFR5cGVSCWZpZWxkVHlwZRISCgRuYW1lGAMgASgJUgRuYW1lEiUKC2'
    'Rlc2NyaXB0aW9uGAQgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEh8KC2lzX2FyY2hpdmVkGAUgASgI'
    'Ugppc0FyY2hpdmVkEmQKA3NldBgHIAEoCzJNLnByb3RvLnNlcnZpY2VzLnByb3BlcnRpZXNfc3'
    'ZjLnYxLkdldEF0dGFjaGVkUHJvcGVydHlWYWx1ZXNSZXNwb25zZS5WYWx1ZS5TZXRIAlIDc2V0'
    'iAEBEiMKDGlzX3VuZGVmaW5lZBgIIAEoCEgAUgtpc1VuZGVmaW5lZBIfCgp0ZXh0X3ZhbHVlGA'
    'kgASgJSABSCXRleHRWYWx1ZRIjCgxudW1iZXJfdmFsdWUYCiABKAJIAFILbnVtYmVyVmFsdWUS'
    'HwoKYm9vbF92YWx1ZRgLIAEoCEgAUglib29sVmFsdWUSHwoKZGF0ZV92YWx1ZRgMIAEoCUgAUg'
    'lkYXRlVmFsdWUSKAoPZGF0ZV90aW1lX3ZhbHVlGA0gASgJSABSDWRhdGVUaW1lVmFsdWUSIwoM'
    'c2VsZWN0X3ZhbHVlGA4gASgJSABSC3NlbGVjdFZhbHVlGikKA1NldBIOCgJpZBgBIAEoCVICaW'
    'QSEgoEbmFtZRgCIAEoCVIEbmFtZUIHCgV2YWx1ZUIOCgxfZGVzY3JpcHRpb25CBgoEX3NldA==');

