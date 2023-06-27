//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/bed_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createBedRequestDescriptor instead')
const CreateBedRequest$json = {
  '1': 'CreateBedRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 9, '10': 'roomId'},
  ],
};

/// Descriptor for `CreateBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBedRequestDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVCZWRSZXF1ZXN0EhcKB3Jvb21faWQYASABKAlSBnJvb21JZA==');

@$core.Deprecated('Use createBedResponseDescriptor instead')
const CreateBedResponse$json = {
  '1': 'CreateBedResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBedResponseDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVCZWRSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use bulkCreateBedsRequestDescriptor instead')
const BulkCreateBedsRequest$json = {
  '1': 'BulkCreateBedsRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 9, '10': 'roomId'},
    {'1': 'amount_of_beds', '3': 2, '4': 1, '5': 13, '10': 'amountOfBeds'},
  ],
};

/// Descriptor for `BulkCreateBedsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkCreateBedsRequestDescriptor = $convert.base64Decode(
    'ChVCdWxrQ3JlYXRlQmVkc1JlcXVlc3QSFwoHcm9vbV9pZBgBIAEoCVIGcm9vbUlkEiQKDmFtb3'
    'VudF9vZl9iZWRzGAIgASgNUgxhbW91bnRPZkJlZHM=');

@$core.Deprecated('Use bulkCreateBedsResponseDescriptor instead')
const BulkCreateBedsResponse$json = {
  '1': 'BulkCreateBedsResponse',
  '2': [
    {'1': 'beds', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.BulkCreateBedsResponse.Bed', '10': 'beds'},
  ],
  '3': [BulkCreateBedsResponse_Bed$json],
};

@$core.Deprecated('Use bulkCreateBedsResponseDescriptor instead')
const BulkCreateBedsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `BulkCreateBedsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkCreateBedsResponseDescriptor = $convert.base64Decode(
    'ChZCdWxrQ3JlYXRlQmVkc1Jlc3BvbnNlEkoKBGJlZHMYASADKAsyNi5wcm90by5zZXJ2aWNlcy'
    '50YXNrX3N2Yy52MS5CdWxrQ3JlYXRlQmVkc1Jlc3BvbnNlLkJlZFIEYmVkcxoVCgNCZWQSDgoC'
    'aWQYASABKAlSAmlk');

@$core.Deprecated('Use getBedRequestDescriptor instead')
const GetBedRequest$json = {
  '1': 'GetBedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRCZWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getBedResponseDescriptor instead')
const GetBedResponse$json = {
  '1': 'GetBedResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 9, '10': 'roomId'},
  ],
};

/// Descriptor for `GetBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRCZWRSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSFwoHcm9vbV9pZBgCIAEoCVIGcm9vbU'
    'lk');

@$core.Deprecated('Use getBedsRequestDescriptor instead')
const GetBedsRequest$json = {
  '1': 'GetBedsRequest',
};

/// Descriptor for `GetBedsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedsRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRCZWRzUmVxdWVzdA==');

@$core.Deprecated('Use getBedsResponseDescriptor instead')
const GetBedsResponse$json = {
  '1': 'GetBedsResponse',
  '2': [
    {'1': 'beds', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetBedsResponse.Bed', '10': 'beds'},
  ],
  '3': [GetBedsResponse_Bed$json],
};

@$core.Deprecated('Use getBedsResponseDescriptor instead')
const GetBedsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 9, '10': 'roomId'},
  ],
};

/// Descriptor for `GetBedsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedsResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRCZWRzUmVzcG9uc2USQwoEYmVkcxgBIAMoCzIvLnByb3RvLnNlcnZpY2VzLnRhc2tfc3'
    'ZjLnYxLkdldEJlZHNSZXNwb25zZS5CZWRSBGJlZHMaLgoDQmVkEg4KAmlkGAEgASgJUgJpZBIX'
    'Cgdyb29tX2lkGAIgASgJUgZyb29tSWQ=');

