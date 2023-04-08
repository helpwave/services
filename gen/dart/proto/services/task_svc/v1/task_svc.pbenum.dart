///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TaskStatus extends $pb.ProtobufEnum {
  static const TaskStatus TASK_STATUS_UNSPECIFIED = TaskStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TASK_STATUS_UNSPECIFIED');
  static const TaskStatus TASK_STATUS_TODO = TaskStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TASK_STATUS_TODO');
  static const TaskStatus TASK_STATUS_IN_PROGRESS = TaskStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TASK_STATUS_IN_PROGRESS');
  static const TaskStatus TASK_STATUS_DONE = TaskStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TASK_STATUS_DONE');

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

