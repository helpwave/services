//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/ward_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
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
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `CreateWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWardResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVXYXJkUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEiAKC2NvbnNpc3RlbmN5GAIgAS'
    'gJUgtjb25zaXN0ZW5jeQ==');

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
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRXYXJkUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIA'
    'oLY29uc2lzdGVuY3kYAyABKAlSC2NvbnNpc3RlbmN5');

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
    {'1': 'wards', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetWardsResponse.Ward', '10': 'wards'},
  ],
  '3': [GetWardsResponse_Ward$json],
};

@$core.Deprecated('Use getWardsResponseDescriptor instead')
const GetWardsResponse_Ward$json = {
  '1': 'Ward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetWardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardsResponseDescriptor = $convert.base64Decode(
    'ChBHZXRXYXJkc1Jlc3BvbnNlEkIKBXdhcmRzGAEgAygLMiwuc2VydmljZXMudGFza3Nfc3ZjLn'
    'YxLkdldFdhcmRzUmVzcG9uc2UuV2FyZFIFd2FyZHMaTAoEV2FyZBIOCgJpZBgBIAEoCVICaWQS'
    'EgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtjb25zaXN0ZW5jeRgDIAEoCVILY29uc2lzdGVuY3k=');

@$core.Deprecated('Use getRecentWardsRequestDescriptor instead')
const GetRecentWardsRequest$json = {
  '1': 'GetRecentWardsRequest',
};

/// Descriptor for `GetRecentWardsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecentWardsRequestDescriptor = $convert.base64Decode(
    'ChVHZXRSZWNlbnRXYXJkc1JlcXVlc3Q=');

@$core.Deprecated('Use getRecentWardsResponseDescriptor instead')
const GetRecentWardsResponse$json = {
  '1': 'GetRecentWardsResponse',
  '2': [
    {'1': 'wards', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetRecentWardsResponse.Ward', '10': 'wards'},
  ],
  '3': [GetRecentWardsResponse_Ward$json],
};

@$core.Deprecated('Use getRecentWardsResponseDescriptor instead')
const GetRecentWardsResponse_Ward$json = {
  '1': 'Ward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'bed_count', '3': 3, '4': 1, '5': 13, '10': 'bedCount'},
    {'1': 'tasks_todo', '3': 4, '4': 1, '5': 13, '10': 'tasksTodo'},
    {'1': 'tasks_in_progress', '3': 5, '4': 1, '5': 13, '10': 'tasksInProgress'},
    {'1': 'tasks_done', '3': 6, '4': 1, '5': 13, '10': 'tasksDone'},
    {'1': 'consistency', '3': 7, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetRecentWardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecentWardsResponseDescriptor = $convert.base64Decode(
    'ChZHZXRSZWNlbnRXYXJkc1Jlc3BvbnNlEkgKBXdhcmRzGAEgAygLMjIuc2VydmljZXMudGFza3'
    'Nfc3ZjLnYxLkdldFJlY2VudFdhcmRzUmVzcG9uc2UuV2FyZFIFd2FyZHMa0wEKBFdhcmQSDgoC'
    'aWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGwoJYmVkX2NvdW50GAMgASgNUghiZW'
    'RDb3VudBIdCgp0YXNrc190b2RvGAQgASgNUgl0YXNrc1RvZG8SKgoRdGFza3NfaW5fcHJvZ3Jl'
    'c3MYBSABKA1SD3Rhc2tzSW5Qcm9ncmVzcxIdCgp0YXNrc19kb25lGAYgASgNUgl0YXNrc0Rvbm'
    'USIAoLY29uc2lzdGVuY3kYByABKAlSC2NvbnNpc3RlbmN5');

@$core.Deprecated('Use updateWardRequestDescriptor instead')
const UpdateWardRequest$json = {
  '1': 'UpdateWardRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'consistency', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_consistency'},
  ],
};

/// Descriptor for `UpdateWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWardRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVXYXJkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBEiUKC2NvbnNpc3RlbmN5GAMgASgJSAFSC2NvbnNpc3RlbmN5iAEBQgcKBV9uYW1lQg4K'
    'DF9jb25zaXN0ZW5jeQ==');

