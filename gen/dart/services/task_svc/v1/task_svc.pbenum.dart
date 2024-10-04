//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/task_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TaskStatus extends $pb.ProtobufEnum {
  static const TaskStatus TASK_STATUS_UNSPECIFIED = TaskStatus._(0, _omitEnumNames ? '' : 'TASK_STATUS_UNSPECIFIED');
  static const TaskStatus TASK_STATUS_TODO = TaskStatus._(1, _omitEnumNames ? '' : 'TASK_STATUS_TODO');
  static const TaskStatus TASK_STATUS_IN_PROGRESS = TaskStatus._(2, _omitEnumNames ? '' : 'TASK_STATUS_IN_PROGRESS');
  static const TaskStatus TASK_STATUS_DONE = TaskStatus._(3, _omitEnumNames ? '' : 'TASK_STATUS_DONE');

  static const $core.List<TaskStatus> values = <TaskStatus> [
    TASK_STATUS_UNSPECIFIED,
    TASK_STATUS_TODO,
    TASK_STATUS_IN_PROGRESS,
    TASK_STATUS_DONE,
  ];

  static final $core.Map<$core.int, TaskStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TaskStatus? valueOf($core.int value) => _byValue[value];

  const TaskStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
