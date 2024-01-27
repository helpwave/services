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

@$core.Deprecated('Use fieldTypeDescriptor instead')
const FieldType$json = {
  '1': 'FieldType',
  '2': [
    {'1': 'FIELD_TYPE_TEXT', '2': 0},
    {'1': 'FIELD_TYPE_NUMBER', '2': 1},
    {'1': 'FIELD_TYPE_CHECKBOX', '2': 2},
    {'1': 'FIELD_TYPE_DATE', '2': 3},
    {'1': 'FIELD_TYPE_DATETIME', '2': 4},
    {'1': 'FIELD_TYPE_SELECT', '2': 5},
  ],
};

/// Descriptor for `FieldType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fieldTypeDescriptor = $convert.base64Decode(
    'CglGaWVsZFR5cGUSEwoPRklFTERfVFlQRV9URVhUEAASFQoRRklFTERfVFlQRV9OVU1CRVIQAR'
    'IXChNGSUVMRF9UWVBFX0NIRUNLQk9YEAISEwoPRklFTERfVFlQRV9EQVRFEAMSFwoTRklFTERf'
    'VFlQRV9EQVRFVElNRRAEEhUKEUZJRUxEX1RZUEVfU0VMRUNUEAU=');

@$core.Deprecated('Use createPropertyRequestDescriptor instead')
const CreatePropertyRequest$json = {
  '1': 'CreatePropertyRequest',
  '2': [
    {'1': 'subject_id', '3': 1, '4': 1, '5': 9, '10': 'subjectId'},
    {'1': 'subject_type', '3': 2, '4': 1, '5': 9, '10': 'subjectType'},
    {'1': 'field_type', '3': 3, '4': 1, '5': 14, '6': '.proto.services.property_svc.v1.FieldType', '10': 'fieldType'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreatePropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertyRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVQcm9wZXJ0eVJlcXVlc3QSHQoKc3ViamVjdF9pZBgBIAEoCVIJc3ViamVjdElkEi'
    'EKDHN1YmplY3RfdHlwZRgCIAEoCVILc3ViamVjdFR5cGUSSAoKZmllbGRfdHlwZRgDIAEoDjIp'
    'LnByb3RvLnNlcnZpY2VzLnByb3BlcnR5X3N2Yy52MS5GaWVsZFR5cGVSCWZpZWxkVHlwZRISCg'
    'RuYW1lGAQgASgJUgRuYW1l');

@$core.Deprecated('Use createPropertyResponseDescriptor instead')
const CreatePropertyResponse$json = {
  '1': 'CreatePropertyResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreatePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertyResponseDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVQcm9wZXJ0eVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

