//
//  Generated code. Do not modify.
//  source: services/updates_svc/v1/updates_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'event_id', '3': 1, '4': 1, '5': 9, '10': 'eventId'},
    {'1': 'event_type', '3': 2, '4': 1, '5': 9, '10': 'eventType'},
    {'1': 'aggregate_id', '3': 3, '4': 1, '5': 9, '10': 'aggregateId'},
    {'1': 'aggregate_type', '3': 4, '4': 1, '5': 9, '10': 'aggregateType'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBIZCghldmVudF9pZBgBIAEoCVIHZXZlbnRJZBIdCgpldmVudF90eXBlGAIgASgJUg'
    'lldmVudFR5cGUSIQoMYWdncmVnYXRlX2lkGAMgASgJUgthZ2dyZWdhdGVJZBIlCg5hZ2dyZWdh'
    'dGVfdHlwZRgEIAEoCVINYWdncmVnYXRlVHlwZQ==');

@$core.Deprecated('Use receiveUpdatesRequestDescriptor instead')
const ReceiveUpdatesRequest$json = {
  '1': 'ReceiveUpdatesRequest',
  '2': [
    {'1': 'revision', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'revision', '17': true},
  ],
  '8': [
    {'1': '_revision'},
  ],
};

/// Descriptor for `ReceiveUpdatesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List receiveUpdatesRequestDescriptor = $convert.base64Decode(
    'ChVSZWNlaXZlVXBkYXRlc1JlcXVlc3QSHwoIcmV2aXNpb24YASABKARIAFIIcmV2aXNpb26IAQ'
    'FCCwoJX3JldmlzaW9u');

@$core.Deprecated('Use receiveUpdatesResponseDescriptor instead')
const ReceiveUpdatesResponse$json = {
  '1': 'ReceiveUpdatesResponse',
  '2': [
    {'1': 'revision', '3': 1, '4': 1, '5': 4, '10': 'revision'},
    {'1': 'event', '3': 2, '4': 1, '5': 11, '6': '.services.updates_svc.v1.Event', '10': 'event'},
  ],
};

/// Descriptor for `ReceiveUpdatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List receiveUpdatesResponseDescriptor = $convert.base64Decode(
    'ChZSZWNlaXZlVXBkYXRlc1Jlc3BvbnNlEhoKCHJldmlzaW9uGAEgASgEUghyZXZpc2lvbhI0Cg'
    'VldmVudBgCIAEoCzIeLnNlcnZpY2VzLnVwZGF0ZXNfc3ZjLnYxLkV2ZW50UgVldmVudA==');

