///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/patient_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createPatientRequestDescriptor instead')
const CreatePatientRequest$json = const {
  '1': 'CreatePatientRequest',
  '2': const [
    const {'1': 'human_readable_identifier', '3': 1, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    const {'1': 'notes', '3': 2, '4': 1, '5': 9, '10': 'notes'},
  ],
};

/// Descriptor for `CreatePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPatientRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVQYXRpZW50UmVxdWVzdBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVyGAEgASgJUhdodW1hblJlYWRhYmxlSWRlbnRpZmllchIUCgVub3RlcxgCIAEoCVIFbm90ZXM=');
@$core.Deprecated('Use createPatientResponseDescriptor instead')
const CreatePatientResponse$json = const {
  '1': 'CreatePatientResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreatePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPatientResponseDescriptor = $convert.base64Decode('ChVDcmVhdGVQYXRpZW50UmVzcG9uc2USDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getPatientRequestDescriptor instead')
const GetPatientRequest$json = const {
  '1': 'GetPatientRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientRequestDescriptor = $convert.base64Decode('ChFHZXRQYXRpZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getPatientResponseDescriptor instead')
const GetPatientResponse$json = const {
  '1': 'GetPatientResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    const {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    const {'1': 'bed_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'bedId', '17': true},
  ],
  '8': const [
    const {'1': '_bed_id'},
  ],
};

/// Descriptor for `GetPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientResponseDescriptor = $convert.base64Decode('ChJHZXRQYXRpZW50UmVzcG9uc2USDgoCaWQYASABKAlSAmlkEjoKGWh1bWFuX3JlYWRhYmxlX2lkZW50aWZpZXIYAiABKAlSF2h1bWFuUmVhZGFibGVJZGVudGlmaWVyEhQKBW5vdGVzGAMgASgJUgVub3RlcxIaCgZiZWRfaWQYBCABKAlIAFIFYmVkSWSIAQFCCQoHX2JlZF9pZA==');
@$core.Deprecated('Use getPatientByBedRequestDescriptor instead')
const GetPatientByBedRequest$json = const {
  '1': 'GetPatientByBedRequest',
  '2': const [
    const {'1': 'bed_id', '3': 1, '4': 1, '5': 9, '10': 'bedId'},
  ],
};

/// Descriptor for `GetPatientByBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientByBedRequestDescriptor = $convert.base64Decode('ChZHZXRQYXRpZW50QnlCZWRSZXF1ZXN0EhUKBmJlZF9pZBgBIAEoCVIFYmVkSWQ=');
@$core.Deprecated('Use getPatientByBedResponseDescriptor instead')
const GetPatientByBedResponse$json = const {
  '1': 'GetPatientByBedResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    const {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    const {'1': 'bed_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'bedId', '17': true},
  ],
  '8': const [
    const {'1': '_bed_id'},
  ],
};

/// Descriptor for `GetPatientByBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientByBedResponseDescriptor = $convert.base64Decode('ChdHZXRQYXRpZW50QnlCZWRSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSOgoZaHVtYW5fcmVhZGFibGVfaWRlbnRpZmllchgCIAEoCVIXaHVtYW5SZWFkYWJsZUlkZW50aWZpZXISFAoFbm90ZXMYAyABKAlSBW5vdGVzEhoKBmJlZF9pZBgEIAEoCUgAUgViZWRJZIgBAUIJCgdfYmVkX2lk');
@$core.Deprecated('Use getPatientsByWardRequestDescriptor instead')
const GetPatientsByWardRequest$json = const {
  '1': 'GetPatientsByWardRequest',
  '2': const [
    const {'1': 'ward_id', '3': 1, '4': 1, '5': 9, '10': 'wardId'},
  ],
};

/// Descriptor for `GetPatientsByWardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientsByWardRequestDescriptor = $convert.base64Decode('ChhHZXRQYXRpZW50c0J5V2FyZFJlcXVlc3QSFwoHd2FyZF9pZBgBIAEoCVIGd2FyZElk');
@$core.Deprecated('Use getPatientsByWardResponseDescriptor instead')
const GetPatientsByWardResponse$json = const {
  '1': 'GetPatientsByWardResponse',
  '2': const [
    const {'1': 'patients', '3': 1, '4': 3, '5': 11, '6': '.proto.services.task_svc.v1.GetPatientsByWardResponse.Patient', '10': 'patients'},
  ],
  '3': const [GetPatientsByWardResponse_Patient$json],
};

@$core.Deprecated('Use getPatientsByWardResponseDescriptor instead')
const GetPatientsByWardResponse_Patient$json = const {
  '1': 'Patient',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '10': 'humanReadableIdentifier'},
    const {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
    const {'1': 'bed_id', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'bedId', '17': true},
  ],
  '8': const [
    const {'1': '_bed_id'},
  ],
};

