//
//  Generated code. Do not modify.
//  source: proto/services/tasks_svc/v1/properties_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use subjectTypeDescriptor instead')
const SubjectType$json = {
  '1': 'SubjectType',
  '2': [
    {'1': 'SUBJECT_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'SUBJECT_TYPE_PATIENT', '2': 1},
  ],
};

/// Descriptor for `SubjectType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List subjectTypeDescriptor = $convert.base64Decode(
    'CgtTdWJqZWN0VHlwZRIcChhTVUJKRUNUX1RZUEVfVU5TUEVDSUZJRUQQABIYChRTVUJKRUNUX1'
    'RZUEVfUEFUSUVOVBAB');

@$core.Deprecated('Use fieldTypeDescriptor instead')
const FieldType$json = {
  '1': 'FieldType',
  '2': [
    {'1': 'FIELD_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'FIELD_TYPE_TEXT', '2': 1},
    {'1': 'FIELD_TYPE_NUMBER', '2': 2},
    {'1': 'FIELD_TYPE_CHECKBOX', '2': 3},
    {'1': 'FIELD_TYPE_DATE', '2': 4},
    {'1': 'FIELD_TYPE_DATE_TIME', '2': 5},
    {'1': 'FIELD_TYPE_SELECT', '2': 6},
  ],
};

/// Descriptor for `FieldType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fieldTypeDescriptor = $convert.base64Decode(
    'CglGaWVsZFR5cGUSGgoWRklFTERfVFlQRV9VTlNQRUNJRklFRBAAEhMKD0ZJRUxEX1RZUEVfVE'
    'VYVBABEhUKEUZJRUxEX1RZUEVfTlVNQkVSEAISFwoTRklFTERfVFlQRV9DSEVDS0JPWBADEhMK'
    'D0ZJRUxEX1RZUEVfREFURRAEEhgKFEZJRUxEX1RZUEVfREFURV9USU1FEAUSFQoRRklFTERfVF'
    'lQRV9TRUxFQ1QQBg==');

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
};

/// Descriptor for `CreatePropertySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertySetResponseDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVQcm9wZXJ0eVNldFJlc3BvbnNl');

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
    {'1': 'subject_type', '3': 1, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'is_soft_required', '3': 5, '4': 1, '5': 8, '10': 'isSoftRequired'},
    {'1': 'set_id', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'setId', '17': true},
    {'1': 'select_options', '3': 7, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.CreatePropertyRequest.SelectOption', '10': 'selectOptions'},
  ],
  '3': [CreatePropertyRequest_SelectOption$json],
  '8': [
    {'1': '_description'},
    {'1': '_set_id'},
  ],
};

@$core.Deprecated('Use createPropertyRequestDescriptor instead')
const CreatePropertyRequest_SelectOption$json = {
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
    'ChVDcmVhdGVQcm9wZXJ0eVJlcXVlc3QSSwoMc3ViamVjdF90eXBlGAEgASgOMigucHJvdG8uc2'
    'VydmljZXMudGFza3Nfc3ZjLnYxLlN1YmplY3RUeXBlUgtzdWJqZWN0VHlwZRJFCgpmaWVsZF90'
    'eXBlGAIgASgOMiYucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYxLkZpZWxkVHlwZVIJZmllbG'
    'RUeXBlEhIKBG5hbWUYAyABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YBCABKAlIAFILZGVzY3Jp'
    'cHRpb26IAQESKAoQaXNfc29mdF9yZXF1aXJlZBgFIAEoCFIOaXNTb2Z0UmVxdWlyZWQSGgoGc2'
    'V0X2lkGAYgASgJSAFSBXNldElkiAEBEmYKDnNlbGVjdF9vcHRpb25zGAcgAygLMj8ucHJvdG8u'
    'c2VydmljZXMudGFza3Nfc3ZjLnYxLkNyZWF0ZVByb3BlcnR5UmVxdWVzdC5TZWxlY3RPcHRpb2'
    '5SDXNlbGVjdE9wdGlvbnMaWQoMU2VsZWN0T3B0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSJQoL'
    'ZGVzY3JpcHRpb24YAiABKAlIAFILZGVzY3JpcHRpb26IAQFCDgoMX2Rlc2NyaXB0aW9uQg4KDF'
    '9kZXNjcmlwdGlvbkIJCgdfc2V0X2lk');

@$core.Deprecated('Use createPropertyResponseDescriptor instead')
const CreatePropertyResponse$json = {
  '1': 'CreatePropertyResponse',
};

/// Descriptor for `CreatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertyResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVQcm9wZXJ0eVJlc3BvbnNl');

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
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'is_soft_required', '3': 7, '4': 1, '5': 8, '10': 'isSoftRequired'},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'setId', '17': true},
    {'1': 'select_options', '3': 9, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPropertyResponse.SelectOption', '10': 'selectOptions'},
  ],
  '3': [GetPropertyResponse_SelectOption$json],
  '8': [
    {'1': '_description'},
    {'1': '_set_id'},
  ],
};

