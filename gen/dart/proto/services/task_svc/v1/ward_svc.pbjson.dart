//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/ward_svc.proto
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
  ],
};

/// Descriptor for `CreateWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWardResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVXYXJkUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

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
    {'1': 'wards', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetWardsResponse.Ward', '10': 'wards'},
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
    'ChBHZXRXYXJkc1Jlc3BvbnNlEkcKBXdhcmRzGAEgAygLMjEucHJvdG8uc2VydmljZXMudGFza1'
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

@$core.Deprecated('Use getWardDetailsRequestDescriptor instead')
const GetWardDetailsRequest$json = {
  '1': 'GetWardDetailsRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetWardDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardDetailsRequestDescriptor = $convert.base64Decode(
    'ChVHZXRXYXJkRGV0YWlsc1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getWardDetailsResponseDescriptor instead')
const GetWardDetailsResponse$json = {
  '1': 'GetWardDetailsResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'rooms', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetWardDetailsResponse.Room', '10': 'rooms'},
    {'1': 'task_templates', '3': 4, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetWardDetailsResponse.TaskTemplate', '10': 'taskTemplates'},
  ],
  '3': [GetWardDetailsResponse_Bed$json, GetWardDetailsResponse_Subtask$json, GetWardDetailsResponse_Room$json, GetWardDetailsResponse_TaskTemplate$json],
};

@$core.Deprecated('Use getWardDetailsResponseDescriptor instead')
const GetWardDetailsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use getWardDetailsResponseDescriptor instead')
const GetWardDetailsResponse_Subtask$json = {
  '1': 'Subtask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

@$core.Deprecated('Use getWardDetailsResponseDescriptor instead')
const GetWardDetailsResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetWardDetailsResponse.Bed', '10': 'beds'},
  ],
};

@$core.Deprecated('Use getWardDetailsResponseDescriptor instead')
const GetWardDetailsResponse_TaskTemplate$json = {
  '1': 'TaskTemplate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'subtasks', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetWardDetailsResponse.Subtask', '10': 'subtasks'},
  ],
};

/// Descriptor for `GetWardDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardDetailsResponseDescriptor = $convert.base64Decode(
    'ChZHZXRXYXJkRGV0YWlsc1Jlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUg'
    'RuYW1lEk0KBXJvb21zGAMgAygLMjcucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0V2Fy'
    'ZERldGFpbHNSZXNwb25zZS5Sb29tUgVyb29tcxJmCg50YXNrX3RlbXBsYXRlcxgEIAMoCzI/Ln'
    'Byb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFdhcmREZXRhaWxzUmVzcG9uc2UuVGFza1Rl'
    'bXBsYXRlUg10YXNrVGVtcGxhdGVzGikKA0JlZBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIA'
    'EoCVIEbmFtZRotCgdTdWJ0YXNrEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l'
    'GnYKBFJvb20SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSSgoEYmVkcxgDIA'
    'MoCzI2LnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFdhcmREZXRhaWxzUmVzcG9uc2Uu'
    'QmVkUgRiZWRzGooBCgxUYXNrVGVtcGxhdGUSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKA'
    'lSBG5hbWUSVgoIc3VidGFza3MYAyADKAsyOi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5H'
    'ZXRXYXJkRGV0YWlsc1Jlc3BvbnNlLlN1YnRhc2tSCHN1YnRhc2tz');

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
    {'1': 'wards', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetWardOverviewsResponse.Ward', '10': 'wards'},
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
    'Nlcy50YXNrX3N2Yy52MS5HZXRXYXJkT3ZlcnZpZXdzUmVzcG9uc2UuV2FyZFIFd2FyZHMasQEK'
    'BFdhcmQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGwoJYmVkX2NvdW50GA'
    'MgASgNUghiZWRDb3VudBIdCgp0YXNrc190b2RvGAQgASgNUgl0YXNrc1RvZG8SKgoRdGFza3Nf'
    'aW5fcHJvZ3Jlc3MYBSABKA1SD3Rhc2tzSW5Qcm9ncmVzcxIdCgp0YXNrc19kb25lGAYgASgNUg'
    'l0YXNrc0RvbmU=');

