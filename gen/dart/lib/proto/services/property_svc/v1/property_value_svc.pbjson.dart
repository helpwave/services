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
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'property_id', '3': 3, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'text_value', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'textValue'},
    {'1': 'number_value', '3': 5, '4': 1, '5': 2, '9': 0, '10': 'numberValue'},
    {'1': 'bool_value', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'date_value', '3': 7, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.Date', '9': 0, '10': 'dateValue'},
    {'1': 'date_time_value', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'dateTimeValue'},
    {'1': 'select_value', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'selectValue'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AttachPropertyValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachPropertyValueRequestDescriptor = $convert.base64Decode(
    'ChpBdHRhY2hQcm9wZXJ0eVZhbHVlUmVxdWVzdBIdCgpzdWJqZWN0X2lkGAEgASgJUglzdWJqZW'
    'N0SWQSTgoMc3ViamVjdF90eXBlGAIgASgOMisucHJvdG8uc2VydmljZXMucHJvcGVydHlfc3Zj'
    'LnYxLlN1YmplY3RUeXBlUgtzdWJqZWN0VHlwZRIfCgtwcm9wZXJ0eV9pZBgDIAEoCVIKcHJvcG'
    'VydHlJZBIfCgp0ZXh0X3ZhbHVlGAQgASgJSABSCXRleHRWYWx1ZRIjCgxudW1iZXJfdmFsdWUY'
    'BSABKAJIAFILbnVtYmVyVmFsdWUSHwoKYm9vbF92YWx1ZRgGIAEoCEgAUglib29sVmFsdWUSRQ'
    'oKZGF0ZV92YWx1ZRgHIAEoCzIkLnByb3RvLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5EYXRl'
    'SABSCWRhdGVWYWx1ZRJECg9kYXRlX3RpbWVfdmFsdWUYCCABKAsyGi5nb29nbGUucHJvdG9idW'
    'YuVGltZXN0YW1wSABSDWRhdGVUaW1lVmFsdWUSIwoMc2VsZWN0X3ZhbHVlGAkgASgJSABSC3Nl'
    'bGVjdFZhbHVlQgcKBXZhbHVl');

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
    {'1': 'is_soft_required', '3': 6, '4': 1, '5': 8, '10': 'isSoftRequired'},
    {'1': 'set', '3': 7, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.GetAttachedPropertyValuesResponse.Value.Set', '9': 2, '10': 'set', '17': true},
    {'1': 'text_value', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'textValue'},
    {'1': 'number_value', '3': 10, '4': 1, '5': 2, '9': 0, '10': 'numberValue'},
    {'1': 'bool_value', '3': 11, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'date_value', '3': 12, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.Date', '9': 0, '10': 'dateValue'},
    {'1': 'date_time_value', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'dateTimeValue'},
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
    'CiFHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVzcG9uc2USXwoGdmFsdWVzGAEgAygLMkcucH'
    'JvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkdldEF0dGFjaGVkUHJvcGVydHlWYWx1ZXNS'
    'ZXNwb25zZS5WYWx1ZVIGdmFsdWVzGsEFCgVWYWx1ZRIfCgtwcm9wZXJ0eV9pZBgBIAEoCVIKcH'
    'JvcGVydHlJZBJICgpmaWVsZF90eXBlGAIgASgOMikucHJvdG8uc2VydmljZXMucHJvcGVydHlf'
    'c3ZjLnYxLkZpZWxkVHlwZVIJZmllbGRUeXBlEhIKBG5hbWUYAyABKAlSBG5hbWUSJQoLZGVzY3'
    'JpcHRpb24YBCABKAlIAVILZGVzY3JpcHRpb26IAQESHwoLaXNfYXJjaGl2ZWQYBSABKAhSCmlz'
    'QXJjaGl2ZWQSKAoQaXNfc29mdF9yZXF1aXJlZBgGIAEoCFIOaXNTb2Z0UmVxdWlyZWQSYgoDc2'
    'V0GAcgASgLMksucHJvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkdldEF0dGFjaGVkUHJv'
    'cGVydHlWYWx1ZXNSZXNwb25zZS5WYWx1ZS5TZXRIAlIDc2V0iAEBEh8KCnRleHRfdmFsdWUYCS'
    'ABKAlIAFIJdGV4dFZhbHVlEiMKDG51bWJlcl92YWx1ZRgKIAEoAkgAUgtudW1iZXJWYWx1ZRIf'
    'Cgpib29sX3ZhbHVlGAsgASgISABSCWJvb2xWYWx1ZRJFCgpkYXRlX3ZhbHVlGAwgASgLMiQucH'
    'JvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkRhdGVIAFIJZGF0ZVZhbHVlEkQKD2RhdGVf'
    'dGltZV92YWx1ZRgNIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFINZGF0ZVRpbW'
    'VWYWx1ZRIjCgxzZWxlY3RfdmFsdWUYDiABKAlIAFILc2VsZWN0VmFsdWUaKQoDU2V0Eg4KAmlk'
    'GAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lQgcKBXZhbHVlQg4KDF9kZXNjcmlwdGlvbk'
    'IGCgRfc2V0');

@$core.Deprecated('Use getPropertyValueRequestDescriptor instead')
const GetPropertyValueRequest$json = {
  '1': 'GetPropertyValueRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPropertyValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyValueRequestDescriptor = $convert.base64Decode(
    'ChdHZXRQcm9wZXJ0eVZhbHVlUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getPropertyValueResponseDescriptor instead')
const GetPropertyValueResponse$json = {
  '1': 'GetPropertyValueResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 9, '10': 'subjectType'},
    {'1': 'property_id', '3': 3, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'text_value', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'textValue'},
    {'1': 'number_value', '3': 5, '4': 1, '5': 2, '9': 0, '10': 'numberValue'},
    {'1': 'bool_value', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'date_value', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'dateValue'},
    {'1': 'date_time_value', '3': 8, '4': 1, '5': 9, '9': 0, '10': 'dateTimeValue'},
    {'1': 'select_value', '3': 9, '4': 1, '5': 9, '9': 0, '10': 'selectValue'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `GetPropertyValueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyValueResponseDescriptor = $convert.base64Decode(
    'ChhHZXRQcm9wZXJ0eVZhbHVlUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEiEKDHN1YmplY3RfdH'
    'lwZRgCIAEoCVILc3ViamVjdFR5cGUSHwoLcHJvcGVydHlfaWQYAyABKAlSCnByb3BlcnR5SWQS'
    'HwoKdGV4dF92YWx1ZRgEIAEoCUgAUgl0ZXh0VmFsdWUSIwoMbnVtYmVyX3ZhbHVlGAUgASgCSA'
    'BSC251bWJlclZhbHVlEh8KCmJvb2xfdmFsdWUYBiABKAhIAFIJYm9vbFZhbHVlEh8KCmRhdGVf'
    'dmFsdWUYByABKAlIAFIJZGF0ZVZhbHVlEigKD2RhdGVfdGltZV92YWx1ZRgIIAEoCUgAUg1kYX'
    'RlVGltZVZhbHVlEiMKDHNlbGVjdF92YWx1ZRgJIAEoCUgAUgtzZWxlY3RWYWx1ZUIHCgV2YWx1'
    'ZQ==');

