//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/types.proto
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

@$core.Deprecated('Use viewContextDescriptor instead')
const ViewContext$json = {
  '1': 'ViewContext',
  '2': [
    {'1': 'VIEW_CONTEXT_UNSPECIFIED', '2': 0},
    {'1': 'VIEW_CONTEXT_GLOBAL', '2': 1},
    {'1': 'VIEW_CONTEXT_WARD', '2': 2},
  ],
};

/// Descriptor for `ViewContext`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List viewContextDescriptor = $convert.base64Decode(
    'CgtWaWV3Q29udGV4dBIcChhWSUVXX0NPTlRFWFRfVU5TUEVDSUZJRUQQABIXChNWSUVXX0NPTl'
    'RFWFRfR0xPQkFMEAESFQoRVklFV19DT05URVhUX1dBUkQQAg==');

