//
//  Generated code. Do not modify.
//  source: proto/services/emergency_room_svc/v1/emergency_room_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pointDescriptor instead')
const Point$json = {
  '1': 'Point',
  '2': [
    {'1': 'lat', '3': 1, '4': 1, '5': 2, '10': 'lat'},
    {'1': 'long', '3': 2, '4': 1, '5': 2, '10': 'long'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode(
    'CgVQb2ludBIQCgNsYXQYASABKAJSA2xhdBISCgRsb25nGAIgASgCUgRsb25n');

@$core.Deprecated('Use createERRequestDescriptor instead')
const CreateERRequest$json = {
  '1': 'CreateERRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'location', '3': 2, '4': 1, '5': 11, '6': '.proto.services.emergency_room_svc.v1.Point', '10': 'location'},
    {'1': 'displayable_address', '3': 3, '4': 1, '5': 9, '10': 'displayableAddress'},
    {'1': 'open', '3': 4, '4': 1, '5': 8, '10': 'open'},
    {'1': 'utilization', '3': 5, '4': 1, '5': 5, '10': 'utilization'},
    {'1': 'departments', '3': 6, '4': 3, '5': 9, '10': 'departments'},
  ],
};

/// Descriptor for `CreateERRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createERRequestDescriptor = $convert.base64Decode(
    'Cg9DcmVhdGVFUlJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRJHCghsb2NhdGlvbhgCIAEoCz'
    'IrLnByb3RvLnNlcnZpY2VzLmVtZXJnZW5jeV9yb29tX3N2Yy52MS5Qb2ludFIIbG9jYXRpb24S'
    'LwoTZGlzcGxheWFibGVfYWRkcmVzcxgDIAEoCVISZGlzcGxheWFibGVBZGRyZXNzEhIKBG9wZW'
    '4YBCABKAhSBG9wZW4SIAoLdXRpbGl6YXRpb24YBSABKAVSC3V0aWxpemF0aW9uEiAKC2RlcGFy'
    'dG1lbnRzGAYgAygJUgtkZXBhcnRtZW50cw==');

@$core.Deprecated('Use createERResponseDescriptor instead')
const CreateERResponse$json = {
  '1': 'CreateERResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'location', '3': 3, '4': 1, '5': 11, '6': '.proto.services.emergency_room_svc.v1.Point', '10': 'location'},
    {'1': 'displayable_address', '3': 4, '4': 1, '5': 9, '10': 'displayableAddress'},
    {'1': 'open', '3': 5, '4': 1, '5': 8, '10': 'open'},
    {'1': 'utilization', '3': 6, '4': 1, '5': 5, '10': 'utilization'},
    {'1': 'departments', '3': 7, '4': 3, '5': 11, '6': '.proto.services.emergency_room_svc.v1.DepartmentBase', '10': 'departments'},
  ],
};

/// Descriptor for `CreateERResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createERResponseDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVFUlJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEk'
    'cKCGxvY2F0aW9uGAMgASgLMisucHJvdG8uc2VydmljZXMuZW1lcmdlbmN5X3Jvb21fc3ZjLnYx'
    'LlBvaW50Ughsb2NhdGlvbhIvChNkaXNwbGF5YWJsZV9hZGRyZXNzGAQgASgJUhJkaXNwbGF5YW'
    'JsZUFkZHJlc3MSEgoEb3BlbhgFIAEoCFIEb3BlbhIgCgt1dGlsaXphdGlvbhgGIAEoBVILdXRp'
    'bGl6YXRpb24SVgoLZGVwYXJ0bWVudHMYByADKAsyNC5wcm90by5zZXJ2aWNlcy5lbWVyZ2VuY3'
    'lfcm9vbV9zdmMudjEuRGVwYXJ0bWVudEJhc2VSC2RlcGFydG1lbnRz');

@$core.Deprecated('Use getERRequestDescriptor instead')
const GetERRequest$json = {
  '1': 'GetERRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetERRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getERRequestDescriptor = $convert.base64Decode(
    'CgxHZXRFUlJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use departmentBaseDescriptor instead')
