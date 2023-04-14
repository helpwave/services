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
@$core.Deprecated('Use memberDescriptor instead')
const Member$json = const {
  '1': 'Member',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode('CgZNZW1iZXISFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklk');
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
    const {'1': 'members', '3': 7, '4': 3, '5': 11, '6': '.proto.services.user_svc.v1.Member', '10': 'members'},
  ],
};

/// Descriptor for `GetOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOrganizationResponseDescriptor = $convert.base64Decode('ChdHZXRPcmdhbml6YXRpb25SZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSGwoJbG9uZ19uYW1lGAIgASgJUghsb25nTmFtZRIdCgpzaG9ydF9uYW1lGAMgASgJUglzaG9ydE5hbWUSIwoNY29udGFjdF9lbWFpbBgEIAEoCVIMY29udGFjdEVtYWlsEh0KCmF2YXRhcl91cmwYBSABKAlSCWF2YXRhclVybBIfCgtpc19wZXJzb25hbBgGIAEoCFIKaXNQZXJzb25hbBI8CgdtZW1iZXJzGAcgAygLMiIucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuTWVtYmVyUgdtZW1iZXJz');
const $core.Map<$core.String, $core.dynamic> OrganizationServiceBase$json = const {
  '1': 'OrganizationService',
  '2': const [
    const {'1': 'CreateOrganization', '2': '.proto.services.user_svc.v1.CreateOrganizationRequest', '3': '.proto.services.user_svc.v1.CreateOrganizationResponse', '4': const {}},
    const {'1': 'CreateOrganizationForUser', '2': '.proto.services.user_svc.v1.CreateOrganizationForUserRequest', '3': '.proto.services.user_svc.v1.CreateOrganizationForUserResponse', '4': const {}},
    const {'1': 'GetOrganization', '2': '.proto.services.user_svc.v1.GetOrganizationRequest', '3': '.proto.services.user_svc.v1.GetOrganizationResponse', '4': const {}},
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
  '.proto.services.user_svc.v1.Member': Member$json,
};

/// Descriptor for `OrganizationService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List organizationServiceDescriptor = $convert.base64Decode('ChNPcmdhbml6YXRpb25TZXJ2aWNlEoUBChJDcmVhdGVPcmdhbml6YXRpb24SNS5wcm90by5zZXJ2aWNlcy51c2VyX3N2Yy52MS5DcmVhdGVPcmdhbml6YXRpb25SZXF1ZXN0GjYucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuQ3JlYXRlT3JnYW5pemF0aW9uUmVzcG9uc2UiABKaAQoZQ3JlYXRlT3JnYW5pemF0aW9uRm9yVXNlchI8LnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkNyZWF0ZU9yZ2FuaXphdGlvbkZvclVzZXJSZXF1ZXN0Gj0ucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuQ3JlYXRlT3JnYW5pemF0aW9uRm9yVXNlclJlc3BvbnNlIgASfAoPR2V0T3JnYW5pemF0aW9uEjIucHJvdG8uc2VydmljZXMudXNlcl9zdmMudjEuR2V0T3JnYW5pemF0aW9uUmVxdWVzdBozLnByb3RvLnNlcnZpY2VzLnVzZXJfc3ZjLnYxLkdldE9yZ2FuaXphdGlvblJlc3BvbnNlIgA=');