@$core.Deprecated('Use getBedsByRoomRequestDescriptor instead')
const GetBedsByRoomRequest$json = {
  '1': 'GetBedsByRoomRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 9, '10': 'roomId'},
  ],
};

/// Descriptor for `GetBedsByRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedsByRoomRequestDescriptor = $convert.base64Decode(
    'ChRHZXRCZWRzQnlSb29tUmVxdWVzdBIXCgdyb29tX2lkGAEgASgJUgZyb29tSWQ=');

@$core.Deprecated('Use getBedsByRoomResponseDescriptor instead')
const GetBedsByRoomResponse$json = {
  '1': 'GetBedsByRoomResponse',
  '2': [
    {'1': 'beds', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetBedsByRoomResponse.Bed', '10': 'beds'},
  ],
  '3': [GetBedsByRoomResponse_Bed$json],
};

@$core.Deprecated('Use getBedsByRoomResponseDescriptor instead')
const GetBedsByRoomResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetBedsByRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedsByRoomResponseDescriptor = $convert.base64Decode(
    'ChVHZXRCZWRzQnlSb29tUmVzcG9uc2USSQoEYmVkcxgBIAMoCzI1LnByb3RvLnNlcnZpY2VzLn'
    'Rhc2tfc3ZjLnYxLkdldEJlZHNCeVJvb21SZXNwb25zZS5CZWRSBGJlZHMaFQoDQmVkEg4KAmlk'
    'GAEgASgJUgJpZA==');

@$core.Deprecated('Use updateBedRequestDescriptor instead')
const UpdateBedRequest$json = {
  '1': 'UpdateBedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'roomId', '17': true},
  ],
  '8': [
    {'1': '_room_id'},
  ],
};

/// Descriptor for `UpdateBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBedRequestDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVCZWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIcCgdyb29tX2lkGAIgASgJSABSBn'
    'Jvb21JZIgBAUIKCghfcm9vbV9pZA==');

@$core.Deprecated('Use updateBedResponseDescriptor instead')
const UpdateBedResponse$json = {
  '1': 'UpdateBedResponse',
};

/// Descriptor for `UpdateBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBedResponseDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVCZWRSZXNwb25zZQ==');

@$core.Deprecated('Use deleteBedRequestDescriptor instead')
const DeleteBedRequest$json = {
  '1': 'DeleteBedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBedRequestDescriptor = $convert.base64Decode(
    'ChBEZWxldGVCZWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteBedResponseDescriptor instead')
const DeleteBedResponse$json = {
  '1': 'DeleteBedResponse',
};

/// Descriptor for `DeleteBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBedResponseDescriptor = $convert.base64Decode(
    'ChFEZWxldGVCZWRSZXNwb25zZQ==');

const $core.Map<$core.String, $core.dynamic> BedServiceBase$json = {
  '1': 'BedService',
  '2': [
    {'1': 'CreateBed', '2': '.proto.services.task_svc.v1.CreateBedRequest', '3': '.proto.services.task_svc.v1.CreateBedResponse', '4': {}},
    {'1': 'BulkCreateBeds', '2': '.proto.services.task_svc.v1.BulkCreateBedsRequest', '3': '.proto.services.task_svc.v1.BulkCreateBedsResponse', '4': {}},
    {'1': 'GetBed', '2': '.proto.services.task_svc.v1.GetBedRequest', '3': '.proto.services.task_svc.v1.GetBedResponse', '4': {}},
    {'1': 'GetBeds', '2': '.proto.services.task_svc.v1.GetBedsRequest', '3': '.proto.services.task_svc.v1.GetBedsResponse', '4': {}},
    {'1': 'GetBedsByRoom', '2': '.proto.services.task_svc.v1.GetBedsByRoomRequest', '3': '.proto.services.task_svc.v1.GetBedsByRoomResponse', '4': {}},
    {'1': 'UpdateBed', '2': '.proto.services.task_svc.v1.UpdateBedRequest', '3': '.proto.services.task_svc.v1.UpdateBedResponse', '4': {}},
    {'1': 'DeleteBed', '2': '.proto.services.task_svc.v1.DeleteBedRequest', '3': '.proto.services.task_svc.v1.DeleteBedResponse', '4': {}},
  ],
};

