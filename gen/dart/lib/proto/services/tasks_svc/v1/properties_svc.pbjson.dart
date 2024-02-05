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
    {'1': 'subject_type', '3': 1, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
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
    'cHRpb26IAQESGgoGc2V0X2lkGAYgASgJSAFSBXNldElkiAEBEmYKDnNlbGVjdF9vcHRpb25zGA'
    'cgAygLMj8ucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYxLkNyZWF0ZVByb3BlcnR5UmVxdWVz'
    'dC5TZWxlY3RPcHRpb25SDXNlbGVjdE9wdGlvbnMaWQoMU2VsZWN0T3B0aW9uEhIKBG5hbWUYAS'
    'ABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb24YAiABKAlIAFILZGVzY3JpcHRpb26IAQFCDgoMX2Rl'
    'c2NyaXB0aW9uQg4KDF9kZXNjcmlwdGlvbkIJCgdfc2V0X2lk');

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
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 6, '4': 1, '5': 8, '10': 'isArchived'},
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
    'IaCgZzZXRfaWQYCCABKAlIAVIFc2V0SWSIAQESZAoOc2VsZWN0X29wdGlvbnMYCSADKAsyPS5w'
    'cm90by5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0UHJvcGVydHlSZXNwb25zZS5TZWxlY3RPcH'
    'Rpb25SDXNlbGVjdE9wdGlvbnMaWQoMU2VsZWN0T3B0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUS'
    'JQoLZGVzY3JpcHRpb24YAiABKAlIAFILZGVzY3JpcHRpb26IAQFCDgoMX2Rlc2NyaXB0aW9uQg'
    '4KDF9kZXNjcmlwdGlvbkIJCgdfc2V0X2lk');

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
    {'1': 'is_custom', '3': 3, '4': 1, '5': 8, '10': 'isCustom'},
  ],
  '8': [
    {'1': '_description'},
  ],
};

