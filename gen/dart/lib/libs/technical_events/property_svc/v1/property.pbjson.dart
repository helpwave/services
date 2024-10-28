//
//  Generated code. Do not modify.
//  source: libs/technical_events/property_svc/v1/property.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use propertyCreatedEventDescriptor instead')
const PropertyCreatedEvent$json = {
  '1': 'PropertyCreatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 14, '6': '.services.property_svc.v1.SubjectType', '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': {},
};

/// Descriptor for `PropertyCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyCreatedEventDescriptor = $convert.base64Decode(
    'ChRQcm9wZXJ0eUNyZWF0ZWRFdmVudBIOCgJpZBgBIAEoCVICaWQSSAoMc3ViamVjdF90eXBlGA'
    'IgASgOMiUuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLlN1YmplY3RUeXBlUgtzdWJqZWN0VHlw'
    'ZRJCCgpmaWVsZF90eXBlGAMgASgOMiMuc2VydmljZXMucHJvcGVydHlfc3ZjLnYxLkZpZWxkVH'
    'lwZVIJZmllbGRUeXBlEhIKBG5hbWUYBCABKAlSBG5hbWU6F9qEARNQUk9QRVJUWV9DUkVBVEVE'
    'X3Yx');

@$core.Deprecated('Use propertyDescriptionUpdatedEventDescriptor instead')
const PropertyDescriptionUpdatedEvent$json = {
  '1': 'PropertyDescriptionUpdatedEvent',
  '2': [
    {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
  ],
  '7': {},
};

/// Descriptor for `PropertyDescriptionUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyDescriptionUpdatedEventDescriptor = $convert.base64Decode(
    'Ch9Qcm9wZXJ0eURlc2NyaXB0aW9uVXBkYXRlZEV2ZW50EiAKC2Rlc2NyaXB0aW9uGAEgASgJUg'
    'tkZXNjcmlwdGlvbjoj2oQBH1BST1BFUlRZX0RFU0NSSVBUSU9OX1VQREFURURfdjE=');

@$core.Deprecated('Use propertySetIDUpdatedEventDescriptor instead')
const PropertySetIDUpdatedEvent$json = {
  '1': 'PropertySetIDUpdatedEvent',
  '2': [
    {'1': 'set_id', '3': 1, '4': 1, '5': 9, '10': 'setId'},
  ],
  '7': {},
};

/// Descriptor for `PropertySetIDUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertySetIDUpdatedEventDescriptor = $convert.base64Decode(
    'ChlQcm9wZXJ0eVNldElEVXBkYXRlZEV2ZW50EhUKBnNldF9pZBgBIAEoCVIFc2V0SWQ6HtqEAR'
    'pQUk9QRVJUWV9TRVRfSURfVVBEQVRFRF92MQ==');

@$core.Deprecated('Use propertySubjectTypeUpdatedEventDescriptor instead')
const PropertySubjectTypeUpdatedEvent$json = {
  '1': 'PropertySubjectTypeUpdatedEvent',
  '2': [
    {'1': 'subject_type', '3': 1, '4': 1, '5': 9, '10': 'subjectType'},
  ],
  '7': {},
};

/// Descriptor for `PropertySubjectTypeUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertySubjectTypeUpdatedEventDescriptor = $convert.base64Decode(
    'Ch9Qcm9wZXJ0eVN1YmplY3RUeXBlVXBkYXRlZEV2ZW50EiEKDHN1YmplY3RfdHlwZRgBIAEoCV'
    'ILc3ViamVjdFR5cGU6JNqEASBQUk9QRVJUWV9TVUJKRUNUX1RZUEVfVVBEQVRFRF92MQ==');

@$core.Deprecated('Use propertyFieldTypeUpdatedEventDescriptor instead')
const PropertyFieldTypeUpdatedEvent$json = {
  '1': 'PropertyFieldTypeUpdatedEvent',
  '2': [
    {'1': 'field_type', '3': 1, '4': 1, '5': 9, '10': 'fieldType'},
  ],
  '7': {},
};

