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
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'nickname', '3': 2, '4': 1, '5': 9, '10': 'nickname'},
    const {'1': 'full_name', '3': 3, '4': 1, '5': 9, '10': 'fullName'},
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVVc2VyUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWwSGgoIbmlja25hbWUYAiABKAlSCG5pY2tuYW1lEhsKCWZ1bGxfbmFtZRgDIAEoCVIIZnVsbE5hbWUSGgoIcGFzc3dvcmQYBCABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use createUserResponseDescriptor instead')
const CreateUserResponse$json = const {
  '1': 'CreateUserResponse',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `CreateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVVc2VyUmVzcG9uc2USFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklk');
@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'userId', '17': true},
    const {'1': 'full_name', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'fullName', '17': true},
    const {'1': 'nickname', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'nickname', '17': true},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'email', '17': true},
    const {'1': 'password', '3': 5, '4': 1, '5': 9, '9': 4, '10': 'password', '17': true},
  ],
  '8': const [
    const {'1': '_user_id'},
    const {'1': '_full_name'},
    const {'1': '_nickname'},
    const {'1': '_email'},
    const {'1': '_password'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVVc2VyUmVxdWVzdBIcCgd1c2VyX2lkGAEgASgJSABSBnVzZXJJZIgBARIgCglmdWxsX25hbWUYAiABKAlIAVIIZnVsbE5hbWWIAQESHwoIbmlja25hbWUYAyABKAlIAlIIbmlja25hbWWIAQESGQoFZW1haWwYBCABKAlIA1IFZW1haWyIAQESHwoIcGFzc3dvcmQYBSABKAlIBFIIcGFzc3dvcmSIAQFCCgoIX3VzZXJfaWRCDAoKX2Z1bGxfbmFtZUILCglfbmlja25hbWVCCAoGX2VtYWlsQgsKCV9wYXNzd29yZA==');
@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = const {
  '1': 'UpdateUserResponse',
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVVc2VyUmVzcG9uc2U=');
@$core.Deprecated('Use createOrganizationRequestDescriptor instead')
const CreateOrganizationRequest$json = const {
  '1': 'CreateOrganizationRequest',
  '2': const [
    const {'1': 'long_name', '3': 1, '4': 1, '5': 9, '10': 'longName'},
    const {'1': 'short_name', '3': 2, '4': 1, '5': 9, '10': 'shortName'},
    const {'1': 'contact_email', '3': 3, '4': 1, '5': 9, '10': 'contactEmail'},
  ],
};

/// Descriptor for `CreateOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVPcmdhbml6YXRpb25SZXF1ZXN0EhsKCWxvbmdfbmFtZRgBIAEoCVIIbG9uZ05hbWUSHQoKc2hvcnRfbmFtZRgCIAEoCVIJc2hvcnROYW1lEiMKDWNvbnRhY3RfZW1haWwYAyABKAlSDGNvbnRhY3RFbWFpbA==');
@$core.Deprecated('Use createOrganizationResponseDescriptor instead')
const CreateOrganizationResponse$json = const {
  '1': 'CreateOrganizationResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'long_name', '3': 2, '4': 1, '5': 9, '10': 'longName'},
    const {'1': 'short_name', '3': 3, '4': 1, '5': 9, '10': 'shortName'},
    const {'1': 'contact_email', '3': 4, '4': 1, '5': 9, '10': 'contactEmail'},
    const {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'is_personal', '3': 6, '4': 1, '5': 8, '10': 'isPersonal'},
  ],
};

/// Descriptor for `CreateOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationResponseDescriptor = $convert.base64Decode('ChpDcmVhdGVPcmdhbml6YXRpb25SZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSGwoJbG9uZ19uYW1lGAIgASgJUghsb25nTmFtZRIdCgpzaG9ydF9uYW1lGAMgASgJUglzaG9ydE5hbWUSIwoNY29udGFjdF9lbWFpbBgEIAEoCVIMY29udGFjdEVtYWlsEh0KCmF2YXRhcl91cmwYBSABKAlSCWF2YXRhclVybBIfCgtpc19wZXJzb25hbBgGIAEoCFIKaXNQZXJzb25hbA==');
const $core.Map<$core.String, $core.dynamic> UserServiceBase$json = const {
  '1': 'UserService',
  '2': const [
    const {'1': 'CreateUser', '2': '.proto.services.user_svc.v1.CreateUserRequest', '3': '.proto.services.user_svc.v1.CreateUserResponse', '4': const {}},
    const {'1': 'UpdateUser', '2': '.proto.services.user_svc.v1.UpdateUserRequest', '3': '.proto.services.user_svc.v1.UpdateUserResponse', '4': const {}},
    const {'1': 'CreateOrganization', '2': '.proto.services.user_svc.v1.CreateOrganizationRequest', '3': '.proto.services.user_svc.v1.CreateOrganizationResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use userServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> UserServiceBase$messageJson = const {
  '.proto.services.user_svc.v1.CreateUserRequest': CreateUserRequest$json,
  '.proto.services.user_svc.v1.CreateUserResponse': CreateUserResponse$json,
  '.proto.services.user_svc.v1.UpdateUserRequest': UpdateUserRequest$json,
  '.proto.services.user_svc.v1.UpdateUserResponse': UpdateUserResponse$json,
  '.proto.services.user_svc.v1.CreateOrganizationRequest': CreateOrganizationRequest$json,
  '.proto.services.user_svc.v1.CreateOrganizationResponse': CreateOrganizationResponse$json,
};

/// Descriptor for `UserService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List userServiceDescriptor = $convert.base64Decode('CgtVc2VyU2VydmljZRJtCgpDcmVhdGVVc2VyEi0ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuQ3JlYXRlVXNlclJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52MS5DcmVhdGVVc2VyUmVzcG9uc2UiABJtCgpVcGRhdGVVc2VyEi0ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuVXBkYXRlVXNlclJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52MS5VcGRhdGVVc2VyUmVzcG9uc2UiABKFAQoSQ3JlYXRlT3JnYW5pemF0aW9uEjUucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuQ3JlYXRlT3JnYW5pemF0aW9uUmVxdWVzdBo2LnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkNyZWF0ZU9yZ2FuaXphdGlvblJlc3BvbnNlIgA=');
