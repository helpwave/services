//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_set_svc.proto
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
  ],
};

/// Descriptor for `CreatePropertySetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertySetRequestDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVQcm9wZXJ0eVNldFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use createPropertySetResponseDescriptor instead')
const CreatePropertySetResponse$json = {
  '1': 'CreatePropertySetResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `CreatePropertySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertySetResponseDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVQcm9wZXJ0eVNldFJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBIgCgtjb25zaXN0ZW'
    '5jeRgCIAEoCVILY29uc2lzdGVuY3k=');

@$core.Deprecated('Use getPropertySetRequestDescriptor instead')
const GetPropertySetRequest$json = {
  '1': 'GetPropertySetRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPropertySetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertySetRequestDescriptor = $convert.base64Decode(
    'ChVHZXRQcm9wZXJ0eVNldFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getPropertySetResponseDescriptor instead')
const GetPropertySetResponse$json = {
  '1': 'GetPropertySetResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetPropertySetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPropertySetResponseDescriptor = $convert.base64Decode(
    'ChZHZXRQcm9wZXJ0eVNldFJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUg'
    'RuYW1lEiAKC2NvbnNpc3RlbmN5GAMgASgJUgtjb25zaXN0ZW5jeQ==');