/// Descriptor for `PropertyFieldTypeUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyFieldTypeUpdatedEventDescriptor = $convert.base64Decode(
    'Ch1Qcm9wZXJ0eUZpZWxkVHlwZVVwZGF0ZWRFdmVudBIdCgpmaWVsZF90eXBlGAEgASgJUglmaW'
    'VsZFR5cGU6ItqEAR5QUk9QRVJUWV9GSUVMRF9UWVBFX1VQREFURURfdjE=');

@$core.Deprecated('Use propertyFieldTypeDataCreatedEventDescriptor instead')
const PropertyFieldTypeDataCreatedEvent$json = {
  '1': 'PropertyFieldTypeDataCreatedEvent',
  '2': [
    {'1': 'field_type_data', '3': 1, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyFieldTypeDataCreatedEvent.FieldTypeData', '10': 'fieldTypeData'},
  ],
  '3': [PropertyFieldTypeDataCreatedEvent_SelectOption$json, PropertyFieldTypeDataCreatedEvent_SelectData$json, PropertyFieldTypeDataCreatedEvent_FieldTypeData$json],
  '7': {},
};

@$core.Deprecated('Use propertyFieldTypeDataCreatedEventDescriptor instead')
const PropertyFieldTypeDataCreatedEvent_SelectOption$json = {
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

@$core.Deprecated('Use propertyFieldTypeDataCreatedEventDescriptor instead')
const PropertyFieldTypeDataCreatedEvent_SelectData$json = {
  '1': 'SelectData',
  '2': [
    {'1': 'allow_freetext', '3': 1, '4': 1, '5': 8, '10': 'allowFreetext'},
    {'1': 'select_options', '3': 2, '4': 3, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyFieldTypeDataCreatedEvent.SelectOption', '10': 'selectOptions'},
  ],
};

@$core.Deprecated('Use propertyFieldTypeDataCreatedEventDescriptor instead')
const PropertyFieldTypeDataCreatedEvent_FieldTypeData$json = {
  '1': 'FieldTypeData',
  '2': [
    {'1': 'select_data', '3': 1, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyFieldTypeDataCreatedEvent.SelectData', '9': 0, '10': 'selectData', '17': true},
  ],
  '8': [
    {'1': '_select_data'},
  ],
};

/// Descriptor for `PropertyFieldTypeDataCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyFieldTypeDataCreatedEventDescriptor = $convert.base64Decode(
    'CiFQcm9wZXJ0eUZpZWxkVHlwZURhdGFDcmVhdGVkRXZlbnQSfgoPZmllbGRfdHlwZV9kYXRhGA'
    'EgASgLMlYubGlicy50ZWNobmljYWxfZXZlbnRzLnByb3BlcnR5X3N2Yy52MS5Qcm9wZXJ0eUZp'
    'ZWxkVHlwZURhdGFDcmVhdGVkRXZlbnQuRmllbGRUeXBlRGF0YVINZmllbGRUeXBlRGF0YRqGAQ'
    'oMU2VsZWN0T3B0aW9uEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiUKC2Rl'
    'c2NyaXB0aW9uGAMgASgJSABSC2Rlc2NyaXB0aW9uiAEBEhsKCWlzX2N1c3RvbRgEIAEoCFIIaX'
    'NDdXN0b21CDgoMX2Rlc2NyaXB0aW9uGrEBCgpTZWxlY3REYXRhEiUKDmFsbG93X2ZyZWV0ZXh0'
    'GAEgASgIUg1hbGxvd0ZyZWV0ZXh0EnwKDnNlbGVjdF9vcHRpb25zGAIgAygLMlUubGlicy50ZW'
    'NobmljYWxfZXZlbnRzLnByb3BlcnR5X3N2Yy52MS5Qcm9wZXJ0eUZpZWxkVHlwZURhdGFDcmVh'
    'dGVkRXZlbnQuU2VsZWN0T3B0aW9uUg1zZWxlY3RPcHRpb25zGpoBCg1GaWVsZFR5cGVEYXRhEn'
    'kKC3NlbGVjdF9kYXRhGAEgASgLMlMubGlicy50ZWNobmljYWxfZXZlbnRzLnByb3BlcnR5X3N2'
    'Yy52MS5Qcm9wZXJ0eUZpZWxkVHlwZURhdGFDcmVhdGVkRXZlbnQuU2VsZWN0RGF0YUgAUgpzZW'
    'xlY3REYXRhiAEBQg4KDF9zZWxlY3RfZGF0YTon2oQBI1BST1BFUlRZX0ZJRUxEX1RZUEVfREFU'
    'QV9DUkVBVEVEX3Yx');

@$core.Deprecated('Use propertyNameUpdatedEventDescriptor instead')
const PropertyNameUpdatedEvent$json = {
  '1': 'PropertyNameUpdatedEvent',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': {},
};

/// Descriptor for `PropertyNameUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyNameUpdatedEventDescriptor = $convert.base64Decode(
    'ChhQcm9wZXJ0eU5hbWVVcGRhdGVkRXZlbnQSEgoEbmFtZRgBIAEoCVIEbmFtZToc2oQBGFBST1'
    'BFUlRZX05BTUVfVVBEQVRFRF92MQ==');

@$core.Deprecated('Use propertyFieldTypeDataAllowFreetextUpdatedEventDescriptor instead')
const PropertyFieldTypeDataAllowFreetextUpdatedEvent$json = {
  '1': 'PropertyFieldTypeDataAllowFreetextUpdatedEvent',
  '2': [
    {'1': 'new_allow_freetext', '3': 1, '4': 1, '5': 8, '10': 'newAllowFreetext'},
  ],
  '7': {},
};

/// Descriptor for `PropertyFieldTypeDataAllowFreetextUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyFieldTypeDataAllowFreetextUpdatedEventDescriptor = $convert.base64Decode(
    'Ci5Qcm9wZXJ0eUZpZWxkVHlwZURhdGFBbGxvd0ZyZWV0ZXh0VXBkYXRlZEV2ZW50EiwKEm5ld1'
    '9hbGxvd19mcmVldGV4dBgBIAEoCFIQbmV3QWxsb3dGcmVldGV4dDo22oQBMlBST1BFUlRZX0ZJ'
    'RUxEX1RZUEVfREFUQV9BTExPV19GUkVFVEVYVF9VUERBVEVEX3Yx');

@$core.Deprecated('Use propertyFieldTypeDataSelectOptionsRemovedEventDescriptor instead')
const PropertyFieldTypeDataSelectOptionsRemovedEvent$json = {
  '1': 'PropertyFieldTypeDataSelectOptionsRemovedEvent',
  '2': [
    {'1': 'removed_select_options', '3': 1, '4': 3, '5': 9, '10': 'removedSelectOptions'},
  ],
  '7': {},
};

/// Descriptor for `PropertyFieldTypeDataSelectOptionsRemovedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyFieldTypeDataSelectOptionsRemovedEventDescriptor = $convert.base64Decode(
    'Ci5Qcm9wZXJ0eUZpZWxkVHlwZURhdGFTZWxlY3RPcHRpb25zUmVtb3ZlZEV2ZW50EjQKFnJlbW'
    '92ZWRfc2VsZWN0X29wdGlvbnMYASADKAlSFHJlbW92ZWRTZWxlY3RPcHRpb25zOjbahAEyUFJP'
    'UEVSVFlfRklFTERfVFlQRV9EQVRBX1NFTEVDVF9PUFRJT05TX1JFTU9WRURfdjE=');

