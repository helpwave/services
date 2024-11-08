//
//  Generated code. Do not modify.
//  source: libs/events/v1/task_template_events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TaskTemplateCreatedEvent_SubTask extends $pb.GeneratedMessage {
  factory TaskTemplateCreatedEvent_SubTask({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  TaskTemplateCreatedEvent_SubTask._() : super();
  factory TaskTemplateCreatedEvent_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskTemplateCreatedEvent_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskTemplateCreatedEvent.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.events.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskTemplateCreatedEvent_SubTask clone() => TaskTemplateCreatedEvent_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskTemplateCreatedEvent_SubTask copyWith(void Function(TaskTemplateCreatedEvent_SubTask) updates) => super.copyWith((message) => updates(message as TaskTemplateCreatedEvent_SubTask)) as TaskTemplateCreatedEvent_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskTemplateCreatedEvent_SubTask create() => TaskTemplateCreatedEvent_SubTask._();
  TaskTemplateCreatedEvent_SubTask createEmptyInstance() => create();
  static $pb.PbList<TaskTemplateCreatedEvent_SubTask> createRepeated() => $pb.PbList<TaskTemplateCreatedEvent_SubTask>();
  @$core.pragma('dart2js:noInline')
  static TaskTemplateCreatedEvent_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskTemplateCreatedEvent_SubTask>(create);
  static TaskTemplateCreatedEvent_SubTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class TaskTemplateCreatedEvent extends $pb.GeneratedMessage {
  factory TaskTemplateCreatedEvent({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.Iterable<TaskTemplateCreatedEvent_SubTask>? subtasks,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    return $result;
  }
  TaskTemplateCreatedEvent._() : super();
  factory TaskTemplateCreatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskTemplateCreatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskTemplateCreatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.events.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..pc<TaskTemplateCreatedEvent_SubTask>(4, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: TaskTemplateCreatedEvent_SubTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskTemplateCreatedEvent clone() => TaskTemplateCreatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskTemplateCreatedEvent copyWith(void Function(TaskTemplateCreatedEvent) updates) => super.copyWith((message) => updates(message as TaskTemplateCreatedEvent)) as TaskTemplateCreatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskTemplateCreatedEvent create() => TaskTemplateCreatedEvent._();
  TaskTemplateCreatedEvent createEmptyInstance() => create();
  static $pb.PbList<TaskTemplateCreatedEvent> createRepeated() => $pb.PbList<TaskTemplateCreatedEvent>();
  @$core.pragma('dart2js:noInline')
  static TaskTemplateCreatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskTemplateCreatedEvent>(create);
  static TaskTemplateCreatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<TaskTemplateCreatedEvent_SubTask> get subtasks => $_getList(3);
}

class TaskTemplateUpdatedEvent extends $pb.GeneratedMessage {
  factory TaskTemplateUpdatedEvent({
    $core.String? id,
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  TaskTemplateUpdatedEvent._() : super();
  factory TaskTemplateUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskTemplateUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskTemplateUpdatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.events.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskTemplateUpdatedEvent clone() => TaskTemplateUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskTemplateUpdatedEvent copyWith(void Function(TaskTemplateUpdatedEvent) updates) => super.copyWith((message) => updates(message as TaskTemplateUpdatedEvent)) as TaskTemplateUpdatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskTemplateUpdatedEvent create() => TaskTemplateUpdatedEvent._();
  TaskTemplateUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<TaskTemplateUpdatedEvent> createRepeated() => $pb.PbList<TaskTemplateUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static TaskTemplateUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskTemplateUpdatedEvent>(create);
  static TaskTemplateUpdatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class TaskTemplateDeletedEvent extends $pb.GeneratedMessage {
  factory TaskTemplateDeletedEvent({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  TaskTemplateDeletedEvent._() : super();
  factory TaskTemplateDeletedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskTemplateDeletedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskTemplateDeletedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.events.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskTemplateDeletedEvent clone() => TaskTemplateDeletedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskTemplateDeletedEvent copyWith(void Function(TaskTemplateDeletedEvent) updates) => super.copyWith((message) => updates(message as TaskTemplateDeletedEvent)) as TaskTemplateDeletedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskTemplateDeletedEvent create() => TaskTemplateDeletedEvent._();
  TaskTemplateDeletedEvent createEmptyInstance() => create();
  static $pb.PbList<TaskTemplateDeletedEvent> createRepeated() => $pb.PbList<TaskTemplateDeletedEvent>();
  @$core.pragma('dart2js:noInline')
  static TaskTemplateDeletedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskTemplateDeletedEvent>(create);
  static TaskTemplateDeletedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class TaskTemplateSubTaskCreatedEvent extends $pb.GeneratedMessage {
  factory TaskTemplateSubTaskCreatedEvent({
    $core.String? taskTemplateId,
    $core.String? subTaskId,
    $core.String? name,
  }) {
    final $result = create();
    if (taskTemplateId != null) {
      $result.taskTemplateId = taskTemplateId;
    }
    if (subTaskId != null) {
      $result.subTaskId = subTaskId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  TaskTemplateSubTaskCreatedEvent._() : super();
  factory TaskTemplateSubTaskCreatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskTemplateSubTaskCreatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskTemplateSubTaskCreatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.events.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskTemplateId')
    ..aOS(2, _omitFieldNames ? '' : 'subTaskId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskTemplateSubTaskCreatedEvent clone() => TaskTemplateSubTaskCreatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskTemplateSubTaskCreatedEvent copyWith(void Function(TaskTemplateSubTaskCreatedEvent) updates) => super.copyWith((message) => updates(message as TaskTemplateSubTaskCreatedEvent)) as TaskTemplateSubTaskCreatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskTemplateSubTaskCreatedEvent create() => TaskTemplateSubTaskCreatedEvent._();
  TaskTemplateSubTaskCreatedEvent createEmptyInstance() => create();
  static $pb.PbList<TaskTemplateSubTaskCreatedEvent> createRepeated() => $pb.PbList<TaskTemplateSubTaskCreatedEvent>();
  @$core.pragma('dart2js:noInline')
  static TaskTemplateSubTaskCreatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskTemplateSubTaskCreatedEvent>(create);
  static TaskTemplateSubTaskCreatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskTemplateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskTemplateId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskTemplateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskTemplateId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subTaskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subTaskId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubTaskId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class TaskTemplateSubTaskUpdatedEvent extends $pb.GeneratedMessage {
  factory TaskTemplateSubTaskUpdatedEvent({
    $core.String? taskTemplateId,
    $core.String? subTaskId,
    $core.String? name,
  }) {
    final $result = create();
    if (taskTemplateId != null) {
      $result.taskTemplateId = taskTemplateId;
    }
    if (subTaskId != null) {
      $result.subTaskId = subTaskId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  TaskTemplateSubTaskUpdatedEvent._() : super();
  factory TaskTemplateSubTaskUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskTemplateSubTaskUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskTemplateSubTaskUpdatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.events.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskTemplateId')
    ..aOS(2, _omitFieldNames ? '' : 'subTaskId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskTemplateSubTaskUpdatedEvent clone() => TaskTemplateSubTaskUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskTemplateSubTaskUpdatedEvent copyWith(void Function(TaskTemplateSubTaskUpdatedEvent) updates) => super.copyWith((message) => updates(message as TaskTemplateSubTaskUpdatedEvent)) as TaskTemplateSubTaskUpdatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskTemplateSubTaskUpdatedEvent create() => TaskTemplateSubTaskUpdatedEvent._();
  TaskTemplateSubTaskUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<TaskTemplateSubTaskUpdatedEvent> createRepeated() => $pb.PbList<TaskTemplateSubTaskUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static TaskTemplateSubTaskUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskTemplateSubTaskUpdatedEvent>(create);
  static TaskTemplateSubTaskUpdatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskTemplateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskTemplateId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskTemplateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskTemplateId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subTaskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subTaskId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubTaskId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class TaskTemplateSubTaskDeletedEvent extends $pb.GeneratedMessage {
  factory TaskTemplateSubTaskDeletedEvent({
    $core.String? taskTemplateId,
    $core.String? subTaskId,
  }) {
    final $result = create();
    if (taskTemplateId != null) {
      $result.taskTemplateId = taskTemplateId;
    }
    if (subTaskId != null) {
      $result.subTaskId = subTaskId;
    }
    return $result;
  }
  TaskTemplateSubTaskDeletedEvent._() : super();
  factory TaskTemplateSubTaskDeletedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskTemplateSubTaskDeletedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskTemplateSubTaskDeletedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.events.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskTemplateId')
    ..aOS(2, _omitFieldNames ? '' : 'subTaskId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskTemplateSubTaskDeletedEvent clone() => TaskTemplateSubTaskDeletedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskTemplateSubTaskDeletedEvent copyWith(void Function(TaskTemplateSubTaskDeletedEvent) updates) => super.copyWith((message) => updates(message as TaskTemplateSubTaskDeletedEvent)) as TaskTemplateSubTaskDeletedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskTemplateSubTaskDeletedEvent create() => TaskTemplateSubTaskDeletedEvent._();
  TaskTemplateSubTaskDeletedEvent createEmptyInstance() => create();
  static $pb.PbList<TaskTemplateSubTaskDeletedEvent> createRepeated() => $pb.PbList<TaskTemplateSubTaskDeletedEvent>();
  @$core.pragma('dart2js:noInline')
  static TaskTemplateSubTaskDeletedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskTemplateSubTaskDeletedEvent>(create);
  static TaskTemplateSubTaskDeletedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskTemplateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskTemplateId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskTemplateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskTemplateId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subTaskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subTaskId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubTaskId() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
