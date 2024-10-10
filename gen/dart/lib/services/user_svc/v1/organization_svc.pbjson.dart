//
//  Generated code. Do not modify.
//  source: services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use invitationStateDescriptor instead')
const InvitationState$json = {
  '1': 'InvitationState',
  '2': [
    {'1': 'INVITATION_STATE_UNSPECIFIED', '2': 0},
    {'1': 'INVITATION_STATE_PENDING', '2': 1},
    {'1': 'INVITATION_STATE_ACCEPTED', '2': 2},
    {'1': 'INVITATION_STATE_REJECTED', '2': 3},
    {'1': 'INVITATION_STATE_REVOKED', '2': 4},
  ],
};

/// Descriptor for `InvitationState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List invitationStateDescriptor = $convert.base64Decode(
    'Cg9JbnZpdGF0aW9uU3RhdGUSIAocSU5WSVRBVElPTl9TVEFURV9VTlNQRUNJRklFRBAAEhwKGE'
    'lOVklUQVRJT05fU1RBVEVfUEVORElORxABEh0KGUlOVklUQVRJT05fU1RBVEVfQUNDRVBURUQQ'
    'AhIdChlJTlZJVEFUSU9OX1NUQVRFX1JFSkVDVEVEEAMSHAoYSU5WSVRBVElPTl9TVEFURV9SRV'
    'ZPS0VEEAQ=');

@$core.Deprecated('Use createOrganizationRequestDescriptor instead')
const CreateOrganizationRequest$json = {
  '1': 'CreateOrganizationRequest',
  '2': [
    {'1': 'long_name', '3': 1, '4': 1, '5': 9, '10': 'longName'},
    {'1': 'short_name', '3': 2, '4': 1, '5': 9, '10': 'shortName'},
    {'1': 'contact_email', '3': 3, '4': 1, '5': 9, '10': 'contactEmail'},
    {'1': 'is_personal', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'isPersonal', '17': true},
  ],
  '8': [
    {'1': '_is_personal'},
  ],
};

/// Descriptor for `CreateOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVPcmdhbml6YXRpb25SZXF1ZXN0EhsKCWxvbmdfbmFtZRgBIAEoCVIIbG9uZ05hbW'
    'USHQoKc2hvcnRfbmFtZRgCIAEoCVIJc2hvcnROYW1lEiMKDWNvbnRhY3RfZW1haWwYAyABKAlS'
    'DGNvbnRhY3RFbWFpbBIkCgtpc19wZXJzb25hbBgEIAEoCEgAUgppc1BlcnNvbmFsiAEBQg4KDF'
    '9pc19wZXJzb25hbA==');

@$core.Deprecated('Use createOrganizationResponseDescriptor instead')
const CreateOrganizationResponse$json = {
  '1': 'CreateOrganizationResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationResponseDescriptor = $convert.base64Decode(
    'ChpDcmVhdGVPcmdhbml6YXRpb25SZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getOrganizationMemberDescriptor instead')