@$core.Deprecated('Use getPropertyResponseDescriptor instead')
const GetPropertyResponse_SelectOption$json = {
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
    'ChNHZXRQcm9wZXJ0eVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBJLCgxzdWJqZWN0X3R5cGUYAi'
    'ABKA4yKC5wcm90by5zZXJ2aWNlcy50YXNrc19zdmMudjEuU3ViamVjdFR5cGVSC3N1YmplY3RU'
    'eXBlEkUKCmZpZWxkX3R5cGUYAyABKA4yJi5wcm90by5zZXJ2aWNlcy50YXNrc19zdmMudjEuRm'
    'llbGRUeXBlUglmaWVsZFR5cGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgF'
    'IAEoCUgAUgtkZXNjcmlwdGlvbogBARIfCgtpc19hcmNoaXZlZBgGIAEoCFIKaXNBcmNoaXZlZB'
    'IoChBpc19zb2Z0X3JlcXVpcmVkGAcgASgIUg5pc1NvZnRSZXF1aXJlZBIaCgZzZXRfaWQYCCAB'
    'KAlIAVIFc2V0SWSIAQESZAoOc2VsZWN0X29wdGlvbnMYCSADKAsyPS5wcm90by5zZXJ2aWNlcy'
    '50YXNrc19zdmMudjEuR2V0UHJvcGVydHlSZXNwb25zZS5TZWxlY3RPcHRpb25SDXNlbGVjdE9w'
    'dGlvbnMaWQoMU2VsZWN0T3B0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb2'
    '4YAiABKAlIAFILZGVzY3JpcHRpb26IAQFCDgoMX2Rlc2NyaXB0aW9uQg4KDF9kZXNjcmlwdGlv'
    'bkIJCgdfc2V0X2lk');

@$core.Deprecated('Use getPropertiesRequestDescriptor instead')
const GetPropertiesRequest$json = {
  '1': 'GetPropertiesRequest',
  '2': [
    {'1': 'set_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'setId', '17': true},
  ],
  '8': [
    {'1': '_set_id'},
  ],
};

/// Descriptor for `GetPropertiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesRequestDescriptor = $convert.base64Decode(
    'ChRHZXRQcm9wZXJ0aWVzUmVxdWVzdBIaCgZzZXRfaWQYASABKAlIAFIFc2V0SWSIAQFCCQoHX3'
    'NldF9pZA==');

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse$json = {
  '1': 'GetPropertiesResponse',
  '2': [
    {'1': 'properties', '3': 1, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPropertiesResponse.Property', '10': 'properties'},
  ],
  '3': [GetPropertiesResponse_Property$json],
};

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse_Property$json = {
  '1': 'Property',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'is_soft_required', '3': 7, '4': 1, '5': 8, '10': 'isSoftRequired'},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 1, '10': 'setId', '17': true},
    {'1': 'select_options', '3': 9, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetPropertiesResponse.Property.SelectOption', '10': 'selectOptions'},
  ],
  '3': [GetPropertiesResponse_Property_SelectOption$json],
  '8': [
    {'1': '_description'},
    {'1': '_set_id'},
  ],
};

