//
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createOrganizationRequestDescriptor instead')
const CreateOrganizationRequest$json = {
  '1': 'CreateOrganizationRequest',
  '2': [
    {'1': 'long_name', '3': 1, '4': 1, '5': 9, '10': 'longName'},
    {'1': 'short_name', '3': 2, '4': 1, '5': 9, '10': 'shortName'},
    {'1': 'contact_email', '3': 3, '4': 1, '5': 9, '10': 'contactEmail'},
    {'1': 'is_personal', '3': 4, '4': 1, '5': 8, '10': 'isPersonal'},
  ],
};

/// Descriptor for `CreateOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVPcmdhbml6YXRpb25SZXF1ZXN0EhsKCWxvbmdfbmFtZRgBIAEoCVIIbG9uZ05hbW'
    'USHQoKc2hvcnRfbmFtZRgCIAEoCVIJc2hvcnROYW1lEiMKDWNvbnRhY3RfZW1haWwYAyABKAlS'
    'DGNvbnRhY3RFbWFpbBIfCgtpc19wZXJzb25hbBgEIAEoCFIKaXNQZXJzb25hbA==');

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

@$core.Deprecated('Use createOrganizationForUserRequestDescriptor instead')
const CreateOrganizationForUserRequest$json = {
  '1': 'CreateOrganizationForUserRequest',
  '2': [
    {'1': 'long_name', '3': 1, '4': 1, '5': 9, '10': 'longName'},
    {'1': 'short_name', '3': 2, '4': 1, '5': 9, '10': 'shortName'},
    {'1': 'contact_email', '3': 3, '4': 1, '5': 9, '10': 'contactEmail'},
    {'1': 'is_personal', '3': 4, '4': 1, '5': 8, '10': 'isPersonal'},
    {'1': 'user_id', '3': 5, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `CreateOrganizationForUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationForUserRequestDescriptor = $convert.base64Decode(
    'CiBDcmVhdGVPcmdhbml6YXRpb25Gb3JVc2VyUmVxdWVzdBIbCglsb25nX25hbWUYASABKAlSCG'
    'xvbmdOYW1lEh0KCnNob3J0X25hbWUYAiABKAlSCXNob3J0TmFtZRIjCg1jb250YWN0X2VtYWls'
    'GAMgASgJUgxjb250YWN0RW1haWwSHwoLaXNfcGVyc29uYWwYBCABKAhSCmlzUGVyc29uYWwSFw'
    'oHdXNlcl9pZBgFIAEoCVIGdXNlcklk');

@$core.Deprecated('Use createOrganizationForUserResponseDescriptor instead')
const CreateOrganizationForUserResponse$json = {
  '1': 'CreateOrganizationForUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateOrganizationForUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationForUserResponseDescriptor = $convert.base64Decode(
    'CiFDcmVhdGVPcmdhbml6YXRpb25Gb3JVc2VyUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

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
    {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '10': 'avatarUrl'},
    {'1': 'is_personal', '3': 6, '4': 1, '5': 8, '10': 'isPersonal'},
    {'1': 'members', '3': 7, '4': 3, '5': 11, '6': '.proto.services.user_svc.v1.GetOrganizationMember', '10': 'members'},
  ],
};

/// Descriptor for `GetOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationResponseDescriptor = $convert.base64Decode(
    'ChdHZXRPcmdhbml6YXRpb25SZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSGwoJbG9uZ19uYW1lGA'
    'IgASgJUghsb25nTmFtZRIdCgpzaG9ydF9uYW1lGAMgASgJUglzaG9ydE5hbWUSIwoNY29udGFj'
    'dF9lbWFpbBgEIAEoCVIMY29udGFjdEVtYWlsEh0KCmF2YXRhcl91cmwYBSABKAlSCWF2YXRhcl'
    'VybBIfCgtpc19wZXJzb25hbBgGIAEoCFIKaXNQZXJzb25hbBJLCgdtZW1iZXJzGAcgAygLMjEu'
    'cHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuR2V0T3JnYW5pemF0aW9uTWVtYmVyUgdtZW1iZX'
    'Jz');

@$core.Deprecated('Use getOrganizationsByUserRequestDescriptor instead')
const GetOrganizationsByUserRequest$json = {
  '1': 'GetOrganizationsByUserRequest',
};

/// Descriptor for `GetOrganizationsByUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationsByUserRequestDescriptor = $convert.base64Decode(
    'Ch1HZXRPcmdhbml6YXRpb25zQnlVc2VyUmVxdWVzdA==');

@$core.Deprecated('Use getOrganizationsByUserResponseDescriptor instead')
const GetOrganizationsByUserResponse$json = {
  '1': 'GetOrganizationsByUserResponse',
  '2': [
    {'1': 'organizations', '3': 1, '4': 3, '5': 11, '6': '.proto.services.user_svc.v1.GetOrganizationsByUserResponse.Organization', '10': 'organizations'},
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
    {'1': 'avatar_url', '3': 5, '4': 1, '5': 9, '10': 'avatarUrl'},
    {'1': 'is_personal', '3': 6, '4': 1, '5': 8, '10': 'isPersonal'},
    {'1': 'members', '3': 7, '4': 3, '5': 11, '6': '.proto.services.user_svc.v1.GetOrganizationsByUserResponse.Organization.Member', '10': 'members'},
  ],
  '3': [GetOrganizationsByUserResponse_Organization_Member$json],
};

@$core.Deprecated('Use getOrganizationsByUserResponseDescriptor instead')
const GetOrganizationsByUserResponse_Organization_Member$json = {
  '1': 'Member',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'nickname', '3': 3, '4': 1, '5': 9, '10': 'nickname'},
    {'1': 'avatar_url', '3': 4, '4': 1, '5': 9, '10': 'avatarUrl'},
  ],
};

