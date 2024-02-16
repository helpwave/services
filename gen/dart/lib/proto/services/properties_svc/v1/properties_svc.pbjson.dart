//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/properties_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createPropertySetRequestDescriptor instead')
const CreatePropertySetRequest$json = {
  '1': 'CreatePropertySetRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'properties', '3': 3, '4': 3, '5': 9, '10': 'properties'},
  ],
};

/// Descriptor for `CreatePropertySetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertySetRequestDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVQcm9wZXJ0eVNldFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIeCgpwcm9wZX'
    'J0aWVzGAMgAygJUgpwcm9wZXJ0aWVz');

@$core.Deprecated('Use createPropertySetResponseDescriptor instead')
const CreatePropertySetResponse$json = {
  '1': 'CreatePropertySetResponse',
  '2': [
    {'1': 'property_set_id', '3': 1, '4': 1, '5': 9, '10': 'propertySetId'},
  ],
};

/// Descriptor for `CreatePropertySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertySetResponseDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVQcm9wZXJ0eVNldFJlc3BvbnNlEiYKD3Byb3BlcnR5X3NldF9pZBgBIAEoCVINcH'
    'JvcGVydHlTZXRJZA==');

@$core.Deprecated('Use updatePropertySetRequestDescriptor instead')
const UpdatePropertySetRequest$json = {
  '1': 'UpdatePropertySetRequest',
  '2': [
    {'1': 'set_id', '3': 1, '4': 1, '5': 9, '10': 'setId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'added_properties', '3': 3, '4': 3, '5': 9, '10': 'addedProperties'},
    {'1': 'removed_properties', '3': 4, '4': 3, '5': 9, '10': 'removedProperties'},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `UpdatePropertySetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertySetRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVQcm9wZXJ0eVNldFJlcXVlc3QSFQoGc2V0X2lkGAEgASgJUgVzZXRJZBIXCgRuYW'
    '1lGAIgASgJSABSBG5hbWWIAQESKQoQYWRkZWRfcHJvcGVydGllcxgDIAMoCVIPYWRkZWRQcm9w'
    'ZXJ0aWVzEi0KEnJlbW92ZWRfcHJvcGVydGllcxgEIAMoCVIRcmVtb3ZlZFByb3BlcnRpZXNCBw'
    'oFX25hbWU=');

@$core.Deprecated('Use updatePropertySetResponseDescriptor instead')
const UpdatePropertySetResponse$json = {
  '1': 'UpdatePropertySetResponse',
};

/// Descriptor for `UpdatePropertySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertySetResponseDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVQcm9wZXJ0eVNldFJlc3BvbnNl');

@$core.Deprecated('Use deletePropertySetRequestDescriptor instead')
const DeletePropertySetRequest$json = {
  '1': 'DeletePropertySetRequest',
  '2': [
    {'1': 'set_id', '3': 1, '4': 1, '5': 9, '10': 'setId'},
  ],
};

/// Descriptor for `DeletePropertySetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePropertySetRequestDescriptor = $convert.base64Decode(
    'ChhEZWxldGVQcm9wZXJ0eVNldFJlcXVlc3QSFQoGc2V0X2lkGAEgASgJUgVzZXRJZA==');

@$core.Deprecated('Use deletePropertySetResponseDescriptor instead')
const DeletePropertySetResponse$json = {
  '1': 'DeletePropertySetResponse',
};

/// Descriptor for `DeletePropertySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePropertySetResponseDescriptor = $convert.base64Decode(
    'ChlEZWxldGVQcm9wZXJ0eVNldFJlc3BvbnNl');

@$core.Deprecated('Use createPropertyRequestDescriptor instead')
const CreatePropertyRequest$json = {
  '1': 'CreatePropertyRequest',
  '2': [
    {'1': 'context', '3': 1, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.ViewContext', '10': 'context'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'set_id', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'always_include_for_current_context', '3': 7, '4': 1, '5': 8, '9': 3, '10': 'alwaysIncludeForCurrentContext', '17': true},
    {'1': 'none', '3': 8, '4': 1, '5': 8, '9': 0, '10': 'none'},
    {'1': 'select_data', '3': 9, '4': 1, '5': 11, '6': '.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData', '9': 0, '10': 'selectData'},
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
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.proto.services.properties_svc.v1.CreatePropertyRequest.SelectData.SelectOption', '10': 'options'},
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
    'ChVDcmVhdGVQcm9wZXJ0eVJlcXVlc3QSRwoHY29udGV4dBgBIAEoDjItLnByb3RvLnNlcnZpY2'
    'VzLnByb3BlcnRpZXNfc3ZjLnYxLlZpZXdDb250ZXh0Ugdjb250ZXh0ElAKDHN1YmplY3RfdHlw'
    'ZRgCIAEoDjItLnByb3RvLnNlcnZpY2VzLnByb3BlcnRpZXNfc3ZjLnYxLlN1YmplY3RUeXBlUg'
    'tzdWJqZWN0VHlwZRJKCgpmaWVsZF90eXBlGAMgASgOMisucHJvdG8uc2VydmljZXMucHJvcGVy'
    'dGllc19zdmMudjEuRmllbGRUeXBlUglmaWVsZFR5cGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIlCg'
    'tkZXNjcmlwdGlvbhgFIAEoCUgBUgtkZXNjcmlwdGlvbogBARIaCgZzZXRfaWQYBiABKAlIAlIF'
    'c2V0SWSIAQESTwoiYWx3YXlzX2luY2x1ZGVfZm9yX2N1cnJlbnRfY29udGV4dBgHIAEoCEgDUh'
    '5hbHdheXNJbmNsdWRlRm9yQ3VycmVudENvbnRleHSIAQESFAoEbm9uZRgIIAEoCEgAUgRub25l'
    'EmUKC3NlbGVjdF9kYXRhGAkgASgLMkIucHJvdG8uc2VydmljZXMucHJvcGVydGllc19zdmMudj'
    'EuQ3JlYXRlUHJvcGVydHlSZXF1ZXN0LlNlbGVjdERhdGFIAFIKc2VsZWN0RGF0YRqRAgoKU2Vs'
    'ZWN0RGF0YRIqCg5hbGxvd19mcmVldGV4dBgBIAEoCEgAUg1hbGxvd0ZyZWV0ZXh0iAEBEmkKB2'
    '9wdGlvbnMYAiADKAsyTy5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0aWVzX3N2Yy52MS5DcmVhdGVQ'
    'cm9wZXJ0eVJlcXVlc3QuU2VsZWN0RGF0YS5TZWxlY3RPcHRpb25SB29wdGlvbnMaWQoMU2VsZW'
    'N0T3B0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YAiABKAlIAFILZGVz'
    'Y3JpcHRpb26IAQFCDgoMX2Rlc2NyaXB0aW9uQhEKD19hbGxvd19mcmVldGV4dEIRCg9maWVsZF'
    '90eXBlX2RhdGFCDgoMX2Rlc2NyaXB0aW9uQgkKB19zZXRfaWRCJQojX2Fsd2F5c19pbmNsdWRl'
    'X2Zvcl9jdXJyZW50X2NvbnRleHQ=');

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
    {'1': 'context', '3': 2, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.ViewContext', '10': 'context'},
  ],
};

/// Descriptor for `GetPropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertyRequestDescriptor = $convert.base64Decode(
    'ChJHZXRQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEkcKB2NvbnRleHQYAiABKA4yLS'
    '5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0aWVzX3N2Yy52MS5WaWV3Q29udGV4dFIHY29udGV4dA==');

@$core.Deprecated('Use getPropertyResponseDescriptor instead')
const GetPropertyResponse$json = {
  '1': 'GetPropertyResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'none', '3': 9, '4': 1, '5': 8, '9': 0, '10': 'none'},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.proto.services.properties_svc.v1.GetPropertyResponse.SelectData', '9': 0, '10': 'selectData'},
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
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.proto.services.properties_svc.v1.GetPropertyResponse.SelectData.SelectOption', '10': 'options'},
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
    'ChNHZXRQcm9wZXJ0eVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBJQCgxzdWJqZWN0X3R5cGUYAi'
    'ABKA4yLS5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0aWVzX3N2Yy52MS5TdWJqZWN0VHlwZVILc3Vi'
    'amVjdFR5cGUSSgoKZmllbGRfdHlwZRgDIAEoDjIrLnByb3RvLnNlcnZpY2VzLnByb3BlcnRpZX'
    'Nfc3ZjLnYxLkZpZWxkVHlwZVIJZmllbGRUeXBlEhIKBG5hbWUYBCABKAlSBG5hbWUSJQoLZGVz'
    'Y3JpcHRpb24YBSABKAlIAVILZGVzY3JpcHRpb26IAQESHwoLaXNfYXJjaGl2ZWQYBiABKAhSCm'
    'lzQXJjaGl2ZWQSGgoGc2V0X2lkGAggASgJSAJSBXNldElkiAEBEhQKBG5vbmUYCSABKAhIAFIE'
    'bm9uZRJjCgtzZWxlY3RfZGF0YRgKIAEoCzJALnByb3RvLnNlcnZpY2VzLnByb3BlcnRpZXNfc3'
    'ZjLnYxLkdldFByb3BlcnR5UmVzcG9uc2UuU2VsZWN0RGF0YUgAUgpzZWxlY3REYXRhEk8KImFs'
    'd2F5c19pbmNsdWRlX2Zvcl9jdXJyZW50X2NvbnRleHQYCyABKAhIA1IeYWx3YXlzSW5jbHVkZU'
    'ZvckN1cnJlbnRDb250ZXh0iAEBGo8CCgpTZWxlY3REYXRhEioKDmFsbG93X2ZyZWV0ZXh0GAEg'
    'ASgISABSDWFsbG93RnJlZXRleHSIAQESZwoHb3B0aW9ucxgCIAMoCzJNLnByb3RvLnNlcnZpY2'
    'VzLnByb3BlcnRpZXNfc3ZjLnYxLkdldFByb3BlcnR5UmVzcG9uc2UuU2VsZWN0RGF0YS5TZWxl'
    'Y3RPcHRpb25SB29wdGlvbnMaWQoMU2VsZWN0T3B0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSJQ'
    'oLZGVzY3JpcHRpb24YAiABKAlIAFILZGVzY3JpcHRpb26IAQFCDgoMX2Rlc2NyaXB0aW9uQhEK'
    'D19hbGxvd19mcmVldGV4dEIRCg9maWVsZF90eXBlX2RhdGFCDgoMX2Rlc2NyaXB0aW9uQgkKB1'
    '9zZXRfaWRCJQojX2Fsd2F5c19pbmNsdWRlX2Zvcl9jdXJyZW50X2NvbnRleHQ=');

