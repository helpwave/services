//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/bed_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
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
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBedRequestDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVCZWRSZXF1ZXN0EhcKB3Jvb21faWQYASABKAlSBnJvb21JZBISCgRuYW1lGAIgAS'
    'gJUgRuYW1l');

@$core.Deprecated('Use createBedResponseDescriptor instead')
const CreateBedResponse$json = {
  '1': 'CreateBedResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `CreateBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBedResponseDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVCZWRSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSIAoLY29uc2lzdGVuY3kYAiABKA'
    'lSC2NvbnNpc3RlbmN5');

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
    {'1': 'beds', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.BulkCreateBedsResponse.Bed', '10': 'beds'},
  ],
  '3': [BulkCreateBedsResponse_Bed$json],
};

@$core.Deprecated('Use bulkCreateBedsResponseDescriptor instead')
const BulkCreateBedsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `BulkCreateBedsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkCreateBedsResponseDescriptor = $convert.base64Decode(
    'ChZCdWxrQ3JlYXRlQmVkc1Jlc3BvbnNlEkUKBGJlZHMYASADKAsyMS5zZXJ2aWNlcy50YXNrc1'
    '9zdmMudjEuQnVsa0NyZWF0ZUJlZHNSZXNwb25zZS5CZWRSBGJlZHMaSwoDQmVkEg4KAmlkGAEg'
    'ASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2NvbnNpc3RlbmN5GAMgASgJUgtjb25zaX'
    'N0ZW5jeQ==');

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
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRCZWRSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSFwoHcm9vbV9pZBgCIAEoCVIGcm9vbU'
    'lkEhIKBG5hbWUYAyABKAlSBG5hbWUSIAoLY29uc2lzdGVuY3kYBCABKAlSC2NvbnNpc3RlbmN5');

@$core.Deprecated('Use getBedByPatientRequestDescriptor instead')
const GetBedByPatientRequest$json = {
  '1': 'GetBedByPatientRequest',
  '2': [
    {'1': 'patient_id', '3': 1, '4': 1, '5': 9, '10': 'patientId'},
  ],
};

/// Descriptor for `GetBedByPatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedByPatientRequestDescriptor = $convert.base64Decode(
    'ChZHZXRCZWRCeVBhdGllbnRSZXF1ZXN0Eh0KCnBhdGllbnRfaWQYASABKAlSCXBhdGllbnRJZA'
    '==');

@$core.Deprecated('Use getBedByPatientResponseDescriptor instead')
const GetBedByPatientResponse$json = {
  '1': 'GetBedByPatientResponse',
  '2': [
    {'1': 'room', '3': 1, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetBedByPatientResponse.Room', '9': 0, '10': 'room', '17': true},
    {'1': 'bed', '3': 2, '4': 1, '5': 11, '6': '.services.tasks_svc.v1.GetBedByPatientResponse.Bed', '9': 1, '10': 'bed', '17': true},
  ],
  '3': [GetBedByPatientResponse_Room$json, GetBedByPatientResponse_Bed$json],
  '8': [
    {'1': '_room'},
    {'1': '_bed'},
  ],
};

@$core.Deprecated('Use getBedByPatientResponseDescriptor instead')
const GetBedByPatientResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ward_id', '3': 3, '4': 1, '5': 9, '10': 'wardId'},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

@$core.Deprecated('Use getBedByPatientResponseDescriptor instead')
const GetBedByPatientResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetBedByPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedByPatientResponseDescriptor = $convert.base64Decode(
    'ChdHZXRCZWRCeVBhdGllbnRSZXNwb25zZRJMCgRyb29tGAEgASgLMjMuc2VydmljZXMudGFza3'
    'Nfc3ZjLnYxLkdldEJlZEJ5UGF0aWVudFJlc3BvbnNlLlJvb21IAFIEcm9vbYgBARJJCgNiZWQY'
    'AiABKAsyMi5zZXJ2aWNlcy50YXNrc19zdmMudjEuR2V0QmVkQnlQYXRpZW50UmVzcG9uc2UuQm'
    'VkSAFSA2JlZIgBARplCgRSb29tEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l'
    'EhcKB3dhcmRfaWQYAyABKAlSBndhcmRJZBIgCgtjb25zaXN0ZW5jeRgEIAEoCVILY29uc2lzdG'
    'VuY3kaSwoDQmVkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEiAKC2NvbnNp'
    'c3RlbmN5GAMgASgJUgtjb25zaXN0ZW5jeUIHCgVfcm9vbUIGCgRfYmVk');

@$core.Deprecated('Use getBedsRequestDescriptor instead')
const GetBedsRequest$json = {
  '1': 'GetBedsRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'roomId', '17': true},
  ],
  '8': [
    {'1': '_room_id'},
  ],
};

