///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/room_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createRoomRequestDescriptor instead')
const CreateRoomRequest$json = const {
  '1': 'CreateRoomRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'amount_of_beds', '3': 2, '4': 1, '5': 13, '10': 'amountOfBeds'},
  ],
};

/// Descriptor for `CreateRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVSb29tUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEiQKDmFtb3VudF9vZl9iZWRzGAIgASgNUgxhbW91bnRPZkJlZHM=');
@$core.Deprecated('Use createRoomResponseDescriptor instead')
const CreateRoomResponse$json = const {
  '1': 'CreateRoomResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVSb29tUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getRoomBedOfRoomDescriptor instead')
const GetRoomBedOfRoom$json = const {
  '1': 'GetRoomBedOfRoom',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRoomBedOfRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomBedOfRoomDescriptor = $convert.base64Decode('ChBHZXRSb29tQmVkT2ZSb29tEg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use getRoomRequestDescriptor instead')
const GetRoomRequest$json = const {
  '1': 'GetRoomRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomRequestDescriptor = $convert.base64Decode('Cg5HZXRSb29tUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getRoomResponseDescriptor instead')
const GetRoomResponse$json = const {
  '1': 'GetRoomResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomBedOfRoom', '10': 'beds'},
  ],
};

/// Descriptor for `GetRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomResponseDescriptor = $convert.base64Decode('Cg9HZXRSb29tUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSQAoEYmVkcxgDIAMoCzIsLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFJvb21CZWRPZlJvb21SBGJlZHM=');
@$core.Deprecated('Use getRoomsBedOfRoomsDescriptor instead')
const GetRoomsBedOfRooms$json = const {
  '1': 'GetRoomsBedOfRooms',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRoomsBedOfRooms`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsBedOfRoomsDescriptor = $convert.base64Decode('ChJHZXRSb29tc0JlZE9mUm9vbXMSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getRoomsRoomDescriptor instead')
const GetRoomsRoom$json = const {
  '1': 'GetRoomsRoom',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomsBedOfRooms', '10': 'beds'},
  ],
};

/// Descriptor for `GetRoomsRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsRoomDescriptor = $convert.base64Decode('CgxHZXRSb29tc1Jvb20SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSQgoEYmVkcxgDIAMoCzIuLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFJvb21zQmVkT2ZSb29tc1IEYmVkcw==');
@$core.Deprecated('Use getRoomsRequestDescriptor instead')
const GetRoomsRequest$json = const {
  '1': 'GetRoomsRequest',
};

/// Descriptor for `GetRoomsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsRequestDescriptor = $convert.base64Decode('Cg9HZXRSb29tc1JlcXVlc3Q=');
@$core.Deprecated('Use getRoomsResponseDescriptor instead')
const GetRoomsResponse$json = const {
  '1': 'GetRoomsResponse',
  '2': const [
    const {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomsRoom', '10': 'rooms'},
  ],
};

/// Descriptor for `GetRoomsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsResponseDescriptor = $convert.base64Decode('ChBHZXRSb29tc1Jlc3BvbnNlEj4KBXJvb21zGAEgAygLMigucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0Um9vbXNSb29tUgVyb29tcw==');
@$core.Deprecated('Use getRoomsByWardBedOfRoomsDescriptor instead')
const GetRoomsByWardBedOfRooms$json = const {
  '1': 'GetRoomsByWardBedOfRooms',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRoomsByWardBedOfRooms`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsByWardBedOfRoomsDescriptor = $convert.base64Decode('ChhHZXRSb29tc0J5V2FyZEJlZE9mUm9vbXMSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getRoomsByWardRoomDescriptor instead')
const GetRoomsByWardRoom$json = const {
  '1': 'GetRoomsByWardRoom',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomsBedOfRooms', '10': 'beds'},
  ],
};

/// Descriptor for `GetRoomsByWardRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsByWardRoomDescriptor = $convert.base64Decode('ChJHZXRSb29tc0J5V2FyZFJvb20SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSQgoEYmVkcxgDIAMoCzIuLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFJvb21zQmVkT2ZSb29tc1IEYmVkcw==');
@$core.Deprecated('Use getRoomsByWardRequestDescriptor instead')
const GetRoomsByWardRequest$json = const {
  '1': 'GetRoomsByWardRequest',
  '2': const [
    const {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

/// Descriptor for `GetRoomsByWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsByWardRequestDescriptor = $convert.base64Decode('ChVHZXRSb29tc0J5V2FyZFJlcXVlc3QSFwoHd2FyZF9pZBgBIAEoCVIGd2FyZElk');
@$core.Deprecated('Use getRoomsByWardResponseDescriptor instead')
const GetRoomsByWardResponse$json = const {
  '1': 'GetRoomsByWardResponse',
  '2': const [
    const {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomsRoom', '10': 'rooms'},
  ],
};

/// Descriptor for `GetRoomsByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsByWardResponseDescriptor = $convert.base64Decode('ChZHZXRSb29tc0J5V2FyZFJlc3BvbnNlEj4KBXJvb21zGAEgAygLMigucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0Um9vbXNSb29tUgVyb29tcw==');
@$core.Deprecated('Use updateRoomRequestDescriptor instead')
const UpdateRoomRequest$json = const {
  '1': 'UpdateRoomRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
  ],
  '8': const [
    const {'1': '_name'},
  ],
};

/// Descriptor for `UpdateRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRoomRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVSb29tUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW1liAEBQgcKBV9uYW1l');
@$core.Deprecated('Use updateRoomResponseDescriptor instead')
const UpdateRoomResponse$json = const {
  '1': 'UpdateRoomResponse',
};

/// Descriptor for `UpdateRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRoomResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVSb29tUmVzcG9uc2U=');
@$core.Deprecated('Use addBedsToRoomRequestDescriptor instead')
const AddBedsToRoomRequest$json = const {
  '1': 'AddBedsToRoomRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'amount_of_beds', '3': 3, '4': 1, '5': 13, '10': 'amountOfBeds'},
  ],
};

/// Descriptor for `AddBedsToRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addBedsToRoomRequestDescriptor = $convert.base64Decode('ChRBZGRCZWRzVG9Sb29tUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSJAoOYW1vdW50X29mX2JlZHMYAyABKA1SDGFtb3VudE9mQmVkcw==');
@$core.Deprecated('Use addBedsToRoomResponseDescriptor instead')
const AddBedsToRoomResponse$json = const {
  '1': 'AddBedsToRoomResponse',
};

/// Descriptor for `AddBedsToRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addBedsToRoomResponseDescriptor = $convert.base64Decode('ChVBZGRCZWRzVG9Sb29tUmVzcG9uc2U=');
const $core.Map<$core.String, $core.dynamic> RoomServiceBase$json = const {
  '1': 'RoomService',
  '2': const [
    const {'1': 'CreateRoom', '2': '.proto.services.task_svc.v1.CreateRoomRequest', '3': '.proto.services.task_svc.v1.CreateRoomResponse', '4': const {}},
    const {'1': 'GetRoom', '2': '.proto.services.task_svc.v1.GetRoomRequest', '3': '.proto.services.task_svc.v1.GetRoomResponse', '4': const {}},
    const {'1': 'UpdateRoom', '2': '.proto.services.task_svc.v1.UpdateRoomRequest', '3': '.proto.services.task_svc.v1.UpdateRoomResponse', '4': const {}},
    const {'1': 'AddBedsToRoom', '2': '.proto.services.task_svc.v1.AddBedsToRoomRequest', '3': '.proto.services.task_svc.v1.AddBedsToRoomResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use roomServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> RoomServiceBase$messageJson = const {
  '.proto.services.task_svc.v1.CreateRoomRequest': CreateRoomRequest$json,
  '.proto.services.task_svc.v1.CreateRoomResponse': CreateRoomResponse$json,
  '.proto.services.task_svc.v1.GetRoomRequest': GetRoomRequest$json,
  '.proto.services.task_svc.v1.GetRoomResponse': GetRoomResponse$json,
  '.proto.services.task_svc.v1.GetRoomBedOfRoom': GetRoomBedOfRoom$json,
  '.proto.services.task_svc.v1.UpdateRoomRequest': UpdateRoomRequest$json,
  '.proto.services.task_svc.v1.UpdateRoomResponse': UpdateRoomResponse$json,
  '.proto.services.task_svc.v1.AddBedsToRoomRequest': AddBedsToRoomRequest$json,
  '.proto.services.task_svc.v1.AddBedsToRoomResponse': AddBedsToRoomResponse$json,
};

/// Descriptor for `RoomService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List roomServiceDescriptor = $convert.base64Decode('CgtSb29tU2VydmljZRJtCgpDcmVhdGVSb29tEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3JlYXRlUm9vbVJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVSb29tUmVzcG9uc2UiABJkCgdHZXRSb29tEioucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0Um9vbVJlcXVlc3QaKy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRSb29tUmVzcG9uc2UiABJtCgpVcGRhdGVSb29tEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlUm9vbVJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVSb29tUmVzcG9uc2UiABJ2Cg1BZGRCZWRzVG9Sb29tEjAucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQWRkQmVkc1RvUm9vbVJlcXVlc3QaMS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5BZGRCZWRzVG9Sb29tUmVzcG9uc2UiAA==');