@$core.Deprecated('Use getPropertiesRequestDescriptor instead')
const GetPropertiesRequest$json = {
  '1': 'GetPropertiesRequest',
  '2': [
    {'1': 'set_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'setId', '17': true},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.SubjectType', '9': 1, '10': 'subjectType', '17': true},
  ],
  '8': [
    {'1': '_set_id'},
    {'1': '_subject_type'},
  ],
};

/// Descriptor for `GetPropertiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesRequestDescriptor = $convert.base64Decode(
    'ChRHZXRQcm9wZXJ0aWVzUmVxdWVzdBIaCgZzZXRfaWQYASABKAlIAFIFc2V0SWSIAQESVQoMc3'
    'ViamVjdF90eXBlGAIgASgOMi0ucHJvdG8uc2VydmljZXMucHJvcGVydGllc19zdmMudjEuU3Vi'
    'amVjdFR5cGVIAVILc3ViamVjdFR5cGWIAQFCCQoHX3NldF9pZEIPCg1fc3ViamVjdF90eXBl');

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse$json = {
  '1': 'GetPropertiesResponse',
  '2': [
    {'1': 'properties', '3': 1, '4': 3, '5': 11, '6': '.proto.services.properties_svc.v1.GetPropertiesResponse.Property', '10': 'properties'},
  ],
  '3': [GetPropertiesResponse_Property$json],
};

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse_Property$json = {
  '1': 'Property',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'setId', '17': true},
    {'1': 'none', '3': 9, '4': 1, '5': 8, '9': 0, '10': 'none'},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData', '9': 0, '10': 'selectData'},
    {'1': 'always_include_for_current_context', '3': 11, '4': 1, '5': 8, '9': 3, '10': 'alwaysIncludeForCurrentContext', '17': true},
  ],
  '3': [GetPropertiesResponse_Property_SelectData$json],
  '8': [
    {'1': 'field_type_data'},
    {'1': '_description'},
    {'1': '_set_id'},
    {'1': '_always_include_for_current_context'},
  ],
};

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse_Property_SelectData$json = {
  '1': 'SelectData',
  '2': [
    {'1': 'allow_freetext', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'allowFreetext', '17': true},
    {'1': 'options', '3': 2, '4': 3, '5': 11, '6': '.proto.services.properties_svc.v1.GetPropertiesResponse.Property.SelectData.SelectOption', '10': 'options'},
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
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'is_custom', '3': 3, '4': 1, '5': 8, '10': 'isCustom'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `GetPropertiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesResponseDescriptor = $convert.base64Decode(
    'ChVHZXRQcm9wZXJ0aWVzUmVzcG9uc2USYAoKcHJvcGVydGllcxgBIAMoCzJALnByb3RvLnNlcn'
    'ZpY2VzLnByb3BlcnRpZXNfc3ZjLnYxLkdldFByb3BlcnRpZXNSZXNwb25zZS5Qcm9wZXJ0eVIK'
    'cHJvcGVydGllcxqWBwoIUHJvcGVydHkSDgoCaWQYASABKAlSAmlkElAKDHN1YmplY3RfdHlwZR'
    'gCIAEoDjItLnByb3RvLnNlcnZpY2VzLnByb3BlcnRpZXNfc3ZjLnYxLlN1YmplY3RUeXBlUgtz'
    'dWJqZWN0VHlwZRJKCgpmaWVsZF90eXBlGAMgASgOMisucHJvdG8uc2VydmljZXMucHJvcGVydG'
    'llc19zdmMudjEuRmllbGRUeXBlUglmaWVsZFR5cGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIlCgtk'
    'ZXNjcmlwdGlvbhgFIAEoCUgBUgtkZXNjcmlwdGlvbogBARIfCgtpc19hcmNoaXZlZBgGIAEoCF'
    'IKaXNBcmNoaXZlZBIaCgZzZXRfaWQYCCABKAlIAlIFc2V0SWSIAQESFAoEbm9uZRgJIAEoCEgA'
    'UgRub25lEm4KC3NlbGVjdF9kYXRhGAogASgLMksucHJvdG8uc2VydmljZXMucHJvcGVydGllc1'
    '9zdmMudjEuR2V0UHJvcGVydGllc1Jlc3BvbnNlLlByb3BlcnR5LlNlbGVjdERhdGFIAFIKc2Vs'
    'ZWN0RGF0YRJPCiJhbHdheXNfaW5jbHVkZV9mb3JfY3VycmVudF9jb250ZXh0GAsgASgISANSHm'
    'Fsd2F5c0luY2x1ZGVGb3JDdXJyZW50Q29udGV4dIgBARq3AgoKU2VsZWN0RGF0YRIqCg5hbGxv'
    'd19mcmVldGV4dBgBIAEoCEgAUg1hbGxvd0ZyZWV0ZXh0iAEBEnIKB29wdGlvbnMYAiADKAsyWC'
    '5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0aWVzX3N2Yy52MS5HZXRQcm9wZXJ0aWVzUmVzcG9uc2Uu'
    'UHJvcGVydHkuU2VsZWN0RGF0YS5TZWxlY3RPcHRpb25SB29wdGlvbnMadgoMU2VsZWN0T3B0aW'
    '9uEhIKBG5hbWUYASABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YAiABKAlIAFILZGVzY3JpcHRp'
    'b26IAQESGwoJaXNfY3VzdG9tGAMgASgIUghpc0N1c3RvbUIOCgxfZGVzY3JpcHRpb25CEQoPX2'
    'FsbG93X2ZyZWV0ZXh0QhEKD2ZpZWxkX3R5cGVfZGF0YUIOCgxfZGVzY3JpcHRpb25CCQoHX3Nl'
    'dF9pZEIlCiNfYWx3YXlzX2luY2x1ZGVfZm9yX2N1cnJlbnRfY29udGV4dA==');

@$core.Deprecated('Use updatePropertyRequestDescriptor instead')
const UpdatePropertyRequest$json = {
  '1': 'UpdatePropertyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.SubjectType', '9': 1, '10': 'subjectType', '17': true},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.properties_svc.v1.FieldType', '9': 2, '10': 'fieldType', '17': true},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'name', '17': true},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 4, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '9': 5, '10': 'isArchived', '17': true},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 6, '10': 'setId', '17': true},
    {'1': 'none', '3': 9, '4': 1, '5': 8, '9': 0, '10': 'none'},
    {'1': 'select_data', '3': 10, '4': 1, '5': 11, '6': '.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData', '9': 0, '10': 'selectData'},
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
    {'1': 'upsert_options', '3': 3, '4': 3, '5': 11, '6': '.proto.services.properties_svc.v1.UpdatePropertyRequest.SelectData.SelectOption', '10': 'upsertOptions'},
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
    'ChVVcGRhdGVQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlkElUKDHN1YmplY3RfdHlwZR'
    'gCIAEoDjItLnByb3RvLnNlcnZpY2VzLnByb3BlcnRpZXNfc3ZjLnYxLlN1YmplY3RUeXBlSAFS'
    'C3N1YmplY3RUeXBliAEBEk8KCmZpZWxkX3R5cGUYAyABKA4yKy5wcm90by5zZXJ2aWNlcy5wcm'
    '9wZXJ0aWVzX3N2Yy52MS5GaWVsZFR5cGVIAlIJZmllbGRUeXBliAEBEhcKBG5hbWUYBCABKAlI'
    'A1IEbmFtZYgBARIlCgtkZXNjcmlwdGlvbhgFIAEoCUgEUgtkZXNjcmlwdGlvbogBARIkCgtpc1'
    '9hcmNoaXZlZBgGIAEoCEgFUgppc0FyY2hpdmVkiAEBEhoKBnNldF9pZBgIIAEoCUgGUgVzZXRJ'
    'ZIgBARIUCgRub25lGAkgASgISABSBG5vbmUSZQoLc2VsZWN0X2RhdGEYCiABKAsyQi5wcm90by'
    '5zZXJ2aWNlcy5wcm9wZXJ0aWVzX3N2Yy52MS5VcGRhdGVQcm9wZXJ0eVJlcXVlc3QuU2VsZWN0'
    'RGF0YUgAUgpzZWxlY3REYXRhGpQDCgpTZWxlY3REYXRhEioKDmFsbG93X2ZyZWV0ZXh0GAEgAS'
    'gISABSDWFsbG93RnJlZXRleHSIAQESJQoOcmVtb3ZlX29wdGlvbnMYAiADKAlSDXJlbW92ZU9w'
    'dGlvbnMSdgoOdXBzZXJ0X29wdGlvbnMYAyADKAsyTy5wcm90by5zZXJ2aWNlcy5wcm9wZXJ0aW'
    'VzX3N2Yy52MS5VcGRhdGVQcm9wZXJ0eVJlcXVlc3QuU2VsZWN0RGF0YS5TZWxlY3RPcHRpb25S'
    'DXVwc2VydE9wdGlvbnMapwEKDFNlbGVjdE9wdGlvbhIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZR'
    'gCIAEoCUgAUgRuYW1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEB'
    'EiAKCWlzX2N1c3RvbRgEIAEoCEgCUghpc0N1c3RvbYgBAUIHCgVfbmFtZUIOCgxfZGVzY3JpcH'
    'Rpb25CDAoKX2lzX2N1c3RvbUIRCg9fYWxsb3dfZnJlZXRleHRCEQoPZmllbGRfdHlwZV9kYXRh'
    'Qg8KDV9zdWJqZWN0X3R5cGVCDQoLX2ZpZWxkX3R5cGVCBwoFX25hbWVCDgoMX2Rlc2NyaXB0aW'
    '9uQg4KDF9pc19hcmNoaXZlZEIJCgdfc2V0X2lk');

@$core.Deprecated('Use updatePropertyResponseDescriptor instead')
const UpdatePropertyResponse$json = {
  '1': 'UpdatePropertyResponse',
};

/// Descriptor for `UpdatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVQcm9wZXJ0eVJlc3BvbnNl');

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

@$core.Deprecated('Use updatePatientPropertyViewRuleRequestDescriptor instead')
const UpdatePatientPropertyViewRuleRequest$json = {
  '1': 'UpdatePatientPropertyViewRuleRequest',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '9': 1, '10': 'wardId', '17': true},
    {'1': 'patient_id', '3': 2, '4': 1, '5': 9, '9': 2, '10': 'patientId', '17': true},
    {'1': 'reset_soft_required', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'resetSoftRequired'},
    {'1': 'set_soft_required', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'setSoftRequired'},
    {'1': 'append_to_always_include', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'appendToAlwaysInclude', '17': true},
    {'1': 'remove_from_always_include', '3': 6, '4': 1, '5': 9, '9': 4, '10': 'removeFromAlwaysInclude', '17': true},
    {'1': 'append_to_dont_always_include', '3': 7, '4': 1, '5': 9, '9': 5, '10': 'appendToDontAlwaysInclude', '17': true},
    {'1': 'remove_from_dont_always_include', '3': 8, '4': 1, '5': 9, '9': 6, '10': 'removeFromDontAlwaysInclude', '17': true},
  ],
  '8': [
    {'1': 'soft_required'},
    {'1': '_ward_id'},
    {'1': '_patient_id'},
    {'1': '_append_to_always_include'},
    {'1': '_remove_from_always_include'},
    {'1': '_append_to_dont_always_include'},
    {'1': '_remove_from_dont_always_include'},
  ],
};

