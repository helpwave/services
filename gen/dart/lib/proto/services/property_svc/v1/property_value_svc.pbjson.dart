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

@$core.Deprecated('Use createPropertyValueRequestDescriptor instead')
const CreatePropertyValueRequest$json = {
  '1': 'CreatePropertyValueRequest',
  '2': [
    {'1': 'subject_id', '3': 1, '4': 1, '5': 9, '10': 'subjectId'},
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

/// Descriptor for `CreatePropertyValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertyValueRequestDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVQcm9wZXJ0eVZhbHVlUmVxdWVzdBIdCgpzdWJqZWN0X2lkGAEgASgJUglzdWJqZW'
    'N0SWQSIQoMc3ViamVjdF90eXBlGAIgASgJUgtzdWJqZWN0VHlwZRIfCgtwcm9wZXJ0eV9pZBgD'
    'IAEoCVIKcHJvcGVydHlJZBIfCgp0ZXh0X3ZhbHVlGAQgASgJSABSCXRleHRWYWx1ZRIjCgxudW'
    '1iZXJfdmFsdWUYBSABKAJIAFILbnVtYmVyVmFsdWUSHwoKYm9vbF92YWx1ZRgGIAEoCEgAUgli'
    'b29sVmFsdWUSHwoKZGF0ZV92YWx1ZRgHIAEoCUgAUglkYXRlVmFsdWUSKAoPZGF0ZV90aW1lX3'
    'ZhbHVlGAggASgJSABSDWRhdGVUaW1lVmFsdWUSIwoMc2VsZWN0X3ZhbHVlGAkgASgJSABSC3Nl'
    'bGVjdFZhbHVlQgcKBXZhbHVl');

@$core.Deprecated('Use createPropertyValueResponseDescriptor instead')
const CreatePropertyValueResponse$json = {
  '1': 'CreatePropertyValueResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreatePropertyValueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertyValueResponseDescriptor = $convert.base64Decode(
    'ChtDcmVhdGVQcm9wZXJ0eVZhbHVlUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

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

