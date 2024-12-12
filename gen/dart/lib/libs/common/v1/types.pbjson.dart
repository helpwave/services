//
//  Generated code. Do not modify.
//  source: libs/common/v1/types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use genderDescriptor instead')
const Gender$json = {
  '1': 'Gender',
  '2': [
    {'1': 'GENDER_UNSPECIFIED', '2': 0},
    {'1': 'GENDER_FEMALE', '2': 1},
    {'1': 'GENDER_MALE', '2': 2},
    {'1': 'GENDER_DIVERSE', '2': 3},
  ],
};

/// Descriptor for `Gender`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List genderDescriptor = $convert.base64Decode(
    'CgZHZW5kZXISFgoSR0VOREVSX1VOU1BFQ0lGSUVEEAASEQoNR0VOREVSX0ZFTUFMRRABEg8KC0'
    'dFTkRFUl9NQUxFEAISEgoOR0VOREVSX0RJVkVSU0UQAw==');

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

