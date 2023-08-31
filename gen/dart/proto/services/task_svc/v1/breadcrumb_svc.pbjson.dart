//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/breadcrumb_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getBreadcrumbsRequestDescriptor instead')
const GetBreadcrumbsRequest$json = {
  '1': 'GetBreadcrumbsRequest',
  '2': [
    {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'organizationId', '17': true},
    {'1': 'ward_id', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'wardId', '17': true},
    {'1': 'room_id', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'roomId', '17': true},
    {'1': 'bed_id', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'bedId', '17': true},
    {'1': 'patient_id', '3': 5, '4': 1, '5': 9, '9': 4, '10': 'patientId', '17': true},
  ],
  '8': [
    {'1': '_organization_id'},
    {'1': '_ward_id'},
    {'1': '_room_id'},
    {'1': '_bed_id'},
    {'1': '_patient_id'},
  ],
};

/// Descriptor for `GetBreadcrumbsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBreadcrumbsRequestDescriptor = $convert.base64Decode(
    'ChVHZXRCcmVhZGNydW1ic1JlcXVlc3QSLAoPb3JnYW5pemF0aW9uX2lkGAEgASgJSABSDm9yZ2'
    'FuaXphdGlvbklkiAEBEhwKB3dhcmRfaWQYAiABKAlIAVIGd2FyZElkiAEBEhwKB3Jvb21faWQY'
    'AyABKAlIAlIGcm9vbUlkiAEBEhoKBmJlZF9pZBgEIAEoCUgDUgViZWRJZIgBARIiCgpwYXRpZW'
    '50X2lkGAUgASgJSARSCXBhdGllbnRJZIgBAUISChBfb3JnYW5pemF0aW9uX2lkQgoKCF93YXJk'
    'X2lkQgoKCF9yb29tX2lkQgkKB19iZWRfaWRCDQoLX3BhdGllbnRfaWQ=');

@$core.Deprecated('Use getBreadcrumbsResponseDescriptor instead')
const GetBreadcrumbsResponse$json = {
  '1': 'GetBreadcrumbsResponse',
  '2': [
    {'1': 'organization', '3': 1, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Organization', '9': 0, '10': 'organization', '17': true},
  ],
  '3': [GetBreadcrumbsResponse_Organization$json, GetBreadcrumbsResponse_Ward$json, GetBreadcrumbsResponse_Room$json, GetBreadcrumbsResponse_Bed$json, GetBreadcrumbsResponse_Patient$json],
  '8': [
    {'1': '_organization'},
  ],
};

@$core.Deprecated('Use getBreadcrumbsResponseDescriptor instead')
const GetBreadcrumbsResponse_Organization$json = {
  '1': 'Organization',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ward', '3': 3, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Ward', '9': 0, '10': 'ward', '17': true},
  ],
  '8': [
    {'1': '_ward'},
  ],
};

@$core.Deprecated('Use getBreadcrumbsResponseDescriptor instead')
const GetBreadcrumbsResponse_Ward$json = {
  '1': 'Ward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'room', '3': 3, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Room', '9': 0, '10': 'room', '17': true},
  ],
  '8': [
    {'1': '_room'},
  ],
};

@$core.Deprecated('Use getBreadcrumbsResponseDescriptor instead')
const GetBreadcrumbsResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'bed', '3': 3, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Bed', '9': 0, '10': 'bed', '17': true},
  ],
  '8': [
    {'1': '_bed'},
  ],
};

@$core.Deprecated('Use getBreadcrumbsResponseDescriptor instead')
const GetBreadcrumbsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'patient', '3': 3, '4': 1, '5': 11, '6': '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Patient', '9': 0, '10': 'patient', '17': true},
  ],
  '8': [
    {'1': '_patient'},
  ],
};