/// Descriptor for `GetPatientsByWardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientsByWardResponseDescriptor = $convert.base64Decode('ChlHZXRQYXRpZW50c0J5V2FyZFJlc3BvbnNlElkKCHBhdGllbnRzGAEgAygLMj0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudHNCeVdhcmRSZXNwb25zZS5QYXRpZW50UghwYXRpZW50cxqSAQoHUGF0aWVudBIOCgJpZBgBIAEoCVICaWQSOgoZaHVtYW5fcmVhZGFibGVfaWRlbnRpZmllchgCIAEoCVIXaHVtYW5SZWFkYWJsZUlkZW50aWZpZXISFAoFbm90ZXMYAyABKAlSBW5vdGVzEhoKBmJlZF9pZBgEIAEoCUgAUgViZWRJZIgBAUIJCgdfYmVkX2lk');
@$core.Deprecated('Use updatePatientRequestDescriptor instead')
const UpdatePatientRequest$json = const {
  '1': 'UpdatePatientRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'humanReadableIdentifier', '17': true},
    const {'1': 'notes', '3': 3, '4': 1, '5': 9, '10': 'notes'},
  ],
  '8': const [
    const {'1': '_human_readable_identifier'},
  ],
};

/// Descriptor for `UpdatePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientRequestDescriptor = $convert.base64Decode('ChRVcGRhdGVQYXRpZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSPwoZaHVtYW5fcmVhZGFibGVfaWRlbnRpZmllchgCIAEoCUgAUhdodW1hblJlYWRhYmxlSWRlbnRpZmllcogBARIUCgVub3RlcxgDIAEoCVIFbm90ZXNCHAoaX2h1bWFuX3JlYWRhYmxlX2lkZW50aWZpZXI=');
@$core.Deprecated('Use updatePatientResponseDescriptor instead')
const UpdatePatientResponse$json = const {
  '1': 'UpdatePatientResponse',
};

/// Descriptor for `UpdatePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientResponseDescriptor = $convert.base64Decode('ChVVcGRhdGVQYXRpZW50UmVzcG9uc2U=');
@$core.Deprecated('Use assignBedRequestDescriptor instead')
const AssignBedRequest$json = const {
  '1': 'AssignBedRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'bed_id', '3': 2, '4': 1, '5': 9, '10': 'bedId'},
  ],
};

/// Descriptor for `AssignBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignBedRequestDescriptor = $convert.base64Decode('ChBBc3NpZ25CZWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIVCgZiZWRfaWQYAiABKAlSBWJlZElk');
@$core.Deprecated('Use assignBedResponseDescriptor instead')
const AssignBedResponse$json = const {
  '1': 'AssignBedResponse',
};