const DepartmentBase$json = {
  '1': 'DepartmentBase',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `DepartmentBase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List departmentBaseDescriptor = $convert.base64Decode(
    'Cg5EZXBhcnRtZW50QmFzZRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use getERResponseDescriptor instead')
const GetERResponse$json = {
  '1': 'GetERResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'location', '3': 3, '4': 1, '5': 11, '6': '.proto.services.emergency_room_svc.v1.Point', '10': 'location'},
    {'1': 'displayable_address', '3': 4, '4': 1, '5': 9, '10': 'displayableAddress'},
    {'1': 'open', '3': 5, '4': 1, '5': 8, '10': 'open'},
    {'1': 'utilization', '3': 6, '4': 1, '5': 5, '10': 'utilization'},
    {'1': 'departments', '3': 7, '4': 3, '5': 11, '6': '.proto.services.emergency_room_svc.v1.DepartmentBase', '10': 'departments'},
  ],
};

/// Descriptor for `GetERResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getERResponseDescriptor = $convert.base64Decode(
    'Cg1HZXRFUlJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEkcKCG'
    'xvY2F0aW9uGAMgASgLMisucHJvdG8uc2VydmljZXMuZW1lcmdlbmN5X3Jvb21fc3ZjLnYxLlBv'
    'aW50Ughsb2NhdGlvbhIvChNkaXNwbGF5YWJsZV9hZGRyZXNzGAQgASgJUhJkaXNwbGF5YWJsZU'
    'FkZHJlc3MSEgoEb3BlbhgFIAEoCFIEb3BlbhIgCgt1dGlsaXphdGlvbhgGIAEoBVILdXRpbGl6'
    'YXRpb24SVgoLZGVwYXJ0bWVudHMYByADKAsyNC5wcm90by5zZXJ2aWNlcy5lbWVyZ2VuY3lfcm'
    '9vbV9zdmMudjEuRGVwYXJ0bWVudEJhc2VSC2RlcGFydG1lbnRz');

@$core.Deprecated('Use inclusiveIntIntervalDescriptor instead')
const InclusiveIntInterval$json = {
  '1': 'InclusiveIntInterval',
  '2': [
    {'1': 'min', '3': 1, '4': 1, '5': 5, '9': 0, '10': 'min', '17': true},
    {'1': 'max', '3': 2, '4': 1, '5': 5, '9': 1, '10': 'max', '17': true},
  ],
  '8': [
    {'1': '_min'},
    {'1': '_max'},
  ],
};

/// Descriptor for `InclusiveIntInterval`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inclusiveIntIntervalDescriptor = $convert.base64Decode(
    'ChRJbmNsdXNpdmVJbnRJbnRlcnZhbBIVCgNtaW4YASABKAVIAFIDbWluiAEBEhUKA21heBgCIA'
    'EoBUgBUgNtYXiIAQFCBgoEX21pbkIGCgRfbWF4');

