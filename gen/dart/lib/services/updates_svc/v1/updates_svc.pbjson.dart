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

@$core.Deprecated('Use entityEventDescriptor instead')
const EntityEvent$json = {
  '1': 'EntityEvent',
  '2': [
    {'1': 'entity_id', '3': 1, '4': 1, '5': 9, '10': 'entityId'},
  ],
};

/// Descriptor for `EntityEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entityEventDescriptor = $convert.base64Decode(
    'CgtFbnRpdHlFdmVudBIbCgllbnRpdHlfaWQYASABKAlSCGVudGl0eUlk');

@$core.Deprecated('Use domainEventDescriptor instead')
const DomainEvent$json = {
  '1': 'DomainEvent',
  '2': [
    {'1': 'event_id', '3': 1, '4': 1, '5': 9, '10': 'eventId'},
    {'1': 'event_type', '3': 2, '4': 1, '5': 9, '10': 'eventType'},
    {'1': 'aggregate_id', '3': 3, '4': 1, '5': 9, '10': 'aggregateId'},
    {'1': 'aggregate_type', '3': 4, '4': 1, '5': 9, '10': 'aggregateType'},
  ],
};

/// Descriptor for `DomainEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List domainEventDescriptor = $convert.base64Decode(
    'CgtEb21haW5FdmVudBIZCghldmVudF9pZBgBIAEoCVIHZXZlbnRJZBIdCgpldmVudF90eXBlGA'
    'IgASgJUglldmVudFR5cGUSIQoMYWdncmVnYXRlX2lkGAMgASgJUgthZ2dyZWdhdGVJZBIlCg5h'
    'Z2dyZWdhdGVfdHlwZRgEIAEoCVINYWdncmVnYXRlVHlwZQ==');

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
    {'1': 'entity_event', '3': 2, '4': 1, '5': 11, '6': '.services.updates_svc.v1.EntityEvent', '9': 0, '10': 'entityEvent'},
    {'1': 'domain_event', '3': 3, '4': 1, '5': 11, '6': '.services.updates_svc.v1.DomainEvent', '9': 0, '10': 'domainEvent'},
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `ReceiveUpdatesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List receiveUpdatesResponseDescriptor = $convert.base64Decode(
    'ChZSZWNlaXZlVXBkYXRlc1Jlc3BvbnNlEhoKCHJldmlzaW9uGAEgASgEUghyZXZpc2lvbhJJCg'
    'xlbnRpdHlfZXZlbnQYAiABKAsyJC5zZXJ2aWNlcy51cGRhdGVzX3N2Yy52MS5FbnRpdHlFdmVu'
    'dEgAUgtlbnRpdHlFdmVudBJJCgxkb21haW5fZXZlbnQYAyABKAsyJC5zZXJ2aWNlcy51cGRhdG'
    'VzX3N2Yy52MS5Eb21haW5FdmVudEgAUgtkb21haW5FdmVudEIHCgVldmVudA==');