const GetOrganizationMember$json = {
  '1': 'GetOrganizationMember',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetOrganizationMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationMemberDescriptor = $convert.base64Decode(
    'ChVHZXRPcmdhbml6YXRpb25NZW1iZXISFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklk');

@$core.Deprecated('Use getOrganizationRequestDescriptor instead')
const GetOrganizationRequest$json = {
  '1': 'GetOrganizationRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationRequestDescriptor = $convert.base64Decode(
    'ChZHZXRPcmdhbml6YXRpb25SZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getOrganizationResponseDescriptor instead')
const GetOrganizationResponse$json = {
  '1': 'GetOrganizationResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'long_name', '3': 2, '4': 1, '5': 9, '10': 'longName'},
    {'1': 'short_name', '3': 3, '4': 1, '5': 9, '10': 'shortName'},
    {'1': 'contact_email', '3': 4, '4': 1, '5': 9, '10': 'contactEmail'},
    {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl', '17': true},
    {'1': 'is_personal', '3': 6, '4': 1, '5': 8, '10': 'isPersonal'},
    {'1': 'members', '3': 7, '4': 3, '5': 11, '6': '.services.user_svc.v1.GetOrganizationMember', '10': 'members'},
  ],
  '8': [
    {'1': '_avatar_url'},
  ],
};

/// Descriptor for `GetOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationResponseDescriptor = $convert.base64Decode(
    'ChdHZXRPcmdhbml6YXRpb25SZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSGwoJbG9uZ19uYW1lGA'
    'IgASgJUghsb25nTmFtZRIdCgpzaG9ydF9uYW1lGAMgASgJUglzaG9ydE5hbWUSIwoNY29udGFj'
    'dF9lbWFpbBgEIAEoCVIMY29udGFjdEVtYWlsEiIKCmF2YXRhcl91cmwYBSABKAlIAFIJYXZhdG'
    'FyVXJsiAEBEh8KC2lzX3BlcnNvbmFsGAYgASgIUgppc1BlcnNvbmFsEkUKB21lbWJlcnMYByAD'
    'KAsyKy5zZXJ2aWNlcy51c2VyX3N2Yy52MS5HZXRPcmdhbml6YXRpb25NZW1iZXJSB21lbWJlcn'
    'NCDQoLX2F2YXRhcl91cmw=');

@$core.Deprecated('Use getOrganizationsByUserRequestDescriptor instead')
const GetOrganizationsByUserRequest$json = {
  '1': 'GetOrganizationsByUserRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetOrganizationsByUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationsByUserRequestDescriptor = $convert.base64Decode(
    'Ch1HZXRPcmdhbml6YXRpb25zQnlVc2VyUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySW'
    'Q=');

@$core.Deprecated('Use getOrganizationsByUserResponseDescriptor instead')
const GetOrganizationsByUserResponse$json = {
  '1': 'GetOrganizationsByUserResponse',
  '2': [
    {'1': 'organizations', '3': 1, '4': 3, '5': 11, '6': '.services.user_svc.v1.GetOrganizationsByUserResponse.Organization', '10': 'organizations'},
  ],
  '3': [GetOrganizationsByUserResponse_Organization$json],
};

@$core.Deprecated('Use getOrganizationsByUserResponseDescriptor instead')
const GetOrganizationsByUserResponse_Organization$json = {
  '1': 'Organization',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'long_name', '3': 2, '4': 1, '5': 9, '10': 'longName'},
    {'1': 'short_name', '3': 3, '4': 1, '5': 9, '10': 'shortName'},
    {'1': 'contact_email', '3': 4, '4': 1, '5': 9, '10': 'contactEmail'},
    {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl', '17': true},
    {'1': 'is_personal', '3': 6, '4': 1, '5': 8, '10': 'isPersonal'},
    {'1': 'members', '3': 7, '4': 3, '5': 11, '6': '.services.user_svc.v1.GetOrganizationsByUserResponse.Organization.Member', '10': 'members'},
  ],
  '3': [GetOrganizationsByUserResponse_Organization_Member$json],
  '8': [
    {'1': '_avatar_url'},
  ],
};

@$core.Deprecated('Use getOrganizationsByUserResponseDescriptor instead')
const GetOrganizationsByUserResponse_Organization_Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl', '17': true},
  ],
  '8': [
    {'1': '_avatar_url'},
  ],
};

