//
//  Generated code. Do not modify.
//  source: proto/services/aggregation_svc/v1/tasks_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getWardsOverviewRequestDescriptor instead')
const GetWardsOverviewRequest$json = {
  '1': 'GetWardsOverviewRequest',
};

/// Descriptor for `GetWardsOverviewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardsOverviewRequestDescriptor = $convert.base64Decode(
    'ChdHZXRXYXJkc092ZXJ2aWV3UmVxdWVzdA==');

@$core.Deprecated('Use getWardsOverviewResponseDescriptor instead')
const GetWardsOverviewResponse$json = {
  '1': 'GetWardsOverviewResponse',
  '2': [
    {'1': 'wards', '3': 1, '4': 3, '5': 11, '6': '.proto.services.aggregation_svc.v1.GetWardsOverviewResponse.Ward', '10': 'wards'},
  ],
  '3': [GetWardsOverviewResponse_Ward$json],
};

@$core.Deprecated('Use getWardsOverviewResponseDescriptor instead')
const GetWardsOverviewResponse_Ward$json = {
  '1': 'Ward',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'unscheduled', '3': 3, '4': 1, '5': 13, '10': 'unscheduled'},
    {'1': 'inProgress', '3': 4, '4': 1, '5': 13, '10': 'inProgress'},
    {'1': 'done', '3': 5, '4': 1, '5': 13, '10': 'done'},
    {'1': 'bed_count', '3': 6, '4': 1, '5': 13, '10': 'bedCount'},
  ],
};

/// Descriptor for `GetWardsOverviewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardsOverviewResponseDescriptor = $convert.base64Decode(
    'ChhHZXRXYXJkc092ZXJ2aWV3UmVzcG9uc2USVgoFd2FyZHMYASADKAsyQC5wcm90by5zZXJ2aW'
    'Nlcy5hZ2dyZWdhdGlvbl9zdmMudjEuR2V0V2FyZHNPdmVydmlld1Jlc3BvbnNlLldhcmRSBXdh'
    'cmRzGp0BCgRXYXJkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC3Vuc2'
    'NoZWR1bGVkGAMgASgNUgt1bnNjaGVkdWxlZBIeCgppblByb2dyZXNzGAQgASgNUgppblByb2dy'
    'ZXNzEhIKBGRvbmUYBSABKA1SBGRvbmUSGwoJYmVkX2NvdW50GAYgASgNUghiZWRDb3VudA==');

const $core.Map<$core.String, $core.dynamic> TasksServiceBase$json = {
  '1': 'TasksService',
  '2': [
    {'1': 'GetWardsOverview', '2': '.proto.services.aggregation_svc.v1.GetWardsOverviewRequest', '3': '.proto.services.aggregation_svc.v1.GetWardsOverviewResponse', '4': {}},
  ],
};

@$core.Deprecated('Use tasksServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TasksServiceBase$messageJson = {
  '.proto.services.aggregation_svc.v1.GetWardsOverviewRequest': GetWardsOverviewRequest$json,
  '.proto.services.aggregation_svc.v1.GetWardsOverviewResponse': GetWardsOverviewResponse$json,
  '.proto.services.aggregation_svc.v1.GetWardsOverviewResponse.Ward': GetWardsOverviewResponse_Ward$json,
};

/// Descriptor for `TasksService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List tasksServiceDescriptor = $convert.base64Decode(
    'CgxUYXNrc1NlcnZpY2USjQEKEEdldFdhcmRzT3ZlcnZpZXcSOi5wcm90by5zZXJ2aWNlcy5hZ2'
    'dyZWdhdGlvbl9zdmMudjEuR2V0V2FyZHNPdmVydmlld1JlcXVlc3QaOy5wcm90by5zZXJ2aWNl'
    'cy5hZ2dyZWdhdGlvbl9zdmMudjEuR2V0V2FyZHNPdmVydmlld1Jlc3BvbnNlIgA=');

