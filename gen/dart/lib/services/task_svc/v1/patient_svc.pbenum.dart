//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/patient_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetPatientDetailsResponse_TaskStatus extends $pb.ProtobufEnum {
  static const GetPatientDetailsResponse_TaskStatus TASK_STATUS_UNSPECIFIED = GetPatientDetailsResponse_TaskStatus._(0, _omitEnumNames ? '' : 'TASK_STATUS_UNSPECIFIED');
  static const GetPatientDetailsResponse_TaskStatus TASK_STATUS_TODO = GetPatientDetailsResponse_TaskStatus._(1, _omitEnumNames ? '' : 'TASK_STATUS_TODO');
  static const GetPatientDetailsResponse_TaskStatus TASK_STATUS_IN_PROGRESS = GetPatientDetailsResponse_TaskStatus._(2, _omitEnumNames ? '' : 'TASK_STATUS_IN_PROGRESS');
  static const GetPatientDetailsResponse_TaskStatus TASK_STATUS_DONE = GetPatientDetailsResponse_TaskStatus._(3, _omitEnumNames ? '' : 'TASK_STATUS_DONE');

  static const $core.List<GetPatientDetailsResponse_TaskStatus> values = <GetPatientDetailsResponse_TaskStatus> [
    TASK_STATUS_UNSPECIFIED,
    TASK_STATUS_TODO,
    TASK_STATUS_IN_PROGRESS,
    TASK_STATUS_DONE,
  ];

  static final $core.Map<$core.int, GetPatientDetailsResponse_TaskStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetPatientDetailsResponse_TaskStatus? valueOf($core.int value) => _byValue[value];

  const GetPatientDetailsResponse_TaskStatus._($core.int v, $core.String n) : super(v, n);
}

class GetPatientListResponse_TaskStatus extends $pb.ProtobufEnum {
  static const GetPatientListResponse_TaskStatus TASK_STATUS_UNSPECIFIED = GetPatientListResponse_TaskStatus._(0, _omitEnumNames ? '' : 'TASK_STATUS_UNSPECIFIED');
  static const GetPatientListResponse_TaskStatus TASK_STATUS_TODO = GetPatientListResponse_TaskStatus._(1, _omitEnumNames ? '' : 'TASK_STATUS_TODO');
  static const GetPatientListResponse_TaskStatus TASK_STATUS_IN_PROGRESS = GetPatientListResponse_TaskStatus._(2, _omitEnumNames ? '' : 'TASK_STATUS_IN_PROGRESS');
  static const GetPatientListResponse_TaskStatus TASK_STATUS_DONE = GetPatientListResponse_TaskStatus._(3, _omitEnumNames ? '' : 'TASK_STATUS_DONE');

  static const $core.List<GetPatientListResponse_TaskStatus> values = <GetPatientListResponse_TaskStatus> [
    TASK_STATUS_UNSPECIFIED,
    TASK_STATUS_TODO,
    TASK_STATUS_IN_PROGRESS,
    TASK_STATUS_DONE,
  ];

  static final $core.Map<$core.int, GetPatientListResponse_TaskStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetPatientListResponse_TaskStatus? valueOf($core.int value) => _byValue[value];

  const GetPatientListResponse_TaskStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