/// Descriptor for `GetBedsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedsRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRCZWRzUmVxdWVzdBIcCgdyb29tX2lkGAEgASgJSABSBnJvb21JZIgBAUIKCghfcm9vbV'
    '9pZA==');

@$core.Deprecated('Use getBedsResponseDescriptor instead')
const GetBedsResponse$json = {
  '1': 'GetBedsResponse',
  '2': [
    {'1': 'beds', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetBedsResponse.Bed', '10': 'beds'},
  ],
  '3': [GetBedsResponse_Bed$json],
};

@$core.Deprecated('Use getBedsResponseDescriptor instead')
const GetBedsResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 9, '10': 'roomId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetBedsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedsResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRCZWRzUmVzcG9uc2USPgoEYmVkcxgBIAMoCzIqLnNlcnZpY2VzLnRhc2tzX3N2Yy52MS'
    '5HZXRCZWRzUmVzcG9uc2UuQmVkUgRiZWRzGmQKA0JlZBIOCgJpZBgBIAEoCVICaWQSFwoHcm9v'
    'bV9pZBgCIAEoCVIGcm9vbUlkEhIKBG5hbWUYAyABKAlSBG5hbWUSIAoLY29uc2lzdGVuY3kYBC'
    'ABKAlSC2NvbnNpc3RlbmN5');

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
    {'1': 'beds', '3': 1, '4': 3, '5': 11, '6': '.services.tasks_svc.v1.GetBedsByRoomResponse.Bed', '10': 'beds'},
  ],
  '3': [GetBedsByRoomResponse_Bed$json],
};

@$core.Deprecated('Use getBedsByRoomResponseDescriptor instead')
const GetBedsByRoomResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'consistency', '3': 3, '4': 1, '5': 9, '10': 'consistency'},
  ],
};

/// Descriptor for `GetBedsByRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBedsByRoomResponseDescriptor = $convert.base64Decode(
    'ChVHZXRCZWRzQnlSb29tUmVzcG9uc2USRAoEYmVkcxgBIAMoCzIwLnNlcnZpY2VzLnRhc2tzX3'
    'N2Yy52MS5HZXRCZWRzQnlSb29tUmVzcG9uc2UuQmVkUgRiZWRzGksKA0JlZBIOCgJpZBgBIAEo'
    'CVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtjb25zaXN0ZW5jeRgDIAEoCVILY29uc2lzdG'
    'VuY3k=');

@$core.Deprecated('Use updateBedRequestDescriptor instead')
const UpdateBedRequest$json = {
  '1': 'UpdateBedRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'roomId', '17': true},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'name', '17': true},
    {'1': 'consistency', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'consistency', '17': true},
  ],
  '8': [
    {'1': '_room_id'},
    {'1': '_name'},
    {'1': '_consistency'},
  ],
};

/// Descriptor for `UpdateBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBedRequestDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVCZWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIcCgdyb29tX2lkGAIgASgJSABSBn'
    'Jvb21JZIgBARIXCgRuYW1lGAMgASgJSAFSBG5hbWWIAQESJQoLY29uc2lzdGVuY3kYBCABKAlI'
    'AlILY29uc2lzdGVuY3mIAQFCCgoIX3Jvb21faWRCBwoFX25hbWVCDgoMX2NvbnNpc3RlbmN5');

@$core.Deprecated('Use updateBedResponseDescriptor instead')
const UpdateBedResponse$json = {
  '1': 'UpdateBedResponse',
  '2': [
    {'1': 'conflict', '3': 1, '4': 1, '5': 11, '6': '.libs.common.v1.Conflict', '9': 0, '10': 'conflict', '17': true},
    {'1': 'consistency', '3': 2, '4': 1, '5': 9, '10': 'consistency'},
  ],
  '8': [
    {'1': '_conflict'},
  ],
};

/// Descriptor for `UpdateBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBedResponseDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVCZWRSZXNwb25zZRI5Cghjb25mbGljdBgBIAEoCzIYLmxpYnMuY29tbW9uLnYxLk'
    'NvbmZsaWN0SABSCGNvbmZsaWN0iAEBEiAKC2NvbnNpc3RlbmN5GAIgASgJUgtjb25zaXN0ZW5j'
    'eUILCglfY29uZmxpY3Q=');

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