@$core.Deprecated('Use propertyFieldTypeDataSelectOptionsUpsertedEventDescriptor instead')
const PropertyFieldTypeDataSelectOptionsUpsertedEvent$json = {
  '1': 'PropertyFieldTypeDataSelectOptionsUpsertedEvent',
  '2': [
    {'1': 'upserted_select_options', '3': 1, '4': 3, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyFieldTypeDataSelectOptionsUpsertedEvent.UpdateSelectOption', '10': 'upsertedSelectOptions'},
  ],
  '3': [PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption$json],
  '7': {},
};

@$core.Deprecated('Use propertyFieldTypeDataSelectOptionsUpsertedEventDescriptor instead')
const PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption$json = {
  '1': 'UpdateSelectOption',
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

/// Descriptor for `PropertyFieldTypeDataSelectOptionsUpsertedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyFieldTypeDataSelectOptionsUpsertedEventDescriptor = $convert.base64Decode(
    'Ci9Qcm9wZXJ0eUZpZWxkVHlwZURhdGFTZWxlY3RPcHRpb25zVXBzZXJ0ZWRFdmVudBKhAQoXdX'
    'BzZXJ0ZWRfc2VsZWN0X29wdGlvbnMYASADKAsyaS5saWJzLnRlY2huaWNhbF9ldmVudHMucHJv'
    'cGVydHlfc3ZjLnYxLlByb3BlcnR5RmllbGRUeXBlRGF0YVNlbGVjdE9wdGlvbnNVcHNlcnRlZE'
    'V2ZW50LlVwZGF0ZVNlbGVjdE9wdGlvblIVdXBzZXJ0ZWRTZWxlY3RPcHRpb25zGq0BChJVcGRh'
    'dGVTZWxlY3RPcHRpb24SDgoCaWQYASABKAlSAmlkEhcKBG5hbWUYAiABKAlIAFIEbmFtZYgBAR'
    'IlCgtkZXNjcmlwdGlvbhgDIAEoCUgBUgtkZXNjcmlwdGlvbogBARIgCglpc19jdXN0b20YBCAB'
    'KAhIAlIIaXNDdXN0b22IAQFCBwoFX25hbWVCDgoMX2Rlc2NyaXB0aW9uQgwKCl9pc19jdXN0b2'
    '06N9qEATNQUk9QRVJUWV9GSUVMRF9UWVBFX0RBVEFfU0VMRUNUX09QVElPTlNfVVBTRVJURURf'
    'djE=');

@$core.Deprecated('Use propertyArchivedEventDescriptor instead')
const PropertyArchivedEvent$json = {
  '1': 'PropertyArchivedEvent',
  '7': {},
};

/// Descriptor for `PropertyArchivedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyArchivedEventDescriptor = $convert.base64Decode(
    'ChVQcm9wZXJ0eUFyY2hpdmVkRXZlbnQ6GNqEARRQUk9QRVJUWV9BUkNISVZFRF92MQ==');