/// Descriptor for `UpdatePatientPropertyViewRuleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientPropertyViewRuleRequestDescriptor = $convert.base64Decode(
    'CiRVcGRhdGVQYXRpZW50UHJvcGVydHlWaWV3UnVsZVJlcXVlc3QSHAoHd2FyZF9pZBgBIAEoCU'
    'gBUgZ3YXJkSWSIAQESIgoKcGF0aWVudF9pZBgCIAEoCUgCUglwYXRpZW50SWSIAQESMAoTcmVz'
    'ZXRfc29mdF9yZXF1aXJlZBgDIAEoCEgAUhFyZXNldFNvZnRSZXF1aXJlZBIsChFzZXRfc29mdF'
    '9yZXF1aXJlZBgEIAEoCEgAUg9zZXRTb2Z0UmVxdWlyZWQSPAoYYXBwZW5kX3RvX2Fsd2F5c19p'
    'bmNsdWRlGAUgASgJSANSFWFwcGVuZFRvQWx3YXlzSW5jbHVkZYgBARJAChpyZW1vdmVfZnJvbV'
    '9hbHdheXNfaW5jbHVkZRgGIAEoCUgEUhdyZW1vdmVGcm9tQWx3YXlzSW5jbHVkZYgBARJFCh1h'
    'cHBlbmRfdG9fZG9udF9hbHdheXNfaW5jbHVkZRgHIAEoCUgFUhlhcHBlbmRUb0RvbnRBbHdheX'
    'NJbmNsdWRliAEBEkkKH3JlbW92ZV9mcm9tX2RvbnRfYWx3YXlzX2luY2x1ZGUYCCABKAlIBlIb'
    'cmVtb3ZlRnJvbURvbnRBbHdheXNJbmNsdWRliAEBQg8KDXNvZnRfcmVxdWlyZWRCCgoIX3dhcm'
    'RfaWRCDQoLX3BhdGllbnRfaWRCGwoZX2FwcGVuZF90b19hbHdheXNfaW5jbHVkZUIdChtfcmVt'
    'b3ZlX2Zyb21fYWx3YXlzX2luY2x1ZGVCIAoeX2FwcGVuZF90b19kb250X2Fsd2F5c19pbmNsdW'
    'RlQiIKIF9yZW1vdmVfZnJvbV9kb250X2Fsd2F5c19pbmNsdWRl');