/// Descriptor for `GetOrganizationsByUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationsByUserResponseDescriptor = $convert.base64Decode(
    'Ch5HZXRPcmdhbml6YXRpb25zQnlVc2VyUmVzcG9uc2USZwoNb3JnYW5pemF0aW9ucxgBIAMoCz'
    'JBLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkdldE9yZ2FuaXphdGlvbnNCeVVzZXJSZXNwb25zZS5P'
    'cmdhbml6YXRpb25SDW9yZ2FuaXphdGlvbnMawAMKDE9yZ2FuaXphdGlvbhIOCgJpZBgBIAEoCV'
    'ICaWQSGwoJbG9uZ19uYW1lGAIgASgJUghsb25nTmFtZRIdCgpzaG9ydF9uYW1lGAMgASgJUglz'
    'aG9ydE5hbWUSIwoNY29udGFjdF9lbWFpbBgEIAEoCVIMY29udGFjdEVtYWlsEiIKCmF2YXRhcl'
    '91cmwYBSABKAlIAFIJYXZhdGFyVXJsiAEBEh8KC2lzX3BlcnNvbmFsGAYgASgIUgppc1BlcnNv'
    'bmFsEmIKB21lbWJlcnMYByADKAsySC5zZXJ2aWNlcy51c2VyX3N2Yy52MS5HZXRPcmdhbml6YX'
    'Rpb25zQnlVc2VyUmVzcG9uc2UuT3JnYW5pemF0aW9uLk1lbWJlclIHbWVtYmVycxqGAQoGTWVt'
    'YmVyEhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBIUCgVlbWFpbBgCIAEoCVIFZW1haWwSGgoIbm'
    'lja25hbWUYAyABKAlSCG5pY2tuYW1lEiIKCmF2YXRhcl91cmwYBCABKAlIAFIJYXZhdGFyVXJs'
    'iAEBQg0KC19hdmF0YXJfdXJsQg0KC19hdmF0YXJfdXJs');

@$core.Deprecated('Use getOrganizationsForUserRequestDescriptor instead')
const GetOrganizationsForUserRequest$json = {
  '1': 'GetOrganizationsForUserRequest',
};

/// Descriptor for `GetOrganizationsForUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationsForUserRequestDescriptor = $convert.base64Decode(
    'Ch5HZXRPcmdhbml6YXRpb25zRm9yVXNlclJlcXVlc3Q=');

@$core.Deprecated('Use getOrganizationsForUserResponseDescriptor instead')
const GetOrganizationsForUserResponse$json = {
  '1': 'GetOrganizationsForUserResponse',
  '2': [
    {'1': 'organizations', '3': 1, '4': 3, '5': 11, '6': '.services.user_svc.v1.GetOrganizationsForUserResponse.Organization', '10': 'organizations'},
  ],
  '3': [GetOrganizationsForUserResponse_Organization$json],
};

@$core.Deprecated('Use getOrganizationsForUserResponseDescriptor instead')
const GetOrganizationsForUserResponse_Organization$json = {
  '1': 'Organization',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'long_name', '3': 2, '4': 1, '5': 9, '10': 'longName'},
    {'1': 'short_name', '3': 3, '4': 1, '5': 9, '10': 'shortName'},
    {'1': 'contact_email', '3': 4, '4': 1, '5': 9, '10': 'contactEmail'},
    {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl', '17': true},
    {'1': 'is_personal', '3': 6, '4': 1, '5': 8, '10': 'isPersonal'},
    {'1': 'members', '3': 7, '4': 3, '5': 11, '6': '.services.user_svc.v1.GetOrganizationsForUserResponse.Organization.Member', '10': 'members'},
  ],
  '3': [GetOrganizationsForUserResponse_Organization_Member$json],
  '8': [
    {'1': '_avatar_url'},
  ],
};

@$core.Deprecated('Use getOrganizationsForUserResponseDescriptor instead')
const GetOrganizationsForUserResponse_Organization_Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl', '17': true},
  ],
  '8': [
    {'1': '_avatar_url'},
  ],
};

