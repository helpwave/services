//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/types.proto
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
    {'1': 'SUBJECT_TYPE_TASK', '2': 2},
  ],
};

/// Descriptor for `SubjectType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List subjectTypeDescriptor = $convert.base64Decode(
    'CgtTdWJqZWN0VHlwZRIcChhTVUJKRUNUX1RZUEVfVU5TUEVDSUZJRUQQABIYChRTVUJKRUNUX1'
    'RZUEVfUEFUSUVOVBABEhUKEVNVQkpFQ1RfVFlQRV9UQVNLEAI=');

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
    {'1': 'FIELD_TYPE_MULTI_SELECT', '2': 7},
  ],
};

/// Descriptor for `FieldType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fieldTypeDescriptor = $convert.base64Decode(
    'CglGaWVsZFR5cGUSGgoWRklFTERfVFlQRV9VTlNQRUNJRklFRBAAEhMKD0ZJRUxEX1RZUEVfVE'
    'VYVBABEhUKEUZJRUxEX1RZUEVfTlVNQkVSEAISFwoTRklFTERfVFlQRV9DSEVDS0JPWBADEhMK'
    'D0ZJRUxEX1RZUEVfREFURRAEEhgKFEZJRUxEX1RZUEVfREFURV9USU1FEAUSFQoRRklFTERfVF'
    'lQRV9TRUxFQ1QQBhIbChdGSUVMRF9UWVBFX01VTFRJX1NFTEVDVBAH');

@$core.Deprecated('Use dateDescriptor instead')
const Date$json = {
  '1': 'Date',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
  ],
};

/// Descriptor for `Date`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dateDescriptor = $convert.base64Decode(
    'CgREYXRlEi4KBGRhdGUYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgRkYXRl');