/// Descriptor for `GetOrganizationsByUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationsByUserResponseDescriptor = $convert.base64Decode(
    'Ch5HZXRPcmdhbml6YXRpb25zQnlVc2VyUmVzcG9uc2USbQoNb3JnYW5pemF0aW9ucxgBIAMoCz'
    'JHLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkdldE9yZ2FuaXphdGlvbnNCeVVzZXJSZXNw'
    'b25zZS5Pcmdhbml6YXRpb25SDW9yZ2FuaXphdGlvbnManQMKDE9yZ2FuaXphdGlvbhIOCgJpZB'
    'gBIAEoCVICaWQSGwoJbG9uZ19uYW1lGAIgASgJUghsb25nTmFtZRIdCgpzaG9ydF9uYW1lGAMg'
    'ASgJUglzaG9ydE5hbWUSIwoNY29udGFjdF9lbWFpbBgEIAEoCVIMY29udGFjdEVtYWlsEh0KCm'
    'F2YXRhcl91cmwYBSABKAlSCWF2YXRhclVybBIfCgtpc19wZXJzb25hbBgGIAEoCFIKaXNQZXJz'
    'b25hbBJoCgdtZW1iZXJzGAcgAygLMk4ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuR2V0T3'
    'JnYW5pemF0aW9uc0J5VXNlclJlc3BvbnNlLk9yZ2FuaXphdGlvbi5NZW1iZXJSB21lbWJlcnMa'
    'cgoGTWVtYmVyEhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBIUCgVlbWFpbBgCIAEoCVIFZW1haW'
    'wSGgoIbmlja25hbWUYAyABKAlSCG5pY2tuYW1lEh0KCmF2YXRhcl91cmwYBCABKAlSCWF2YXRh'
    'clVybA==');

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

@$core.Deprecated('Use getInvitationsByUserRequestDescriptor instead')
const GetInvitationsByUserRequest$json = {
  '1': 'GetInvitationsByUserRequest',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'state', '17': true},
  ],
  '8': [
    {'1': '_state'},
  ],
};

/// Descriptor for `GetInvitationsByUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInvitationsByUserRequestDescriptor = $convert.base64Decode(
    'ChtHZXRJbnZpdGF0aW9uc0J5VXNlclJlcXVlc3QSGQoFc3RhdGUYASABKAlIAFIFc3RhdGWIAQ'
    'FCCAoGX3N0YXRl');

@$core.Deprecated('Use getInvitationsByUserResponseDescriptor instead')
const GetInvitationsByUserResponse$json = {
  '1': 'GetInvitationsByUserResponse',
  '2': [
    {'1': 'invitations', '3': 1, '4': 3, '5': 11, '6': '.proto.services.user_svc.v1.GetInvitationsByUserResponse.Invitation', '10': 'invitations'},
  ],
  '3': [GetInvitationsByUserResponse_Invitation$json],
};