@$core.Deprecated('Use getPropertiesResponseDescriptor instead')
const GetPropertiesResponse_Property_SelectOption$json = {
  '1': 'SelectOption',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `GetPropertiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesResponseDescriptor = $convert.base64Decode(
    'ChVHZXRQcm9wZXJ0aWVzUmVzcG9uc2USWwoKcHJvcGVydGllcxgBIAMoCzI7LnByb3RvLnNlcn'
    'ZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQcm9wZXJ0aWVzUmVzcG9uc2UuUHJvcGVydHlSCnByb3Bl'
    'cnRpZXMatwQKCFByb3BlcnR5Eg4KAmlkGAEgASgJUgJpZBJLCgxzdWJqZWN0X3R5cGUYAiABKA'
    '4yKC5wcm90by5zZXJ2aWNlcy50YXNrc19zdmMudjEuU3ViamVjdFR5cGVSC3N1YmplY3RUeXBl'
    'EkUKCmZpZWxkX3R5cGUYAyABKA4yJi5wcm90by5zZXJ2aWNlcy50YXNrc19zdmMudjEuRmllbG'
    'RUeXBlUglmaWVsZFR5cGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgFIAEo'
    'CUgAUgtkZXNjcmlwdGlvbogBARIfCgtpc19hcmNoaXZlZBgGIAEoCFIKaXNBcmNoaXZlZBIoCh'
    'Bpc19zb2Z0X3JlcXVpcmVkGAcgASgIUg5pc1NvZnRSZXF1aXJlZBIaCgZzZXRfaWQYCCABKAlI'
    'AVIFc2V0SWSIAQESbwoOc2VsZWN0X29wdGlvbnMYCSADKAsySC5wcm90by5zZXJ2aWNlcy50YX'
    'Nrc19zdmMudjEuR2V0UHJvcGVydGllc1Jlc3BvbnNlLlByb3BlcnR5LlNlbGVjdE9wdGlvblIN'
    'c2VsZWN0T3B0aW9ucxpZCgxTZWxlY3RPcHRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRIlCgtkZX'
    'NjcmlwdGlvbhgCIAEoCUgAUgtkZXNjcmlwdGlvbogBAUIOCgxfZGVzY3JpcHRpb25CDgoMX2Rl'
    'c2NyaXB0aW9uQgkKB19zZXRfaWQ=');

@$core.Deprecated('Use updatePropertyRequestDescriptor instead')
const UpdatePropertyRequest$json = {
  '1': 'UpdatePropertyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.SubjectType', '9': 0, '10': 'subjectType', '17': true},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.FieldType', '9': 1, '10': 'fieldType', '17': true},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'name', '17': true},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '9': 4, '10': 'isArchived', '17': true},
    {'1': 'is_soft_required', '3': 7, '4': 1, '5': 8, '9': 5, '10': 'isSoftRequired', '17': true},
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 6, '10': 'setId', '17': true},
    {'1': 'new_or_updated_select_options', '3': 9, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.UpdatePropertyRequest.SelectOption', '10': 'newOrUpdatedSelectOptions'},
    {'1': 'remove_select_options', '3': 10, '4': 3, '5': 9, '10': 'removeSelectOptions'},
  ],
  '3': [UpdatePropertyRequest_SelectOption$json],
  '8': [
    {'1': '_subject_type'},
    {'1': '_field_type'},
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_is_archived'},
    {'1': '_is_soft_required'},
    {'1': '_set_id'},
  ],
};

@$core.Deprecated('Use updatePropertyRequestDescriptor instead')
const UpdatePropertyRequest_SelectOption$json = {
  '1': 'SelectOption',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_description'},
  ],
};

/// Descriptor for `UpdatePropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePropertyRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlkElAKDHN1YmplY3RfdHlwZR'
    'gCIAEoDjIoLnByb3RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5TdWJqZWN0VHlwZUgAUgtzdWJq'
    'ZWN0VHlwZYgBARJKCgpmaWVsZF90eXBlGAMgASgOMiYucHJvdG8uc2VydmljZXMudGFza3Nfc3'
    'ZjLnYxLkZpZWxkVHlwZUgBUglmaWVsZFR5cGWIAQESFwoEbmFtZRgEIAEoCUgCUgRuYW1liAEB'
    'EiUKC2Rlc2NyaXB0aW9uGAUgASgJSANSC2Rlc2NyaXB0aW9uiAEBEiQKC2lzX2FyY2hpdmVkGA'
    'YgASgISARSCmlzQXJjaGl2ZWSIAQESLQoQaXNfc29mdF9yZXF1aXJlZBgHIAEoCEgFUg5pc1Nv'
    'ZnRSZXF1aXJlZIgBARIaCgZzZXRfaWQYCCABKAlIBlIFc2V0SWSIAQESgQEKHW5ld19vcl91cG'
    'RhdGVkX3NlbGVjdF9vcHRpb25zGAkgAygLMj8ucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYx'
    'LlVwZGF0ZVByb3BlcnR5UmVxdWVzdC5TZWxlY3RPcHRpb25SGW5ld09yVXBkYXRlZFNlbGVjdE'
    '9wdGlvbnMSMgoVcmVtb3ZlX3NlbGVjdF9vcHRpb25zGAogAygJUhNyZW1vdmVTZWxlY3RPcHRp'
    'b25zGncKDFNlbGVjdE9wdGlvbhIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBEiUKC2Rlc2NyaXB0aW9uGAMgASgJSAFSC2Rlc2NyaXB0aW9uiAEBQgcKBV9uYW1lQg4K'
    'DF9kZXNjcmlwdGlvbkIPCg1fc3ViamVjdF90eXBlQg0KC19maWVsZF90eXBlQgcKBV9uYW1lQg'
    '4KDF9kZXNjcmlwdGlvbkIOCgxfaXNfYXJjaGl2ZWRCEwoRX2lzX3NvZnRfcmVxdWlyZWRCCQoH'
    'X3NldF9pZA==');

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
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.SubjectType', '10': 'subjectType'},
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

