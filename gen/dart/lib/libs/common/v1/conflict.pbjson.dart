//
//  Generated code. Do not modify.
//  source: libs/common/v1/conflict.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use conflictDescriptor instead')
const Conflict$json = {
  '1': 'Conflict',
  '2': [
    {'1': 'conflicting_attributes', '3': 1, '4': 3, '5': 11, '6': '.libs.common.v1.Conflict.ConflictingAttributesEntry', '10': 'conflictingAttributes'},
    {'1': 'history_missing', '3': 2, '4': 1, '5': 8, '10': 'historyMissing'},
  ],
  '3': [Conflict_ConflictingAttributesEntry$json],
};

@$core.Deprecated('Use conflictDescriptor instead')
const Conflict_ConflictingAttributesEntry$json = {
  '1': 'ConflictingAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.libs.common.v1.AttributeConflict', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Conflict`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conflictDescriptor = $convert.base64Decode(
    'CghDb25mbGljdBJqChZjb25mbGljdGluZ19hdHRyaWJ1dGVzGAEgAygLMjMubGlicy5jb21tb2'
    '4udjEuQ29uZmxpY3QuQ29uZmxpY3RpbmdBdHRyaWJ1dGVzRW50cnlSFWNvbmZsaWN0aW5nQXR0'
    'cmlidXRlcxInCg9oaXN0b3J5X21pc3NpbmcYAiABKAhSDmhpc3RvcnlNaXNzaW5nGmsKGkNvbm'
    'ZsaWN0aW5nQXR0cmlidXRlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjcKBXZhbHVlGAIgASgL'
    'MiEubGlicy5jb21tb24udjEuQXR0cmlidXRlQ29uZmxpY3RSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use attributeConflictDescriptor instead')
const AttributeConflict$json = {
  '1': 'AttributeConflict',
  '2': [
    {'1': 'is', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'is'},
    {'1': 'want', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'want'},
  ],
};

/// Descriptor for `AttributeConflict`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeConflictDescriptor = $convert.base64Decode(
    'ChFBdHRyaWJ1dGVDb25mbGljdBIkCgJpcxgBIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSAm'
    'lzEigKBHdhbnQYAiABKAsyFC5nb29nbGUucHJvdG9idWYuQW55UgR3YW50');

@$core.Deprecated('Use anyArrayDescriptor instead')
const AnyArray$json = {
  '1': 'AnyArray',
  '2': [
    {'1': 'elements', '3': 1, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'elements'},
  ],
};

/// Descriptor for `AnyArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List anyArrayDescriptor = $convert.base64Decode(
    'CghBbnlBcnJheRIwCghlbGVtZW50cxgBIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSCGVsZW'
    '1lbnRz');