@$core.Deprecated('Use getInvitationsByUserResponseDescriptor instead')
const GetInvitationsByUserResponse_Invitation$json = {
  '1': 'Invitation',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'organization', '3': 3, '4': 1, '5': 11, '6': '.proto.services.user_svc.v1.GetInvitationsByUserResponse.Invitation.Organization', '10': 'organization'},
    {'1': 'state', '3': 4, '4': 1, '5': 9, '10': 'state'},
  ],
  '3': [GetInvitationsByUserResponse_Invitation_Organization$json],
};

@$core.Deprecated('Use getInvitationsByUserResponseDescriptor instead')
const GetInvitationsByUserResponse_Invitation_Organization$json = {
  '1': 'Organization',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'long_name', '3': 2, '4': 1, '5': 9, '10': 'longName'},
    {'1': 'avatar_url', '3': 3, '4': 1, '5': 9, '10': 'avatarUrl'},
  ],
};

/// Descriptor for `GetInvitationsByUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInvitationsByUserResponseDescriptor = $convert.base64Decode(
    'ChxHZXRJbnZpdGF0aW9uc0J5VXNlclJlc3BvbnNlEmUKC2ludml0YXRpb25zGAEgAygLMkMucH'
    'JvdG8uc2VydmljZXMudXNlcl9zdmMudjEuR2V0SW52aXRhdGlvbnNCeVVzZXJSZXNwb25zZS5J'
    'bnZpdGF0aW9uUgtpbnZpdGF0aW9ucxqaAgoKSW52aXRhdGlvbhIOCgJpZBgBIAEoCVICaWQSFA'
    'oFZW1haWwYAiABKAlSBWVtYWlsEnQKDG9yZ2FuaXphdGlvbhgDIAEoCzJQLnByb3RvLnNlcnZp'
    'Y2VzLnVzZXJfc3ZjLnYxLkdldEludml0YXRpb25zQnlVc2VyUmVzcG9uc2UuSW52aXRhdGlvbi'
    '5Pcmdhbml6YXRpb25SDG9yZ2FuaXphdGlvbhIUCgVzdGF0ZRgEIAEoCVIFc3RhdGUaWgoMT3Jn'
    'YW5pemF0aW9uEg4KAmlkGAEgASgJUgJpZBIbCglsb25nX25hbWUYAiABKAlSCGxvbmdOYW1lEh'
    '0KCmF2YXRhcl91cmwYAyABKAlSCWF2YXRhclVybA==');

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

const $core.Map<$core.String, $core.dynamic> OrganizationServiceBase$json = {
  '1': 'OrganizationService',
  '2': [
    {'1': 'CreateOrganization', '2': '.proto.services.user_svc.v1.CreateOrganizationRequest', '3': '.proto.services.user_svc.v1.CreateOrganizationResponse', '4': {}},
    {'1': 'CreateOrganizationForUser', '2': '.proto.services.user_svc.v1.CreateOrganizationForUserRequest', '3': '.proto.services.user_svc.v1.CreateOrganizationForUserResponse', '4': {}},
    {'1': 'GetOrganization', '2': '.proto.services.user_svc.v1.GetOrganizationRequest', '3': '.proto.services.user_svc.v1.GetOrganizationResponse', '4': {}},
    {'1': 'GetOrganizationsByUser', '2': '.proto.services.user_svc.v1.GetOrganizationsByUserRequest', '3': '.proto.services.user_svc.v1.GetOrganizationsByUserResponse', '4': {}},
    {'1': 'UpdateOrganization', '2': '.proto.services.user_svc.v1.UpdateOrganizationRequest', '3': '.proto.services.user_svc.v1.UpdateOrganizationResponse', '4': {}},
    {'1': 'DeleteOrganization', '2': '.proto.services.user_svc.v1.DeleteOrganizationRequest', '3': '.proto.services.user_svc.v1.DeleteOrganizationResponse', '4': {}},
    {'1': 'AddMember', '2': '.proto.services.user_svc.v1.AddMemberRequest', '3': '.proto.services.user_svc.v1.AddMemberResponse', '4': {}},
    {'1': 'RemoveMember', '2': '.proto.services.user_svc.v1.RemoveMemberRequest', '3': '.proto.services.user_svc.v1.RemoveMemberResponse', '4': {}},
    {'1': 'InviteMember', '2': '.proto.services.user_svc.v1.InviteMemberRequest', '3': '.proto.services.user_svc.v1.InviteMemberResponse', '4': {}},
    {'1': 'AcceptInvitation', '2': '.proto.services.user_svc.v1.AcceptInvitationRequest', '3': '.proto.services.user_svc.v1.AcceptInvitationResponse', '4': {}},
    {'1': 'GetInvitationsByUser', '2': '.proto.services.user_svc.v1.GetInvitationsByUserRequest', '3': '.proto.services.user_svc.v1.GetInvitationsByUserResponse', '4': {}},
    {'1': 'DeclineInvitation', '2': '.proto.services.user_svc.v1.DeclineInvitationRequest', '3': '.proto.services.user_svc.v1.DeclineInvitationResponse', '4': {}},
  ],
};

