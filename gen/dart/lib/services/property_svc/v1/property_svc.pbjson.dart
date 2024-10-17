//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_svc.proto
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
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'set_id', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 9, '4': 1, '5': 11, '6': '.services.property_svc.v1.CreatePropertyRequest.SelectData', '9': 0, '10': 'selectData'},
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
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.services.property_svc.v1.CreatePropertyRequest.SelectData.SelectOption', '10': 'options'},
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
    'ChVDcmVhdGVQcm9wZXJ0eVJlcXVlc3QSSAoMc3ViamVjdF90eXBlGAIgASgOMiUuc2VydmljZX'
    'MucHJvcGVydHlfc3ZjLnYxLlN1YmplY3RUeXBlUgtzdWJqZWN0VHlwZRJCCgpmaWVsZF90eXBl'
    'GAMgASgOMiMuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkZpZWxkVHlwZVIJZmllbGRUeXBlEh'
    'IKBG5hbWUYBCABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YBSABKAlIAVILZGVzY3JpcHRpb26I'
    'AQESGgoGc2V0X2lkGAYgASgJSAJSBXNldElkiAEBEl0KC3NlbGVjdF9kYXRhGAkgASgLMjouc2'
    'VydmljZXMucHJvcGVydHlfc3ZjLnYxLkNyZWF0ZVByb3BlcnR5UmVxdWVzdC5TZWxlY3REYXRh'
    'SABSCnNlbGVjdERhdGEaiQIKClNlbGVjdERhdGESKgoOYWxsb3dfZnJlZXRleHQYASABKAhIAF'
    'INYWxsb3dGcmVldGV4dIgBARJhCgdvcHRpb25zGAIgAygLMkcuc2VydmljZXMucHJvcGVydHlf'
    'c3ZjLnYxLkNyZWF0ZVByb3BlcnR5UmVxdWVzdC5TZWxlY3REYXRhLlNlbGVjdE9wdGlvblIHb3'
    'B0aW9ucxpZCgxTZWxlY3RPcHRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlv'
    'bhgCIAEoCUgAUgtkZXNjcmlwdGlvbogBAUIOCgxfZGVzY3JpcHRpb25CEQoPX2FsbG93X2ZyZW'
    'V0ZXh0QhEKD2ZpZWxkX3R5cGVfZGF0YUIOCgxfZGVzY3JpcHRpb25CCQoHX3NldF9pZA==');