/// Descriptor for `GetOrganizationsForUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationsForUserResponseDescriptor = $convert.base64Decode(
    'Ch9HZXRPcmdhbml6YXRpb25zRm9yVXNlclJlc3BvbnNlEmgKDW9yZ2FuaXphdGlvbnMYASADKA'
    'syQi5zZXJ2aWNlcy51c2VyX3N2Yy52MS5HZXRPcmdhbml6YXRpb25zRm9yVXNlclJlc3BvbnNl'
    'Lk9yZ2FuaXphdGlvblINb3JnYW5pemF0aW9ucxrBAwoMT3JnYW5pemF0aW9uEg4KAmlkGAEgAS'
    'gJUgJpZBIbCglsb25nX25hbWUYAiABKAlSCGxvbmdOYW1lEh0KCnNob3J0X25hbWUYAyABKAlS'
    'CXNob3J0TmFtZRIjCg1jb250YWN0X2VtYWlsGAQgASgJUgxjb250YWN0RW1haWwSIgoKYXZhdG'
    'FyX3VybBgFIAEoCUgAUglhdmF0YXJVcmyIAQESHwoLaXNfcGVyc29uYWwYBiABKAhSCmlzUGVy'
    'c29uYWwSYwoHbWVtYmVycxgHIAMoCzJJLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkdldE9yZ2FuaX'
    'phdGlvbnNGb3JVc2VyUmVzcG9uc2UuT3JnYW5pemF0aW9uLk1lbWJlclIHbWVtYmVycxqGAQoG'
    'TWVtYmVyEhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBIUCgVlbWFpbBgCIAEoCVIFZW1haWwSGg'
    'oIbmlja25hbWUYAyABKAlSCG5pY2tuYW1lEiIKCmF2YXRhcl91cmwYBCABKAlIAFIJYXZhdGFy'
    'VXJsiAEBQg0KC19hdmF0YXJfdXJsQg0KC19hdmF0YXJfdXJs');

@$core.Deprecated('Use updateOrganizationRequestDescriptor instead')
const UpdateOrganizationRequest$json = {
  '1': 'UpdateOrganizationRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'long_name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'longName', '17': true},
    {'1': 'short_name', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'shortName', '17': true},
    {'1': 'contact_email', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'contactEmail', '17': true},
    {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '9': 3, '10': 'avatarUrl', '17': true},
    {'1': 'is_personal', '3': 6, '4': 1, '5': 8, '9': 4, '10': 'isPersonal', '17': true},
  ],
  '8': [
    {'1': '_long_name'},
    {'1': '_short_name'},
    {'1': '_contact_email'},
    {'1': '_avatar_url'},
    {'1': '_is_personal'},
  ],
};

/// Descriptor for `UpdateOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrganizationRequestDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVPcmdhbml6YXRpb25SZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIgCglsb25nX25hbW'
    'UYAiABKAlIAFIIbG9uZ05hbWWIAQESIgoKc2hvcnRfbmFtZRgDIAEoCUgBUglzaG9ydE5hbWWI'
    'AQESKAoNY29udGFjdF9lbWFpbBgEIAEoCUgCUgxjb250YWN0RW1haWyIAQESIgoKYXZhdGFyX3'
    'VybBgFIAEoCUgDUglhdmF0YXJVcmyIAQESJAoLaXNfcGVyc29uYWwYBiABKAhIBFIKaXNQZXJz'
    'b25hbIgBAUIMCgpfbG9uZ19uYW1lQg0KC19zaG9ydF9uYW1lQhAKDl9jb250YWN0X2VtYWlsQg'
    '0KC19hdmF0YXJfdXJsQg4KDF9pc19wZXJzb25hbA==');

@$core.Deprecated('Use updateOrganizationResponseDescriptor instead')
const UpdateOrganizationResponse$json = {
  '1': 'UpdateOrganizationResponse',
};

/// Descriptor for `UpdateOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOrganizationResponseDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVPcmdhbml6YXRpb25SZXNwb25zZQ==');

@$core.Deprecated('Use deleteOrganizationRequestDescriptor instead')
const DeleteOrganizationRequest$json = {
  '1': 'DeleteOrganizationRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteOrganizationRequestDescriptor = $convert.base64Decode(
    'ChlEZWxldGVPcmdhbml6YXRpb25SZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteOrganizationResponseDescriptor instead')
const DeleteOrganizationResponse$json = {
  '1': 'DeleteOrganizationResponse',
};

/// Descriptor for `DeleteOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteOrganizationResponseDescriptor = $convert.base64Decode(
    'ChpEZWxldGVPcmdhbml6YXRpb25SZXNwb25zZQ==');

@$core.Deprecated('Use getMembersByOrganizationRequestDescriptor instead')
const GetMembersByOrganizationRequest$json = {
  '1': 'GetMembersByOrganizationRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetMembersByOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMembersByOrganizationRequestDescriptor = $convert.base64Decode(
    'Ch9HZXRNZW1iZXJzQnlPcmdhbml6YXRpb25SZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getMembersByOrganizationResponseDescriptor instead')
const GetMembersByOrganizationResponse$json = {
  '1': 'GetMembersByOrganizationResponse',
  '2': [
    {'1': 'members', '3': 1, '4': 3, '5': 11, '6': '.services.user_svc.v1.GetMembersByOrganizationResponse.Member', '10': 'members'},
  ],
  '3': [GetMembersByOrganizationResponse_Member$json],
};

@$core.Deprecated('Use getMembersByOrganizationResponseDescriptor instead')
const GetMembersByOrganizationResponse_Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl', '17': true},
  ],
  '8': [
    {'1': '_avatar_url'},
  ],
};

/// Descriptor for `GetMembersByOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMembersByOrganizationResponseDescriptor = $convert.base64Decode(
    'CiBHZXRNZW1iZXJzQnlPcmdhbml6YXRpb25SZXNwb25zZRJXCgdtZW1iZXJzGAEgAygLMj0uc2'
    'VydmljZXMudXNlcl9zdmMudjEuR2V0TWVtYmVyc0J5T3JnYW5pemF0aW9uUmVzcG9uc2UuTWVt'
    'YmVyUgdtZW1iZXJzGoYBCgZNZW1iZXISFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEhQKBWVtYW'
    'lsGAIgASgJUgVlbWFpbBIaCghuaWNrbmFtZRgDIAEoCVIIbmlja25hbWUSIgoKYXZhdGFyX3Vy'
    'bBgEIAEoCUgAUglhdmF0YXJVcmyIAQFCDQoLX2F2YXRhcl91cmw=');

@$core.Deprecated('Use addMemberRequestDescriptor instead')
const AddMemberRequest$json = {
  '1': 'AddMemberRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `AddMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addMemberRequestDescriptor = $convert.base64Decode(
    'ChBBZGRNZW1iZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIXCgd1c2VyX2lkGAIgASgJUgZ1c2'
    'VySWQ=');

@$core.Deprecated('Use addMemberResponseDescriptor instead')
const AddMemberResponse$json = {
  '1': 'AddMemberResponse',
};

/// Descriptor for `AddMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addMemberResponseDescriptor = $convert.base64Decode(
    'ChFBZGRNZW1iZXJSZXNwb25zZQ==');

@$core.Deprecated('Use removeMemberRequestDescriptor instead')
const RemoveMemberRequest$json = {
  '1': 'RemoveMemberRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `RemoveMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeMemberRequestDescriptor = $convert.base64Decode(
    'ChNSZW1vdmVNZW1iZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIXCgd1c2VyX2lkGAIgASgJUg'
    'Z1c2VySWQ=');

@$core.Deprecated('Use removeMemberResponseDescriptor instead')
const RemoveMemberResponse$json = {
  '1': 'RemoveMemberResponse',
};

/// Descriptor for `RemoveMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeMemberResponseDescriptor = $convert.base64Decode(
    'ChRSZW1vdmVNZW1iZXJSZXNwb25zZQ==');