@$core.Deprecated('Use pagedRequestDescriptor instead')
const PagedRequest$json = {
  '1': 'PagedRequest',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `PagedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pagedRequestDescriptor = $convert.base64Decode(
    'CgxQYWdlZFJlcXVlc3QSEgoEcGFnZRgBIAEoBVIEcGFnZRIbCglwYWdlX3NpemUYAiABKAVSCH'
    'BhZ2VTaXpl');

@$core.Deprecated('Use pageInfoDescriptor instead')
const PageInfo$json = {
  '1': 'PageInfo',
  '2': [
    {'1': 'page', '3': 1, '4': 1, '5': 5, '10': 'page'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'total_size', '3': 3, '4': 1, '5': 3, '10': 'totalSize'},
    {'1': 'last_page', '3': 4, '4': 1, '5': 8, '10': 'lastPage'},
  ],
};

/// Descriptor for `PageInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pageInfoDescriptor = $convert.base64Decode(
    'CghQYWdlSW5mbxISCgRwYWdlGAEgASgFUgRwYWdlEhsKCXBhZ2Vfc2l6ZRgCIAEoBVIIcGFnZV'
    'NpemUSHQoKdG90YWxfc2l6ZRgDIAEoA1IJdG90YWxTaXplEhsKCWxhc3RfcGFnZRgEIAEoCFII'
    'bGFzdFBhZ2U=');

@$core.Deprecated('Use getERsRequestDescriptor instead')
const GetERsRequest$json = {
  '1': 'GetERsRequest',
  '2': [
    {'1': 'paged_request', '3': 1, '4': 1, '5': 11, '6': '.proto.services.emergency_room_svc.v1.PagedRequest', '9': 0, '10': 'pagedRequest', '17': true},
    {'1': 'open', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'open', '17': true},
    {'1': 'utilization', '3': 3, '4': 1, '5': 11, '6': '.proto.services.emergency_room_svc.v1.InclusiveIntInterval', '9': 2, '10': 'utilization', '17': true},
    {'1': 'location', '3': 4, '4': 1, '5': 11, '6': '.proto.services.emergency_room_svc.v1.Point', '9': 3, '10': 'location', '17': true},
  ],
  '8': [
    {'1': '_paged_request'},
    {'1': '_open'},
    {'1': '_utilization'},
    {'1': '_location'},
  ],
};

/// Descriptor for `GetERsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getERsRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRFUnNSZXF1ZXN0ElwKDXBhZ2VkX3JlcXVlc3QYASABKAsyMi5wcm90by5zZXJ2aWNlcy'
    '5lbWVyZ2VuY3lfcm9vbV9zdmMudjEuUGFnZWRSZXF1ZXN0SABSDHBhZ2VkUmVxdWVzdIgBARIX'
    'CgRvcGVuGAIgASgISAFSBG9wZW6IAQESYQoLdXRpbGl6YXRpb24YAyABKAsyOi5wcm90by5zZX'
    'J2aWNlcy5lbWVyZ2VuY3lfcm9vbV9zdmMudjEuSW5jbHVzaXZlSW50SW50ZXJ2YWxIAlILdXRp'
    'bGl6YXRpb26IAQESTAoIbG9jYXRpb24YBCABKAsyKy5wcm90by5zZXJ2aWNlcy5lbWVyZ2VuY3'
    'lfcm9vbV9zdmMudjEuUG9pbnRIA1IIbG9jYXRpb26IAQFCEAoOX3BhZ2VkX3JlcXVlc3RCBwoF'
    'X29wZW5CDgoMX3V0aWxpemF0aW9uQgsKCV9sb2NhdGlvbg==');

@$core.Deprecated('Use getERsResponseDescriptor instead')
const GetERsResponse$json = {
  '1': 'GetERsResponse',
  '2': [
    {'1': 'page_info', '3': 1, '4': 1, '5': 11, '6': '.proto.services.emergency_room_svc.v1.PageInfo', '10': 'pageInfo'},
    {'1': 'emergency_rooms', '3': 2, '4': 3, '5': 11, '6': '.proto.services.emergency_room_svc.v1.GetERResponse', '10': 'emergencyRooms'},
  ],
};

/// Descriptor for `GetERsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getERsResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRFUnNSZXNwb25zZRJLCglwYWdlX2luZm8YASABKAsyLi5wcm90by5zZXJ2aWNlcy5lbW'
    'VyZ2VuY3lfcm9vbV9zdmMudjEuUGFnZUluZm9SCHBhZ2VJbmZvElwKD2VtZXJnZW5jeV9yb29t'
    'cxgCIAMoCzIzLnByb3RvLnNlcnZpY2VzLmVtZXJnZW5jeV9yb29tX3N2Yy52MS5HZXRFUlJlc3'
    'BvbnNlUg5lbWVyZ2VuY3lSb29tcw==');

