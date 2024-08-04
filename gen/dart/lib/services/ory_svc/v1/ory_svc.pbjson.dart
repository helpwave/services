//
//  Generated code. Do not modify.
//  source: services/ory_svc/v1/ory_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use afterRegistrationWebhookPayloadRequestDescriptor instead')
const AfterRegistrationWebhookPayloadRequest$json = {
  '1': 'AfterRegistrationWebhookPayloadRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AfterRegistrationWebhookPayloadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List afterRegistrationWebhookPayloadRequestDescriptor = $convert.base64Decode(
    'CiZBZnRlclJlZ2lzdHJhdGlvbldlYmhvb2tQYXlsb2FkUmVxdWVzdBIXCgd1c2VyX2lkGAEgAS'
    'gJUgZ1c2VySWQSFAoFZW1haWwYAiABKAlSBWVtYWlsEhoKCG5pY2tuYW1lGAMgASgJUghuaWNr'
    'bmFtZRISCgRuYW1lGAQgASgJUgRuYW1l');

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