@$core.Deprecated('Use updatePatientPropertyViewRuleResponseDescriptor instead')
const UpdatePatientPropertyViewRuleResponse$json = {
  '1': 'UpdatePatientPropertyViewRuleResponse',
};

/// Descriptor for `UpdatePatientPropertyViewRuleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientPropertyViewRuleResponseDescriptor = $convert.base64Decode(
    'CiVVcGRhdGVQYXRpZW50UHJvcGVydHlWaWV3UnVsZVJlc3BvbnNl');

@$core.Deprecated('Use updateOrderRequestDescriptor instead')
const UpdateOrderRequest$json = {
  '1': 'UpdateOrderRequest',
  '2': [
    {'1': 'property_id', '3': 1, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'prev_neighbor', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'prevNeighbor', '17': true},
  ],
  '8': [
    {'1': '_prev_neighbor'},
  ],
};

/// Descriptor for `UpdateOrderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrderRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVPcmRlclJlcXVlc3QSHwoLcHJvcGVydHlfaWQYASABKAlSCnByb3BlcnR5SWQSKA'
    'oNcHJldl9uZWlnaGJvchgCIAEoCUgAUgxwcmV2TmVpZ2hib3KIAQFCEAoOX3ByZXZfbmVpZ2hi'
    'b3I=');

@$core.Deprecated('Use updateOrderResponseDescriptor instead')
const UpdateOrderResponse$json = {
  '1': 'UpdateOrderResponse',
};

/// Descriptor for `UpdateOrderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrderResponseDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVPcmRlclJlc3BvbnNl');