/// Descriptor for `AttachPropertyValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachPropertyValueRequestDescriptor = $convert.base64Decode(
    'ChpBdHRhY2hQcm9wZXJ0eVZhbHVlUmVxdWVzdBIdCgpzdWJqZWN0X2lkGAEgASgJUglzdWJqZW'
    'N0SWQSSwoMc3ViamVjdF90eXBlGAIgASgOMigucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYx'
    'LlN1YmplY3RUeXBlUgtzdWJqZWN0VHlwZRIfCgtwcm9wZXJ0eV9pZBgDIAEoCVIKcHJvcGVydH'
    'lJZBIfCgp0ZXh0X3ZhbHVlGAQgASgJSABSCXRleHRWYWx1ZRIjCgxudW1iZXJfdmFsdWUYBSAB'
    'KAJIAFILbnVtYmVyVmFsdWUSHwoKYm9vbF92YWx1ZRgGIAEoCEgAUglib29sVmFsdWUSHwoKZG'
    'F0ZV92YWx1ZRgHIAEoCUgAUglkYXRlVmFsdWUSKAoPZGF0ZV90aW1lX3ZhbHVlGAggASgJSABS'
    'DWRhdGVUaW1lVmFsdWUSIwoMc2VsZWN0X3ZhbHVlGAkgASgJSABSC3NlbGVjdFZhbHVlQgcKBX'
    'ZhbHVl');

@$core.Deprecated('Use attachPropertyValueResponseDescriptor instead')
const AttachPropertyValueResponse$json = {
  '1': 'AttachPropertyValueResponse',
};

/// Descriptor for `AttachPropertyValueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachPropertyValueResponseDescriptor = $convert.base64Decode(
    'ChtBdHRhY2hQcm9wZXJ0eVZhbHVlUmVzcG9uc2U=');

@$core.Deprecated('Use getAttachedPropertyValuesRequestDescriptor instead')
const GetAttachedPropertyValuesRequest$json = {
  '1': 'GetAttachedPropertyValuesRequest',
  '2': [
    {'1': 'subject_id', '3': 1, '4': 1, '5': 9, '10': 'subjectId'},
    {'1': 'view', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'view', '17': true},
  ],
  '8': [
    {'1': '_view'},
  ],
};

/// Descriptor for `GetAttachedPropertyValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAttachedPropertyValuesRequestDescriptor = $convert.base64Decode(
    'CiBHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVxdWVzdBIdCgpzdWJqZWN0X2lkGAEgASgJUg'
    'lzdWJqZWN0SWQSFwoEdmlldxgCIAEoCUgAUgR2aWV3iAEBQgcKBV92aWV3');

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse$json = {
  '1': 'GetAttachedPropertyValuesResponse',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.GetAttachedPropertyValuesResponse.Value', '10': 'values'},
  ],
  '3': [GetAttachedPropertyValuesResponse_Value$json],
};

@$core.Deprecated('Use getAttachedPropertyValuesResponseDescriptor instead')
const GetAttachedPropertyValuesResponse_Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'property_id', '3': 1, '4': 1, '5': 9, '10': 'propertyId'},
    {'1': 'field_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'is_soft_required', '3': 7, '4': 1, '5': 8, '10': 'isSoftRequired'},
    {'1': 'set', '3': 8, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetAttachedPropertyValuesResponse.Value.Set', '9': 1, '10': 'set', '17': true},
  ],
  '3': [GetAttachedPropertyValuesResponse_Value_Set$json],
  '8': [
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
    'CiFHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVzcG9uc2USXAoGdmFsdWVzGAEgAygLMkQucH'
    'JvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldEF0dGFjaGVkUHJvcGVydHlWYWx1ZXNSZXNw'
    'b25zZS5WYWx1ZVIGdmFsdWVzGpkDCgVWYWx1ZRIfCgtwcm9wZXJ0eV9pZBgBIAEoCVIKcHJvcG'
    'VydHlJZBJFCgpmaWVsZF90eXBlGAIgASgOMiYucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYx'
    'LkZpZWxkVHlwZVIJZmllbGRUeXBlEhIKBG5hbWUYBCABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb2'
    '4YBSABKAlIAFILZGVzY3JpcHRpb26IAQESHwoLaXNfYXJjaGl2ZWQYBiABKAhSCmlzQXJjaGl2'
    'ZWQSKAoQaXNfc29mdF9yZXF1aXJlZBgHIAEoCFIOaXNTb2Z0UmVxdWlyZWQSXwoDc2V0GAggAS'
    'gLMkgucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldEF0dGFjaGVkUHJvcGVydHlWYWx1'
    'ZXNSZXNwb25zZS5WYWx1ZS5TZXRIAVIDc2V0iAEBGikKA1NldBIOCgJpZBgBIAEoCVICaWQSEg'
    'oEbmFtZRgCIAEoCVIEbmFtZUIOCgxfZGVzY3JpcHRpb25CBgoEX3NldA==');