@$core.Deprecated('Use inviteMemberRequestDescriptor instead')
const InviteMemberRequest$json = {
  '1': 'InviteMemberRequest',
  '2': [
    {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `InviteMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteMemberRequestDescriptor = $convert.base64Decode(
    'ChNJbnZpdGVNZW1iZXJSZXF1ZXN0EicKD29yZ2FuaXphdGlvbl9pZBgBIAEoCVIOb3JnYW5pem'
    'F0aW9uSWQSFAoFZW1haWwYAiABKAlSBWVtYWls');

@$core.Deprecated('Use inviteMemberResponseDescriptor instead')
const InviteMemberResponse$json = {
  '1': 'InviteMemberResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `InviteMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteMemberResponseDescriptor = $convert.base64Decode(
    'ChRJbnZpdGVNZW1iZXJSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getInvitationsByOrganizationRequestDescriptor instead')
const GetInvitationsByOrganizationRequest$json = {
  '1': 'GetInvitationsByOrganizationRequest',
  '2': [
    {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
    {'1': 'state', '3': 2, '4': 1, '5': 14, '6': '.services.user_svc.v1.InvitationState', '9': 0, '10': 'state', '17': true},
  ],
  '8': [
    {'1': '_state'},
  ],
};

/// Descriptor for `GetInvitationsByOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInvitationsByOrganizationRequestDescriptor = $convert.base64Decode(
    'CiNHZXRJbnZpdGF0aW9uc0J5T3JnYW5pemF0aW9uUmVxdWVzdBInCg9vcmdhbml6YXRpb25faW'
    'QYASABKAlSDm9yZ2FuaXphdGlvbklkEkAKBXN0YXRlGAIgASgOMiUuc2VydmljZXMudXNlcl9z'
    'dmMudjEuSW52aXRhdGlvblN0YXRlSABSBXN0YXRliAEBQggKBl9zdGF0ZQ==');

@$core.Deprecated('Use getInvitationsByOrganizationResponseDescriptor instead')
const GetInvitationsByOrganizationResponse$json = {
  '1': 'GetInvitationsByOrganizationResponse',
  '2': [
    {'1': 'invitations', '3': 1, '4': 3, '5': 11, '6': '.services.user_svc.v1.GetInvitationsByOrganizationResponse.Invitation', '10': 'invitations'},
  ],
  '3': [GetInvitationsByOrganizationResponse_Invitation$json],
};

@$core.Deprecated('Use getInvitationsByOrganizationResponseDescriptor instead')
const GetInvitationsByOrganizationResponse_Invitation$json = {
  '1': 'Invitation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'organization_id', '3': 3, '4': 1, '5': 9, '10': 'organizationId'},
    {'1': 'state', '3': 4, '4': 1, '5': 14, '6': '.services.user_svc.v1.InvitationState', '10': 'state'},
  ],
};

/// Descriptor for `GetInvitationsByOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInvitationsByOrganizationResponseDescriptor = $convert.base64Decode(
    'CiRHZXRJbnZpdGF0aW9uc0J5T3JnYW5pemF0aW9uUmVzcG9uc2USZwoLaW52aXRhdGlvbnMYAS'
    'ADKAsyRS5zZXJ2aWNlcy51c2VyX3N2Yy52MS5HZXRJbnZpdGF0aW9uc0J5T3JnYW5pemF0aW9u'
    'UmVzcG9uc2UuSW52aXRhdGlvblILaW52aXRhdGlvbnMamAEKCkludml0YXRpb24SDgoCaWQYAS'
    'ABKAlSAmlkEhQKBWVtYWlsGAIgASgJUgVlbWFpbBInCg9vcmdhbml6YXRpb25faWQYAyABKAlS'
    'Dm9yZ2FuaXphdGlvbklkEjsKBXN0YXRlGAQgASgOMiUuc2VydmljZXMudXNlcl9zdmMudjEuSW'
    '52aXRhdGlvblN0YXRlUgVzdGF0ZQ==');

@$core.Deprecated('Use getInvitationsByUserRequestDescriptor instead')
const GetInvitationsByUserRequest$json = {
  '1': 'GetInvitationsByUserRequest',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.services.user_svc.v1.InvitationState', '9': 0, '10': 'state', '17': true},
  ],
  '8': [
    {'1': '_state'},
  ],
};