@$core.Deprecated('Use organizationServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> OrganizationServiceBase$messageJson = {
  '.proto.services.user_svc.v1.CreateOrganizationRequest': CreateOrganizationRequest$json,
  '.proto.services.user_svc.v1.CreateOrganizationResponse': CreateOrganizationResponse$json,
  '.proto.services.user_svc.v1.CreateOrganizationForUserRequest': CreateOrganizationForUserRequest$json,
  '.proto.services.user_svc.v1.CreateOrganizationForUserResponse': CreateOrganizationForUserResponse$json,
  '.proto.services.user_svc.v1.GetOrganizationRequest': GetOrganizationRequest$json,
  '.proto.services.user_svc.v1.GetOrganizationResponse': GetOrganizationResponse$json,
  '.proto.services.user_svc.v1.GetOrganizationMember': GetOrganizationMember$json,
  '.proto.services.user_svc.v1.GetOrganizationsByUserRequest': GetOrganizationsByUserRequest$json,
  '.proto.services.user_svc.v1.GetOrganizationsByUserResponse': GetOrganizationsByUserResponse$json,
  '.proto.services.user_svc.v1.GetOrganizationsByUserResponse.Organization': GetOrganizationsByUserResponse_Organization$json,
  '.proto.services.user_svc.v1.GetOrganizationsByUserResponse.Organization.Member': GetOrganizationsByUserResponse_Organization_Member$json,
  '.proto.services.user_svc.v1.UpdateOrganizationRequest': UpdateOrganizationRequest$json,
  '.proto.services.user_svc.v1.UpdateOrganizationResponse': UpdateOrganizationResponse$json,
  '.proto.services.user_svc.v1.DeleteOrganizationRequest': DeleteOrganizationRequest$json,
  '.proto.services.user_svc.v1.DeleteOrganizationResponse': DeleteOrganizationResponse$json,
  '.proto.services.user_svc.v1.AddMemberRequest': AddMemberRequest$json,
  '.proto.services.user_svc.v1.AddMemberResponse': AddMemberResponse$json,
  '.proto.services.user_svc.v1.RemoveMemberRequest': RemoveMemberRequest$json,
  '.proto.services.user_svc.v1.RemoveMemberResponse': RemoveMemberResponse$json,
  '.proto.services.user_svc.v1.InviteMemberRequest': InviteMemberRequest$json,
  '.proto.services.user_svc.v1.InviteMemberResponse': InviteMemberResponse$json,
  '.proto.services.user_svc.v1.AcceptInvitationRequest': AcceptInvitationRequest$json,
  '.proto.services.user_svc.v1.AcceptInvitationResponse': AcceptInvitationResponse$json,
  '.proto.services.user_svc.v1.GetInvitationsByUserRequest': GetInvitationsByUserRequest$json,
  '.proto.services.user_svc.v1.GetInvitationsByUserResponse': GetInvitationsByUserResponse$json,
  '.proto.services.user_svc.v1.GetInvitationsByUserResponse.Invitation': GetInvitationsByUserResponse_Invitation$json,
  '.proto.services.user_svc.v1.GetInvitationsByUserResponse.Invitation.Organization': GetInvitationsByUserResponse_Invitation_Organization$json,
  '.proto.services.user_svc.v1.DeclineInvitationRequest': DeclineInvitationRequest$json,
  '.proto.services.user_svc.v1.DeclineInvitationResponse': DeclineInvitationResponse$json,
};

