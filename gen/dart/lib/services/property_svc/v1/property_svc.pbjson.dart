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
    'Y2x1ZGVGb3JWaWV3U291cmNliAEBGrUCCgpTZWxlY3REYXRhEioKDmFsbG93X2ZyZWV0ZXh0GA'
    'EgASgISABSDWFsbG93RnJlZXRleHSIAQESXwoHb3B0aW9ucxgCIAMoCzJFLnNlcnZpY2VzLnBy'
    'b3BlcnR5X3N2Yy52MS5HZXRQcm9wZXJ0eVJlc3BvbnNlLlNlbGVjdERhdGEuU2VsZWN0T3B0aW'
    '9uUgdvcHRpb25zGoYBCgxTZWxlY3RPcHRpb24SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiAB'
    'KAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YAyABKAlIAFILZGVzY3JpcHRpb26IAQESGwoJaXNfY3'
    'VzdG9tGAQgASgIUghpc0N1c3RvbUIOCgxfZGVzY3JpcHRpb25CEQoPX2FsbG93X2ZyZWV0ZXh0'
    'QhEKD2ZpZWxkX3R5cGVfZGF0YUIOCgxfZGVzY3JpcHRpb25CCQoHX3NldF9pZEIhCh9fYWx3YX'
    'lzX2luY2x1ZGVfZm9yX3ZpZXdfc291cmNl');

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
  ],
  '3': [UpdatePropertyRequest_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_subject_type'},
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
    'c2VsZWN0RGF0YRqMAwoKU2VsZWN0RGF0YRIqCg5hbGxvd19mcmVldGV4dBgBIAEoCEgAUg1hbG'
    'xvd0ZyZWV0ZXh0iAEBEiUKDnJlbW92ZV9vcHRpb25zGAIgAygJUg1yZW1vdmVPcHRpb25zEm4K'
    'DnVwc2VydF9vcHRpb25zGAMgAygLMkcuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLlVwZGF0ZV'
    'Byb3BlcnR5UmVxdWVzdC5TZWxlY3REYXRhLlNlbGVjdE9wdGlvblINdXBzZXJ0T3B0aW9ucxqn'
    'AQoMU2VsZWN0T3B0aW9uEg4KAmlkGAEgASgJUgJpZBIXCgRuYW1lGAIgASgJSABSBG5hbWWIAQ'
    'ESJQoLZGVzY3JpcHRpb24YAyABKAlIAVILZGVzY3JpcHRpb26IAQESIAoJaXNfY3VzdG9tGAQg'
    'ASgISAJSCGlzQ3VzdG9tiAEBQgcKBV9uYW1lQg4KDF9kZXNjcmlwdGlvbkIMCgpfaXNfY3VzdG'
    '9tQhEKD19hbGxvd19mcmVldGV4dEIRCg9maWVsZF90eXBlX2RhdGFCDwoNX3N1YmplY3RfdHlw'
    'ZUIHCgVfbmFtZUIOCgxfZGVzY3JpcHRpb25CDgoMX2lzX2FyY2hpdmVkQgkKB19zZXRfaWQ=');

@$core.Deprecated('Use updatePropertyResponseDescriptor instead')
const UpdatePropertyResponse$json = {
  '1': 'UpdatePropertyResponse',
};

/// Descriptor for `UpdatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVQcm9wZXJ0eVJlc3BvbnNl');

@$core.Deprecated('Use getPropertiesBySubjectTypeRequestDescriptor instead')
const GetPropertiesBySubjectTypeRequest$json = {
  '1': 'GetPropertiesBySubjectTypeRequest',
  '2': [
    {'1': 'subject_type', '3': 1, '4': 1, '5': 14, '6': '.services.property_svc.v1.SubjectType', '10': 'subjectType'},
  ],
};

/// Descriptor for `GetPropertiesBySubjectTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesBySubjectTypeRequestDescriptor = $convert.base64Decode(
    'CiFHZXRQcm9wZXJ0aWVzQnlTdWJqZWN0VHlwZVJlcXVlc3QSSAoMc3ViamVjdF90eXBlGAEgAS'
    'gOMiUuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLlN1YmplY3RUeXBlUgtzdWJqZWN0VHlwZQ==');

