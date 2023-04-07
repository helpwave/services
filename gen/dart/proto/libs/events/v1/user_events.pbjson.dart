///
//  Generated code. Do not modify.
//  source: proto/libs/events/v1/user_events.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userCreatedEventDescriptor instead')
const UserCreatedEvent$json = const {
  '1': 'UserCreatedEvent',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'full_name', '3': 4, '4': 1, '5': 9, '10': 'fullName'},
  ],
};

/// Descriptor for `UserCreatedEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCreatedEventDescriptor = $convert.base64Decode('ChBVc2VyQ3JlYXRlZEV2ZW50Eg4KAmlkGAEgASgJUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW1haWwSGgoIbmlja25hbWUYAyABKAlSCG5pY2tuYW1lEhsKCWZ1bGxfbmFtZRgEIAEoCVIIZnVsbE5hbWU=');