@$core.Deprecated('Use getBreadcrumbsResponseDescriptor instead')
const GetBreadcrumbsResponse_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetBreadcrumbsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBreadcrumbsResponseDescriptor = $convert.base64Decode(
    'ChZHZXRCcmVhZGNydW1ic1Jlc3BvbnNlEmgKDG9yZ2FuaXphdGlvbhgBIAEoCzI/LnByb3RvLn'
    'NlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldEJyZWFkY3J1bWJzUmVzcG9uc2UuT3JnYW5pemF0aW9u'
    'SABSDG9yZ2FuaXphdGlvbogBARqNAQoMT3JnYW5pemF0aW9uEg4KAmlkGAEgASgJUgJpZBISCg'
    'RuYW1lGAIgASgJUgRuYW1lElAKBHdhcmQYAyABKAsyNy5wcm90by5zZXJ2aWNlcy50YXNrX3N2'
    'Yy52MS5HZXRCcmVhZGNydW1ic1Jlc3BvbnNlLldhcmRIAFIEd2FyZIgBAUIHCgVfd2FyZBqFAQ'
    'oEV2FyZBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRJQCgRyb29tGAMgASgL'
    'MjcucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0QnJlYWRjcnVtYnNSZXNwb25zZS5Sb2'
    '9tSABSBHJvb22IAQFCBwoFX3Jvb20agQEKBFJvb20SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUY'
    'AiABKAlSBG5hbWUSTQoDYmVkGAMgASgLMjYucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2'
    'V0QnJlYWRjcnVtYnNSZXNwb25zZS5CZWRIAFIDYmVkiAEBQgYKBF9iZWQakAEKA0JlZBIOCgJp'
    'ZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRJZCgdwYXRpZW50GAMgASgLMjoucHJvdG'
    '8uc2VydmljZXMudGFza19zdmMudjEuR2V0QnJlYWRjcnVtYnNSZXNwb25zZS5QYXRpZW50SABS'
    'B3BhdGllbnSIAQFCCgoIX3BhdGllbnQaLQoHUGF0aWVudBIOCgJpZBgBIAEoCVICaWQSEgoEbm'
    'FtZRgCIAEoCVIEbmFtZUIPCg1fb3JnYW5pemF0aW9u');

const $core.Map<$core.String, $core.dynamic> BreadcrumbServiceBase$json = {
  '1': 'BreadcrumbService',
  '2': [
    {'1': 'GetBreadcrumbs', '2': '.proto.services.task_svc.v1.GetBreadcrumbsRequest', '3': '.proto.services.task_svc.v1.GetBreadcrumbsResponse', '4': {}},
  ],
};

@$core.Deprecated('Use breadcrumbServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> BreadcrumbServiceBase$messageJson = {
  '.proto.services.task_svc.v1.GetBreadcrumbsRequest': GetBreadcrumbsRequest$json,
  '.proto.services.task_svc.v1.GetBreadcrumbsResponse': GetBreadcrumbsResponse$json,
  '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Organization': GetBreadcrumbsResponse_Organization$json,
  '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Ward': GetBreadcrumbsResponse_Ward$json,
  '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Room': GetBreadcrumbsResponse_Room$json,
  '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Bed': GetBreadcrumbsResponse_Bed$json,
  '.proto.services.task_svc.v1.GetBreadcrumbsResponse.Patient': GetBreadcrumbsResponse_Patient$json,
};

/// Descriptor for `BreadcrumbService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List breadcrumbServiceDescriptor = $convert.base64Decode(
    'ChFCcmVhZGNydW1iU2VydmljZRJ5Cg5HZXRCcmVhZGNydW1icxIxLnByb3RvLnNlcnZpY2VzLn'
    'Rhc2tfc3ZjLnYxLkdldEJyZWFkY3J1bWJzUmVxdWVzdBoyLnByb3RvLnNlcnZpY2VzLnRhc2tf'
    'c3ZjLnYxLkdldEJyZWFkY3J1bWJzUmVzcG9uc2UiAA==');