const $core.Map<$core.String, $core.dynamic> WardServiceBase$json = {
  '1': 'WardService',
  '2': [
    {'1': 'CreateWard', '2': '.proto.services.task_svc.v1.CreateWardRequest', '3': '.proto.services.task_svc.v1.CreateWardResponse', '4': {}},
    {'1': 'GetWard', '2': '.proto.services.task_svc.v1.GetWardRequest', '3': '.proto.services.task_svc.v1.GetWardResponse', '4': {}},
    {'1': 'GetWards', '2': '.proto.services.task_svc.v1.GetWardsRequest', '3': '.proto.services.task_svc.v1.GetWardsResponse', '4': {}},
    {'1': 'UpdateWard', '2': '.proto.services.task_svc.v1.UpdateWardRequest', '3': '.proto.services.task_svc.v1.UpdateWardResponse', '4': {}},
    {'1': 'DeleteWard', '2': '.proto.services.task_svc.v1.DeleteWardRequest', '3': '.proto.services.task_svc.v1.DeleteWardResponse', '4': {}},
    {'1': 'GetWardOverviews', '2': '.proto.services.task_svc.v1.GetWardOverviewsRequest', '3': '.proto.services.task_svc.v1.GetWardOverviewsResponse', '4': {}},
    {'1': 'GetWardDetails', '2': '.proto.services.task_svc.v1.GetWardDetailsRequest', '3': '.proto.services.task_svc.v1.GetWardDetailsResponse', '4': {}},
  ],
};

@$core.Deprecated('Use wardServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> WardServiceBase$messageJson = {
  '.proto.services.task_svc.v1.CreateWardRequest': CreateWardRequest$json,
  '.proto.services.task_svc.v1.CreateWardResponse': CreateWardResponse$json,
  '.proto.services.task_svc.v1.GetWardRequest': GetWardRequest$json,
  '.proto.services.task_svc.v1.GetWardResponse': GetWardResponse$json,
  '.proto.services.task_svc.v1.GetWardsRequest': GetWardsRequest$json,
  '.proto.services.task_svc.v1.GetWardsResponse': GetWardsResponse$json,
  '.proto.services.task_svc.v1.GetWardsResponse.Ward': GetWardsResponse_Ward$json,
  '.proto.services.task_svc.v1.UpdateWardRequest': UpdateWardRequest$json,
  '.proto.services.task_svc.v1.UpdateWardResponse': UpdateWardResponse$json,
  '.proto.services.task_svc.v1.DeleteWardRequest': DeleteWardRequest$json,
  '.proto.services.task_svc.v1.DeleteWardResponse': DeleteWardResponse$json,
  '.proto.services.task_svc.v1.GetWardOverviewsRequest': GetWardOverviewsRequest$json,
  '.proto.services.task_svc.v1.GetWardOverviewsResponse': GetWardOverviewsResponse$json,
  '.proto.services.task_svc.v1.GetWardOverviewsResponse.Ward': GetWardOverviewsResponse_Ward$json,
  '.proto.services.task_svc.v1.GetWardDetailsRequest': GetWardDetailsRequest$json,
  '.proto.services.task_svc.v1.GetWardDetailsResponse': GetWardDetailsResponse$json,
  '.proto.services.task_svc.v1.GetWardDetailsResponse.Room': GetWardDetailsResponse_Room$json,
  '.proto.services.task_svc.v1.GetWardDetailsResponse.Bed': GetWardDetailsResponse_Bed$json,
  '.proto.services.task_svc.v1.GetWardDetailsResponse.TaskTemplate': GetWardDetailsResponse_TaskTemplate$json,
  '.proto.services.task_svc.v1.GetWardDetailsResponse.Subtask': GetWardDetailsResponse_Subtask$json,
};

/// Descriptor for `WardService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List wardServiceDescriptor = $convert.base64Decode(
    'CgtXYXJkU2VydmljZRJtCgpDcmVhdGVXYXJkEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudj'
    'EuQ3JlYXRlV2FyZFJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVX'
    'YXJkUmVzcG9uc2UiABJkCgdHZXRXYXJkEioucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2'
    'V0V2FyZFJlcXVlc3QaKy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRXYXJkUmVzcG9u'
    'c2UiABJnCghHZXRXYXJkcxIrLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFdhcmRzUm'
    'VxdWVzdBosLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFdhcmRzUmVzcG9uc2UiABJt'
    'CgpVcGRhdGVXYXJkEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlV2FyZFJlcX'
    'Vlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVXYXJkUmVzcG9uc2UiABJt'
    'CgpEZWxldGVXYXJkEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuRGVsZXRlV2FyZFJlcX'
    'Vlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5EZWxldGVXYXJkUmVzcG9uc2UiABJ/'
    'ChBHZXRXYXJkT3ZlcnZpZXdzEjMucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0V2FyZE'
    '92ZXJ2aWV3c1JlcXVlc3QaNC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRXYXJkT3Zl'
    'cnZpZXdzUmVzcG9uc2UiABJ5Cg5HZXRXYXJkRGV0YWlscxIxLnByb3RvLnNlcnZpY2VzLnRhc2'
    'tfc3ZjLnYxLkdldFdhcmREZXRhaWxzUmVxdWVzdBoyLnByb3RvLnNlcnZpY2VzLnRhc2tfc3Zj'
    'LnYxLkdldFdhcmREZXRhaWxzUmVzcG9uc2UiAA==');

