//
//  Generated code. Do not modify.
//  source: libs/events/v1/room_events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use roomCreatedEventDescriptor instead')
const RoomCreatedEvent$json = {
  '1': 'RoomCreatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
  '7': {},
};

/// Descriptor for `RoomCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomCreatedEventDescriptor = $convert.base64Decode(
    'ChBSb29tQ3JlYXRlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZDoT2oQBD1JPT01fQ1JFQVRFRF92MQ'
    '==');

@$core.Deprecated('Use roomUpdatedEventDescriptor instead')
const RoomUpdatedEvent$json = {
  '1': 'RoomUpdatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': {},
};

/// Descriptor for `RoomUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomUpdatedEventDescriptor = $convert.base64Decode(
    'ChBSb29tVXBkYXRlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lOh'
    'PahAEPUk9PTV9VUERBVEVEX3Yx');

@$core.Deprecated('Use roomDeletedEventDescriptor instead')
const RoomDeletedEvent$json = {
  '1': 'RoomDeletedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
  '7': {},
};

/// Descriptor for `RoomDeletedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomDeletedEventDescriptor = $convert.base64Decode(
    'ChBSb29tRGVsZXRlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZDoT2oQBD1JPT01fREVMRVRFRF92MQ'
    '==');

