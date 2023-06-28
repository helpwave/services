//
//  Generated code. Do not modify.
//  source: proto/services/ward_svc/v1/ward_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createWardRequestDescriptor instead')
const CreateWardRequest$json = {
  '1': 'CreateWardRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWardRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVXYXJkUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use createWardResponseDescriptor instead')
const CreateWardResponse$json = {
  '1': 'CreateWardResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWardResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVXYXJkUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'U=');

@$core.Deprecated('Use getWardRequestDescriptor instead')
const GetWardRequest$json = {
  '1': 'GetWardRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRXYXJkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getWardResponseDescriptor instead')
const GetWardResponse$json = {
  '1': 'GetWardResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRXYXJkUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');

@$core.Deprecated('Use getWardsRequestDescriptor instead')
const GetWardsRequest$json = {
  '1': 'GetWardsRequest',
};

/// Descriptor for `GetWardsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardsRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRXYXJkc1JlcXVlc3Q=');

@$core.Deprecated('Use getWardsResponseDescriptor instead')
const GetWardsResponse$json = {
  '1': 'GetWardsResponse',
  '2': [
    {'1': 'wards', '3': 1, '4': 3, '5': 11, '6': '.proto.services.ward_svc.v1.GetWardsResponse.Ward', '10': 'wards'},
  ],
  '3': [GetWardsResponse_Ward$json],
};

@$core.Deprecated('Use getWardsResponseDescriptor instead')
const GetWardsResponse_Ward$json = {
  '1': 'Ward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetWardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardsResponseDescriptor = $convert.base64Decode(
    'ChBHZXRXYXJkc1Jlc3BvbnNlEkcKBXdhcmRzGAEgAygLMjEucHJvdG8uc2VydmljZXMud2FyZF'
    '9zdmMudjEuR2V0V2FyZHNSZXNwb25zZS5XYXJkUgV3YXJkcxoqCgRXYXJkEg4KAmlkGAEgASgJ'
    'UgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use updateWardRequestDescriptor instead')
const UpdateWardRequest$json = {
  '1': 'UpdateWardRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `UpdateWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWardRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVXYXJkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBQgcKBV9uYW1l');

@$core.Deprecated('Use updateWardResponseDescriptor instead')
const UpdateWardResponse$json = {
  '1': 'UpdateWardResponse',
};

/// Descriptor for `UpdateWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWardResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVXYXJkUmVzcG9uc2U=');

@$core.Deprecated('Use deleteWardRequestDescriptor instead')
const DeleteWardRequest$json = {
  '1': 'DeleteWardRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWardRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVXYXJkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteWardResponseDescriptor instead')
const DeleteWardResponse$json = {
  '1': 'DeleteWardResponse',
};

/// Descriptor for `DeleteWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWardResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVXYXJkUmVzcG9uc2U=');

@$core.Deprecated('Use getWardOverviewsRequestDescriptor instead')
const GetWardOverviewsRequest$json = {
  '1': 'GetWardOverviewsRequest',
};

/// Descriptor for `GetWardOverviewsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardOverviewsRequestDescriptor = $convert.base64Decode(
    'ChdHZXRXYXJkT3ZlcnZpZXdzUmVxdWVzdA==');

@$core.Deprecated('Use getWardOverviewsResponseDescriptor instead')
const GetWardOverviewsResponse$json = {
  '1': 'GetWardOverviewsResponse',
  '2': [
    {'1': 'wards', '3': 1, '4': 3, '5': 11, '6': '.proto.services.ward_svc.v1.GetWardOverviewsResponse.Ward', '10': 'wards'},
  ],
  '3': [GetWardOverviewsResponse_Ward$json],
};

@$core.Deprecated('Use getWardOverviewsResponseDescriptor instead')
const GetWardOverviewsResponse_Ward$json = {
  '1': 'Ward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'bed_count', '3': 3, '4': 1, '5': 13, '10': 'bedCount'},
    {'1': 'tasks_todo', '3': 4, '4': 1, '5': 13, '10': 'tasksTodo'},
    {'1': 'tasks_in_progress', '3': 5, '4': 1, '5': 13, '10': 'tasksInProgress'},
    {'1': 'tasks_done', '3': 6, '4': 1, '5': 13, '10': 'tasksDone'},
  ],
};

/// Descriptor for `GetWardOverviewsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardOverviewsResponseDescriptor = $convert.base64Decode(
    'ChhHZXRXYXJkT3ZlcnZpZXdzUmVzcG9uc2USTwoFd2FyZHMYASADKAsyOS5wcm90by5zZXJ2aW'
    'Nlcy53YXJkX3N2Yy52MS5HZXRXYXJkT3ZlcnZpZXdzUmVzcG9uc2UuV2FyZFIFd2FyZHMasQEK'
    'BFdhcmQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGwoJYmVkX2NvdW50GA'
    'MgASgNUghiZWRDb3VudBIdCgp0YXNrc190b2RvGAQgASgNUgl0YXNrc1RvZG8SKgoRdGFza3Nf'
    'aW5fcHJvZ3Jlc3MYBSABKA1SD3Rhc2tzSW5Qcm9ncmVzcxIdCgp0YXNrc19kb25lGAYgASgNUg'
    'l0YXNrc0RvbmU=');

