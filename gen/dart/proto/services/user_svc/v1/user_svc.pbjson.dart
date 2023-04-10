///
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/user_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = const {
  '1': 'CreateUserRequest',
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVVc2VyUmVxdWVzdA==');
@$core.Deprecated('Use createUserResponseDescriptor instead')
const CreateUserResponse$json = const {
  '1': 'CreateUserResponse',
};

/// Descriptor for `CreateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVVc2VyUmVzcG9uc2U=');
@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = const {
  '1': 'GetUserRequest',
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode('Cg5HZXRVc2VyUmVxdWVzdA==');
@$core.Deprecated('Use getUserResponseDescriptor instead')
const GetUserResponse$json = const {
  '1': 'GetUserResponse',
};

/// Descriptor for `GetUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserResponseDescriptor = $convert.base64Decode('Cg9HZXRVc2VyUmVzcG9uc2U=');
@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVVc2VyUmVxdWVzdA==');
@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = const {
  '1': 'UpdateUserResponse',
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVVc2VyUmVzcG9uc2U=');
const $core.Map<$core.String, $core.dynamic> UserServiceBase$json = const {
  '1': 'UserService',
  '2': const [
    const {'1': 'CreateUser', '2': '.proto.services.user_svc.v1.CreateUserRequest', '3': '.proto.services.user_svc.v1.CreateUserResponse', '4': const {}},
    const {'1': 'UpdateUser', '2': '.proto.services.user_svc.v1.UpdateUserRequest', '3': '.proto.services.user_svc.v1.UpdateUserResponse', '4': const {}},
    const {'1': 'GetUser', '2': '.proto.services.user_svc.v1.GetUserRequest', '3': '.proto.services.user_svc.v1.GetUserResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use userServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> UserServiceBase$messageJson = const {
  '.proto.services.user_svc.v1.CreateUserRequest': CreateUserRequest$json,
  '.proto.services.user_svc.v1.CreateUserResponse': CreateUserResponse$json,
  '.proto.services.user_svc.v1.UpdateUserRequest': UpdateUserRequest$json,
  '.proto.services.user_svc.v1.UpdateUserResponse': UpdateUserResponse$json,
  '.proto.services.user_svc.v1.GetUserRequest': GetUserRequest$json,
  '.proto.services.user_svc.v1.GetUserResponse': GetUserResponse$json,
};

/// Descriptor for `UserService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List userServiceDescriptor = $convert.base64Decode('CgtVc2VyU2VydmljZRJtCgpDcmVhdGVVc2VyEi0ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuQ3JlYXRlVXNlclJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52MS5DcmVhdGVVc2VyUmVzcG9uc2UiABJtCgpVcGRhdGVVc2VyEi0ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuVXBkYXRlVXNlclJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52MS5VcGRhdGVVc2VyUmVzcG9uc2UiABJkCgdHZXRVc2VyEioucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuR2V0VXNlclJlcXVlc3QaKy5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52MS5HZXRVc2VyUmVzcG9uc2UiAA==');
