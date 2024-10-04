//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/room_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createRoomRequestDescriptor instead')
const CreateRoomRequest$json = {
  '1': 'CreateRoomRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ward_id', '3': 2, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

/// Descriptor for `CreateRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVSb29tUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhcKB3dhcmRfaWQYAiABKA'
    'lSBndhcmRJZA==');

@$core.Deprecated('Use createRoomResponseDescriptor instead')
const CreateRoomResponse$json = {
  '1': 'CreateRoomResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVSb29tUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getRoomRequestDescriptor instead')
const GetRoomRequest$json = {
  '1': 'GetRoomRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRSb29tUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getRoomResponseDescriptor instead')
const GetRoomResponse$json = {
  '1': 'GetRoomResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetRoomResponse.Bed', '10': 'beds'},
    {'1': 'organization_id', '3': 4, '4': 1, '5': 9, '10': 'organizationId'},
    {'1': 'ward_id', '3': 5, '4': 1, '5': 9, '10': 'wardId'},
  ],
  '3': [GetRoomResponse_Bed$json],
};

@$core.Deprecated('Use getRoomResponseDescriptor instead')
const GetRoomResponse_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRSb29tUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSPQ'
    'oEYmVkcxgDIAMoCzIpLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFJvb21SZXNwb25zZS5CZWRS'
    'BGJlZHMSJwoPb3JnYW5pemF0aW9uX2lkGAQgASgJUg5vcmdhbml6YXRpb25JZBIXCgd3YXJkX2'
    'lkGAUgASgJUgZ3YXJkSWQaKQoDQmVkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRu'
    'YW1l');

@$core.Deprecated('Use getRoomsRequestDescriptor instead')
const GetRoomsRequest$json = {
  '1': 'GetRoomsRequest',
};

/// Descriptor for `GetRoomsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRSb29tc1JlcXVlc3Q=');

@$core.Deprecated('Use getRoomsResponseDescriptor instead')
const GetRoomsResponse$json = {
  '1': 'GetRoomsResponse',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetRoomsResponse.Room', '10': 'rooms'},
  ],
  '3': [GetRoomsResponse_Room$json],
};

@$core.Deprecated('Use getRoomsResponseDescriptor instead')
const GetRoomsResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetRoomsResponse.Room.Bed', '10': 'beds'},
    {'1': 'organization_id', '3': 4, '4': 1, '5': 9, '10': 'organizationId'},
    {'1': 'ward_id', '3': 5, '4': 1, '5': 9, '10': 'wardId'},
  ],
  '3': [GetRoomsResponse_Room_Bed$json],
};

@$core.Deprecated('Use getRoomsResponseDescriptor instead')
const GetRoomsResponse_Room_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetRoomsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsResponseDescriptor = $convert.base64Decode(
    'ChBHZXRSb29tc1Jlc3BvbnNlEkEKBXJvb21zGAEgAygLMisuc2VydmljZXMudGFza19zdmMudj'
    'EuR2V0Um9vbXNSZXNwb25zZS5Sb29tUgVyb29tcxrcAQoEUm9vbRIOCgJpZBgBIAEoCVICaWQS'
    'EgoEbmFtZRgCIAEoCVIEbmFtZRJDCgRiZWRzGAMgAygLMi8uc2VydmljZXMudGFza19zdmMudj'
    'EuR2V0Um9vbXNSZXNwb25zZS5Sb29tLkJlZFIEYmVkcxInCg9vcmdhbml6YXRpb25faWQYBCAB'
    'KAlSDm9yZ2FuaXphdGlvbklkEhcKB3dhcmRfaWQYBSABKAlSBndhcmRJZBopCgNCZWQSDgoCaW'
    'QYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');

@$core.Deprecated('Use getRoomsByWardRequestDescriptor instead')
const GetRoomsByWardRequest$json = {
  '1': 'GetRoomsByWardRequest',
  '2': [
    {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

/// Descriptor for `GetRoomsByWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsByWardRequestDescriptor = $convert.base64Decode(
    'ChVHZXRSb29tc0J5V2FyZFJlcXVlc3QSFwoHd2FyZF9pZBgBIAEoCVIGd2FyZElk');

@$core.Deprecated('Use getRoomsByWardResponseDescriptor instead')
const GetRoomsByWardResponse$json = {
  '1': 'GetRoomsByWardResponse',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetRoomsByWardResponse.Room', '10': 'rooms'},
  ],
  '3': [GetRoomsByWardResponse_Room$json],
};

@$core.Deprecated('Use getRoomsByWardResponseDescriptor instead')
const GetRoomsByWardResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetRoomsByWardResponse.Room.Bed', '10': 'beds'},
    {'1': 'organization_id', '3': 4, '4': 1, '5': 9, '10': 'organizationId'},
    {'1': 'ward_id', '3': 5, '4': 1, '5': 9, '10': 'wardId'},
  ],
  '3': [GetRoomsByWardResponse_Room_Bed$json],
};

@$core.Deprecated('Use getRoomsByWardResponseDescriptor instead')
const GetRoomsByWardResponse_Room_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetRoomsByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsByWardResponseDescriptor = $convert.base64Decode(
    'ChZHZXRSb29tc0J5V2FyZFJlc3BvbnNlEkcKBXJvb21zGAEgAygLMjEuc2VydmljZXMudGFza1'
    '9zdmMudjEuR2V0Um9vbXNCeVdhcmRSZXNwb25zZS5Sb29tUgVyb29tcxriAQoEUm9vbRIOCgJp'
    'ZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRJJCgRiZWRzGAMgAygLMjUuc2VydmljZX'
    'MudGFza19zdmMudjEuR2V0Um9vbXNCeVdhcmRSZXNwb25zZS5Sb29tLkJlZFIEYmVkcxInCg9v'
    'cmdhbml6YXRpb25faWQYBCABKAlSDm9yZ2FuaXphdGlvbklkEhcKB3dhcmRfaWQYBSABKAlSBn'
    'dhcmRJZBopCgNCZWQSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');