@$core.Deprecated('Use propertyRetrievedEventDescriptor instead')
const PropertyRetrievedEvent$json = {
  '1': 'PropertyRetrievedEvent',
  '7': {},
};

/// Descriptor for `PropertyRetrievedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyRetrievedEventDescriptor = $convert.base64Decode(
    'ChZQcm9wZXJ0eVJldHJpZXZlZEV2ZW50OhnahAEVUFJPUEVSVFlfUkVUUklFVkVEX3Yx');

@$core.Deprecated('Use technicalEventDescriptor instead')
const TechnicalEvent$json = {
  '1': 'TechnicalEvent',
  '2': [
    {'1': 'property_created', '3': 1, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyCreatedEvent', '9': 0, '10': 'propertyCreated'},
    {'1': 'property_description_updated', '3': 2, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyDescriptionUpdatedEvent', '9': 0, '10': 'propertyDescriptionUpdated'},
    {'1': 'property_set_id_updated', '3': 3, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertySetIDUpdatedEvent', '9': 0, '10': 'propertySetIdUpdated'},
    {'1': 'property_subject_type_updated', '3': 4, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertySubjectTypeUpdatedEvent', '9': 0, '10': 'propertySubjectTypeUpdated'},
    {'1': 'property_field_type_updated', '3': 5, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyFieldTypeUpdatedEvent', '9': 0, '10': 'propertyFieldTypeUpdated'},
    {'1': 'property_field_type_data_created', '3': 6, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyFieldTypeDataCreatedEvent', '9': 0, '10': 'propertyFieldTypeDataCreated'},
    {'1': 'property_name_updated', '3': 7, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyNameUpdatedEvent', '9': 0, '10': 'propertyNameUpdated'},
    {'1': 'property_field_type_data_allow_freetext_updated', '3': 8, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyFieldTypeDataAllowFreetextUpdatedEvent', '9': 0, '10': 'propertyFieldTypeDataAllowFreetextUpdated'},
    {'1': 'property_field_type_data_select_options_removed', '3': 9, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyFieldTypeDataSelectOptionsRemovedEvent', '9': 0, '10': 'propertyFieldTypeDataSelectOptionsRemoved'},
    {'1': 'property_field_type_data_select_options_upserted', '3': 10, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyFieldTypeDataSelectOptionsUpsertedEvent', '9': 0, '10': 'propertyFieldTypeDataSelectOptionsUpserted'},
    {'1': 'property_archived', '3': 11, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyArchivedEvent', '9': 0, '10': 'propertyArchived'},
    {'1': 'property_retrieved', '3': 12, '4': 1, '5': 11, '6': '.libs.technical_events.property_svc.v1.PropertyRetrievedEvent', '9': 0, '10': 'propertyRetrieved'},
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `TechnicalEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List technicalEventDescriptor = $convert.base64Decode(
    'Cg5UZWNobmljYWxFdmVudBJoChBwcm9wZXJ0eV9jcmVhdGVkGAEgASgLMjsubGlicy50ZWNobm'
    'ljYWxfZXZlbnRzLnByb3BlcnR5X3N2Yy52MS5Qcm9wZXJ0eUNyZWF0ZWRFdmVudEgAUg9wcm9w'
    'ZXJ0eUNyZWF0ZWQSigEKHHByb3BlcnR5X2Rlc2NyaXB0aW9uX3VwZGF0ZWQYAiABKAsyRi5saW'
    'JzLnRlY2huaWNhbF9ldmVudHMucHJvcGVydHlfc3ZjLnYxLlByb3BlcnR5RGVzY3JpcHRpb25V'
    'cGRhdGVkRXZlbnRIAFIacHJvcGVydHlEZXNjcmlwdGlvblVwZGF0ZWQSeQoXcHJvcGVydHlfc2'
    'V0X2lkX3VwZGF0ZWQYAyABKAsyQC5saWJzLnRlY2huaWNhbF9ldmVudHMucHJvcGVydHlfc3Zj'
    'LnYxLlByb3BlcnR5U2V0SURVcGRhdGVkRXZlbnRIAFIUcHJvcGVydHlTZXRJZFVwZGF0ZWQSiw'
    'EKHXByb3BlcnR5X3N1YmplY3RfdHlwZV91cGRhdGVkGAQgASgLMkYubGlicy50ZWNobmljYWxf'
    'ZXZlbnRzLnByb3BlcnR5X3N2Yy52MS5Qcm9wZXJ0eVN1YmplY3RUeXBlVXBkYXRlZEV2ZW50SA'
    'BSGnByb3BlcnR5U3ViamVjdFR5cGVVcGRhdGVkEoUBChtwcm9wZXJ0eV9maWVsZF90eXBlX3Vw'
    'ZGF0ZWQYBSABKAsyRC5saWJzLnRlY2huaWNhbF9ldmVudHMucHJvcGVydHlfc3ZjLnYxLlByb3'
    'BlcnR5RmllbGRUeXBlVXBkYXRlZEV2ZW50SABSGHByb3BlcnR5RmllbGRUeXBlVXBkYXRlZBKS'
    'AQogcHJvcGVydHlfZmllbGRfdHlwZV9kYXRhX2NyZWF0ZWQYBiABKAsySC5saWJzLnRlY2huaW'
    'NhbF9ldmVudHMucHJvcGVydHlfc3ZjLnYxLlByb3BlcnR5RmllbGRUeXBlRGF0YUNyZWF0ZWRF'
    'dmVudEgAUhxwcm9wZXJ0eUZpZWxkVHlwZURhdGFDcmVhdGVkEnUKFXByb3BlcnR5X25hbWVfdX'
    'BkYXRlZBgHIAEoCzI/LmxpYnMudGVjaG5pY2FsX2V2ZW50cy5wcm9wZXJ0eV9zdmMudjEuUHJv'
    'cGVydHlOYW1lVXBkYXRlZEV2ZW50SABSE3Byb3BlcnR5TmFtZVVwZGF0ZWQSuwEKL3Byb3Blcn'
    'R5X2ZpZWxkX3R5cGVfZGF0YV9hbGxvd19mcmVldGV4dF91cGRhdGVkGAggASgLMlUubGlicy50'
    'ZWNobmljYWxfZXZlbnRzLnByb3BlcnR5X3N2Yy52MS5Qcm9wZXJ0eUZpZWxkVHlwZURhdGFBbG'
    'xvd0ZyZWV0ZXh0VXBkYXRlZEV2ZW50SABSKXByb3BlcnR5RmllbGRUeXBlRGF0YUFsbG93RnJl'
    'ZXRleHRVcGRhdGVkErsBCi9wcm9wZXJ0eV9maWVsZF90eXBlX2RhdGFfc2VsZWN0X29wdGlvbn'
    'NfcmVtb3ZlZBgJIAEoCzJVLmxpYnMudGVjaG5pY2FsX2V2ZW50cy5wcm9wZXJ0eV9zdmMudjEu'
    'UHJvcGVydHlGaWVsZFR5cGVEYXRhU2VsZWN0T3B0aW9uc1JlbW92ZWRFdmVudEgAUilwcm9wZX'
    'J0eUZpZWxkVHlwZURhdGFTZWxlY3RPcHRpb25zUmVtb3ZlZBK+AQowcHJvcGVydHlfZmllbGRf'
    'dHlwZV9kYXRhX3NlbGVjdF9vcHRpb25zX3Vwc2VydGVkGAogASgLMlYubGlicy50ZWNobmljYW'
    'xfZXZlbnRzLnByb3BlcnR5X3N2Yy52MS5Qcm9wZXJ0eUZpZWxkVHlwZURhdGFTZWxlY3RPcHRp'
    'b25zVXBzZXJ0ZWRFdmVudEgAUipwcm9wZXJ0eUZpZWxkVHlwZURhdGFTZWxlY3RPcHRpb25zVX'
    'BzZXJ0ZWQSawoRcHJvcGVydHlfYXJjaGl2ZWQYCyABKAsyPC5saWJzLnRlY2huaWNhbF9ldmVu'
    'dHMucHJvcGVydHlfc3ZjLnYxLlByb3BlcnR5QXJjaGl2ZWRFdmVudEgAUhBwcm9wZXJ0eUFyY2'
    'hpdmVkEm4KEnByb3BlcnR5X3JldHJpZXZlZBgMIAEoCzI9LmxpYnMudGVjaG5pY2FsX2V2ZW50'
    'cy5wcm9wZXJ0eV9zdmMudjEuUHJvcGVydHlSZXRyaWV2ZWRFdmVudEgAUhFwcm9wZXJ0eVJldH'
    'JpZXZlZEIHCgVldmVudA==');