/// Descriptor for `GetPropertiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertiesResponseDescriptor = $convert.base64Decode(
    'ChVHZXRQcm9wZXJ0aWVzUmVzcG9uc2USWwoKcHJvcGVydGllcxgBIAMoCzI7LnByb3RvLnNlcn'
    'ZpY2VzLnRhc2tzX3N2Yy52MS5HZXRQcm9wZXJ0aWVzUmVzcG9uc2UuUHJvcGVydHlSCnByb3Bl'
    'cnRpZXMaqgQKCFByb3BlcnR5Eg4KAmlkGAEgASgJUgJpZBJLCgxzdWJqZWN0X3R5cGUYAiABKA'
    '4yKC5wcm90by5zZXJ2aWNlcy50YXNrc19zdmMudjEuU3ViamVjdFR5cGVSC3N1YmplY3RUeXBl'
    'EkUKCmZpZWxkX3R5cGUYAyABKA4yJi5wcm90by5zZXJ2aWNlcy50YXNrc19zdmMudjEuRmllbG'
    'RUeXBlUglmaWVsZFR5cGUSEgoEbmFtZRgEIAEoCVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgFIAEo'
    'CUgAUgtkZXNjcmlwdGlvbogBARIfCgtpc19hcmNoaXZlZBgGIAEoCFIKaXNBcmNoaXZlZBIaCg'
    'ZzZXRfaWQYCCABKAlIAVIFc2V0SWSIAQESbwoOc2VsZWN0X29wdGlvbnMYCSADKAsySC5wcm90'
    'by5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0UHJvcGVydGllc1Jlc3BvbnNlLlByb3BlcnR5Ll'
    'NlbGVjdE9wdGlvblINc2VsZWN0T3B0aW9ucxp2CgxTZWxlY3RPcHRpb24SEgoEbmFtZRgBIAEo'
    'CVIEbmFtZRIlCgtkZXNjcmlwdGlvbhgCIAEoCUgAUgtkZXNjcmlwdGlvbogBARIbCglpc19jdX'
    'N0b20YAyABKAhSCGlzQ3VzdG9tQg4KDF9kZXNjcmlwdGlvbkIOCgxfZGVzY3JpcHRpb25CCQoH'
    'X3NldF9pZA==');

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
    {'1': 'set_id', '3': 8, '4': 1, '5': 9, '9': 5, '10': 'setId', '17': true},
    {'1': 'upsert_select_options', '3': 9, '4': 3, '5': 11, '6': '.proto.services.tasks_svc.v1.UpdatePropertyRequest.SelectOption', '10': 'upsertSelectOptions'},
    {'1': 'remove_select_options', '3': 10, '4': 3, '5': 9, '10': 'removeSelectOptions'},
  ],
  '3': [UpdatePropertyRequest_SelectOption$json],
  '8': [
    {'1': '_subject_type'},
    {'1': '_field_type'},
    {'1': '_name'},
    {'1': '_description'},
    {'1': '_is_archived'},
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
    'ChVVcGRhdGVQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlkElAKDHN1YmplY3RfdHlwZR'
    'gCIAEoDjIoLnByb3RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS5TdWJqZWN0VHlwZUgAUgtzdWJq'
    'ZWN0VHlwZYgBARJKCgpmaWVsZF90eXBlGAMgASgOMiYucHJvdG8uc2VydmljZXMudGFza3Nfc3'
    'ZjLnYxLkZpZWxkVHlwZUgBUglmaWVsZFR5cGWIAQESFwoEbmFtZRgEIAEoCUgCUgRuYW1liAEB'
    'EiUKC2Rlc2NyaXB0aW9uGAUgASgJSANSC2Rlc2NyaXB0aW9uiAEBEiQKC2lzX2FyY2hpdmVkGA'
    'YgASgISARSCmlzQXJjaGl2ZWSIAQESGgoGc2V0X2lkGAggASgJSAVSBXNldElkiAEBEnMKFXVw'
    'c2VydF9zZWxlY3Rfb3B0aW9ucxgJIAMoCzI/LnByb3RvLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS'
    '5VcGRhdGVQcm9wZXJ0eVJlcXVlc3QuU2VsZWN0T3B0aW9uUhN1cHNlcnRTZWxlY3RPcHRpb25z'
    'EjIKFXJlbW92ZV9zZWxlY3Rfb3B0aW9ucxgKIAMoCVITcmVtb3ZlU2VsZWN0T3B0aW9ucxqnAQ'
    'oMU2VsZWN0T3B0aW9uEg4KAmlkGAEgASgJUgJpZBIXCgRuYW1lGAIgASgJSABSBG5hbWWIAQES'
    'JQoLZGVzY3JpcHRpb24YAyABKAlIAVILZGVzY3JpcHRpb26IAQESIAoJaXNfY3VzdG9tGAQgAS'
    'gISAJSCGlzQ3VzdG9tiAEBQgcKBV9uYW1lQg4KDF9kZXNjcmlwdGlvbkIMCgpfaXNfY3VzdG9t'
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
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.proto.services.tasks_svc.v1.SubjectType', '10': 'subjectType'},
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
    'N0SWQSSwoMc3ViamVjdF90eXBlGAIgASgOMigucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYx'
    'LlN1YmplY3RUeXBlUgtzdWJqZWN0VHlwZRIfCgtwcm9wZXJ0eV9pZBgDIAEoCVIKcHJvcGVydH'
    'lJZBIjCgxpc191bmRlZmluZWQYBCABKAhIAFILaXNVbmRlZmluZWQSHwoKdGV4dF92YWx1ZRgF'
    'IAEoCUgAUgl0ZXh0VmFsdWUSIwoMbnVtYmVyX3ZhbHVlGAYgASgCSABSC251bWJlclZhbHVlEh'
    '8KCmJvb2xfdmFsdWUYByABKAhIAFIJYm9vbFZhbHVlEh8KCmRhdGVfdmFsdWUYCCABKAlIAFIJ'
    'ZGF0ZVZhbHVlEigKD2RhdGVfdGltZV92YWx1ZRgJIAEoCUgAUg1kYXRlVGltZVZhbHVlEiMKDH'
    'NlbGVjdF92YWx1ZRgKIAEoCUgAUgtzZWxlY3RWYWx1ZUIHCgV2YWx1ZQ==');

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
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'is_archived', '3': 5, '4': 1, '5': 8, '10': 'isArchived'},
    {'1': 'set', '3': 7, '4': 1, '5': 11, '6': '.proto.services.tasks_svc.v1.GetAttachedPropertyValuesResponse.Value.Set', '9': 2, '10': 'set', '17': true},
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
    'CiFHZXRBdHRhY2hlZFByb3BlcnR5VmFsdWVzUmVzcG9uc2USXAoGdmFsdWVzGAEgAygLMkQucH'
    'JvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldEF0dGFjaGVkUHJvcGVydHlWYWx1ZXNSZXNw'
    'b25zZS5WYWx1ZVIGdmFsdWVzGvQECgVWYWx1ZRIfCgtwcm9wZXJ0eV9pZBgBIAEoCVIKcHJvcG'
    'VydHlJZBJFCgpmaWVsZF90eXBlGAIgASgOMiYucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYx'
    'LkZpZWxkVHlwZVIJZmllbGRUeXBlEhIKBG5hbWUYAyABKAlSBG5hbWUSJQoLZGVzY3JpcHRpb2'
    '4YBCABKAlIAVILZGVzY3JpcHRpb26IAQESHwoLaXNfYXJjaGl2ZWQYBSABKAhSCmlzQXJjaGl2'
    'ZWQSXwoDc2V0GAcgASgLMkgucHJvdG8uc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldEF0dGFjaG'
    'VkUHJvcGVydHlWYWx1ZXNSZXNwb25zZS5WYWx1ZS5TZXRIAlIDc2V0iAEBEiMKDGlzX3VuZGVm'
    'aW5lZBgIIAEoCEgAUgtpc1VuZGVmaW5lZBIfCgp0ZXh0X3ZhbHVlGAkgASgJSABSCXRleHRWYW'
    'x1ZRIjCgxudW1iZXJfdmFsdWUYCiABKAJIAFILbnVtYmVyVmFsdWUSHwoKYm9vbF92YWx1ZRgL'
    'IAEoCEgAUglib29sVmFsdWUSHwoKZGF0ZV92YWx1ZRgMIAEoCUgAUglkYXRlVmFsdWUSKAoPZG'
    'F0ZV90aW1lX3ZhbHVlGA0gASgJSABSDWRhdGVUaW1lVmFsdWUSIwoMc2VsZWN0X3ZhbHVlGA4g'
    'ASgJSABSC3NlbGVjdFZhbHVlGikKA1NldBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCV'
    'IEbmFtZUIHCgV2YWx1ZUIOCgxfZGVzY3JpcHRpb25CBgoEX3NldA==');