/// Descriptor for `GetInvitationsByUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInvitationsByUserRequestDescriptor = $convert.base64Decode(
    'ChtHZXRJbnZpdGF0aW9uc0J5VXNlclJlcXVlc3QSQAoFc3RhdGUYASABKA4yJS5zZXJ2aWNlcy'
    '51c2VyX3N2Yy52MS5JbnZpdGF0aW9uU3RhdGVIAFIFc3RhdGWIAQFCCAoGX3N0YXRl');

@$core.Deprecated('Use getInvitationsByUserResponseDescriptor instead')
const GetInvitationsByUserResponse$json = {
  '1': 'GetInvitationsByUserResponse',
  '2': [
    {'1': 'invitations', '3': 1, '4': 3, '5': 11, '6': '.services.user_svc.v1.GetInvitationsByUserResponse.Invitation', '10': 'invitations'},
  ],
  '3': [GetInvitationsByUserResponse_Invitation$json],
};

@$core.Deprecated('Use getInvitationsByUserResponseDescriptor instead')
const GetInvitationsByUserResponse_Invitation$json = {
  '1': 'Invitation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'organization', '3': 3, '4': 1, '5': 11, '6': '.services.user_svc.v1.GetInvitationsByUserResponse.Invitation.Organization', '10': 'organization'},
    {'1': 'state', '3': 4, '4': 1, '5': 14, '6': '.services.user_svc.v1.InvitationState', '10': 'state'},
  ],
  '3': [GetInvitationsByUserResponse_Invitation_Organization$json],
};

@$core.Deprecated('Use getInvitationsByUserResponseDescriptor instead')
const GetInvitationsByUserResponse_Invitation_Organization$json = {
  '1': 'Organization',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'long_name', '3': 2, '4': 1, '5': 9, '10': 'longName'},
    {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'avatarUrl', '17': true},
  ],
  '8': [
    {'1': '_avatar_url'},
  ],
};

/// Descriptor for `GetInvitationsByUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInvitationsByUserResponseDescriptor = $convert.base64Decode(
    'ChxHZXRJbnZpdGF0aW9uc0J5VXNlclJlc3BvbnNlEl8KC2ludml0YXRpb25zGAEgAygLMj0uc2'
    'VydmljZXMudXNlcl9zdmMudjEuR2V0SW52aXRhdGlvbnNCeVVzZXJSZXNwb25zZS5JbnZpdGF0'
    'aW9uUgtpbnZpdGF0aW9ucxrPAgoKSW52aXRhdGlvbhIOCgJpZBgBIAEoCVICaWQSFAoFZW1haW'
    'wYAiABKAlSBWVtYWlsEm4KDG9yZ2FuaXphdGlvbhgDIAEoCzJKLnNlcnZpY2VzLnVzZXJfc3Zj'
    'LnYxLkdldEludml0YXRpb25zQnlVc2VyUmVzcG9uc2UuSW52aXRhdGlvbi5Pcmdhbml6YXRpb2'
    '5SDG9yZ2FuaXphdGlvbhI7CgVzdGF0ZRgEIAEoDjIlLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLklu'
    'dml0YXRpb25TdGF0ZVIFc3RhdGUabgoMT3JnYW5pemF0aW9uEg4KAmlkGAEgASgJUgJpZBIbCg'
    'lsb25nX25hbWUYAiABKAlSCGxvbmdOYW1lEiIKCmF2YXRhcl91cmwYAyABKAlIAFIJYXZhdGFy'
    'VXJsiAEBQg0KC19hdmF0YXJfdXJs');

