///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/ward_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createWardRequestDescriptor instead')
const CreateWardRequest$json = const {
  '1': 'CreateWardRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWardRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVXYXJkUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use createWardResponseDescriptor instead')
const CreateWardResponse$json = const {
  '1': 'CreateWardResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `CreateWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createWardResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVXYXJkUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use getWardRequestDescriptor instead')
const GetWardRequest$json = const {
  '1': 'GetWardRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardRequestDescriptor = $convert.base64Decode('Cg5HZXRXYXJkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getWardResponseDescriptor instead')
const GetWardResponse$json = const {
  '1': 'GetWardResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'organization_id', '3': 3, '4': 1, '5': 9, '10': 'organizationId'},
  ],
};

/// Descriptor for `GetWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardResponseDescriptor = $convert.base64Decode('Cg9HZXRXYXJkUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSJwoPb3JnYW5pemF0aW9uX2lkGAMgASgJUg5vcmdhbml6YXRpb25JZA==');
@$core.Deprecated('Use getWardsRequestDescriptor instead')
const GetWardsRequest$json = const {
  '1': 'GetWardsRequest',
};

/// Descriptor for `GetWardsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardsRequestDescriptor = $convert.base64Decode('Cg9HZXRXYXJkc1JlcXVlc3Q=');
@$core.Deprecated('Use getWardsResponseDescriptor instead')
const GetWardsResponse$json = const {
  '1': 'GetWardsResponse',
  '2': const [
    const {'1': 'wards', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetWardsResponse.Ward', '10': 'wards'},
  ],
  '3': const [GetWardsResponse_Ward$json],
};

@$core.Deprecated('Use getWardsResponseDescriptor instead')
const GetWardsResponse_Ward$json = const {
  '1': 'Ward',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'organization_id', '3': 3, '4': 1, '5': 9, '10': 'organizationId'},
  ],
};

/// Descriptor for `GetWardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWardsResponseDescriptor = $convert.base64Decode('ChBHZXRXYXJkc1Jlc3BvbnNlEkcKBXdhcmRzGAEgAygLMjEucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0V2FyZHNSZXNwb25zZS5XYXJkUgV3YXJkcxpTCgRXYXJkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEicKD29yZ2FuaXphdGlvbl9pZBgDIAEoCVIOb3JnYW5pemF0aW9uSWQ=');
@$core.Deprecated('Use updateWardRequestDescriptor instead')
const UpdateWardRequest$json = const {
  '1': 'UpdateWardRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
  ],
  '8': const [
    const {'1': '_name'},
  ],
};

/// Descriptor for `UpdateWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWardRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVXYXJkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW1liAEBQgcKBV9uYW1l');
@$core.Deprecated('Use updateWardResponseDescriptor instead')
const UpdateWardResponse$json = const {
  '1': 'UpdateWardResponse',
};

/// Descriptor for `UpdateWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateWardResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVXYXJkUmVzcG9uc2U=');
@$core.Deprecated('Use deleteWardRequestDescriptor instead')
const DeleteWardRequest$json = const {
  '1': 'DeleteWardRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWardRequestDescriptor = $convert.base64Decode('ChFEZWxldGVXYXJkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use deleteWardResponseDescriptor instead')
const DeleteWardResponse$json = const {
  '1': 'DeleteWardResponse',
};

/// Descriptor for `DeleteWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteWardResponseDescriptor = $convert.base64Decode('ChJEZWxldGVXYXJkUmVzcG9uc2U=');
const $core.Map<$core.String, $core.dynamic> WardServiceBase$json = const {
  '1': 'WardService',
  '2': const [
    const {'1': 'CreateWard', '2': '.proto.services.task_svc.v1.CreateWardRequest', '3': '.proto.services.task_svc.v1.CreateWardResponse', '4': const {}},
    const {'1': 'GetWard', '2': '.proto.services.task_svc.v1.GetWardRequest', '3': '.proto.services.task_svc.v1.GetWardResponse', '4': const {}},
    const {'1': 'GetWards', '2': '.proto.services.task_svc.v1.GetWardsRequest', '3': '.proto.services.task_svc.v1.GetWardsResponse', '4': const {}},
    const {'1': 'UpdateWard', '2': '.proto.services.task_svc.v1.UpdateWardRequest', '3': '.proto.services.task_svc.v1.UpdateWardResponse', '4': const {}},
    const {'1': 'DeleteWard', '2': '.proto.services.task_svc.v1.DeleteWardRequest', '3': '.proto.services.task_svc.v1.DeleteWardResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use wardServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> WardServiceBase$messageJson = const {
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
};

/// Descriptor for `WardService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List wardServiceDescriptor = $convert.base64Decode('CgtXYXJkU2VydmljZRJtCgpDcmVhdGVXYXJkEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3JlYXRlV2FyZFJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVXYXJkUmVzcG9uc2UiABJkCgdHZXRXYXJkEioucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0V2FyZFJlcXVlc3QaKy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRXYXJkUmVzcG9uc2UiABJnCghHZXRXYXJkcxIrLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFdhcmRzUmVxdWVzdBosLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkdldFdhcmRzUmVzcG9uc2UiABJtCgpVcGRhdGVXYXJkEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlV2FyZFJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVXYXJkUmVzcG9uc2UiABJtCgpEZWxldGVXYXJkEi0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuRGVsZXRlV2FyZFJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5EZWxldGVXYXJkUmVzcG9uc2UiAA==');