@$core.Deprecated('Use updateRoomRequestDescriptor instead')
const UpdateRoomRequest$json = {
  '1': 'UpdateRoomRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
  ],
  '8': [
    {'1': '_name'},
  ],
};

/// Descriptor for `UpdateRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRoomRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVSb29tUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW'
    '1liAEBQgcKBV9uYW1l');

@$core.Deprecated('Use updateRoomResponseDescriptor instead')
const UpdateRoomResponse$json = {
  '1': 'UpdateRoomResponse',
};

/// Descriptor for `UpdateRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRoomResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVSb29tUmVzcG9uc2U=');

@$core.Deprecated('Use deleteRoomRequestDescriptor instead')
const DeleteRoomRequest$json = {
  '1': 'DeleteRoomRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRoomRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVSb29tUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteRoomResponseDescriptor instead')
const DeleteRoomResponse$json = {
  '1': 'DeleteRoomResponse',
};

/// Descriptor for `DeleteRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRoomResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVSb29tUmVzcG9uc2U=');

@$core.Deprecated('Use getRoomOverviewsByWardRequestDescriptor instead')
const GetRoomOverviewsByWardRequest$json = {
  '1': 'GetRoomOverviewsByWardRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRoomOverviewsByWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomOverviewsByWardRequestDescriptor = $convert.base64Decode(
    'Ch1HZXRSb29tT3ZlcnZpZXdzQnlXYXJkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getRoomOverviewsByWardResponseDescriptor instead')
const GetRoomOverviewsByWardResponse$json = {
  '1': 'GetRoomOverviewsByWardResponse',
  '2': [
    {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetRoomOverviewsByWardResponse.Room', '10': 'rooms'},
  ],
  '3': [GetRoomOverviewsByWardResponse_Room$json],
};

@$core.Deprecated('Use getRoomOverviewsByWardResponseDescriptor instead')
const GetRoomOverviewsByWardResponse_Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.services.task_svc.v1.GetRoomOverviewsByWardResponse.Room.Bed', '10': 'beds'},
  ],
  '3': [GetRoomOverviewsByWardResponse_Room_Bed$json],
};

@$core.Deprecated('Use getRoomOverviewsByWardResponseDescriptor instead')
const GetRoomOverviewsByWardResponse_Room_Bed$json = {
  '1': 'Bed',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'patient', '3': 2, '4': 1, '5': 11, '6': '.services.task_svc.v1.GetRoomOverviewsByWardResponse.Room.Bed.Patient', '9': 0, '10': 'patient', '17': true},
  ],
  '3': [GetRoomOverviewsByWardResponse_Room_Bed_Patient$json],
  '8': [
    {'1': '_patient'},
  ],
};

@$core.Deprecated('Use getRoomOverviewsByWardResponseDescriptor instead')
const GetRoomOverviewsByWardResponse_Room_Bed_Patient$json = {
  '1': 'Patient',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    {'1': 'tasks_unscheduled', '3': 3, '4': 1, '5': 13, '10': 'tasksUnscheduled'},
    {'1': 'tasks_in_progress', '3': 4, '4': 1, '5': 13, '10': 'tasksInProgress'},
    {'1': 'tasks_done', '3': 5, '4': 1, '5': 13, '10': 'tasksDone'},
  ],
};

/// Descriptor for `GetRoomOverviewsByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomOverviewsByWardResponseDescriptor = $convert.base64Decode(
    'Ch5HZXRSb29tT3ZlcnZpZXdzQnlXYXJkUmVzcG9uc2USTwoFcm9vbXMYASADKAsyOS5zZXJ2aW'
    'Nlcy50YXNrX3N2Yy52MS5HZXRSb29tT3ZlcnZpZXdzQnlXYXJkUmVzcG9uc2UuUm9vbVIFcm9v'
    'bXMa6wMKBFJvb20SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSUQoEYmVkcx'
    'gDIAMoCzI9LnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFJvb21PdmVydmlld3NCeVdhcmRSZXNw'
    'b25zZS5Sb29tLkJlZFIEYmVkcxrrAgoDQmVkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAMgAS'
    'gJUgRuYW1lEmQKB3BhdGllbnQYAiABKAsyRS5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRSb29t'
    'T3ZlcnZpZXdzQnlXYXJkUmVzcG9uc2UuUm9vbS5CZWQuUGF0aWVudEgAUgdwYXRpZW50iAEBGs'
    '0BCgdQYXRpZW50Eg4KAmlkGAEgASgJUgJpZBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVy'
    'GAIgASgJUhdodW1hblJlYWRhYmxlSWRlbnRpZmllchIrChF0YXNrc191bnNjaGVkdWxlZBgDIA'
    'EoDVIQdGFza3NVbnNjaGVkdWxlZBIqChF0YXNrc19pbl9wcm9ncmVzcxgEIAEoDVIPdGFza3NJ'
    'blByb2dyZXNzEh0KCnRhc2tzX2RvbmUYBSABKA1SCXRhc2tzRG9uZUIKCghfcGF0aWVudA==');