@$core.Deprecated('Use updateERRequestDescriptor instead')
const UpdateERRequest$json = {
  '1': 'UpdateERRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    {'1': 'location', '3': 3, '4': 1, '5': 11, '6': '.proto.services.emergency_room_svc.v1.Point', '9': 1, '10': 'location', '17': true},
    {'1': 'displayable_address', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'displayableAddress', '17': true},
    {'1': 'open', '3': 5, '4': 1, '5': 8, '9': 3, '10': 'open', '17': true},
    {'1': 'utilization', '3': 6, '4': 1, '5': 5, '9': 4, '10': 'utilization', '17': true},
  ],
  '8': [
    {'1': '_name'},
    {'1': '_location'},
    {'1': '_displayable_address'},
    {'1': '_open'},
    {'1': '_utilization'},
  ],
};

/// Descriptor for `UpdateERRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateERRequestDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVFUlJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhcKBG5hbWUYAiABKAlIAFIEbmFtZY'
    'gBARJMCghsb2NhdGlvbhgDIAEoCzIrLnByb3RvLnNlcnZpY2VzLmVtZXJnZW5jeV9yb29tX3N2'
    'Yy52MS5Qb2ludEgBUghsb2NhdGlvbogBARI0ChNkaXNwbGF5YWJsZV9hZGRyZXNzGAQgASgJSA'
    'JSEmRpc3BsYXlhYmxlQWRkcmVzc4gBARIXCgRvcGVuGAUgASgISANSBG9wZW6IAQESJQoLdXRp'
    'bGl6YXRpb24YBiABKAVIBFILdXRpbGl6YXRpb26IAQFCBwoFX25hbWVCCwoJX2xvY2F0aW9uQh'
    'YKFF9kaXNwbGF5YWJsZV9hZGRyZXNzQgcKBV9vcGVuQg4KDF91dGlsaXphdGlvbg==');

@$core.Deprecated('Use updateERResponseDescriptor instead')
const UpdateERResponse$json = {
  '1': 'UpdateERResponse',
};

/// Descriptor for `UpdateERResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateERResponseDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVFUlJlc3BvbnNl');

@$core.Deprecated('Use addDepartmentsToERRequestDescriptor instead')
const AddDepartmentsToERRequest$json = {
  '1': 'AddDepartmentsToERRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'departments', '3': 2, '4': 3, '5': 9, '10': 'departments'},
  ],
};

/// Descriptor for `AddDepartmentsToERRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDepartmentsToERRequestDescriptor = $convert.base64Decode(
    'ChlBZGREZXBhcnRtZW50c1RvRVJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIgCgtkZXBhcnRtZW'
    '50cxgCIAMoCVILZGVwYXJ0bWVudHM=');

@$core.Deprecated('Use addDepartmentsToERResponseDescriptor instead')
const AddDepartmentsToERResponse$json = {
  '1': 'AddDepartmentsToERResponse',
};

/// Descriptor for `AddDepartmentsToERResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDepartmentsToERResponseDescriptor = $convert.base64Decode(
    'ChpBZGREZXBhcnRtZW50c1RvRVJSZXNwb25zZQ==');

@$core.Deprecated('Use removeDepartmentsFromERRequestDescriptor instead')
const RemoveDepartmentsFromERRequest$json = {
  '1': 'RemoveDepartmentsFromERRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'departments', '3': 2, '4': 3, '5': 9, '10': 'departments'},
  ],
};

/// Descriptor for `RemoveDepartmentsFromERRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeDepartmentsFromERRequestDescriptor = $convert.base64Decode(
    'Ch5SZW1vdmVEZXBhcnRtZW50c0Zyb21FUlJlcXVlc3QSDgoCaWQYASABKAlSAmlkEiAKC2RlcG'
    'FydG1lbnRzGAIgAygJUgtkZXBhcnRtZW50cw==');

@$core.Deprecated('Use removeDepartmentsFromERResponseDescriptor instead')
const RemoveDepartmentsFromERResponse$json = {
  '1': 'RemoveDepartmentsFromERResponse',
};