@$core.Deprecated('Use bedServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> BedServiceBase$messageJson = {
  '.proto.services.task_svc.v1.CreateBedRequest': CreateBedRequest$json,
  '.proto.services.task_svc.v1.CreateBedResponse': CreateBedResponse$json,
  '.proto.services.task_svc.v1.BulkCreateBedsRequest': BulkCreateBedsRequest$json,
  '.proto.services.task_svc.v1.BulkCreateBedsResponse': BulkCreateBedsResponse$json,
  '.proto.services.task_svc.v1.BulkCreateBedsResponse.Bed': BulkCreateBedsResponse_Bed$json,
  '.proto.services.task_svc.v1.GetBedRequest': GetBedRequest$json,
  '.proto.services.task_svc.v1.GetBedResponse': GetBedResponse$json,
  '.proto.services.task_svc.v1.GetBedsRequest': GetBedsRequest$json,
  '.proto.services.task_svc.v1.GetBedsResponse': GetBedsResponse$json,
  '.proto.services.task_svc.v1.GetBedsResponse.Bed': GetBedsResponse_Bed$json,
  '.proto.services.task_svc.v1.GetBedsByRoomRequest': GetBedsByRoomRequest$json,
  '.proto.services.task_svc.v1.GetBedsByRoomResponse': GetBedsByRoomResponse$json,
  '.proto.services.task_svc.v1.GetBedsByRoomResponse.Bed': GetBedsByRoomResponse_Bed$json,
  '.proto.services.task_svc.v1.UpdateBedRequest': UpdateBedRequest$json,
  '.proto.services.task_svc.v1.UpdateBedResponse': UpdateBedResponse$json,
  '.proto.services.task_svc.v1.DeleteBedRequest': DeleteBedRequest$json,
  '.proto.services.task_svc.v1.DeleteBedResponse': DeleteBedResponse$json,
};

/// Descriptor for `BedService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List bedServiceDescriptor = $convert.base64Decode(
    'CgpCZWRTZXJ2aWNlEmoKCUNyZWF0ZUJlZBIsLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLk'
    'NyZWF0ZUJlZFJlcXVlc3QaLS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVCZWRS'
    'ZXNwb25zZSIAEnkKDkJ1bGtDcmVhdGVCZWRzEjEucHJvdG8uc2VydmljZXMudGFza19zdmMudj'
    'EuQnVsa0NyZWF0ZUJlZHNSZXF1ZXN0GjIucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQnVs'
    'a0NyZWF0ZUJlZHNSZXNwb25zZSIAEmEKBkdldEJlZBIpLnByb3RvLnNlcnZpY2VzLnRhc2tfc3'
    'ZjLnYxLkdldEJlZFJlcXVlc3QaKi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRCZWRS'
    'ZXNwb25zZSIAEmQKB0dldEJlZHMSKi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRCZW'
    'RzUmVxdWVzdBorLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldEJlZHNSZXNwb25zZSIA'
    'EnYKDUdldEJlZHNCeVJvb20SMC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRCZWRzQn'
    'lSb29tUmVxdWVzdBoxLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldEJlZHNCeVJvb21S'
    'ZXNwb25zZSIAEmoKCVVwZGF0ZUJlZBIsLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVwZG'
    'F0ZUJlZFJlcXVlc3QaLS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVCZWRSZXNw'
    'b25zZSIAEmoKCURlbGV0ZUJlZBIsLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkRlbGV0ZU'
    'JlZFJlcXVlc3QaLS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5EZWxldGVCZWRSZXNwb25z'
    'ZSIA');

