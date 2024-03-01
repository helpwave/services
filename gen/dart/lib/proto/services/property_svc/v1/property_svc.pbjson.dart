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
    {'1': 'context', '3': 2, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.ViewContext', '10': 'context'},
  ],
};

/// Descriptor for `GetPropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyRequestDescriptor = $convert.base64Decode(
    'ChJHZXRQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEkUKB2NvbnRleHQYAiABKA4yKy'
    '5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudjEuVmlld0NvbnRleHRSB2NvbnRleHQ=');

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
    {'1': 'none', '3': 9, '4': 1, '5': 8, '9': 0, '10': 'none'},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.proto.services.property_svc.v1.GetPropertyResponse.SelectData', '9': 0, '10': 'selectData'},
    {'1': 'always_include_for_current_context', '3': 11, '4': 1, '5': 8, '9': 3, '10': 'alwaysIncludeForCurrentContext', '17': true},
  ],
  '3': [GetPropertyResponse_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_description'},
    {'1': '_set_id'},
    {'1': '_always_include_for_current_context'},
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
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
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
    'NoaXZlZBIaCgZzZXRfaWQYCCABKAlIAlIFc2V0SWSIAQESFAoEbm9uZRgJIAEoCEgAUgRub25l'
    'EmEKC3NlbGVjdF9kYXRhGAogASgLMj4ucHJvdG8uc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLk'
    'dldFByb3BlcnR5UmVzcG9uc2UuU2VsZWN0RGF0YUgAUgpzZWxlY3REYXRhEk8KImFsd2F5c19p'
    'bmNsdWRlX2Zvcl9jdXJyZW50X2NvbnRleHQYCyABKAhIA1IeYWx3YXlzSW5jbHVkZUZvckN1cn'
    'JlbnRDb250ZXh0iAEBGo0CCgpTZWxlY3REYXRhEioKDmFsbG93X2ZyZWV0ZXh0GAEgASgISABS'
    'DWFsbG93RnJlZXRleHSIAQESZQoHb3B0aW9ucxgCIAMoCzJLLnByb3RvLnNlcnZpY2VzLnByb3'
    'BlcnR5X3N2Yy52MS5HZXRQcm9wZXJ0eVJlc3BvbnNlLlNlbGVjdERhdGEuU2VsZWN0T3B0aW9u'
    'UgdvcHRpb25zGlkKDFNlbGVjdE9wdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEiUKC2Rlc2NyaX'
    'B0aW9uGAIgASgJSABSC2Rlc2NyaXB0aW9uiAEBQg4KDF9kZXNjcmlwdGlvbkIRCg9fYWxsb3df'
    'ZnJlZXRleHRCEQoPZmllbGRfdHlwZV9kYXRhQg4KDF9kZXNjcmlwdGlvbkIJCgdfc2V0X2lkQi'
    'UKI19hbHdheXNfaW5jbHVkZV9mb3JfY3VycmVudF9jb250ZXh0');

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
    {'1': 'none', '3': 9, '4': 1, '5': 8, '9': 0, '10': 'none'},
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
    'EhQKBG5vbmUYCSABKAhIAFIEbm9uZRJjCgtzZWxlY3RfZGF0YRgKIAEoCzJALnByb3RvLnNlcn'
    'ZpY2VzLnByb3BlcnR5X3N2Yy52MS5VcGRhdGVQcm9wZXJ0eVJlcXVlc3QuU2VsZWN0RGF0YUgA'
    'UgpzZWxlY3REYXRhGpIDCgpTZWxlY3REYXRhEioKDmFsbG93X2ZyZWV0ZXh0GAEgASgISABSDW'
    'FsbG93RnJlZXRleHSIAQESJQoOcmVtb3ZlX29wdGlvbnMYAiADKAlSDXJlbW92ZU9wdGlvbnMS'
    'dAoOdXBzZXJ0X29wdGlvbnMYAyADKAsyTS5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0eV9zdmMudj'
    'EuVXBkYXRlUHJvcGVydHlSZXF1ZXN0LlNlbGVjdERhdGEuU2VsZWN0T3B0aW9uUg11cHNlcnRP'
    'cHRpb25zGqcBCgxTZWxlY3RPcHRpb24SDgoCaWQYASABKAlSAmlkEhcKBG5hbWUYAiABKAlIAF'
    'IEbmFtZYgBARIlCgtkZXNjcmlwdGlvbhgDIAEoCUgBUgtkZXNjcmlwdGlvbogBARIgCglpc19j'
    'dXN0b20YBCABKAhIAlIIaXNDdXN0b22IAQFCBwoFX25hbWVCDgoMX2Rlc2NyaXB0aW9uQgwKCl'
    '9pc19jdXN0b21CEQoPX2FsbG93X2ZyZWV0ZXh0QhEKD2ZpZWxkX3R5cGVfZGF0YUIPCg1fc3Vi'
    'amVjdF90eXBlQg0KC19maWVsZF90eXBlQgcKBV9uYW1lQg4KDF9kZXNjcmlwdGlvbkIOCgxfaX'
    'NfYXJjaGl2ZWRCCQoHX3NldF9pZA==');

@$core.Deprecated('Use updatePropertyResponseDescriptor instead')
const UpdatePropertyResponse$json = {
  '1': 'UpdatePropertyResponse',
};

/// Descriptor for `UpdatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVQcm9wZXJ0eVJlc3BvbnNl');

