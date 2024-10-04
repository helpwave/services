//
//  Generated code. Do not modify.
//  source: libs/events/v1/organization_events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use organizationCreatedEventDescriptor instead')
const OrganizationCreatedEvent$json = {
  '1': 'OrganizationCreatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `OrganizationCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationCreatedEventDescriptor = $convert.base64Decode(
    'ChhPcmdhbml6YXRpb25DcmVhdGVkRXZlbnQSDgoCaWQYASABKAlSAmlkEhcKB3VzZXJfaWQYAi'
    'ABKAlSBnVzZXJJZA==');

@$core.Deprecated('Use organizationDeletedEventDescriptor instead')
const OrganizationDeletedEvent$json = {
  '1': 'OrganizationDeletedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `OrganizationDeletedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationDeletedEventDescriptor = $convert.base64Decode(
    'ChhPcmdhbml6YXRpb25EZWxldGVkRXZlbnQSDgoCaWQYASABKAlSAmlk');

