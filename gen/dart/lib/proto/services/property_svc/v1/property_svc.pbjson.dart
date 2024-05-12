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
    {'1': 'name', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'name', '17': true},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '9': 4, '10': 'isArchived', '17': true},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 5, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.UpdatePropertyRequest.SelectData', '9': 0, '10': 'selectData'},
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
    'dWJqZWN0VHlwZYgBARIXCgRuYW1lGAQgASgJSAJSBG5hbWWIAQESJQoLZGVzY3JpcHRpb24YBS'
    'ABKAlIA1ILZGVzY3JpcHRpb26IAQESJAoLaXNfYXJjaGl2ZWQYBiABKAhIBFIKaXNBcmNoaXZl'
    'ZIgBARIaCgZzZXRfaWQYCCABKAlIBVIFc2V0SWSIAQESYwoLc2VsZWN0X2RhdGEYCiABKAsyQC'
    '5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuVXBkYXRlUHJvcGVydHlSZXF1ZXN0LlNl'
    'bGVjdERhdGFIAFIKc2VsZWN0RGF0YRqSAwoKU2VsZWN0RGF0YRIqCg5hbGxvd19mcmVldGV4dB'
    'gBIAEoCEgAUg1hbGxvd0ZyZWV0ZXh0iAEBEiUKDnJlbW92ZV9vcHRpb25zGAIgAygJUg1yZW1v'
    'dmVPcHRpb25zEnQKDnVwc2VydF9vcHRpb25zGAMgAygLMk0ucHJvdG8uc2VydmljZXMucHJvcG'
    'VydHlfc3ZjLnYxLlVwZGF0ZVByb3BlcnR5UmVxdWVzdC5TZWxlY3REYXRhLlNlbGVjdE9wdGlv'
    'blINdXBzZXJ0T3B0aW9ucxqnAQoMU2VsZWN0T3B0aW9uEg4KAmlkGAEgASgJUgJpZBIXCgRuYW'
    '1lGAIgASgJSABSBG5hbWWIAQESJQoLZGVzY3JpcHRpb24YAyABKAlIAVILZGVzY3JpcHRpb26I'
    'AQESIAoJaXNfY3VzdG9tGAQgASgISAJSCGlzQ3VzdG9tiAEBQgcKBV9uYW1lQg4KDF9kZXNjcm'
    'lwdGlvbkIMCgpfaXNfY3VzdG9tQhEKD19hbGxvd19mcmVldGV4dEIRCg9maWVsZF90eXBlX2Rh'
    'dGFCDwoNX3N1YmplY3RfdHlwZUIHCgVfbmFtZUIOCgxfZGVzY3JpcHRpb25CDgoMX2lzX2FyY2'
    'hpdmVkQgkKB19zZXRfaWQ=');

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
    {'1': 'subject_type', '3': 1, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.SubjectType', '10': 'subjectType'},
  ],
};

/// Descriptor for `GetPropertiesBySubjectTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesBySubjectTypeRequestDescriptor = $convert.base64Decode(
    'CiFHZXRQcm9wZXJ0aWVzQnlTdWJqZWN0VHlwZVJlcXVlc3QSTgoMc3ViamVjdF90eXBlGAEgAS'
    'gOMisucHJvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLlN1YmplY3RUeXBlUgtzdWJqZWN0'
    'VHlwZQ==');

@$core.Deprecated('Use getPropertiesBySubjectTypeResponseDescriptor instead')
const GetPropertiesBySubjectTypeResponse$json = {
  '1': 'GetPropertiesBySubjectTypeResponse',
  '2': [
    {'1': 'properties', '3': 1, '4': 3, '5': 11, '6': '.proto.services.property_svc.v1.GetPropertiesBySubjectTypeResponse.Property', '10': 'properties'},
  ],
  '3': [GetPropertiesBySubjectTypeResponse_Property$json],
};

@$core.Deprecated('Use getPropertiesBySubjectTypeResponseDescriptor instead')
const GetPropertiesBySubjectTypeResponse_Property$json = {
  '1': 'Property',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.GetPropertiesBySubjectTypeResponse.Property.SelectData', '9': 0, '10': 'selectData'},
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
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.proto.services.property_svc.v1.GetPropertiesBySubjectTypeResponse.Property.SelectData.SelectOption', '10': 'options'},
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
    'CiJHZXRQcm9wZXJ0aWVzQnlTdWJqZWN0VHlwZVJlc3BvbnNlEmsKCnByb3BlcnRpZXMYASADKA'
    'sySy5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuR2V0UHJvcGVydGllc0J5U3ViamVj'
    'dFR5cGVSZXNwb25zZS5Qcm9wZXJ0eVIKcHJvcGVydGllcxqrBgoIUHJvcGVydHkSDgoCaWQYAS'
    'ABKAlSAmlkEk4KDHN1YmplY3RfdHlwZRgCIAEoDjIrLnByb3RvLnNlcnZpY2VzLnByb3BlcnR5'
    'X3N2Yy52MS5TdWJqZWN0VHlwZVILc3ViamVjdFR5cGUSSAoKZmllbGRfdHlwZRgDIAEoDjIpLn'
    'Byb3RvLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5GaWVsZFR5cGVSCWZpZWxkVHlwZRISCgRu'
    'YW1lGAQgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW9uGAUgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEh'
    '8KC2lzX2FyY2hpdmVkGAYgASgIUgppc0FyY2hpdmVkEhoKBnNldF9pZBgIIAEoCUgCUgVzZXRJ'
    'ZIgBARJ5CgtzZWxlY3RfZGF0YRgKIAEoCzJWLnByb3RvLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy'
    '52MS5HZXRQcm9wZXJ0aWVzQnlTdWJqZWN0VHlwZVJlc3BvbnNlLlByb3BlcnR5LlNlbGVjdERh'
    'dGFIAFIKc2VsZWN0RGF0YRrTAgoKU2VsZWN0RGF0YRIqCg5hbGxvd19mcmVldGV4dBgBIAEoCE'
    'gAUg1hbGxvd0ZyZWV0ZXh0iAEBEn0KB29wdGlvbnMYAiADKAsyYy5wcm90by5zZXJ2aWNlcy5w'
    'cm9wZXJ0eV9zdmMudjEuR2V0UHJvcGVydGllc0J5U3ViamVjdFR5cGVSZXNwb25zZS5Qcm9wZX'
    'J0eS5TZWxlY3REYXRhLlNlbGVjdE9wdGlvblIHb3B0aW9ucxqGAQoMU2VsZWN0T3B0aW9uEg4K'
    'AmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiUKC2Rlc2NyaXB0aW9uGAMgASgJSA'
    'BSC2Rlc2NyaXB0aW9uiAEBEhsKCWlzX2N1c3RvbRgEIAEoCFIIaXNDdXN0b21CDgoMX2Rlc2Ny'
    'aXB0aW9uQhEKD19hbGxvd19mcmVldGV4dEIRCg9maWVsZF90eXBlX2RhdGFCDgoMX2Rlc2NyaX'
    'B0aW9uQgkKB19zZXRfaWQ=');

