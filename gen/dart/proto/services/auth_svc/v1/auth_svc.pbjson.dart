///
//  Generated code. Do not modify.
//  source: proto/services/auth_svc/v1/auth_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use prelimAuthRequestRequestDescriptor instead')
const PrelimAuthRequestRequest$json = const {
  '1': 'PrelimAuthRequestRequest',
};

/// Descriptor for `PrelimAuthRequestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prelimAuthRequestRequestDescriptor = $convert.base64Decode('ChhQcmVsaW1BdXRoUmVxdWVzdFJlcXVlc3Q=');
@$core.Deprecated('Use prelimAuthRequestResponseDescriptor instead')
const PrelimAuthRequestResponse$json = const {
  '1': 'PrelimAuthRequestResponse',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `PrelimAuthRequestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prelimAuthRequestResponseDescriptor = $convert.base64Decode('ChlQcmVsaW1BdXRoUmVxdWVzdFJlc3BvbnNlEhAKA3VybBgBIAEoCVIDdXJs');
const $core.Map<$core.String, $core.dynamic> AuthServiceBase$json = const {
  '1': 'AuthService',
  '2': const [
    const {'1': 'PrelimAuthRequest', '2': '.proto.services.auth_svc.v1.PrelimAuthRequestRequest', '3': '.proto.services.auth_svc.v1.PrelimAuthRequestResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use authServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> AuthServiceBase$messageJson = const {
  '.proto.services.auth_svc.v1.PrelimAuthRequestRequest': PrelimAuthRequestRequest$json,
  '.proto.services.auth_svc.v1.PrelimAuthRequestResponse': PrelimAuthRequestResponse$json,
};

/// Descriptor for `AuthService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List authServiceDescriptor = $convert.base64Decode('CgtBdXRoU2VydmljZRKCAQoRUHJlbGltQXV0aFJlcXVlc3QSNC5wcm90by5zZXJ2aWNlcy5hdXRoX3N2Yy52MS5QcmVsaW1BdXRoUmVxdWVzdFJlcXVlc3QaNS5wcm90by5zZXJ2aWNlcy5hdXRoX3N2Yy52MS5QcmVsaW1BdXRoUmVxdWVzdFJlc3BvbnNlIgA=');
