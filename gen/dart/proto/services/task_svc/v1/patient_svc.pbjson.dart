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
  ],
};

/// Descriptor for `CreatePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPatientRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVQYXRpZW50UmVxdWVzdBI6ChlodW1hbl9yZWFkYWJsZV9pZGVudGlmaWVyGAEgASgJUhdodW1hblJlYWRhYmxlSWRlbnRpZmllcg==');
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
  ],
};

/// Descriptor for `GetPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPatientResponseDescriptor = $convert.base64Decode('ChJHZXRQYXRpZW50UmVzcG9uc2USDgoCaWQYASABKAlSAmlkEjoKGWh1bWFuX3JlYWRhYmxlX2lkZW50aWZpZXIYAiABKAlSF2h1bWFuUmVhZGFibGVJZGVudGlmaWVy');
@$core.Deprecated('Use updatePatientRequestDescriptor instead')
const UpdatePatientRequest$json = const {
  '1': 'UpdatePatientRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'human_readable_identifier', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'humanReadableIdentifier', '17': true},
  ],
  '8': const [
    const {'1': '_human_readable_identifier'},
  ],
};

/// Descriptor for `UpdatePatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientRequestDescriptor = $convert.base64Decode('ChRVcGRhdGVQYXRpZW50UmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSPwoZaHVtYW5fcmVhZGFibGVfaWRlbnRpZmllchgCIAEoCUgAUhdodW1hblJlYWRhYmxlSWRlbnRpZmllcogBAUIcChpfaHVtYW5fcmVhZGFibGVfaWRlbnRpZmllcg==');
@$core.Deprecated('Use updatePatientResponseDescriptor instead')
const UpdatePatientResponse$json = const {
  '1': 'UpdatePatientResponse',
};

/// Descriptor for `UpdatePatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePatientResponseDescriptor = $convert.base64Decode('ChVVcGRhdGVQYXRpZW50UmVzcG9uc2U=');
const $core.Map<$core.String, $core.dynamic> PatientServiceBase$json = const {
  '1': 'PatientService',
  '2': const [
    const {'1': 'CreatePatient', '2': '.proto.services.task_svc.v1.CreatePatientRequest', '3': '.proto.services.task_svc.v1.CreatePatientResponse', '4': const {}},
    const {'1': 'GetPatient', '2': '.proto.services.task_svc.v1.GetPatientRequest', '3': '.proto.services.task_svc.v1.GetPatientResponse', '4': const {}},
    const {'1': 'UpdatePatient', '2': '.proto.services.task_svc.v1.UpdatePatientRequest', '3': '.proto.services.task_svc.v1.UpdatePatientResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use patientServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> PatientServiceBase$messageJson = const {
  '.proto.services.task_svc.v1.CreatePatientRequest': CreatePatientRequest$json,
  '.proto.services.task_svc.v1.CreatePatientResponse': CreatePatientResponse$json,
  '.proto.services.task_svc.v1.GetPatientRequest': GetPatientRequest$json,
  '.proto.services.task_svc.v1.GetPatientResponse': GetPatientResponse$json,
  '.proto.services.task_svc.v1.UpdatePatientRequest': UpdatePatientRequest$json,
  '.proto.services.task_svc.v1.UpdatePatientResponse': UpdatePatientResponse$json,
};

/// Descriptor for `PatientService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List patientServiceDescriptor = $convert.base64Decode('Cg5QYXRpZW50U2VydmljZRJ2Cg1DcmVhdGVQYXRpZW50EjAucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuQ3JlYXRlUGF0aWVudFJlcXVlc3QaMS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5DcmVhdGVQYXRpZW50UmVzcG9uc2UiABJtCgpHZXRQYXRpZW50Ei0ucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuR2V0UGF0aWVudFJlcXVlc3QaLi5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5HZXRQYXRpZW50UmVzcG9uc2UiABJ2Cg1VcGRhdGVQYXRpZW50EjAucHJvdG8uc2VydmljZXMudGFza19zdmMudjEuVXBkYXRlUGF0aWVudFJlcXVlc3QaMS5wcm90by5zZXJ2aWNlcy50YXNrX3N2Yy52MS5VcGRhdGVQYXRpZW50UmVzcG9uc2UiAA==');
