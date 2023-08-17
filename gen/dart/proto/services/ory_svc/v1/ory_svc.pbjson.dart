//
//  Generated code. Do not modify.
//  source: proto/services/ory_svc/v1/ory_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use afterRegistrationWebhookPayloadDescriptor instead')
const AfterRegistrationWebhookPayload$json = {
  '1': 'AfterRegistrationWebhookPayload',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AfterRegistrationWebhookPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List afterRegistrationWebhookPayloadDescriptor = $convert.base64Decode(
    'Ch9BZnRlclJlZ2lzdHJhdGlvbldlYmhvb2tQYXlsb2FkEhcKB3VzZXJfaWQYASABKAlSBnVzZX'
    'JJZBIUCgVlbWFpbBgCIAEoCVIFZW1haWwSGgoIbmlja25hbWUYAyABKAlSCG5pY2tuYW1lEhIK'
    'BG5hbWUYBCABKAlSBG5hbWU=');

@$core.Deprecated('Use afterSettingsWebhookPayloadDescriptor instead')
const AfterSettingsWebhookPayload$json = {
  '1': 'AfterSettingsWebhookPayload',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AfterSettingsWebhookPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List afterSettingsWebhookPayloadDescriptor = $convert.base64Decode(
    'ChtBZnRlclNldHRpbmdzV2ViaG9va1BheWxvYWQSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEh'
    'QKBWVtYWlsGAIgASgJUgVlbWFpbBIaCghuaWNrbmFtZRgDIAEoCVIIbmlja25hbWUSEgoEbmFt'
    'ZRgEIAEoCVIEbmFtZQ==');