const $core.Map<$core.String, $core.dynamic> WardServiceBase$json = {
  '1': 'WardService',
  '2': [
    {'1': 'CreateWard', '2': '.proto.services.ward_svc.v1.CreateWardRequest', '3': '.proto.services.ward_svc.v1.CreateWardResponse', '4': {}},
    {'1': 'GetWard', '2': '.proto.services.ward_svc.v1.GetWardRequest', '3': '.proto.services.ward_svc.v1.GetWardResponse', '4': {}},
    {'1': 'GetWards', '2': '.proto.services.ward_svc.v1.GetWardsRequest', '3': '.proto.services.ward_svc.v1.GetWardsResponse', '4': {}},
    {'1': 'UpdateWard', '2': '.proto.services.ward_svc.v1.UpdateWardRequest', '3': '.proto.services.ward_svc.v1.UpdateWardResponse', '4': {}},
    {'1': 'DeleteWard', '2': '.proto.services.ward_svc.v1.DeleteWardRequest', '3': '.proto.services.ward_svc.v1.DeleteWardResponse', '4': {}},
    {'1': 'GetWardOverviews', '2': '.proto.services.ward_svc.v1.GetWardOverviewsRequest', '3': '.proto.services.ward_svc.v1.GetWardOverviewsResponse', '4': {}},
  ],
};

@$core.Deprecated('Use wardServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> WardServiceBase$messageJson = {
  '.proto.services.ward_svc.v1.CreateWardRequest': CreateWardRequest$json,
  '.proto.services.ward_svc.v1.CreateWardResponse': CreateWardResponse$json,
  '.proto.services.ward_svc.v1.GetWardRequest': GetWardRequest$json,
  '.proto.services.ward_svc.v1.GetWardResponse': GetWardResponse$json,
  '.proto.services.ward_svc.v1.GetWardsRequest': GetWardsRequest$json,
  '.proto.services.ward_svc.v1.GetWardsResponse': GetWardsResponse$json,
  '.proto.services.ward_svc.v1.GetWardsResponse.Ward': GetWardsResponse_Ward$json,
  '.proto.services.ward_svc.v1.UpdateWardRequest': UpdateWardRequest$json,
  '.proto.services.ward_svc.v1.UpdateWardResponse': UpdateWardResponse$json,
  '.proto.services.ward_svc.v1.DeleteWardRequest': DeleteWardRequest$json,
  '.proto.services.ward_svc.v1.DeleteWardResponse': DeleteWardResponse$json,
  '.proto.services.ward_svc.v1.GetWardOverviewsRequest': GetWardOverviewsRequest$json,
  '.proto.services.ward_svc.v1.GetWardOverviewsResponse': GetWardOverviewsResponse$json,
  '.proto.services.ward_svc.v1.GetWardOverviewsResponse.Ward': GetWardOverviewsResponse_Ward$json,
};

/// Descriptor for `WardService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List wardServiceDescriptor = $convert.base64Decode(
    'CgtXYXJkU2VydmljZRJtCgpDcmVhdGVXYXJkEi0ucHJvdG8uc2VydmljZXMud2FyZF9zdmMudj'
    'EuQ3JlYXRlV2FyZFJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy53YXJkX3N2Yy52MS5DcmVhdGVX'
    'YXJkUmVzcG9uc2UiABJkCgdHZXRXYXJkEioucHJvdG8uc2VydmljZXMud2FyZF9zdmMudjEuR2'
    'V0V2FyZFJlcXVlc3QaKy5wcm90by5zZXJ2aWNlcy53YXJkX3N2Yy52MS5HZXRXYXJkUmVzcG9u'
    'c2UiABJnCghHZXRXYXJkcxIrLnByb3RvLnNlcnZpY2VzLndhcmRfc3ZjLnYxLkdldFdhcmRzUm'
    'VxdWVzdBosLnByb3RvLnNlcnZpY2VzLndhcmRfc3ZjLnYxLkdldFdhcmRzUmVzcG9uc2UiABJt'
    'CgpVcGRhdGVXYXJkEi0ucHJvdG8uc2VydmljZXMud2FyZF9zdmMudjEuVXBkYXRlV2FyZFJlcX'
    'Vlc3QaLi5wcm90by5zZXJ2aWNlcy53YXJkX3N2Yy52MS5VcGRhdGVXYXJkUmVzcG9uc2UiABJt'
    'CgpEZWxldGVXYXJkEi0ucHJvdG8uc2VydmljZXMud2FyZF9zdmMudjEuRGVsZXRlV2FyZFJlcX'
    'Vlc3QaLi5wcm90by5zZXJ2aWNlcy53YXJkX3N2Yy52MS5EZWxldGVXYXJkUmVzcG9uc2UiABJ/'
    'ChBHZXRXYXJkT3ZlcnZpZXdzEjMucHJvdG8uc2VydmljZXMud2FyZF9zdmMudjEuR2V0V2FyZE'
    '92ZXJ2aWV3c1JlcXVlc3QaNC5wcm90by5zZXJ2aWNlcy53YXJkX3N2Yy52MS5HZXRXYXJkT3Zl'
    'cnZpZXdzUmVzcG9uc2UiAA==');