/// Descriptor for `OrganizationService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List organizationServiceDescriptor = $convert.base64Decode(
    'ChNPcmdhbml6YXRpb25TZXJ2aWNlEoUBChJDcmVhdGVPcmdhbml6YXRpb24SNS5wcm90by5zZX'
    'J2aWNlcy51c2VyX3N2Yy52MS5DcmVhdGVPcmdhbml6YXRpb25SZXF1ZXN0GjYucHJvdG8uc2Vy'
    'dmljZXMudXNlcl9zdmMudjEuQ3JlYXRlT3JnYW5pemF0aW9uUmVzcG9uc2UiABKaAQoZQ3JlYX'
    'RlT3JnYW5pemF0aW9uRm9yVXNlchI8LnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkNyZWF0'
    'ZU9yZ2FuaXphdGlvbkZvclVzZXJSZXF1ZXN0Gj0ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudj'
    'EuQ3JlYXRlT3JnYW5pemF0aW9uRm9yVXNlclJlc3BvbnNlIgASfAoPR2V0T3JnYW5pemF0aW9u'
    'EjIucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuR2V0T3JnYW5pemF0aW9uUmVxdWVzdBozLn'
    'Byb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkdldE9yZ2FuaXphdGlvblJlc3BvbnNlIgASkQEK'
    'FkdldE9yZ2FuaXphdGlvbnNCeVVzZXISOS5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52MS5HZX'
    'RPcmdhbml6YXRpb25zQnlVc2VyUmVxdWVzdBo6LnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYx'
    'LkdldE9yZ2FuaXphdGlvbnNCeVVzZXJSZXNwb25zZSIAEoUBChJVcGRhdGVPcmdhbml6YXRpb2'
    '4SNS5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52MS5VcGRhdGVPcmdhbml6YXRpb25SZXF1ZXN0'
    'GjYucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuVXBkYXRlT3JnYW5pemF0aW9uUmVzcG9uc2'
    'UiABKFAQoSRGVsZXRlT3JnYW5pemF0aW9uEjUucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEu'
    'RGVsZXRlT3JnYW5pemF0aW9uUmVxdWVzdBo2LnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLk'
    'RlbGV0ZU9yZ2FuaXphdGlvblJlc3BvbnNlIgASagoJQWRkTWVtYmVyEiwucHJvdG8uc2Vydmlj'
    'ZXMudXNlcl9zdmMudjEuQWRkTWVtYmVyUmVxdWVzdBotLnByb3RvLnNlcnZpY2VzLnVzZXJfc3'
    'ZjLnYxLkFkZE1lbWJlclJlc3BvbnNlIgAScwoMUmVtb3ZlTWVtYmVyEi8ucHJvdG8uc2Vydmlj'
    'ZXMudXNlcl9zdmMudjEuUmVtb3ZlTWVtYmVyUmVxdWVzdBowLnByb3RvLnNlcnZpY2VzLnVzZX'
    'Jfc3ZjLnYxLlJlbW92ZU1lbWJlclJlc3BvbnNlIgAScwoMSW52aXRlTWVtYmVyEi8ucHJvdG8u'
    'c2VydmljZXMudXNlcl9zdmMudjEuSW52aXRlTWVtYmVyUmVxdWVzdBowLnByb3RvLnNlcnZpY2'
    'VzLnVzZXJfc3ZjLnYxLkludml0ZU1lbWJlclJlc3BvbnNlIgASfwoQQWNjZXB0SW52aXRhdGlv'
    'bhIzLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkFjY2VwdEludml0YXRpb25SZXF1ZXN0Gj'
    'QucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuQWNjZXB0SW52aXRhdGlvblJlc3BvbnNlIgAS'
    'iwEKFEdldEludml0YXRpb25zQnlVc2VyEjcucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuR2'
    'V0SW52aXRhdGlvbnNCeVVzZXJSZXF1ZXN0GjgucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEu'
    'R2V0SW52aXRhdGlvbnNCeVVzZXJSZXNwb25zZSIAEoIBChFEZWNsaW5lSW52aXRhdGlvbhI0Ln'
    'Byb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkRlY2xpbmVJbnZpdGF0aW9uUmVxdWVzdBo1LnBy'
    'b3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkRlY2xpbmVJbnZpdGF0aW9uUmVzcG9uc2UiAA==');