@$core.Deprecated('Use acceptInvitationRequestDescriptor instead')
const AcceptInvitationRequest$json = {
  '1': 'AcceptInvitationRequest',
  '2': [
    {'1': 'invitation_id', '3': 1, '4': 1, '5': 9, '10': 'invitationId'},
  ],
};

/// Descriptor for `AcceptInvitationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptInvitationRequestDescriptor = $convert.base64Decode(
    'ChdBY2NlcHRJbnZpdGF0aW9uUmVxdWVzdBIjCg1pbnZpdGF0aW9uX2lkGAEgASgJUgxpbnZpdG'
    'F0aW9uSWQ=');

@$core.Deprecated('Use acceptInvitationResponseDescriptor instead')
const AcceptInvitationResponse$json = {
  '1': 'AcceptInvitationResponse',
};

/// Descriptor for `AcceptInvitationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptInvitationResponseDescriptor = $convert.base64Decode(
    'ChhBY2NlcHRJbnZpdGF0aW9uUmVzcG9uc2U=');

@$core.Deprecated('Use declineInvitationRequestDescriptor instead')
const DeclineInvitationRequest$json = {
  '1': 'DeclineInvitationRequest',
  '2': [
    {'1': 'invitation_id', '3': 1, '4': 1, '5': 9, '10': 'invitationId'},
  ],
};

/// Descriptor for `DeclineInvitationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List declineInvitationRequestDescriptor = $convert.base64Decode(
    'ChhEZWNsaW5lSW52aXRhdGlvblJlcXVlc3QSIwoNaW52aXRhdGlvbl9pZBgBIAEoCVIMaW52aX'
    'RhdGlvbklk');

@$core.Deprecated('Use declineInvitationResponseDescriptor instead')
const DeclineInvitationResponse$json = {
  '1': 'DeclineInvitationResponse',
};

/// Descriptor for `DeclineInvitationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List declineInvitationResponseDescriptor = $convert.base64Decode(
    'ChlEZWNsaW5lSW52aXRhdGlvblJlc3BvbnNl');

@$core.Deprecated('Use revokeInvitationRequestDescriptor instead')
const RevokeInvitationRequest$json = {
  '1': 'RevokeInvitationRequest',
  '2': [
    {'1': 'invitation_id', '3': 1, '4': 1, '5': 9, '10': 'invitationId'},
  ],
};

/// Descriptor for `RevokeInvitationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeInvitationRequestDescriptor = $convert.base64Decode(
    'ChdSZXZva2VJbnZpdGF0aW9uUmVxdWVzdBIjCg1pbnZpdGF0aW9uX2lkGAEgASgJUgxpbnZpdG'
    'F0aW9uSWQ=');

@$core.Deprecated('Use revokeInvitationResponseDescriptor instead')
const RevokeInvitationResponse$json = {
  '1': 'RevokeInvitationResponse',
};

/// Descriptor for `RevokeInvitationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeInvitationResponseDescriptor = $convert.base64Decode(
    'ChhSZXZva2VJbnZpdGF0aW9uUmVzcG9uc2U=');

@$core.Deprecated('Use createPersonalOrganizationRequestDescriptor instead')
const CreatePersonalOrganizationRequest$json = {
  '1': 'CreatePersonalOrganizationRequest',
};

/// Descriptor for `CreatePersonalOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPersonalOrganizationRequestDescriptor = $convert.base64Decode(
    'CiFDcmVhdGVQZXJzb25hbE9yZ2FuaXphdGlvblJlcXVlc3Q=');

@$core.Deprecated('Use createPersonalOrganizationResponseDescriptor instead')
const CreatePersonalOrganizationResponse$json = {
  '1': 'CreatePersonalOrganizationResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreatePersonalOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPersonalOrganizationResponseDescriptor = $convert.base64Decode(
    'CiJDcmVhdGVQZXJzb25hbE9yZ2FuaXphdGlvblJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

