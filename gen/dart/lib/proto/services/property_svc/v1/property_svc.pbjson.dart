//
//  Generated code. Do not modify.
//  source: proto/services/property_svc/v1/property_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createPropertyRequestDescriptor instead')
const CreatePropertyRequest$json = {
  '1': 'CreatePropertyRequest',
  '2': [
    {'1': 'context', '3': 1, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.ViewContext', '10': 'context'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'set_id', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'always_include_for_current_context', '3': 7, '4': 1, '5': 8, '9': 3, '10': 'alwaysIncludeForCurrentContext', '17': true},
    {'1': 'none', '3': 8, '4': 1, '5': 8, '9': 0, '10': 'none'},
    {'1': 'select_data', '3': 9, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.CreatePropertyRequest.SelectData', '9': 0, '10': 'selectData'},
  ],
  '3': [CreatePropertyRequest_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_description'},
    {'1': '_set_id'},
    {'1': '_always_include_for_current_context'},
  ],
};

@$core.Deprecated('Use createPropertyRequestDescriptor instead')
const CreatePropertyRequest_SelectData$json = {
  '1': 'SelectData',
  '2': [
    {'1': 'allow_freetext', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'allowFreetext', '17': true},
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.proto.services.property_svc.v1.CreatePropertyRequest.SelectData.SelectOption', '10': 'options'},
  ],
  '3': [CreatePropertyRequest_SelectData_SelectOption$json],
  '8': [
    {'1': '_allow_freetext'},
  ],
};

@$core.Deprecated('Use createPropertyRequestDescriptor instead')
const CreatePropertyRequest_SelectData_SelectOption$json = {
  '1': 'SelectOption',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `CreatePropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertyRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVQcm9wZXJ0eVJlcXVlc3QSRQoHY29udGV4dBgBIAEoDjIrLnByb3RvLnNlcnZpY2'
    'VzLnByb3BlcnR5X3N2Yy52MS5WaWV3Q29udGV4dFIHY29udGV4dBJOCgxzdWJqZWN0X3R5cGUY'
    'AiABKA4yKy5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuU3ViamVjdFR5cGVSC3N1Ym'
    'plY3RUeXBlEkgKCmZpZWxkX3R5cGUYAyABKA4yKS5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9z'
    'dmMudjEuRmllbGRUeXBlUglmaWVsZFR5cGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIlCgtkZXNjcm'
    'lwdGlvbhgFIAEoCUgBUgtkZXNjcmlwdGlvbogBARIaCgZzZXRfaWQYBiABKAlIAlIFc2V0SWSI'
    'AQESTwoiYWx3YXlzX2luY2x1ZGVfZm9yX2N1cnJlbnRfY29udGV4dBgHIAEoCEgDUh5hbHdheX'
    'NJbmNsdWRlRm9yQ3VycmVudENvbnRleHSIAQESFAoEbm9uZRgIIAEoCEgAUgRub25lEmMKC3Nl'
    'bGVjdF9kYXRhGAkgASgLMkAucHJvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkNyZWF0ZV'
    'Byb3BlcnR5UmVxdWVzdC5TZWxlY3REYXRhSABSCnNlbGVjdERhdGEajwIKClNlbGVjdERhdGES'
    'KgoOYWxsb3dfZnJlZXRleHQYASABKAhIAFINYWxsb3dGcmVldGV4dIgBARJnCgdvcHRpb25zGA'
    'IgAygLMk0ucHJvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkNyZWF0ZVByb3BlcnR5UmVx'
    'dWVzdC5TZWxlY3REYXRhLlNlbGVjdE9wdGlvblIHb3B0aW9ucxpZCgxTZWxlY3RPcHRpb24SEg'
    'oEbmFtZRgBIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgCIAEoCUgAUgtkZXNjcmlwdGlvbogB'
    'AUIOCgxfZGVzY3JpcHRpb25CEQoPX2FsbG93X2ZyZWV0ZXh0QhEKD2ZpZWxkX3R5cGVfZGF0YU'
    'IOCgxfZGVzY3JpcHRpb25CCQoHX3NldF9pZEIlCiNfYWx3YXlzX2luY2x1ZGVfZm9yX2N1cnJl'
    'bnRfY29udGV4dA==');

@$core.Deprecated('Use createPropertyResponseDescriptor instead')
const CreatePropertyResponse$json = {
  '1': 'CreatePropertyResponse',
  '2': [
    {'1': 'property_id', '3': 1, '4': 1, '5': 9, '10': 'propertyId'},
  ],
};

/// Descriptor for `CreatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertyResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVQcm9wZXJ0eVJlc3BvbnNlEh8KC3Byb3BlcnR5X2lkGAEgASgJUgpwcm9wZXJ0eU'
    'lk');

@$core.Deprecated('Use getPropertyRequestDescriptor instead')
const GetPropertyRequest$json = {
  '1': 'GetPropertyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyRequestDescriptor = $convert.base64Decode(
    'ChJHZXRQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getPropertyResponseDescriptor instead')
const GetPropertyResponse$json = {
  '1': 'GetPropertyResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'subject_type', '3': 3, '4': 1, '5': 9, '10': 'subjectType'},
    {'1': 'subject_id', '3': 4, '4': 1, '5': 9, '10': 'subjectId'},
    {'1': 'field_type', '3': 5, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 7, '4': 1, '5': 8, '9': 1, '10': 'isArchived', '17': true},
    {'1': 'is_soft_required', '3': 8, '4': 1, '5': 8, '9': 2, '10': 'isSoftRequired', '17': true},
  ],
  '8': [
    {'1': '_description'},
    {'1': '_is_archived'},
    {'1': '_is_soft_required'},
  ],
};

/// Descriptor for `GetPropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyResponseDescriptor = $convert.base64Decode(
    'ChNHZXRQcm9wZXJ0eVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW'
    '1lEiEKDHN1YmplY3RfdHlwZRgDIAEoCVILc3ViamVjdFR5cGUSHQoKc3ViamVjdF9pZBgEIAEo'
    'CVIJc3ViamVjdElkEkgKCmZpZWxkX3R5cGUYBSABKA4yKS5wcm90by5zZXJ2aWNlcy5wcm9wZX'
    'J0eV9zdmMudjEuRmllbGRUeXBlUglmaWVsZFR5cGUSJQoLZGVzY3JpcHRpb24YBiABKAlIAFIL'
    'ZGVzY3JpcHRpb26IAQESJAoLaXNfYXJjaGl2ZWQYByABKAhIAVIKaXNBcmNoaXZlZIgBARItCh'
    'Bpc19zb2Z0X3JlcXVpcmVkGAggASgISAJSDmlzU29mdFJlcXVpcmVkiAEBQg4KDF9kZXNjcmlw'
    'dGlvbkIOCgxfaXNfYXJjaGl2ZWRCEwoRX2lzX3NvZnRfcmVxdWlyZWQ=');