@$core.Deprecated('Use getPropertiesBySubjectTypeResponseDescriptor instead')
const GetPropertiesBySubjectTypeResponse$json = {
  '1': 'GetPropertiesBySubjectTypeResponse',
  '2': [
    {'1': 'properties', '3': 1, '4': 3, '5': 11, '6': '.services.property_svc.v1.GetPropertiesBySubjectTypeResponse.Property', '10': 'properties'},
  ],
  '3': [GetPropertiesBySubjectTypeResponse_Property$json],
};

@$core.Deprecated('Use getPropertiesBySubjectTypeResponseDescriptor instead')
const GetPropertiesBySubjectTypeResponse_Property$json = {
  '1': 'Property',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.services.property_svc.v1.GetPropertiesBySubjectTypeResponse.Property.SelectData', '9': 0, '10': 'selectData'},
  ],
  '3': [GetPropertiesBySubjectTypeResponse_Property_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_description'},
    {'1': '_set_id'},
  ],
};

@$core.Deprecated('Use getPropertiesBySubjectTypeResponseDescriptor instead')
const GetPropertiesBySubjectTypeResponse_Property_SelectData$json = {
  '1': 'SelectData',
  '2': [
    {'1': 'allow_freetext', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'allowFreetext', '17': true},
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.services.property_svc.v1.GetPropertiesBySubjectTypeResponse.Property.SelectData.SelectOption', '10': 'options'},
  ],
  '3': [GetPropertiesBySubjectTypeResponse_Property_SelectData_SelectOption$json],
  '8': [
    {'1': '_allow_freetext'},
  ],
};

@$core.Deprecated('Use getPropertiesBySubjectTypeResponseDescriptor instead')
const GetPropertiesBySubjectTypeResponse_Property_SelectData_SelectOption$json = {
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

/// Descriptor for `GetPropertiesBySubjectTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesBySubjectTypeResponseDescriptor = $convert.base64Decode(
    'CiJHZXRQcm9wZXJ0aWVzQnlTdWJqZWN0VHlwZVJlc3BvbnNlEmUKCnByb3BlcnRpZXMYASADKA'
    'syRS5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuR2V0UHJvcGVydGllc0J5U3ViamVjdFR5cGVS'
    'ZXNwb25zZS5Qcm9wZXJ0eVIKcHJvcGVydGllcxqTBgoIUHJvcGVydHkSDgoCaWQYASABKAlSAm'
    'lkEkgKDHN1YmplY3RfdHlwZRgCIAEoDjIlLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5TdWJq'
    'ZWN0VHlwZVILc3ViamVjdFR5cGUSQgoKZmllbGRfdHlwZRgDIAEoDjIjLnNlcnZpY2VzLnByb3'
    'BlcnR5X3N2Yy52MS5GaWVsZFR5cGVSCWZpZWxkVHlwZRISCgRuYW1lGAQgASgJUgRuYW1lEiUK'
    'C2Rlc2NyaXB0aW9uGAUgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEh8KC2lzX2FyY2hpdmVkGAYgAS'
    'gIUgppc0FyY2hpdmVkEhoKBnNldF9pZBgIIAEoCUgCUgVzZXRJZIgBARJzCgtzZWxlY3RfZGF0'
    'YRgKIAEoCzJQLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5HZXRQcm9wZXJ0aWVzQnlTdWJqZW'
    'N0VHlwZVJlc3BvbnNlLlByb3BlcnR5LlNlbGVjdERhdGFIAFIKc2VsZWN0RGF0YRrNAgoKU2Vs'
    'ZWN0RGF0YRIqCg5hbGxvd19mcmVldGV4dBgBIAEoCEgAUg1hbGxvd0ZyZWV0ZXh0iAEBEncKB2'
    '9wdGlvbnMYAiADKAsyXS5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuR2V0UHJvcGVydGllc0J5'
    'U3ViamVjdFR5cGVSZXNwb25zZS5Qcm9wZXJ0eS5TZWxlY3REYXRhLlNlbGVjdE9wdGlvblIHb3'
    'B0aW9ucxqGAQoMU2VsZWN0T3B0aW9uEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRu'
    'YW1lEiUKC2Rlc2NyaXB0aW9uGAMgASgJSABSC2Rlc2NyaXB0aW9uiAEBEhsKCWlzX2N1c3RvbR'
    'gEIAEoCFIIaXNDdXN0b21CDgoMX2Rlc2NyaXB0aW9uQhEKD19hbGxvd19mcmVldGV4dEIRCg9m'
    'aWVsZF90eXBlX2RhdGFCDgoMX2Rlc2NyaXB0aW9uQgkKB19zZXRfaWQ=');

