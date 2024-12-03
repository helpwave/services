//
//  Generated code. Do not modify.
//  source: libs/events/v1/ward_events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use wardCreatedEventDescriptor instead')
const WardCreatedEvent$json = {
  '1': 'WardCreatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
  '7': {},
};

/// Descriptor for `WardCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wardCreatedEventDescriptor = $convert.base64Decode(
    'ChBXYXJkQ3JlYXRlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZDoT2oQBD1dBUkRfQ1JFQVRFRF92MQ'
    '==');

@$core.Deprecated('Use wardUpdatedEventDescriptor instead')
const WardUpdatedEvent$json = {
  '1': 'WardUpdatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': {},
};

/// Descriptor for `WardUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wardUpdatedEventDescriptor = $convert.base64Decode(
    'ChBXYXJkVXBkYXRlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lOh'
    'PahAEPV0FSRF9VUERBVEVEX3Yx');

@$core.Deprecated('Use wardDeletedEventDescriptor instead')
const WardDeletedEvent$json = {
  '1': 'WardDeletedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
  '7': {},
};

/// Descriptor for `WardDeletedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wardDeletedEventDescriptor = $convert.base64Decode(
    'ChBXYXJkRGVsZXRlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZDoT2oQBD1dBUkRfREVMRVRFRF92MQ'
    '==');

