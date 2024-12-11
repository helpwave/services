//
//  Generated code. Do not modify.
//  source: libs/events/v1/bed_events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bedCreatedEventDescriptor instead')
const BedCreatedEvent$json = {
  '1': 'BedCreatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
  '7': {},
};

/// Descriptor for `BedCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bedCreatedEventDescriptor = $convert.base64Decode(
    'Cg9CZWRDcmVhdGVkRXZlbnQSDgoCaWQYASABKAlSAmlkOhLahAEOQkVEX0NSRUFURURfdjE=');

@$core.Deprecated('Use bedUpdatedEventDescriptor instead')
const BedUpdatedEvent$json = {
  '1': 'BedUpdatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'room_id', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'roomId', '17': true},
  ],
  '7': {},
  '8': [
    {'1': '_room_id'},
  ],
};

/// Descriptor for `BedUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bedUpdatedEventDescriptor = $convert.base64Decode(
    'Cg9CZWRVcGRhdGVkRXZlbnQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSHA'
    'oHcm9vbV9pZBgDIAEoCUgAUgZyb29tSWSIAQE6EtqEAQ5CRURfVVBEQVRFRF92MUIKCghfcm9v'
    'bV9pZA==');

@$core.Deprecated('Use bedDeletedEventDescriptor instead')
const BedDeletedEvent$json = {
  '1': 'BedDeletedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
  '7': {},
};

/// Descriptor for `BedDeletedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bedDeletedEventDescriptor = $convert.base64Decode(
    'Cg9CZWREZWxldGVkRXZlbnQSDgoCaWQYASABKAlSAmlkOhLahAEOQkVEX0RFTEVURURfdjE=');

