//
//  Generated code. Do not modify.
//  source: proto/services/auth_svc/v1/auth_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use prelimAuthRequestRequestDescriptor instead')
const PrelimAuthRequestRequest$json = {
  '1': 'PrelimAuthRequestRequest',
};

/// Descriptor for `PrelimAuthRequestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prelimAuthRequestRequestDescriptor = $convert.base64Decode(
    'ChhQcmVsaW1BdXRoUmVxdWVzdFJlcXVlc3Q=');

@$core.Deprecated('Use prelimAuthRequestResponseDescriptor instead')
const PrelimAuthRequestResponse$json = {
  '1': 'PrelimAuthRequestResponse',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `PrelimAuthRequestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prelimAuthRequestResponseDescriptor = $convert.base64Decode(
    'ChlQcmVsaW1BdXRoUmVxdWVzdFJlc3BvbnNlEhAKA3VybBgBIAEoCVIDdXJs');

const $core.Map<$core.String, $core.dynamic> AuthServiceBase$json = {
  '1': 'AuthService',
  '2': [
    {'1': 'PrelimAuthRequest', '2': '.proto.services.auth_svc.v1.PrelimAuthRequestRequest', '3': '.proto.services.auth_svc.v1.PrelimAuthRequestResponse', '4': {}},
  ],
};

@$core.Deprecated('Use authServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> AuthServiceBase$messageJson = {
  '.proto.services.auth_svc.v1.PrelimAuthRequestRequest': PrelimAuthRequestRequest$json,
  '.proto.services.auth_svc.v1.PrelimAuthRequestResponse': PrelimAuthRequestResponse$json,
};

/// Descriptor for `AuthService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List authServiceDescriptor = $convert.base64Decode(
    'CgtBdXRoU2VydmljZRKCAQoRUHJlbGltQXV0aFJlcXVlc3QSNC5wcm90by5zZXJ2aWNlcy5hdX'
    'RoX3N2Yy52MS5QcmVsaW1BdXRoUmVxdWVzdFJlcXVlc3QaNS5wcm90by5zZXJ2aWNlcy5hdXRo'
    'X3N2Yy52MS5QcmVsaW1BdXRoUmVxdWVzdFJlc3BvbnNlIgA=');