@$core.Deprecated('Use updateWardResponseDescriptor instead')
const UpdateWardResponse$json = {
  '1': 'UpdateWardResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `UpdateWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWardResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVXYXJkUmVzcG9uc2USOQoIY29uZmxpY3QYASABKAsyGC5saWJzLmNvbW1vbi52MS'
    '5Db25mbGljdEgAUghjb25mbGljdIgBARIgCgtjb25zaXN0ZW5jeRgCIAEoCVILY29uc2lzdGVu'
    'Y3lCCwoJX2NvbmZsaWN0');

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
    {'1': 'rooms', '3': 3, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetWardDetailsResponse.Room', '10': 'rooms'},
    {'1': 'task_templates', '3': 4, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetWardDetailsResponse.TaskTemplate', '10': 'taskTemplates'},
    {'1': 'consistency', '3': 5, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '3': [GetWardDetailsResponse_Bed$json, GetWardDetailsResponse_Subtask$json, GetWardDetailsResponse_Room$json, GetWardDetailsResponse_TaskTemplate$json],
};

@$core.Deprecated('Use getWardDetailsResponseDescriptor instead')
const GetWardDetailsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
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
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetWardDetailsResponse.Bed', '10': 'beds'},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getWardDetailsResponseDescriptor instead')
const GetWardDetailsResponse_TaskTemplate$json = {
  '1': 'TaskTemplate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'subtasks', '3': 3, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetWardDetailsResponse.Subtask', '10': 'subtasks'},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetWardDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardDetailsResponseDescriptor = $convert.base64Decode(
    'ChZHZXRXYXJkRGV0YWlsc1Jlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUg'
    'RuYW1lEkgKBXJvb21zGAMgAygLMjIuc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFdhcmREZXRh'
    'aWxzUmVzcG9uc2UuUm9vbVIFcm9vbXMSYQoOdGFza190ZW1wbGF0ZXMYBCADKAsyOi5zZXJ2aW'
    'Nlcy50YXNrc19zdmMudjEuR2V0V2FyZERldGFpbHNSZXNwb25zZS5UYXNrVGVtcGxhdGVSDXRh'
    'c2tUZW1wbGF0ZXMSIAoLY29uc2lzdGVuY3kYBSABKAlSC2NvbnNpc3RlbmN5GksKA0JlZBIOCg'
    'JpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtjb25zaXN0ZW5jeRgDIAEoCVIL'
    'Y29uc2lzdGVuY3kaLQoHU3VidGFzaxIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbm'
    'FtZRqTAQoEUm9vbRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRJFCgRiZWRz'
    'GAMgAygLMjEuc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFdhcmREZXRhaWxzUmVzcG9uc2UuQm'
    'VkUgRiZWRzEiAKC2NvbnNpc3RlbmN5GAQgASgJUgtjb25zaXN0ZW5jeRqnAQoMVGFza1RlbXBs'
    'YXRlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lElEKCHN1YnRhc2tzGAMgAy'
    'gLMjUuc2VydmljZXMudGFza3Nfc3ZjLnYxLkdldFdhcmREZXRhaWxzUmVzcG9uc2UuU3VidGFz'
    'a1IIc3VidGFza3MSIAoLY29uc2lzdGVuY3kYBCABKAlSC2NvbnNpc3RlbmN5');

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
    {'1': 'wards', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetWardOverviewsResponse.Ward', '10': 'wards'},
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
    {'1': 'consistency', '3': 7, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetWardOverviewsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardOverviewsResponseDescriptor = $convert.base64Decode(
    'ChhHZXRXYXJkT3ZlcnZpZXdzUmVzcG9uc2USSgoFd2FyZHMYASADKAsyNC5zZXJ2aWNlcy50YX'
    'Nrc19zdmMudjEuR2V0V2FyZE92ZXJ2aWV3c1Jlc3BvbnNlLldhcmRSBXdhcmRzGtMBCgRXYXJk'
    'Eg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhsKCWJlZF9jb3VudBgDIAEoDV'
    'IIYmVkQ291bnQSHQoKdGFza3NfdG9kbxgEIAEoDVIJdGFza3NUb2RvEioKEXRhc2tzX2luX3By'
    'b2dyZXNzGAUgASgNUg90YXNrc0luUHJvZ3Jlc3MSHQoKdGFza3NfZG9uZRgGIAEoDVIJdGFza3'
    'NEb25lEiAKC2NvbnNpc3RlbmN5GAcgASgJUgtjb25zaXN0ZW5jeQ==');

