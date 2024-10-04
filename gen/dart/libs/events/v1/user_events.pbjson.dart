//
//  Generated code. Do not modify.
//  source: libs/events/v1/user_events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userRegisteredEventDescriptor instead')
const UserRegisteredEvent$json = {
  '1': 'UserRegisteredEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UserRegisteredEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRegisteredEventDescriptor = $convert.base64Decode(
    'ChNVc2VyUmVnaXN0ZXJlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW'
    '1haWwSGgoIbmlja25hbWUYAyABKAlSCG5pY2tuYW1lEhIKBG5hbWUYBCABKAlSBG5hbWU=');

@$core.Deprecated('Use userCreatedEventDescriptor instead')
const UserCreatedEvent$json = {
  '1': 'UserCreatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UserCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCreatedEventDescriptor = $convert.base64Decode(
    'ChBVc2VyQ3JlYXRlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW1haW'
    'wSGgoIbmlja25hbWUYAyABKAlSCG5pY2tuYW1lEhIKBG5hbWUYBCABKAlSBG5hbWU=');

@$core.Deprecated('Use userUpdatedEventDescriptor instead')
const UserUpdatedEvent$json = {
  '1': 'UserUpdatedEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'email', '17': true},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'nickname', '17': true},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'name', '17': true},
  ],
  '8': [
    {'1': '_email'},
    {'1': '_nickname'},
    {'1': '_name'},
  ],
};

/// Descriptor for `UserUpdatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userUpdatedEventDescriptor = $convert.base64Decode(
    'ChBVc2VyVXBkYXRlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZBIZCgVlbWFpbBgCIAEoCUgAUgVlbW'
    'FpbIgBARIfCghuaWNrbmFtZRgDIAEoCUgBUghuaWNrbmFtZYgBARIXCgRuYW1lGAQgASgJSAJS'
    'BG5hbWWIAQFCCAoGX2VtYWlsQgsKCV9uaWNrbmFtZUIHCgVfbmFtZQ==');