/// Descriptor for `AssignBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignBedResponseDescriptor = $convert.base64Decode('ChFBc3NpZ25CZWRSZXNwb25zZQ==');
@$core.Deprecated('Use unassignBedRequestDescriptor instead')
const UnassignBedRequest$json = const {
  '1': 'UnassignBedRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UnassignBedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignBedRequestDescriptor = $convert.base64Decode('ChJVbmFzc2lnbkJlZFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use unassignBedResponseDescriptor instead')
const UnassignBedResponse$json = const {
  '1': 'UnassignBedResponse',
};

/// Descriptor for `UnassignBedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unassignBedResponseDescriptor = $convert.base64Decode('ChNVbmFzc2lnbkJlZFJlc3BvbnNl');
@$core.Deprecated('Use dischargePatientRequestDescriptor instead')
const DischargePatientRequest$json = const {
  '1': 'DischargePatientRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DischargePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dischargePatientRequestDescriptor = $convert.base64Decode('ChdEaXNjaGFyZ2VQYXRpZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use dischargePatientResponseDescriptor instead')
const DischargePatientResponse$json = const {
  '1': 'DischargePatientResponse',
};

/// Descriptor for `DischargePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dischargePatientResponseDescriptor = $convert.base64Decode('ChhEaXNjaGFyZ2VQYXRpZW50UmVzcG9uc2U=');
const $core.Map<$core.String, $core.dynamic> PatientServiceBase$json = const {
  '1': 'PatientService',
  '2': const [
    const {'1': 'CreatePatient', '2': '.proto.services.task_svc.v1.CreatePatientRequest', '3': '.proto.services.task_svc.v1.CreatePatientResponse', '4': const {}},
    const {'1': 'GetPatient', '2': '.proto.services.task_svc.v1.GetPatientRequest', '3': '.proto.services.task_svc.v1.GetPatientResponse', '4': const {}},
    const {'1': 'GetPatientByBed', '2': '.proto.services.task_svc.v1.GetPatientByBedRequest', '3': '.proto.services.task_svc.v1.GetPatientByBedResponse', '4': const {}},
    const {'1': 'GetPatientsByWard', '2': '.proto.services.task_svc.v1.GetPatientsByWardRequest', '3': '.proto.services.task_svc.v1.GetPatientsByWardResponse', '4': const {}},
    const {'1': 'UpdatePatient', '2': '.proto.services.task_svc.v1.UpdatePatientRequest', '3': '.proto.services.task_svc.v1.UpdatePatientResponse', '4': const {}},
    const {'1': 'AssignBed', '2': '.proto.services.task_svc.v1.AssignBedRequest', '3': '.proto.services.task_svc.v1.AssignBedResponse', '4': const {}},
    const {'1': 'UnassignBed', '2': '.proto.services.task_svc.v1.UnassignBedRequest', '3': '.proto.services.task_svc.v1.UnassignBedResponse', '4': const {}},
    const {'1': 'DischargePatient', '2': '.proto.services.task_svc.v1.DischargePatientRequest', '3': '.proto.services.task_svc.v1.DischargePatientResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use patientServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> PatientServiceBase$messageJson = const {
  '.proto.services.task_svc.v1.CreatePatientRequest': CreatePatientRequest$json,
  '.proto.services.task_svc.v1.CreatePatientResponse': CreatePatientResponse$json,
  '.proto.services.task_svc.v1.GetPatientRequest': GetPatientRequest$json,
  '.proto.services.task_svc.v1.GetPatientResponse': GetPatientResponse$json,
  '.proto.services.task_svc.v1.GetPatientByBedRequest': GetPatientByBedRequest$json,
  '.proto.services.task_svc.v1.GetPatientByBedResponse': GetPatientByBedResponse$json,
  '.proto.services.task_svc.v1.GetPatientsByWardRequest': GetPatientsByWardRequest$json,
  '.proto.services.task_svc.v1.GetPatientsByWardResponse': GetPatientsByWardResponse$json,
  '.proto.services.task_svc.v1.GetPatientsByWardResponse.Patient': GetPatientsByWardResponse_Patient$json,
  '.proto.services.task_svc.v1.UpdatePatientRequest': UpdatePatientRequest$json,
  '.proto.services.task_svc.v1.UpdatePatientResponse': UpdatePatientResponse$json,
  '.proto.services.task_svc.v1.AssignBedRequest': AssignBedRequest$json,
  '.proto.services.task_svc.v1.AssignBedResponse': AssignBedResponse$json,
  '.proto.services.task_svc.v1.UnassignBedRequest': UnassignBedRequest$json,
  '.proto.services.task_svc.v1.UnassignBedResponse': UnassignBedResponse$json,
  '.proto.services.task_svc.v1.DischargePatientRequest': DischargePatientRequest$json,
  '.proto.services.task_svc.v1.DischargePatientResponse': DischargePatientResponse$json,
};

/// Descriptor for `PatientService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List patientServiceDescriptor = $convert.base64Decode('Cg5QYXRpZW50U2VydmljZRJ2Cg1DcmVhdGVQYXRpZW50EjAucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3JlYXRlUGF0aWVudFJlcXVlc3QaMS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVQYXRpZW50UmVzcG9uc2UiABJtCgpHZXRQYXRpZW50Ei0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudFJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50UmVzcG9uc2UiABJ8Cg9HZXRQYXRpZW50QnlCZWQSMi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50QnlCZWRSZXF1ZXN0GjMucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudEJ5QmVkUmVzcG9uc2UiABKCAQoRR2V0UGF0aWVudHNCeVdhcmQSNC5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50c0J5V2FyZFJlcXVlc3QaNS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50c0J5V2FyZFJlc3BvbnNlIgASdgoNVXBkYXRlUGF0aWVudBIwLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLlVwZGF0ZVBhdGllbnRSZXF1ZXN0GjEucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlUGF0aWVudFJlc3BvbnNlIgASagoJQXNzaWduQmVkEiwucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQXNzaWduQmVkUmVxdWVzdBotLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkFzc2lnbkJlZFJlc3BvbnNlIgAScAoLVW5hc3NpZ25CZWQSLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VbmFzc2lnbkJlZFJlcXVlc3QaLy5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VbmFzc2lnbkJlZFJlc3BvbnNlIgASfwoQRGlzY2hhcmdlUGF0aWVudBIzLnByb3RvLnNlcnZpY2VzLnRhc2tfc3ZjLnYxLkRpc2NoYXJnZVBhdGllbnRSZXF1ZXN0GjQucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuRGlzY2hhcmdlUGF0aWVudFJlc3BvbnNlIgA=');