/// Descriptor for `RemoveDepartmentsFromERResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeDepartmentsFromERResponseDescriptor = $convert.base64Decode(
    'Ch9SZW1vdmVEZXBhcnRtZW50c0Zyb21FUlJlc3BvbnNl');

@$core.Deprecated('Use deleteERRequestDescriptor instead')
const DeleteERRequest$json = {
  '1': 'DeleteERRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteERRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteERRequestDescriptor = $convert.base64Decode(
    'Cg9EZWxldGVFUlJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use deleteERResponseDescriptor instead')
const DeleteERResponse$json = {
  '1': 'DeleteERResponse',
};

/// Descriptor for `DeleteERResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteERResponseDescriptor = $convert.base64Decode(
    'ChBEZWxldGVFUlJlc3BvbnNl');

const $core.Map<$core.String, $core.dynamic> EmergencyRoomServiceBase$json = {
  '1': 'EmergencyRoomService',
  '2': [
    {'1': 'CreateER', '2': '.proto.services.emergency_room_svc.v1.CreateERRequest', '3': '.proto.services.emergency_room_svc.v1.CreateERResponse', '4': {}},
    {'1': 'GetER', '2': '.proto.services.emergency_room_svc.v1.GetERRequest', '3': '.proto.services.emergency_room_svc.v1.GetERResponse', '4': {}},
    {'1': 'GetERs', '2': '.proto.services.emergency_room_svc.v1.GetERsRequest', '3': '.proto.services.emergency_room_svc.v1.GetERsResponse', '4': {}},
    {'1': 'UpdateER', '2': '.proto.services.emergency_room_svc.v1.UpdateERRequest', '3': '.proto.services.emergency_room_svc.v1.UpdateERResponse', '4': {}},
    {'1': 'AddDepartmentsToER', '2': '.proto.services.emergency_room_svc.v1.AddDepartmentsToERRequest', '3': '.proto.services.emergency_room_svc.v1.AddDepartmentsToERResponse', '4': {}},
    {'1': 'RemoveDepartmentsFromER', '2': '.proto.services.emergency_room_svc.v1.RemoveDepartmentsFromERRequest', '3': '.proto.services.emergency_room_svc.v1.RemoveDepartmentsFromERResponse', '4': {}},
    {'1': 'DeleteER', '2': '.proto.services.emergency_room_svc.v1.DeleteERRequest', '3': '.proto.services.emergency_room_svc.v1.DeleteERResponse', '4': {}},
  ],
};

@$core.Deprecated('Use emergencyRoomServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> EmergencyRoomServiceBase$messageJson = {
  '.proto.services.emergency_room_svc.v1.CreateERRequest': CreateERRequest$json,
  '.proto.services.emergency_room_svc.v1.Point': Point$json,
  '.proto.services.emergency_room_svc.v1.CreateERResponse': CreateERResponse$json,
  '.proto.services.emergency_room_svc.v1.DepartmentBase': DepartmentBase$json,
  '.proto.services.emergency_room_svc.v1.GetERRequest': GetERRequest$json,
  '.proto.services.emergency_room_svc.v1.GetERResponse': GetERResponse$json,
  '.proto.services.emergency_room_svc.v1.GetERsRequest': GetERsRequest$json,
  '.proto.services.emergency_room_svc.v1.PagedRequest': PagedRequest$json,
  '.proto.services.emergency_room_svc.v1.InclusiveIntInterval': InclusiveIntInterval$json,
  '.proto.services.emergency_room_svc.v1.GetERsResponse': GetERsResponse$json,
  '.proto.services.emergency_room_svc.v1.PageInfo': PageInfo$json,
  '.proto.services.emergency_room_svc.v1.UpdateERRequest': UpdateERRequest$json,
  '.proto.services.emergency_room_svc.v1.UpdateERResponse': UpdateERResponse$json,
  '.proto.services.emergency_room_svc.v1.AddDepartmentsToERRequest': AddDepartmentsToERRequest$json,
  '.proto.services.emergency_room_svc.v1.AddDepartmentsToERResponse': AddDepartmentsToERResponse$json,
  '.proto.services.emergency_room_svc.v1.RemoveDepartmentsFromERRequest': RemoveDepartmentsFromERRequest$json,
  '.proto.services.emergency_room_svc.v1.RemoveDepartmentsFromERResponse': RemoveDepartmentsFromERResponse$json,
  '.proto.services.emergency_room_svc.v1.DeleteERRequest': DeleteERRequest$json,
  '.proto.services.emergency_room_svc.v1.DeleteERResponse': DeleteERResponse$json,
};

