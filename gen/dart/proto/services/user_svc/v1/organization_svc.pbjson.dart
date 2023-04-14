///
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createOrganizationRequestDescriptor instead')
const CreateOrganizationRequest$json = const {
  '1': 'CreateOrganizationRequest',
  '2': const [
    const {'1': 'long_name', '3': 1, '4': 1, '5': 9, '10': 'longName'},
    const {'1': 'short_name', '3': 2, '4': 1, '5': 9, '10': 'shortName'},
    const {'1': 'contact_email', '3': 3, '4': 1, '5': 9, '10': 'contactEmail'},
    const {'1': 'is_personal', '3': 4, '4': 1, '5': 8, '10': 'isPersonal'},
  ],
};

/// Descriptor for `CreateOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVPcmdhbml6YXRpb25SZXF1ZXN0EhsKCWxvbmdfbmFtZRgBIAEoCVIIbG9uZ05hbWUSHQoKc2hvcnRfbmFtZRgCIAEoCVIJc2hvcnROYW1lEiMKDWNvbnRhY3RfZW1haWwYAyABKAlSDGNvbnRhY3RFbWFpbBIfCgtpc19wZXJzb25hbBgEIAEoCFIKaXNQZXJzb25hbA==');
@$core.Deprecated('Use createOrganizationResponseDescriptor instead')
const CreateOrganizationResponse$json = const {
  '1': 'CreateOrganizationResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationResponseDescriptor = $convert.base64Decode('ChpDcmVhdGVPcmdhbml6YXRpb25SZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use createOrganizationForUserRequestDescriptor instead')
const CreateOrganizationForUserRequest$json = const {
  '1': 'CreateOrganizationForUserRequest',
  '2': const [
    const {'1': 'long_name', '3': 1, '4': 1, '5': 9, '10': 'longName'},
    const {'1': 'short_name', '3': 2, '4': 1, '5': 9, '10': 'shortName'},
    const {'1': 'contact_email', '3': 3, '4': 1, '5': 9, '10': 'contactEmail'},
    const {'1': 'is_personal', '3': 4, '4': 1, '5': 8, '10': 'isPersonal'},
    const {'1': 'user_id', '3': 5, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `CreateOrganizationForUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationForUserRequestDescriptor = $convert.base64Decode('CiBDcmVhdGVPcmdhbml6YXRpb25Gb3JVc2VyUmVxdWVzdBIbCglsb25nX25hbWUYASABKAlSCGxvbmdOYW1lEh0KCnNob3J0X25hbWUYAiABKAlSCXNob3J0TmFtZRIjCg1jb250YWN0X2VtYWlsGAMgASgJUgxjb250YWN0RW1haWwSHwoLaXNfcGVyc29uYWwYBCABKAhSCmlzUGVyc29uYWwSFwoHdXNlcl9pZBgFIAEoCVIGdXNlcklk');
@$core.Deprecated('Use createOrganizationForUserResponseDescriptor instead')
const CreateOrganizationForUserResponse$json = const {
  '1': 'CreateOrganizationForUserResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateOrganizationForUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationForUserResponseDescriptor = $convert.base64Decode('CiFDcmVhdGVPcmdhbml6YXRpb25Gb3JVc2VyUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getOrganizationMemberDescriptor instead')
const GetOrganizationMember$json = const {
  '1': 'GetOrganizationMember',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetOrganizationMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationMemberDescriptor = $convert.base64Decode('ChVHZXRPcmdhbml6YXRpb25NZW1iZXISFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklk');
@$core.Deprecated('Use getOrganizationRequestDescriptor instead')
const GetOrganizationRequest$json = const {
  '1': 'GetOrganizationRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationRequestDescriptor = $convert.base64Decode('ChZHZXRPcmdhbml6YXRpb25SZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use getOrganizationResponseDescriptor instead')
const GetOrganizationResponse$json = const {
  '1': 'GetOrganizationResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'long_name', '3': 2, '4': 1, '5': 9, '10': 'longName'},
    const {'1': 'short_name', '3': 3, '4': 1, '5': 9, '10': 'shortName'},
    const {'1': 'contact_email', '3': 4, '4': 1, '5': 9, '10': 'contactEmail'},
    const {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '10': 'avatarUrl'},
    const {'1': 'is_personal', '3': 6, '4': 1, '5': 8, '10': 'isPersonal'},
    const {'1': 'members', '3': 7, '4': 3, '5': 11, '6': '.proto.services.user_svc.v1.GetOrganizationMember', '10': 'members'},
  ],
};

/// Descriptor for `GetOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationResponseDescriptor = $convert.base64Decode('ChdHZXRPcmdhbml6YXRpb25SZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSGwoJbG9uZ19uYW1lGAIgASgJUghsb25nTmFtZRIdCgpzaG9ydF9uYW1lGAMgASgJUglzaG9ydE5hbWUSIwoNY29udGFjdF9lbWFpbBgEIAEoCVIMY29udGFjdEVtYWlsEh0KCmF2YXRhcl91cmwYBSABKAlSCWF2YXRhclVybBIfCgtpc19wZXJzb25hbBgGIAEoCFIKaXNQZXJzb25hbBJLCgdtZW1iZXJzGAcgAygLMjEucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuR2V0T3JnYW5pemF0aW9uTWVtYmVyUgdtZW1iZXJz');
@$core.Deprecated('Use addMemberRequestDescriptor instead')
const AddMemberRequest$json = const {
  '1': 'AddMemberRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `AddMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addMemberRequestDescriptor = $convert.base64Decode('ChBBZGRNZW1iZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIXCgd1c2VyX2lkGAIgASgJUgZ1c2VySWQ=');
@$core.Deprecated('Use addMemberResponseDescriptor instead')
const AddMemberResponse$json = const {
  '1': 'AddMemberResponse',
};

/// Descriptor for `AddMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addMemberResponseDescriptor = $convert.base64Decode('ChFBZGRNZW1iZXJSZXNwb25zZQ==');
@$core.Deprecated('Use removeMemberRequestDescriptor instead')
const RemoveMemberRequest$json = const {
  '1': 'RemoveMemberRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'user_id', '3': 2, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `RemoveMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeMemberRequestDescriptor = $convert.base64Decode('ChNSZW1vdmVNZW1iZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIXCgd1c2VyX2lkGAIgASgJUgZ1c2VySWQ=');
@$core.Deprecated('Use removeMemberResponseDescriptor instead')
const RemoveMemberResponse$json = const {
  '1': 'RemoveMemberResponse',
};

/// Descriptor for `RemoveMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeMemberResponseDescriptor = $convert.base64Decode('ChRSZW1vdmVNZW1iZXJSZXNwb25zZQ==');
@$core.Deprecated('Use inviteMemberRequestDescriptor instead')
const InviteMemberRequest$json = const {
  '1': 'InviteMemberRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `InviteMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteMemberRequestDescriptor = $convert.base64Decode('ChNJbnZpdGVNZW1iZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW1haWw=');
@$core.Deprecated('Use inviteMemberResponseDescriptor instead')
const InviteMemberResponse$json = const {
  '1': 'InviteMemberResponse',
};

/// Descriptor for `InviteMemberResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteMemberResponseDescriptor = $convert.base64Decode('ChRJbnZpdGVNZW1iZXJSZXNwb25zZQ==');
const $core.Map<$core.String, $core.dynamic> OrganizationServiceBase$json = const {
  '1': 'OrganizationService',
  '2': const [
    const {'1': 'CreateOrganization', '2': '.proto.services.user_svc.v1.CreateOrganizationRequest', '3': '.proto.services.user_svc.v1.CreateOrganizationResponse', '4': const {}},
    const {'1': 'CreateOrganizationForUser', '2': '.proto.services.user_svc.v1.CreateOrganizationForUserRequest', '3': '.proto.services.user_svc.v1.CreateOrganizationForUserResponse', '4': const {}},
    const {'1': 'GetOrganization', '2': '.proto.services.user_svc.v1.GetOrganizationRequest', '3': '.proto.services.user_svc.v1.GetOrganizationResponse', '4': const {}},
    const {'1': 'AddMember', '2': '.proto.services.user_svc.v1.AddMemberRequest', '3': '.proto.services.user_svc.v1.AddMemberResponse', '4': const {}},
    const {'1': 'RemoveMember', '2': '.proto.services.user_svc.v1.RemoveMemberRequest', '3': '.proto.services.user_svc.v1.RemoveMemberResponse', '4': const {}},
    const {'1': 'InviteMember', '2': '.proto.services.user_svc.v1.InviteMemberRequest', '3': '.proto.services.user_svc.v1.InviteMemberResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use organizationServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> OrganizationServiceBase$messageJson = const {
  '.proto.services.user_svc.v1.CreateOrganizationRequest': CreateOrganizationRequest$json,
  '.proto.services.user_svc.v1.CreateOrganizationResponse': CreateOrganizationResponse$json,
  '.proto.services.user_svc.v1.CreateOrganizationForUserRequest': CreateOrganizationForUserRequest$json,
  '.proto.services.user_svc.v1.CreateOrganizationForUserResponse': CreateOrganizationForUserResponse$json,
  '.proto.services.user_svc.v1.GetOrganizationRequest': GetOrganizationRequest$json,
  '.proto.services.user_svc.v1.GetOrganizationResponse': GetOrganizationResponse$json,
  '.proto.services.user_svc.v1.GetOrganizationMember': GetOrganizationMember$json,
  '.proto.services.user_svc.v1.AddMemberRequest': AddMemberRequest$json,
  '.proto.services.user_svc.v1.AddMemberResponse': AddMemberResponse$json,
  '.proto.services.user_svc.v1.RemoveMemberRequest': RemoveMemberRequest$json,
  '.proto.services.user_svc.v1.RemoveMemberResponse': RemoveMemberResponse$json,
  '.proto.services.user_svc.v1.InviteMemberRequest': InviteMemberRequest$json,
  '.proto.services.user_svc.v1.InviteMemberResponse': InviteMemberResponse$json,
};

/// Descriptor for `OrganizationService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List organizationServiceDescriptor = $convert.base64Decode('ChNPcmdhbml6YXRpb25TZXJ2aWNlEoUBChJDcmVhdGVPcmdhbml6YXRpb24SNS5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52MS5DcmVhdGVPcmdhbml6YXRpb25SZXF1ZXN0GjYucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuQ3JlYXRlT3JnYW5pemF0aW9uUmVzcG9uc2UiABKaAQoZQ3JlYXRlT3JnYW5pemF0aW9uRm9yVXNlchI8LnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkNyZWF0ZU9yZ2FuaXphdGlvbkZvclVzZXJSZXF1ZXN0Gj0ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuQ3JlYXRlT3JnYW5pemF0aW9uRm9yVXNlclJlc3BvbnNlIgASfAoPR2V0T3JnYW5pemF0aW9uEjIucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuR2V0T3JnYW5pemF0aW9uUmVxdWVzdBozLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkdldE9yZ2FuaXphdGlvblJlc3BvbnNlIgASagoJQWRkTWVtYmVyEiwucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuQWRkTWVtYmVyUmVxdWVzdBotLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkFkZE1lbWJlclJlc3BvbnNlIgAScwoMUmVtb3ZlTWVtYmVyEi8ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuUmVtb3ZlTWVtYmVyUmVxdWVzdBowLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLlJlbW92ZU1lbWJlclJlc3BvbnNlIgAScwoMSW52aXRlTWVtYmVyEi8ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuSW52aXRlTWVtYmVyUmVxdWVzdBowLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkludml0ZU1lbWJlclJlc3BvbnNlIgA=');
