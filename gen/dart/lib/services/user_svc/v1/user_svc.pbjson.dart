//
//  Generated code. Do not modify.
//  source: services/user_svc/v1/user_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = {
  '1': 'CreateUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFAoFZW1haWwYAiABKAlSBWVtYW'
    'lsEhoKCG5pY2tuYW1lGAMgASgJUghuaWNrbmFtZRISCgRuYW1lGAQgASgJUgRuYW1l');

@$core.Deprecated('Use createUserResponseDescriptor instead')
const CreateUserResponse$json = {
  '1': 'CreateUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVVc2VyUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use readSelfOrganizationDescriptor instead')
const ReadSelfOrganization$json = {
  '1': 'ReadSelfOrganization',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ReadSelfOrganization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readSelfOrganizationDescriptor = $convert.base64Decode(
    'ChRSZWFkU2VsZk9yZ2FuaXphdGlvbhIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use readSelfRequestDescriptor instead')
const ReadSelfRequest$json = {
  '1': 'ReadSelfRequest',
};

/// Descriptor for `ReadSelfRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readSelfRequestDescriptor = $convert.base64Decode(
    'Cg9SZWFkU2VsZlJlcXVlc3Q=');

@$core.Deprecated('Use readSelfResponseDescriptor instead')
const ReadSelfResponse$json = {
  '1': 'ReadSelfResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl', '17': true},
    {'1': 'organizations', '3': 5, '4': 3, '5': 11, '6': '.services.user_svc.v1.ReadSelfOrganization', '10': 'organizations'},
  ],
  '8': [
    {'1': '_avatar_url'},
  ],
};

/// Descriptor for `ReadSelfResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readSelfResponseDescriptor = $convert.base64Decode(
    'ChBSZWFkU2VsZlJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh'
    'oKCG5pY2tuYW1lGAMgASgJUghuaWNrbmFtZRIiCgphdmF0YXJfdXJsGAQgASgJSABSCWF2YXRh'
    'clVybIgBARJQCg1vcmdhbml6YXRpb25zGAUgAygLMiouc2VydmljZXMudXNlcl9zdmMudjEuUm'
    'VhZFNlbGZPcmdhbml6YXRpb25SDW9yZ2FuaXphdGlvbnNCDQoLX2F2YXRhcl91cmw=');

@$core.Deprecated('Use readPublicProfileRequestDescriptor instead')
const ReadPublicProfileRequest$json = {
  '1': 'ReadPublicProfileRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ReadPublicProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readPublicProfileRequestDescriptor = $convert.base64Decode(
    'ChhSZWFkUHVibGljUHJvZmlsZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use readPublicProfileResponseDescriptor instead')
const ReadPublicProfileResponse$json = {
  '1': 'ReadPublicProfileResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl', '17': true},
  ],
  '8': [
    {'1': '_avatar_url'},
  ],
};

/// Descriptor for `ReadPublicProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readPublicProfileResponseDescriptor = $convert.base64Decode(
    'ChlSZWFkUHVibGljUHJvZmlsZVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgAS'
    'gJUgRuYW1lEhoKCG5pY2tuYW1lGAMgASgJUghuaWNrbmFtZRIiCgphdmF0YXJfdXJsGAQgASgJ'
    'SABSCWF2YXRhclVybIgBAUINCgtfYXZhdGFyX3VybA==');

@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = {
  '1': 'UpdateUserRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = {
  '1': 'UpdateUserResponse',
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVVc2VyUmVzcG9uc2U=');