/// Descriptor for `EmergencyRoomService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List emergencyRoomServiceDescriptor = $convert.base64Decode(
    'ChRFbWVyZ2VuY3lSb29tU2VydmljZRJ7CghDcmVhdGVFUhI1LnByb3RvLnNlcnZpY2VzLmVtZX'
    'JnZW5jeV9yb29tX3N2Yy52MS5DcmVhdGVFUlJlcXVlc3QaNi5wcm90by5zZXJ2aWNlcy5lbWVy'
    'Z2VuY3lfcm9vbV9zdmMudjEuQ3JlYXRlRVJSZXNwb25zZSIAEnIKBUdldEVSEjIucHJvdG8uc2'
    'VydmljZXMuZW1lcmdlbmN5X3Jvb21fc3ZjLnYxLkdldEVSUmVxdWVzdBozLnByb3RvLnNlcnZp'
    'Y2VzLmVtZXJnZW5jeV9yb29tX3N2Yy52MS5HZXRFUlJlc3BvbnNlIgASdQoGR2V0RVJzEjMucH'
    'JvdG8uc2VydmljZXMuZW1lcmdlbmN5X3Jvb21fc3ZjLnYxLkdldEVSc1JlcXVlc3QaNC5wcm90'
    'by5zZXJ2aWNlcy5lbWVyZ2VuY3lfcm9vbV9zdmMudjEuR2V0RVJzUmVzcG9uc2UiABJ7CghVcG'
    'RhdGVFUhI1LnByb3RvLnNlcnZpY2VzLmVtZXJnZW5jeV9yb29tX3N2Yy52MS5VcGRhdGVFUlJl'
    'cXVlc3QaNi5wcm90by5zZXJ2aWNlcy5lbWVyZ2VuY3lfcm9vbV9zdmMudjEuVXBkYXRlRVJSZX'
    'Nwb25zZSIAEpkBChJBZGREZXBhcnRtZW50c1RvRVISPy5wcm90by5zZXJ2aWNlcy5lbWVyZ2Vu'
    'Y3lfcm9vbV9zdmMudjEuQWRkRGVwYXJ0bWVudHNUb0VSUmVxdWVzdBpALnByb3RvLnNlcnZpY2'
    'VzLmVtZXJnZW5jeV9yb29tX3N2Yy52MS5BZGREZXBhcnRtZW50c1RvRVJSZXNwb25zZSIAEqgB'
    'ChdSZW1vdmVEZXBhcnRtZW50c0Zyb21FUhJELnByb3RvLnNlcnZpY2VzLmVtZXJnZW5jeV9yb2'
    '9tX3N2Yy52MS5SZW1vdmVEZXBhcnRtZW50c0Zyb21FUlJlcXVlc3QaRS5wcm90by5zZXJ2aWNl'
    'cy5lbWVyZ2VuY3lfcm9vbV9zdmMudjEuUmVtb3ZlRGVwYXJ0bWVudHNGcm9tRVJSZXNwb25zZS'
    'IAEnsKCERlbGV0ZUVSEjUucHJvdG8uc2VydmljZXMuZW1lcmdlbmN5X3Jvb21fc3ZjLnYxLkRl'
    'bGV0ZUVSUmVxdWVzdBo2LnByb3RvLnNlcnZpY2VzLmVtZXJnZW5jeV9yb29tX3N2Yy52MS5EZW'
    'xldGVFUlJlc3BvbnNlIgA=');