@$core.Deprecated('Use createPropertyResponseDescriptor instead')
const CreatePropertyResponse$json = {
  '1': 'CreatePropertyResponse',
  '2': [
    {'1': 'property_id', '3': 1, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `CreatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertyResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVQcm9wZXJ0eVJlc3BvbnNlEh8KC3Byb3BlcnR5X2lkGAEgASgJUgpwcm9wZXJ0eU'
    'lkEiAKC2NvbnNpc3RlbmN5GAIgASgJUgtjb25zaXN0ZW5jeQ==');

@$core.Deprecated('Use getPropertyRequestDescriptor instead')
const GetPropertyRequest$json = {
  '1': 'GetPropertyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'view_source', '3': 2, '4': 1, '5': 11, '6': '.services.property_svc.v1.GetPropertyRequest.ViewSource', '9': 0, '10': 'viewSource', '17': true},
  ],
  '3': [GetPropertyRequest_ViewSource$json],
  '8': [
    {'1': '_view_source'},
  ],
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
    'ChJHZXRQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEl0KC3ZpZXdfc291cmNlGAIgAS'
    'gLMjcuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkdldFByb3BlcnR5UmVxdWVzdC5WaWV3U291'
    'cmNlSABSCnZpZXdTb3VyY2WIAQEaSgoKVmlld1NvdXJjZRIYCgZnbG9iYWwYASABKAhIAFIGZ2'
    'xvYmFsEhkKB3dhcmRfaWQYAiABKAlIAFIGd2FyZElkQgcKBXZhbHVlQg4KDF92aWV3X3NvdXJj'
    'ZQ==');

@$core.Deprecated('Use getPropertyResponseDescriptor instead')
const GetPropertyResponse$json = {
  '1': 'GetPropertyResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.services.property_svc.v1.GetPropertyResponse.SelectData', '9': 0, '10': 'selectData'},
    {'1': 'always_include_for_view_source', '3': 11, '4': 1, '5': 8, '9': 3, '10': 'alwaysIncludeForViewSource', '17': true},
    {'1': 'consistency', '3': 12, '4': 1, '5': 9, '10': 'consistency'},
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
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.services.property_svc.v1.GetPropertyResponse.SelectData.SelectOption', '10': 'options'},
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
    {'1': 'consistency', '3': 5, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `GetPropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyResponseDescriptor = $convert.base64Decode(
    'ChNHZXRQcm9wZXJ0eVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBJICgxzdWJqZWN0X3R5cGUYAi'
    'ABKA4yJS5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuU3ViamVjdFR5cGVSC3N1YmplY3RUeXBl'
    'EkIKCmZpZWxkX3R5cGUYAyABKA4yIy5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuRmllbGRUeX'
    'BlUglmaWVsZFR5cGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgFIAEoCUgB'
    'UgtkZXNjcmlwdGlvbogBARIfCgtpc19hcmNoaXZlZBgGIAEoCFIKaXNBcmNoaXZlZBIaCgZzZX'
    'RfaWQYCCABKAlIAlIFc2V0SWSIAQESWwoLc2VsZWN0X2RhdGEYCiABKAsyOC5zZXJ2aWNlcy5w'
    'cm9wZXJ0eV9zdmMudjEuR2V0UHJvcGVydHlSZXNwb25zZS5TZWxlY3REYXRhSABSCnNlbGVjdE'
    'RhdGESRwoeYWx3YXlzX2luY2x1ZGVfZm9yX3ZpZXdfc291cmNlGAsgASgISANSGmFsd2F5c0lu'
    'Y2x1ZGVGb3JWaWV3U291cmNliAEBEiAKC2NvbnNpc3RlbmN5GAwgASgJUgtjb25zaXN0ZW5jeR'
    'rXAgoKU2VsZWN0RGF0YRIqCg5hbGxvd19mcmVldGV4dBgBIAEoCEgAUg1hbGxvd0ZyZWV0ZXh0'
    'iAEBEl8KB29wdGlvbnMYAiADKAsyRS5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuR2V0UHJvcG'
    'VydHlSZXNwb25zZS5TZWxlY3REYXRhLlNlbGVjdE9wdGlvblIHb3B0aW9ucxqoAQoMU2VsZWN0'
    'T3B0aW9uEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW'
    '9uGAMgASgJSABSC2Rlc2NyaXB0aW9uiAEBEhsKCWlzX2N1c3RvbRgEIAEoCFIIaXNDdXN0b20S'
    'IAoLY29uc2lzdGVuY3kYBSABKAlSC2NvbnNpc3RlbmN5Qg4KDF9kZXNjcmlwdGlvbkIRCg9fYW'
    'xsb3dfZnJlZXRleHRCEQoPZmllbGRfdHlwZV9kYXRhQg4KDF9kZXNjcmlwdGlvbkIJCgdfc2V0'
    'X2lkQiEKH19hbHdheXNfaW5jbHVkZV9mb3Jfdmlld19zb3VyY2U=');

@$core.Deprecated('Use updatePropertyRequestDescriptor instead')
const UpdatePropertyRequest$json = {
  '1': 'UpdatePropertyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.services.property_svc.v1.SubjectType', '9': 1, '10': 'subjectType', '17': true},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'name', '17': true},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '9': 4, '10': 'isArchived', '17': true},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 5, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.services.property_svc.v1.UpdatePropertyRequest.SelectData', '9': 0, '10': 'selectData'},
    {'1': 'consistency', '3': 11, '4': 1, '5': 9, '9': 6, '10': 'consistency', '17': true},
  ],
  '3': [UpdatePropertyRequest_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_subject_type'},
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_is_archived'},
    {'1': '_set_id'},
    {'1': '_consistency'},
  ],
};

