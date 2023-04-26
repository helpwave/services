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
  ],
};

/// Descriptor for `CreateRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVSb29tUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use createRoomResponseDescriptor instead')
const CreateRoomResponse$json = const {
  '1': 'CreateRoomResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVSb29tUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');
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
    const {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomResponse.Bed', '10': 'beds'},
    const {'1': 'organization_id', '3': 4, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'ward_id', '3': 5, '4': 1, '5': 9, '10': 'wardId'},
  ],
  '3': const [GetRoomResponse_Bed$json],
};

@$core.Deprecated('Use getRoomResponseDescriptor instead')
const GetRoomResponse_Bed$json = const {
  '1': 'Bed',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomResponseDescriptor = $convert.base64Decode('Cg9HZXRSb29tUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSQwoEYmVkcxgDIAMoCzIvLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFJvb21SZXNwb25zZS5CZWRSBGJlZHMSJwoPb3JnYW5pemF0aW9uX2lkGAQgASgJUg5vcmdhbml6YXRpb25JZBIXCgd3YXJkX2lkGAUgASgJUgZ3YXJkSWQaFQoDQmVkEg4KAmlkGAEgASgJUgJpZA==');
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
    const {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomsResponse.Room', '10': 'rooms'},
  ],
  '3': const [GetRoomsResponse_Room$json],
};

@$core.Deprecated('Use getRoomsResponseDescriptor instead')
const GetRoomsResponse_Room$json = const {
  '1': 'Room',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomsResponse.Room.Bed', '10': 'beds'},
    const {'1': 'organization_id', '3': 4, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'ward_id', '3': 5, '4': 1, '5': 9, '10': 'wardId'},
  ],
  '3': const [GetRoomsResponse_Room_Bed$json],
};

@$core.Deprecated('Use getRoomsResponseDescriptor instead')
const GetRoomsResponse_Room_Bed$json = const {
  '1': 'Bed',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRoomsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsResponseDescriptor = $convert.base64Decode('ChBHZXRSb29tc1Jlc3BvbnNlEkcKBXJvb21zGAEgAygLMjEucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0Um9vbXNSZXNwb25zZS5Sb29tUgVyb29tcxrOAQoEUm9vbRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRJJCgRiZWRzGAMgAygLMjUucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0Um9vbXNSZXNwb25zZS5Sb29tLkJlZFIEYmVkcxInCg9vcmdhbml6YXRpb25faWQYBCABKAlSDm9yZ2FuaXphdGlvbklkEhcKB3dhcmRfaWQYBSABKAlSBndhcmRJZBoVCgNCZWQSDgoCaWQYASABKAlSAmlk');
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
    const {'1': 'rooms', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomsByWardResponse.Room', '10': 'rooms'},
  ],
  '3': const [GetRoomsByWardResponse_Room$json],
};

@$core.Deprecated('Use getRoomsByWardResponseDescriptor instead')
const GetRoomsByWardResponse_Room$json = const {
  '1': 'Room',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'beds', '3': 3, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetRoomsByWardResponse.Room.Bed', '10': 'beds'},
    const {'1': 'organization_id', '3': 4, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'ward_id', '3': 5, '4': 1, '5': 9, '10': 'wardId'},
  ],
  '3': const [GetRoomsByWardResponse_Room_Bed$json],
};

@$core.Deprecated('Use getRoomsByWardResponseDescriptor instead')
const GetRoomsByWardResponse_Room_Bed$json = const {
  '1': 'Bed',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetRoomsByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomsByWardResponseDescriptor = $convert.base64Decode('ChZHZXRSb29tc0J5V2FyZFJlc3BvbnNlEk0KBXJvb21zGAEgAygLMjcucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0Um9vbXNCeVdhcmRSZXNwb25zZS5Sb29tUgVyb29tcxrUAQoEUm9vbRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRJPCgRiZWRzGAMgAygLMjsucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0Um9vbXNCeVdhcmRSZXNwb25zZS5Sb29tLkJlZFIEYmVkcxInCg9vcmdhbml6YXRpb25faWQYBCABKAlSDm9yZ2FuaXphdGlvbklkEhcKB3dhcmRfaWQYBSABKAlSBndhcmRJZBoVCgNCZWQSDgoCaWQYASABKAlSAmlk');
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
@$core.Deprecated('Use deleteRoomRequestDescriptor instead')
const DeleteRoomRequest$json = const {
  '1': 'DeleteRoomRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRoomRequestDescriptor = $convert.base64Decode('ChFEZWxldGVSb29tUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use deleteRoomResponseDescriptor instead')
const DeleteRoomResponse$json = const {
  '1': 'DeleteRoomResponse',
};

/// Descriptor for `DeleteRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRoomResponseDescriptor = $convert.base64Decode('ChJEZWxldGVSb29tUmVzcG9uc2U=');
const $core.Map<$core.String, $core.dynamic> RoomServiceBase$json = const {
  '1': 'RoomService',
  '2': const [
    const {'1': 'CreateRoom', '2': '.proto.services.task_svc.v1.CreateRoomRequest', '3': '.proto.services.task_svc.v1.CreateRoomResponse', '4': const {}},
    const {'1': 'GetRoom', '2': '.proto.services.task_svc.v1.GetRoomRequest', '3': '.proto.services.task_svc.v1.GetRoomResponse', '4': const {}},
    const {'1': 'UpdateRoom', '2': '.proto.services.task_svc.v1.UpdateRoomRequest', '3': '.proto.services.task_svc.v1.UpdateRoomResponse', '4': const {}},
    const {'1': 'DeleteRoom', '2': '.proto.services.task_svc.v1.DeleteRoomRequest', '3': '.proto.services.task_svc.v1.DeleteRoomResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use roomServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> RoomServiceBase$messageJson = const {
  '.proto.services.task_svc.v1.CreateRoomRequest': CreateRoomRequest$json,
  '.proto.services.task_svc.v1.CreateRoomResponse': CreateRoomResponse$json,
  '.proto.services.task_svc.v1.GetRoomRequest': GetRoomRequest$json,
  '.proto.services.task_svc.v1.GetRoomResponse': GetRoomResponse$json,
  '.proto.services.task_svc.v1.GetRoomResponse.Bed': GetRoomResponse_Bed$json,
  '.proto.services.task_svc.v1.UpdateRoomRequest': UpdateRoomRequest$json,
  '.proto.services.task_svc.v1.UpdateRoomResponse': UpdateRoomResponse$json,
  '.proto.services.task_svc.v1.DeleteRoomRequest': DeleteRoomRequest$json,
  '.proto.services.task_svc.v1.DeleteRoomResponse': DeleteRoomResponse$json,
};

/// Descriptor for `RoomService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List roomServiceDescriptor = $convert.base64Decode('CgtSb29tU2VydmljZRJtCgpDcmVhdGVSb29tEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3JlYXRlUm9vbVJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVSb29tUmVzcG9uc2UiABJkCgdHZXRSb29tEioucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0Um9vbVJlcXVlc3QaKy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRSb29tUmVzcG9uc2UiABJtCgpVcGRhdGVSb29tEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlUm9vbVJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVSb29tUmVzcG9uc2UiABJtCgpEZWxldGVSb29tEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuRGVsZXRlUm9vbVJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5EZWxldGVSb29tUmVzcG9uc2UiAA==');
