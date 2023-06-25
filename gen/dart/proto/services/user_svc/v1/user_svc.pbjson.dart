//
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/user_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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
    {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '10': 'avatarUrl'},
    {'1': 'organizations', '3': 5, '4': 3, '5': 11, '6': '.proto.services.user_svc.v1.ReadSelfOrganization', '10': 'organizations'},
  ],
};

/// Descriptor for `ReadSelfResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readSelfResponseDescriptor = $convert.base64Decode(
    'ChBSZWFkU2VsZlJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh'
    'oKCG5pY2tuYW1lGAMgASgJUghuaWNrbmFtZRIdCgphdmF0YXJfdXJsGAQgASgJUglhdmF0YXJV'
    'cmwSVgoNb3JnYW5pemF0aW9ucxgFIAMoCzIwLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLl'
    'JlYWRTZWxmT3JnYW5pemF0aW9uUg1vcmdhbml6YXRpb25z');

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
    {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '10': 'avatarUrl'},
  ],
};

/// Descriptor for `ReadPublicProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readPublicProfileResponseDescriptor = $convert.base64Decode(
    'ChlSZWFkUHVibGljUHJvZmlsZVJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgAS'
    'gJUgRuYW1lEhoKCG5pY2tuYW1lGAMgASgJUghuaWNrbmFtZRIdCgphdmF0YXJfdXJsGAQgASgJ'
    'UglhdmF0YXJVcmw=');

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

const $core.Map<$core.String, $core.dynamic> UserServiceBase$json = {
  '1': 'UserService',
  '2': [
    {'1': 'ReadSelf', '2': '.proto.services.user_svc.v1.ReadSelfRequest', '3': '.proto.services.user_svc.v1.ReadSelfResponse', '4': {}},
    {'1': 'ReadPublicProfile', '2': '.proto.services.user_svc.v1.ReadPublicProfileRequest', '3': '.proto.services.user_svc.v1.ReadPublicProfileResponse', '4': {}},
    {'1': 'UpdateUser', '2': '.proto.services.user_svc.v1.UpdateUserRequest', '3': '.proto.services.user_svc.v1.UpdateUserResponse', '4': {}},
  ],
};

@$core.Deprecated('Use userServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> UserServiceBase$messageJson = {
  '.proto.services.user_svc.v1.ReadSelfRequest': ReadSelfRequest$json,
  '.proto.services.user_svc.v1.ReadSelfResponse': ReadSelfResponse$json,
  '.proto.services.user_svc.v1.ReadSelfOrganization': ReadSelfOrganization$json,
  '.proto.services.user_svc.v1.ReadPublicProfileRequest': ReadPublicProfileRequest$json,
  '.proto.services.user_svc.v1.ReadPublicProfileResponse': ReadPublicProfileResponse$json,
  '.proto.services.user_svc.v1.UpdateUserRequest': UpdateUserRequest$json,
  '.proto.services.user_svc.v1.UpdateUserResponse': UpdateUserResponse$json,
};

/// Descriptor for `UserService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List userServiceDescriptor = $convert.base64Decode(
    'CgtVc2VyU2VydmljZRJnCghSZWFkU2VsZhIrLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLl'
    'JlYWRTZWxmUmVxdWVzdBosLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLlJlYWRTZWxmUmVz'
    'cG9uc2UiABKCAQoRUmVhZFB1YmxpY1Byb2ZpbGUSNC5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy'
    '52MS5SZWFkUHVibGljUHJvZmlsZVJlcXVlc3QaNS5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52'
    'MS5SZWFkUHVibGljUHJvZmlsZVJlc3BvbnNlIgASbQoKVXBkYXRlVXNlchItLnByb3RvLnNlcn'
    'ZpY2VzLnVzZXJfc3ZjLnYxLlVwZGF0ZVVzZXJSZXF1ZXN0Gi4ucHJvdG8uc2VydmljZXMudXNl'
    'cl9zdmMudjEuVXBkYXRlVXNlclJlc3BvbnNlIgA=');