@$core.Deprecated('Use updatePropertyRequestDescriptor instead')
const UpdatePropertyRequest_SelectData$json = {
  '1': 'SelectData',
  '2': [
    {'1': 'allow_freetext', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'allowFreetext', '17': true},
    {'1': 'remove_options', '3': 2, '4': 3, '5': 9, '10': 'removeOptions'},
    {'1': 'upsert_options', '3': 3, '4': 3, '5': 11, '6': '.services.property_svc.v1.UpdatePropertyRequest.SelectData.SelectOption', '10': 'upsertOptions'},
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
    'ChVVcGRhdGVQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEk0KDHN1YmplY3RfdHlwZR'
    'gCIAEoDjIlLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5TdWJqZWN0VHlwZUgBUgtzdWJqZWN0'
    'VHlwZYgBARIXCgRuYW1lGAQgASgJSAJSBG5hbWWIAQESJQoLZGVzY3JpcHRpb24YBSABKAlIA1'
    'ILZGVzY3JpcHRpb26IAQESJAoLaXNfYXJjaGl2ZWQYBiABKAhIBFIKaXNBcmNoaXZlZIgBARIa'
    'CgZzZXRfaWQYCCABKAlIBVIFc2V0SWSIAQESXQoLc2VsZWN0X2RhdGEYCiABKAsyOi5zZXJ2aW'
    'Nlcy5wcm9wZXJ0eV9zdmMudjEuVXBkYXRlUHJvcGVydHlSZXF1ZXN0LlNlbGVjdERhdGFIAFIK'
    'c2VsZWN0RGF0YRIlCgtjb25zaXN0ZW5jeRgLIAEoCUgGUgtjb25zaXN0ZW5jeYgBARqMAwoKU2'
    'VsZWN0RGF0YRIqCg5hbGxvd19mcmVldGV4dBgBIAEoCEgAUg1hbGxvd0ZyZWV0ZXh0iAEBEiUK'
    'DnJlbW92ZV9vcHRpb25zGAIgAygJUg1yZW1vdmVPcHRpb25zEm4KDnVwc2VydF9vcHRpb25zGA'
    'MgAygLMkcuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLlVwZGF0ZVByb3BlcnR5UmVxdWVzdC5T'
    'ZWxlY3REYXRhLlNlbGVjdE9wdGlvblINdXBzZXJ0T3B0aW9ucxqnAQoMU2VsZWN0T3B0aW9uEg'
    '4KAmlkGAEgASgJUgJpZBIXCgRuYW1lGAIgASgJSABSBG5hbWWIAQESJQoLZGVzY3JpcHRpb24Y'
    'AyABKAlIAVILZGVzY3JpcHRpb26IAQESIAoJaXNfY3VzdG9tGAQgASgISAJSCGlzQ3VzdG9tiA'
    'EBQgcKBV9uYW1lQg4KDF9kZXNjcmlwdGlvbkIMCgpfaXNfY3VzdG9tQhEKD19hbGxvd19mcmVl'
    'dGV4dEIRCg9maWVsZF90eXBlX2RhdGFCDwoNX3N1YmplY3RfdHlwZUIHCgVfbmFtZUIOCgxfZG'
    'VzY3JpcHRpb25CDgoMX2lzX2FyY2hpdmVkQgkKB19zZXRfaWRCDgoMX2NvbnNpc3RlbmN5');

@$core.Deprecated('Use updatePropertyResponseDescriptor instead')
const UpdatePropertyResponse$json = {
  '1': 'UpdatePropertyResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `UpdatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVQcm9wZXJ0eVJlc3BvbnNlEjkKCGNvbmZsaWN0GAEgASgLMhgubGlicy5jb21tb2'
    '4udjEuQ29uZmxpY3RIAFIIY29uZmxpY3SIAQESIAoLY29uc2lzdGVuY3kYAiABKAlSC2NvbnNp'
    'c3RlbmN5QgsKCV9jb25mbGljdA==');

@$core.Deprecated('Use getPropertiesRequestDescriptor instead')
const GetPropertiesRequest$json = {
  '1': 'GetPropertiesRequest',
  '2': [
    {'1': 'subject_type', '3': 1, '4': 1, '5': 14, '6': '.services.property_svc.v1.SubjectType', '9': 0, '10': 'subjectType', '17': true},
  ],
  '8': [
    {'1': '_subject_type'},
  ],
};

/// Descriptor for `GetPropertiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesRequestDescriptor = $convert.base64Decode(
    'ChRHZXRQcm9wZXJ0aWVzUmVxdWVzdBJNCgxzdWJqZWN0X3R5cGUYASABKA4yJS5zZXJ2aWNlcy'
    '5wcm9wZXJ0eV9zdmMudjEuU3ViamVjdFR5cGVIAFILc3ViamVjdFR5cGWIAQFCDwoNX3N1Ympl'
    'Y3RfdHlwZQ==');

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse$json = {
  '1': 'GetPropertiesResponse',
  '2': [
    {'1': 'properties', '3': 1, '4': 3, '5': 11, '6': '.services.property_svc.v1.GetPropertiesResponse.Property', '10': 'properties'},
  ],
  '3': [GetPropertiesResponse_Property$json],
};

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse_Property$json = {
  '1': 'Property',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.services.property_svc.v1.GetPropertiesResponse.Property.SelectData', '9': 0, '10': 'selectData'},
    {'1': 'consistency', '3': 9, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '3': [GetPropertiesResponse_Property_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_description'},
    {'1': '_set_id'},
  ],
};

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse_Property_SelectData$json = {
  '1': 'SelectData',
  '2': [
    {'1': 'allow_freetext', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'allowFreetext', '17': true},
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.services.property_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption', '10': 'options'},
  ],
  '3': [GetPropertiesResponse_Property_SelectData_SelectOption$json],
  '8': [
    {'1': '_allow_freetext'},
  ],
};

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse_Property_SelectData_SelectOption$json = {
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

/// Descriptor for `GetPropertiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesResponseDescriptor = $convert.base64Decode(
    'ChVHZXRQcm9wZXJ0aWVzUmVzcG9uc2USWAoKcHJvcGVydGllcxgBIAMoCzI4LnNlcnZpY2VzLn'
    'Byb3BlcnR5X3N2Yy52MS5HZXRQcm9wZXJ0aWVzUmVzcG9uc2UuUHJvcGVydHlSCnByb3BlcnRp'
    'ZXMamwYKCFByb3BlcnR5Eg4KAmlkGAEgASgJUgJpZBJICgxzdWJqZWN0X3R5cGUYAiABKA4yJS'
    '5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuU3ViamVjdFR5cGVSC3N1YmplY3RUeXBlEkIKCmZp'
    'ZWxkX3R5cGUYAyABKA4yIy5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuRmllbGRUeXBlUglmaW'
    'VsZFR5cGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgFIAEoCUgBUgtkZXNj'
    'cmlwdGlvbogBARIfCgtpc19hcmNoaXZlZBgGIAEoCFIKaXNBcmNoaXZlZBIaCgZzZXRfaWQYCC'
    'ABKAlIAlIFc2V0SWSIAQESZgoLc2VsZWN0X2RhdGEYCiABKAsyQy5zZXJ2aWNlcy5wcm9wZXJ0'
    'eV9zdmMudjEuR2V0UHJvcGVydGllc1Jlc3BvbnNlLlByb3BlcnR5LlNlbGVjdERhdGFIAFIKc2'
    'VsZWN0RGF0YRIgCgtjb25zaXN0ZW5jeRgJIAEoCVILY29uc2lzdGVuY3kawAIKClNlbGVjdERh'
    'dGESKgoOYWxsb3dfZnJlZXRleHQYASABKAhIAFINYWxsb3dGcmVldGV4dIgBARJqCgdvcHRpb2'
    '5zGAIgAygLMlAuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkdldFByb3BlcnRpZXNSZXNwb25z'
    'ZS5Qcm9wZXJ0eS5TZWxlY3REYXRhLlNlbGVjdE9wdGlvblIHb3B0aW9ucxqGAQoMU2VsZWN0T3'
    'B0aW9uEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW9u'
    'GAMgASgJSABSC2Rlc2NyaXB0aW9uiAEBEhsKCWlzX2N1c3RvbRgEIAEoCFIIaXNDdXN0b21CDg'
    'oMX2Rlc2NyaXB0aW9uQhEKD19hbGxvd19mcmVldGV4dEIRCg9maWVsZF90eXBlX2RhdGFCDgoM'
    'X2Rlc2NyaXB0aW9uQgkKB19zZXRfaWQ=');

