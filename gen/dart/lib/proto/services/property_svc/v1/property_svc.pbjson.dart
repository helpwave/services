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
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'set_id', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 9, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.CreatePropertyRequest.SelectData', '9': 0, '10': 'selectData'},
  ],
  '3': [CreatePropertyRequest_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_description'},
    {'1': '_set_id'},
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
    'ChVDcmVhdGVQcm9wZXJ0eVJlcXVlc3QSTgoMc3ViamVjdF90eXBlGAIgASgOMisucHJvdG8uc2'
    'VydmljZXMucHJvcGVydHlfc3ZjLnYxLlN1YmplY3RUeXBlUgtzdWJqZWN0VHlwZRJICgpmaWVs'
    'ZF90eXBlGAMgASgOMikucHJvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkZpZWxkVHlwZV'
    'IJZmllbGRUeXBlEhIKBG5hbWUYBCABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YBSABKAlIAVIL'
    'ZGVzY3JpcHRpb26IAQESGgoGc2V0X2lkGAYgASgJSAJSBXNldElkiAEBEmMKC3NlbGVjdF9kYX'
    'RhGAkgASgLMkAucHJvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkNyZWF0ZVByb3BlcnR5'
    'UmVxdWVzdC5TZWxlY3REYXRhSABSCnNlbGVjdERhdGEajwIKClNlbGVjdERhdGESKgoOYWxsb3'
    'dfZnJlZXRleHQYASABKAhIAFINYWxsb3dGcmVldGV4dIgBARJnCgdvcHRpb25zGAIgAygLMk0u'
    'cHJvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkNyZWF0ZVByb3BlcnR5UmVxdWVzdC5TZW'
    'xlY3REYXRhLlNlbGVjdE9wdGlvblIHb3B0aW9ucxpZCgxTZWxlY3RPcHRpb24SEgoEbmFtZRgB'
    'IAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgCIAEoCUgAUgtkZXNjcmlwdGlvbogBAUIOCgxfZG'
    'VzY3JpcHRpb25CEQoPX2FsbG93X2ZyZWV0ZXh0QhEKD2ZpZWxkX3R5cGVfZGF0YUIOCgxfZGVz'
    'Y3JpcHRpb25CCQoHX3NldF9pZA==');

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
  '3': [GetPropertyRequest_ViewSource$json],
};

@$core.Deprecated('Use getPropertyRequestDescriptor instead')
const GetPropertyRequest_ViewSource$json = {
  '1': 'ViewSource',
  '2': [
    {'1': 'global', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'global'},
    {'1': 'ward_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'wardId'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `GetPropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyRequestDescriptor = $convert.base64Decode(
    'ChJHZXRQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlkGkoKClZpZXdTb3VyY2USGAoGZ2'
    'xvYmFsGAEgASgISABSBmdsb2JhbBIZCgd3YXJkX2lkGAIgASgJSABSBndhcmRJZEIHCgV2YWx1'
    'ZQ==');

@$core.Deprecated('Use getPropertyResponseDescriptor instead')
const GetPropertyResponse$json = {
  '1': 'GetPropertyResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.GetPropertyResponse.SelectData', '9': 0, '10': 'selectData'},
    {'1': 'always_include_for_view_source', '3': 11, '4': 1, '5': 8, '9': 3, '10': 'alwaysIncludeForViewSource', '17': true},
  ],
  '3': [GetPropertyResponse_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_description'},
    {'1': '_set_id'},
    {'1': '_always_include_for_view_source'},
  ],
};

@$core.Deprecated('Use getPropertyResponseDescriptor instead')
const GetPropertyResponse_SelectData$json = {
  '1': 'SelectData',
  '2': [
    {'1': 'allow_freetext', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'allowFreetext', '17': true},
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.proto.services.property_svc.v1.GetPropertyResponse.SelectData.SelectOption', '10': 'options'},
  ],
  '3': [GetPropertyResponse_SelectData_SelectOption$json],
  '8': [
    {'1': '_allow_freetext'},
  ],
};

@$core.Deprecated('Use getPropertyResponseDescriptor instead')
const GetPropertyResponse_SelectData_SelectOption$json = {
  '1': 'SelectOption',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'is_custom', '3': 4, '4': 1, '5': 8, '10': 'isCustom'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `GetPropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyResponseDescriptor = $convert.base64Decode(
    'ChNHZXRQcm9wZXJ0eVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBJOCgxzdWJqZWN0X3R5cGUYAi'
    'ABKA4yKy5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuU3ViamVjdFR5cGVSC3N1Ympl'
    'Y3RUeXBlEkgKCmZpZWxkX3R5cGUYAyABKA4yKS5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdm'
    'MudjEuRmllbGRUeXBlUglmaWVsZFR5cGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIlCgtkZXNjcmlw'
    'dGlvbhgFIAEoCUgBUgtkZXNjcmlwdGlvbogBARIfCgtpc19hcmNoaXZlZBgGIAEoCFIKaXNBcm'
    'NoaXZlZBIaCgZzZXRfaWQYCCABKAlIAlIFc2V0SWSIAQESYQoLc2VsZWN0X2RhdGEYCiABKAsy'
    'Pi5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuR2V0UHJvcGVydHlSZXNwb25zZS5TZW'
    'xlY3REYXRhSABSCnNlbGVjdERhdGESRwoeYWx3YXlzX2luY2x1ZGVfZm9yX3ZpZXdfc291cmNl'
    'GAsgASgISANSGmFsd2F5c0luY2x1ZGVGb3JWaWV3U291cmNliAEBGrsCCgpTZWxlY3REYXRhEi'
    'oKDmFsbG93X2ZyZWV0ZXh0GAEgASgISABSDWFsbG93RnJlZXRleHSIAQESZQoHb3B0aW9ucxgC'
    'IAMoCzJLLnByb3RvLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5HZXRQcm9wZXJ0eVJlc3Bvbn'
    'NlLlNlbGVjdERhdGEuU2VsZWN0T3B0aW9uUgdvcHRpb25zGoYBCgxTZWxlY3RPcHRpb24SDgoC'
    'aWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YAyABKAlIAF'
    'ILZGVzY3JpcHRpb26IAQESGwoJaXNfY3VzdG9tGAQgASgIUghpc0N1c3RvbUIOCgxfZGVzY3Jp'
    'cHRpb25CEQoPX2FsbG93X2ZyZWV0ZXh0QhEKD2ZpZWxkX3R5cGVfZGF0YUIOCgxfZGVzY3JpcH'
    'Rpb25CCQoHX3NldF9pZEIhCh9fYWx3YXlzX2luY2x1ZGVfZm9yX3ZpZXdfc291cmNl');

@$core.Deprecated('Use updatePropertyRequestDescriptor instead')
const UpdatePropertyRequest$json = {
  '1': 'UpdatePropertyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.SubjectType', '9': 1, '10': 'subjectType', '17': true},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.FieldType', '9': 2, '10': 'fieldType', '17': true},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'name', '17': true},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 4, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '9': 5, '10': 'isArchived', '17': true},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 6, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.UpdatePropertyRequest.SelectData', '9': 0, '10': 'selectData'},
  ],
  '3': [UpdatePropertyRequest_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_subject_type'},
    {'1': '_field_type'},
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_is_archived'},
    {'1': '_set_id'},
  ],
};

@$core.Deprecated('Use updatePropertyRequestDescriptor instead')
const UpdatePropertyRequest_SelectData$json = {
  '1': 'SelectData',
  '2': [
    {'1': 'allow_freetext', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'allowFreetext', '17': true},
    {'1': 'remove_options', '3': 2, '4': 3, '5': 9, '10': 'removeOptions'},
    {'1': 'upsert_options', '3': 3, '4': 3, '5': 11, '6': '.proto.services.property_svc.v1.UpdatePropertyRequest.SelectData.SelectOption', '10': 'upsertOptions'},
  ],
  '3': [UpdatePropertyRequest_SelectData_SelectOption$json],
  '8': [
    {'1': '_allow_freetext'},
  ],
};

@$core.Deprecated('Use updatePropertyRequestDescriptor instead')
const UpdatePropertyRequest_SelectData_SelectOption$json = {
  '1': 'SelectOption',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_custom', '3': 4, '4': 1, '5': 8, '9': 2, '10': 'isCustom', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_is_custom'},
  ],
};

/// Descriptor for `UpdatePropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlkElMKDHN1YmplY3RfdHlwZR'
    'gCIAEoDjIrLnByb3RvLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5TdWJqZWN0VHlwZUgBUgtz'
    'dWJqZWN0VHlwZYgBARJNCgpmaWVsZF90eXBlGAMgASgOMikucHJvdG8uc2VydmljZXMucHJvcG'
    'VydHlfc3ZjLnYxLkZpZWxkVHlwZUgCUglmaWVsZFR5cGWIAQESFwoEbmFtZRgEIAEoCUgDUgRu'
    'YW1liAEBEiUKC2Rlc2NyaXB0aW9uGAUgASgJSARSC2Rlc2NyaXB0aW9uiAEBEiQKC2lzX2FyY2'
    'hpdmVkGAYgASgISAVSCmlzQXJjaGl2ZWSIAQESGgoGc2V0X2lkGAggASgJSAZSBXNldElkiAEB'
    'EmMKC3NlbGVjdF9kYXRhGAogASgLMkAucHJvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLl'
    'VwZGF0ZVByb3BlcnR5UmVxdWVzdC5TZWxlY3REYXRhSABSCnNlbGVjdERhdGEakgMKClNlbGVj'
    'dERhdGESKgoOYWxsb3dfZnJlZXRleHQYASABKAhIAFINYWxsb3dGcmVldGV4dIgBARIlCg5yZW'
    '1vdmVfb3B0aW9ucxgCIAMoCVINcmVtb3ZlT3B0aW9ucxJ0Cg51cHNlcnRfb3B0aW9ucxgDIAMo'
    'CzJNLnByb3RvLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5VcGRhdGVQcm9wZXJ0eVJlcXVlc3'
    'QuU2VsZWN0RGF0YS5TZWxlY3RPcHRpb25SDXVwc2VydE9wdGlvbnMapwEKDFNlbGVjdE9wdGlv'
    'bhIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW1liAEBEiUKC2Rlc2NyaXB0aW'
    '9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEiAKCWlzX2N1c3RvbRgEIAEoCEgCUghpc0N1c3Rv'
    'bYgBAUIHCgVfbmFtZUIOCgxfZGVzY3JpcHRpb25CDAoKX2lzX2N1c3RvbUIRCg9fYWxsb3dfZn'
    'JlZXRleHRCEQoPZmllbGRfdHlwZV9kYXRhQg8KDV9zdWJqZWN0X3R5cGVCDQoLX2ZpZWxkX3R5'
    'cGVCBwoFX25hbWVCDgoMX2Rlc2NyaXB0aW9uQg4KDF9pc19hcmNoaXZlZEIJCgdfc2V0X2lk');

@$core.Deprecated('Use updatePropertyResponseDescriptor instead')
const UpdatePropertyResponse$json = {
  '1': 'UpdatePropertyResponse',
};

/// Descriptor for `UpdatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVQcm9wZXJ0eVJlc3BvbnNl');

