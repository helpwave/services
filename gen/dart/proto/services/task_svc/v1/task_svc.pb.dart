///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'task_svc.pbenum.dart';

export 'task_svc.pbenum.dart';

class CreateTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patientId')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'public')
    ..hasRequiredFields = false
  ;

  CreateTaskRequest._() : super();
  factory CreateTaskRequest({
    $core.String? name,
    $core.String? description,
    $core.String? patientId,
    $core.bool? public,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (patientId != null) {
      _result.patientId = patientId;
    }
    if (public != null) {
      _result.public = public;
    }
    return _result;
  }
  factory CreateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskRequest clone() => CreateTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskRequest copyWith(void Function(CreateTaskRequest) updates) => super.copyWith((message) => updates(message as CreateTaskRequest)) as CreateTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest create() => CreateTaskRequest._();
  CreateTaskRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTaskRequest> createRepeated() => $pb.PbList<CreateTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskRequest>(create);
  static CreateTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get patientId => $_getSZ(2);
  @$pb.TagNumber(3)
  set patientId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPatientId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatientId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get public => $_getBF(3);
  @$pb.TagNumber(4)
  set public($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPublic() => $_has(3);
  @$pb.TagNumber(4)
  void clearPublic() => clearField(4);
}

class CreateTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  CreateTaskResponse._() : super();
  factory CreateTaskResponse({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory CreateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskResponse clone() => CreateTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskResponse copyWith(void Function(CreateTaskResponse) updates) => super.copyWith((message) => updates(message as CreateTaskResponse)) as CreateTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateTaskResponse create() => CreateTaskResponse._();
  CreateTaskResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTaskResponse> createRepeated() => $pb.PbList<CreateTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskResponse>(create);
  static CreateTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetTaskRequest._() : super();
  factory GetTaskRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskRequest clone() => GetTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskRequest copyWith(void Function(GetTaskRequest) updates) => super.copyWith((message) => updates(message as GetTaskRequest)) as GetTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskRequest create() => GetTaskRequest._();
  GetTaskRequest createEmptyInstance() => create();
  static $pb.PbList<GetTaskRequest> createRepeated() => $pb.PbList<GetTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskRequest>(create);
  static GetTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetTaskResponse_SubTask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskResponse.SubTask', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'done')
    ..hasRequiredFields = false
  ;

  GetTaskResponse_SubTask._() : super();
  factory GetTaskResponse_SubTask({
    $core.String? id,
    $core.String? title,
    $core.bool? done,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (done != null) {
      _result.done = done;
    }
    return _result;
  }
  factory GetTaskResponse_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskResponse_SubTask clone() => GetTaskResponse_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskResponse_SubTask copyWith(void Function(GetTaskResponse_SubTask) updates) => super.copyWith((message) => updates(message as GetTaskResponse_SubTask)) as GetTaskResponse_SubTask; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse_SubTask create() => GetTaskResponse_SubTask._();
  GetTaskResponse_SubTask createEmptyInstance() => create();
  static $pb.PbList<GetTaskResponse_SubTask> createRepeated() => $pb.PbList<GetTaskResponse_SubTask>();
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskResponse_SubTask>(create);
  static GetTaskResponse_SubTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class GetTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<TaskStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignedUserId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patientId')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'public')
    ..pc<GetTaskResponse_SubTask>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTaskResponse_SubTask.create)
    ..hasRequiredFields = false
  ;

  GetTaskResponse._() : super();
  factory GetTaskResponse({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    TaskStatus? status,
    $core.String? assignedUserId,
    $core.String? patientId,
    $core.bool? public,
    $core.Iterable<GetTaskResponse_SubTask>? subtasks,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (status != null) {
      _result.status = status;
    }
    if (assignedUserId != null) {
      _result.assignedUserId = assignedUserId;
    }
    if (patientId != null) {
      _result.patientId = patientId;
    }
    if (public != null) {
      _result.public = public;
    }
    if (subtasks != null) {
      _result.subtasks.addAll(subtasks);
    }
    return _result;
  }
  factory GetTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskResponse clone() => GetTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskResponse copyWith(void Function(GetTaskResponse) updates) => super.copyWith((message) => updates(message as GetTaskResponse)) as GetTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse create() => GetTaskResponse._();
  GetTaskResponse createEmptyInstance() => create();
  static $pb.PbList<GetTaskResponse> createRepeated() => $pb.PbList<GetTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskResponse>(create);
  static GetTaskResponse? _defaultInstance;

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
  TaskStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(TaskStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get assignedUserId => $_getSZ(4);
  @$pb.TagNumber(5)
  set assignedUserId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssignedUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssignedUserId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get patientId => $_getSZ(5);
  @$pb.TagNumber(6)
  set patientId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPatientId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPatientId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get public => $_getBF(6);
  @$pb.TagNumber(7)
  set public($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPublic() => $_has(6);
  @$pb.TagNumber(7)
  void clearPublic() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<GetTaskResponse_SubTask> get subtasks => $_getList(7);
}

class GetTasksByPatientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTasksByPatientRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patientId')
    ..hasRequiredFields = false
  ;

  GetTasksByPatientRequest._() : super();
  factory GetTasksByPatientRequest({
    $core.String? patientId,
  }) {
    final _result = create();
    if (patientId != null) {
      _result.patientId = patientId;
    }
    return _result;
  }
  factory GetTasksByPatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientRequest clone() => GetTasksByPatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientRequest copyWith(void Function(GetTasksByPatientRequest) updates) => super.copyWith((message) => updates(message as GetTasksByPatientRequest)) as GetTasksByPatientRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientRequest create() => GetTasksByPatientRequest._();
  GetTasksByPatientRequest createEmptyInstance() => create();
  static $pb.PbList<GetTasksByPatientRequest> createRepeated() => $pb.PbList<GetTasksByPatientRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTasksByPatientRequest>(create);
  static GetTasksByPatientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get patientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set patientId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPatientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPatientId() => clearField(1);
}

class GetTasksByPatientResponse_Task_SubTask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTasksByPatientResponse.Task.SubTask', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'done')
    ..hasRequiredFields = false
  ;

  GetTasksByPatientResponse_Task_SubTask._() : super();
  factory GetTasksByPatientResponse_Task_SubTask({
    $core.String? id,
    $core.String? title,
    $core.bool? done,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (done != null) {
      _result.done = done;
    }
    return _result;
  }
  factory GetTasksByPatientResponse_Task_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientResponse_Task_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse_Task_SubTask clone() => GetTasksByPatientResponse_Task_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse_Task_SubTask copyWith(void Function(GetTasksByPatientResponse_Task_SubTask) updates) => super.copyWith((message) => updates(message as GetTasksByPatientResponse_Task_SubTask)) as GetTasksByPatientResponse_Task_SubTask; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientResponse_Task_SubTask create() => GetTasksByPatientResponse_Task_SubTask._();
  GetTasksByPatientResponse_Task_SubTask createEmptyInstance() => create();
  static $pb.PbList<GetTasksByPatientResponse_Task_SubTask> createRepeated() => $pb.PbList<GetTasksByPatientResponse_Task_SubTask>();
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientResponse_Task_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTasksByPatientResponse_Task_SubTask>(create);
  static GetTasksByPatientResponse_Task_SubTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class GetTasksByPatientResponse_Task extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTasksByPatientResponse.Task', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<TaskStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignedUserId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patientId')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'public')
    ..pc<GetTasksByPatientResponse_Task_SubTask>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientResponse_Task_SubTask.create)
    ..hasRequiredFields = false
  ;

  GetTasksByPatientResponse_Task._() : super();
  factory GetTasksByPatientResponse_Task({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    TaskStatus? status,
    $core.String? assignedUserId,
    $core.String? patientId,
    $core.bool? public,
    $core.Iterable<GetTasksByPatientResponse_Task_SubTask>? subtasks,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (status != null) {
      _result.status = status;
    }
    if (assignedUserId != null) {
      _result.assignedUserId = assignedUserId;
    }
    if (patientId != null) {
      _result.patientId = patientId;
    }
    if (public != null) {
      _result.public = public;
    }
    if (subtasks != null) {
      _result.subtasks.addAll(subtasks);
    }
    return _result;
  }
  factory GetTasksByPatientResponse_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientResponse_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse_Task clone() => GetTasksByPatientResponse_Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse_Task copyWith(void Function(GetTasksByPatientResponse_Task) updates) => super.copyWith((message) => updates(message as GetTasksByPatientResponse_Task)) as GetTasksByPatientResponse_Task; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientResponse_Task create() => GetTasksByPatientResponse_Task._();
  GetTasksByPatientResponse_Task createEmptyInstance() => create();
  static $pb.PbList<GetTasksByPatientResponse_Task> createRepeated() => $pb.PbList<GetTasksByPatientResponse_Task>();
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientResponse_Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTasksByPatientResponse_Task>(create);
  static GetTasksByPatientResponse_Task? _defaultInstance;

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
  TaskStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(TaskStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get assignedUserId => $_getSZ(4);
  @$pb.TagNumber(5)
  set assignedUserId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssignedUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssignedUserId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get patientId => $_getSZ(5);
  @$pb.TagNumber(6)
  set patientId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPatientId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPatientId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get public => $_getBF(6);
  @$pb.TagNumber(7)
  set public($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPublic() => $_has(6);
  @$pb.TagNumber(7)
  void clearPublic() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<GetTasksByPatientResponse_Task_SubTask> get subtasks => $_getList(7);
}

class GetTasksByPatientResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTasksByPatientResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetTasksByPatientResponse_Task>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientResponse_Task.create)
    ..hasRequiredFields = false
  ;

  GetTasksByPatientResponse._() : super();
  factory GetTasksByPatientResponse({
    $core.Iterable<GetTasksByPatientResponse_Task>? tasks,
  }) {
    final _result = create();
    if (tasks != null) {
      _result.tasks.addAll(tasks);
    }
    return _result;
  }
  factory GetTasksByPatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse clone() => GetTasksByPatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse copyWith(void Function(GetTasksByPatientResponse) updates) => super.copyWith((message) => updates(message as GetTasksByPatientResponse)) as GetTasksByPatientResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientResponse create() => GetTasksByPatientResponse._();
  GetTasksByPatientResponse createEmptyInstance() => create();
  static $pb.PbList<GetTasksByPatientResponse> createRepeated() => $pb.PbList<GetTasksByPatientResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTasksByPatientResponse>(create);
  static GetTasksByPatientResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetTasksByPatientResponse_Task> get tasks => $_getList(0);
}

class UpdateTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  UpdateTaskRequest._() : super();
  factory UpdateTaskRequest({
    $core.String? id,
    $core.String? name,
    $core.String? description,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory UpdateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskRequest clone() => UpdateTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskRequest copyWith(void Function(UpdateTaskRequest) updates) => super.copyWith((message) => updates(message as UpdateTaskRequest)) as UpdateTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateTaskRequest create() => UpdateTaskRequest._();
  UpdateTaskRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskRequest> createRepeated() => $pb.PbList<UpdateTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskRequest>(create);
  static UpdateTaskRequest? _defaultInstance;

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

class UpdateTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateTaskResponse._() : super();
  factory UpdateTaskResponse() => create();
  factory UpdateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskResponse clone() => UpdateTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskResponse copyWith(void Function(UpdateTaskResponse) updates) => super.copyWith((message) => updates(message as UpdateTaskResponse)) as UpdateTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateTaskResponse create() => UpdateTaskResponse._();
  UpdateTaskResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskResponse> createRepeated() => $pb.PbList<UpdateTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskResponse>(create);
  static UpdateTaskResponse? _defaultInstance;
}

class AddSubTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddSubTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'taskId')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'done')
    ..hasRequiredFields = false
  ;

  AddSubTaskRequest._() : super();
  factory AddSubTaskRequest({
    $core.String? title,
    $core.String? taskId,
    $core.bool? done,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (taskId != null) {
      _result.taskId = taskId;
    }
    if (done != null) {
      _result.done = done;
    }
    return _result;
  }
  factory AddSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSubTaskRequest clone() => AddSubTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSubTaskRequest copyWith(void Function(AddSubTaskRequest) updates) => super.copyWith((message) => updates(message as AddSubTaskRequest)) as AddSubTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSubTaskRequest create() => AddSubTaskRequest._();
  AddSubTaskRequest createEmptyInstance() => create();
  static $pb.PbList<AddSubTaskRequest> createRepeated() => $pb.PbList<AddSubTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSubTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSubTaskRequest>(create);
  static AddSubTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class AddSubTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddSubTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  AddSubTaskResponse._() : super();
  factory AddSubTaskResponse({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory AddSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSubTaskResponse clone() => AddSubTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSubTaskResponse copyWith(void Function(AddSubTaskResponse) updates) => super.copyWith((message) => updates(message as AddSubTaskResponse)) as AddSubTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSubTaskResponse create() => AddSubTaskResponse._();
  AddSubTaskResponse createEmptyInstance() => create();
  static $pb.PbList<AddSubTaskResponse> createRepeated() => $pb.PbList<AddSubTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSubTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSubTaskResponse>(create);
  static AddSubTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class RemoveSubTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveSubTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  RemoveSubTaskRequest._() : super();
  factory RemoveSubTaskRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory RemoveSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSubTaskRequest clone() => RemoveSubTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSubTaskRequest copyWith(void Function(RemoveSubTaskRequest) updates) => super.copyWith((message) => updates(message as RemoveSubTaskRequest)) as RemoveSubTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveSubTaskRequest create() => RemoveSubTaskRequest._();
  RemoveSubTaskRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveSubTaskRequest> createRepeated() => $pb.PbList<RemoveSubTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveSubTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveSubTaskRequest>(create);
  static RemoveSubTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class RemoveSubTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveSubTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveSubTaskResponse._() : super();
  factory RemoveSubTaskResponse() => create();
  factory RemoveSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSubTaskResponse clone() => RemoveSubTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSubTaskResponse copyWith(void Function(RemoveSubTaskResponse) updates) => super.copyWith((message) => updates(message as RemoveSubTaskResponse)) as RemoveSubTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveSubTaskResponse create() => RemoveSubTaskResponse._();
  RemoveSubTaskResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveSubTaskResponse> createRepeated() => $pb.PbList<RemoveSubTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveSubTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveSubTaskResponse>(create);
  static RemoveSubTaskResponse? _defaultInstance;
}

class SubTaskToToDoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubTaskToToDoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  SubTaskToToDoRequest._() : super();
  factory SubTaskToToDoRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory SubTaskToToDoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTaskToToDoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubTaskToToDoRequest clone() => SubTaskToToDoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubTaskToToDoRequest copyWith(void Function(SubTaskToToDoRequest) updates) => super.copyWith((message) => updates(message as SubTaskToToDoRequest)) as SubTaskToToDoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubTaskToToDoRequest create() => SubTaskToToDoRequest._();
  SubTaskToToDoRequest createEmptyInstance() => create();
  static $pb.PbList<SubTaskToToDoRequest> createRepeated() => $pb.PbList<SubTaskToToDoRequest>();
  @$core.pragma('dart2js:noInline')
  static SubTaskToToDoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubTaskToToDoRequest>(create);
  static SubTaskToToDoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SubTaskToToDoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubTaskToToDoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SubTaskToToDoResponse._() : super();
  factory SubTaskToToDoResponse() => create();
  factory SubTaskToToDoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTaskToToDoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubTaskToToDoResponse clone() => SubTaskToToDoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubTaskToToDoResponse copyWith(void Function(SubTaskToToDoResponse) updates) => super.copyWith((message) => updates(message as SubTaskToToDoResponse)) as SubTaskToToDoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubTaskToToDoResponse create() => SubTaskToToDoResponse._();
  SubTaskToToDoResponse createEmptyInstance() => create();
  static $pb.PbList<SubTaskToToDoResponse> createRepeated() => $pb.PbList<SubTaskToToDoResponse>();
  @$core.pragma('dart2js:noInline')
  static SubTaskToToDoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubTaskToToDoResponse>(create);
  static SubTaskToToDoResponse? _defaultInstance;
}

class SubTaskToDoneRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubTaskToDoneRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  SubTaskToDoneRequest._() : super();
  factory SubTaskToDoneRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory SubTaskToDoneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTaskToDoneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubTaskToDoneRequest clone() => SubTaskToDoneRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubTaskToDoneRequest copyWith(void Function(SubTaskToDoneRequest) updates) => super.copyWith((message) => updates(message as SubTaskToDoneRequest)) as SubTaskToDoneRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubTaskToDoneRequest create() => SubTaskToDoneRequest._();
  SubTaskToDoneRequest createEmptyInstance() => create();
  static $pb.PbList<SubTaskToDoneRequest> createRepeated() => $pb.PbList<SubTaskToDoneRequest>();
  @$core.pragma('dart2js:noInline')
  static SubTaskToDoneRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubTaskToDoneRequest>(create);
  static SubTaskToDoneRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SubTaskToDoneResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubTaskToDoneResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SubTaskToDoneResponse._() : super();
  factory SubTaskToDoneResponse() => create();
  factory SubTaskToDoneResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTaskToDoneResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubTaskToDoneResponse clone() => SubTaskToDoneResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubTaskToDoneResponse copyWith(void Function(SubTaskToDoneResponse) updates) => super.copyWith((message) => updates(message as SubTaskToDoneResponse)) as SubTaskToDoneResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubTaskToDoneResponse create() => SubTaskToDoneResponse._();
  SubTaskToDoneResponse createEmptyInstance() => create();
  static $pb.PbList<SubTaskToDoneResponse> createRepeated() => $pb.PbList<SubTaskToDoneResponse>();
  @$core.pragma('dart2js:noInline')
  static SubTaskToDoneResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubTaskToDoneResponse>(create);
  static SubTaskToDoneResponse? _defaultInstance;
}

class TaskToToDoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskToToDoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  TaskToToDoRequest._() : super();
  factory TaskToToDoRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory TaskToToDoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToToDoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToToDoRequest clone() => TaskToToDoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToToDoRequest copyWith(void Function(TaskToToDoRequest) updates) => super.copyWith((message) => updates(message as TaskToToDoRequest)) as TaskToToDoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskToToDoRequest create() => TaskToToDoRequest._();
  TaskToToDoRequest createEmptyInstance() => create();
  static $pb.PbList<TaskToToDoRequest> createRepeated() => $pb.PbList<TaskToToDoRequest>();
  @$core.pragma('dart2js:noInline')
  static TaskToToDoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskToToDoRequest>(create);
  static TaskToToDoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class TaskToToDoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskToToDoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TaskToToDoResponse._() : super();
  factory TaskToToDoResponse() => create();
  factory TaskToToDoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToToDoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToToDoResponse clone() => TaskToToDoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToToDoResponse copyWith(void Function(TaskToToDoResponse) updates) => super.copyWith((message) => updates(message as TaskToToDoResponse)) as TaskToToDoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskToToDoResponse create() => TaskToToDoResponse._();
  TaskToToDoResponse createEmptyInstance() => create();
  static $pb.PbList<TaskToToDoResponse> createRepeated() => $pb.PbList<TaskToToDoResponse>();
  @$core.pragma('dart2js:noInline')
  static TaskToToDoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskToToDoResponse>(create);
  static TaskToToDoResponse? _defaultInstance;
}

class TaskToInProgressRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskToInProgressRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  TaskToInProgressRequest._() : super();
  factory TaskToInProgressRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory TaskToInProgressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToInProgressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToInProgressRequest clone() => TaskToInProgressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToInProgressRequest copyWith(void Function(TaskToInProgressRequest) updates) => super.copyWith((message) => updates(message as TaskToInProgressRequest)) as TaskToInProgressRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskToInProgressRequest create() => TaskToInProgressRequest._();
  TaskToInProgressRequest createEmptyInstance() => create();
  static $pb.PbList<TaskToInProgressRequest> createRepeated() => $pb.PbList<TaskToInProgressRequest>();
  @$core.pragma('dart2js:noInline')
  static TaskToInProgressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskToInProgressRequest>(create);
  static TaskToInProgressRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class TaskToInProgressResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskToInProgressResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TaskToInProgressResponse._() : super();
  factory TaskToInProgressResponse() => create();
  factory TaskToInProgressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToInProgressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToInProgressResponse clone() => TaskToInProgressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToInProgressResponse copyWith(void Function(TaskToInProgressResponse) updates) => super.copyWith((message) => updates(message as TaskToInProgressResponse)) as TaskToInProgressResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskToInProgressResponse create() => TaskToInProgressResponse._();
  TaskToInProgressResponse createEmptyInstance() => create();
  static $pb.PbList<TaskToInProgressResponse> createRepeated() => $pb.PbList<TaskToInProgressResponse>();
  @$core.pragma('dart2js:noInline')
  static TaskToInProgressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskToInProgressResponse>(create);
  static TaskToInProgressResponse? _defaultInstance;
}

class TaskToDoneRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskToDoneRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  TaskToDoneRequest._() : super();
  factory TaskToDoneRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory TaskToDoneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToDoneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToDoneRequest clone() => TaskToDoneRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToDoneRequest copyWith(void Function(TaskToDoneRequest) updates) => super.copyWith((message) => updates(message as TaskToDoneRequest)) as TaskToDoneRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskToDoneRequest create() => TaskToDoneRequest._();
  TaskToDoneRequest createEmptyInstance() => create();
  static $pb.PbList<TaskToDoneRequest> createRepeated() => $pb.PbList<TaskToDoneRequest>();
  @$core.pragma('dart2js:noInline')
  static TaskToDoneRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskToDoneRequest>(create);
  static TaskToDoneRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class TaskToDoneResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskToDoneResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TaskToDoneResponse._() : super();
  factory TaskToDoneResponse() => create();
  factory TaskToDoneResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToDoneResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToDoneResponse clone() => TaskToDoneResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToDoneResponse copyWith(void Function(TaskToDoneResponse) updates) => super.copyWith((message) => updates(message as TaskToDoneResponse)) as TaskToDoneResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskToDoneResponse create() => TaskToDoneResponse._();
  TaskToDoneResponse createEmptyInstance() => create();
  static $pb.PbList<TaskToDoneResponse> createRepeated() => $pb.PbList<TaskToDoneResponse>();
  @$core.pragma('dart2js:noInline')
  static TaskToDoneResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskToDoneResponse>(create);
  static TaskToDoneResponse? _defaultInstance;
}

class AssignTaskToUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssignTaskToUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  AssignTaskToUserRequest._() : super();
  factory AssignTaskToUserRequest({
    $core.String? id,
    $core.String? userId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory AssignTaskToUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignTaskToUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignTaskToUserRequest clone() => AssignTaskToUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignTaskToUserRequest copyWith(void Function(AssignTaskToUserRequest) updates) => super.copyWith((message) => updates(message as AssignTaskToUserRequest)) as AssignTaskToUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssignTaskToUserRequest create() => AssignTaskToUserRequest._();
  AssignTaskToUserRequest createEmptyInstance() => create();
  static $pb.PbList<AssignTaskToUserRequest> createRepeated() => $pb.PbList<AssignTaskToUserRequest>();
  @$core.pragma('dart2js:noInline')
  static AssignTaskToUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignTaskToUserRequest>(create);
  static AssignTaskToUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class AssignTaskToUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssignTaskToUserResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AssignTaskToUserResponse._() : super();
  factory AssignTaskToUserResponse() => create();
  factory AssignTaskToUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignTaskToUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignTaskToUserResponse clone() => AssignTaskToUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignTaskToUserResponse copyWith(void Function(AssignTaskToUserResponse) updates) => super.copyWith((message) => updates(message as AssignTaskToUserResponse)) as AssignTaskToUserResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssignTaskToUserResponse create() => AssignTaskToUserResponse._();
  AssignTaskToUserResponse createEmptyInstance() => create();
  static $pb.PbList<AssignTaskToUserResponse> createRepeated() => $pb.PbList<AssignTaskToUserResponse>();
  @$core.pragma('dart2js:noInline')
  static AssignTaskToUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignTaskToUserResponse>(create);
  static AssignTaskToUserResponse? _defaultInstance;
}

class UnassignTaskFromUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnassignTaskFromUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  UnassignTaskFromUserRequest._() : super();
  factory UnassignTaskFromUserRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory UnassignTaskFromUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignTaskFromUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignTaskFromUserRequest clone() => UnassignTaskFromUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignTaskFromUserRequest copyWith(void Function(UnassignTaskFromUserRequest) updates) => super.copyWith((message) => updates(message as UnassignTaskFromUserRequest)) as UnassignTaskFromUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnassignTaskFromUserRequest create() => UnassignTaskFromUserRequest._();
  UnassignTaskFromUserRequest createEmptyInstance() => create();
  static $pb.PbList<UnassignTaskFromUserRequest> createRepeated() => $pb.PbList<UnassignTaskFromUserRequest>();
  @$core.pragma('dart2js:noInline')
  static UnassignTaskFromUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnassignTaskFromUserRequest>(create);
  static UnassignTaskFromUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UnassignTaskFromUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnassignTaskFromUserResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UnassignTaskFromUserResponse._() : super();
  factory UnassignTaskFromUserResponse() => create();
  factory UnassignTaskFromUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignTaskFromUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignTaskFromUserResponse clone() => UnassignTaskFromUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignTaskFromUserResponse copyWith(void Function(UnassignTaskFromUserResponse) updates) => super.copyWith((message) => updates(message as UnassignTaskFromUserResponse)) as UnassignTaskFromUserResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnassignTaskFromUserResponse create() => UnassignTaskFromUserResponse._();
  UnassignTaskFromUserResponse createEmptyInstance() => create();
  static $pb.PbList<UnassignTaskFromUserResponse> createRepeated() => $pb.PbList<UnassignTaskFromUserResponse>();
  @$core.pragma('dart2js:noInline')
  static UnassignTaskFromUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnassignTaskFromUserResponse>(create);
  static UnassignTaskFromUserResponse? _defaultInstance;
}

class PublishTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublishTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  PublishTaskRequest._() : super();
  factory PublishTaskRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory PublishTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishTaskRequest clone() => PublishTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishTaskRequest copyWith(void Function(PublishTaskRequest) updates) => super.copyWith((message) => updates(message as PublishTaskRequest)) as PublishTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishTaskRequest create() => PublishTaskRequest._();
  PublishTaskRequest createEmptyInstance() => create();
  static $pb.PbList<PublishTaskRequest> createRepeated() => $pb.PbList<PublishTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static PublishTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublishTaskRequest>(create);
  static PublishTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class PublishTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublishTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PublishTaskResponse._() : super();
  factory PublishTaskResponse() => create();
  factory PublishTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishTaskResponse clone() => PublishTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishTaskResponse copyWith(void Function(PublishTaskResponse) updates) => super.copyWith((message) => updates(message as PublishTaskResponse)) as PublishTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishTaskResponse create() => PublishTaskResponse._();
  PublishTaskResponse createEmptyInstance() => create();
  static $pb.PbList<PublishTaskResponse> createRepeated() => $pb.PbList<PublishTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static PublishTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublishTaskResponse>(create);
  static PublishTaskResponse? _defaultInstance;
}

class UnpublishTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnpublishTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  UnpublishTaskRequest._() : super();
  factory UnpublishTaskRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory UnpublishTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnpublishTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnpublishTaskRequest clone() => UnpublishTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnpublishTaskRequest copyWith(void Function(UnpublishTaskRequest) updates) => super.copyWith((message) => updates(message as UnpublishTaskRequest)) as UnpublishTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnpublishTaskRequest create() => UnpublishTaskRequest._();
  UnpublishTaskRequest createEmptyInstance() => create();
  static $pb.PbList<UnpublishTaskRequest> createRepeated() => $pb.PbList<UnpublishTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static UnpublishTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnpublishTaskRequest>(create);
  static UnpublishTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UnpublishTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnpublishTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UnpublishTaskResponse._() : super();
  factory UnpublishTaskResponse() => create();
  factory UnpublishTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnpublishTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnpublishTaskResponse clone() => UnpublishTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnpublishTaskResponse copyWith(void Function(UnpublishTaskResponse) updates) => super.copyWith((message) => updates(message as UnpublishTaskResponse)) as UnpublishTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnpublishTaskResponse create() => UnpublishTaskResponse._();
  UnpublishTaskResponse createEmptyInstance() => create();
  static $pb.PbList<UnpublishTaskResponse> createRepeated() => $pb.PbList<UnpublishTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static UnpublishTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnpublishTaskResponse>(create);
  static UnpublishTaskResponse? _defaultInstance;
}

class DeleteTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteTaskRequest._() : super();
  factory DeleteTaskRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskRequest clone() => DeleteTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskRequest copyWith(void Function(DeleteTaskRequest) updates) => super.copyWith((message) => updates(message as DeleteTaskRequest)) as DeleteTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteTaskRequest create() => DeleteTaskRequest._();
  DeleteTaskRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTaskRequest> createRepeated() => $pb.PbList<DeleteTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTaskRequest>(create);
  static DeleteTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteTaskResponse._() : super();
  factory DeleteTaskResponse() => create();
  factory DeleteTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskResponse clone() => DeleteTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskResponse copyWith(void Function(DeleteTaskResponse) updates) => super.copyWith((message) => updates(message as DeleteTaskResponse)) as DeleteTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteTaskResponse create() => DeleteTaskResponse._();
  DeleteTaskResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteTaskResponse> createRepeated() => $pb.PbList<DeleteTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTaskResponse>(create);
  static DeleteTaskResponse? _defaultInstance;
}

class TaskServiceApi {
  $pb.RpcClient _client;
  TaskServiceApi(this._client);

  $async.Future<CreateTaskResponse> createTask($pb.ClientContext? ctx, CreateTaskRequest request) {
    var emptyResponse = CreateTaskResponse();
    return _client.invoke<CreateTaskResponse>(ctx, 'TaskService', 'CreateTask', request, emptyResponse);
  }
  $async.Future<GetTaskResponse> getTask($pb.ClientContext? ctx, GetTaskRequest request) {
    var emptyResponse = GetTaskResponse();
    return _client.invoke<GetTaskResponse>(ctx, 'TaskService', 'GetTask', request, emptyResponse);
  }
  $async.Future<GetTasksByPatientResponse> getTasksByPatient($pb.ClientContext? ctx, GetTasksByPatientRequest request) {
    var emptyResponse = GetTasksByPatientResponse();
    return _client.invoke<GetTasksByPatientResponse>(ctx, 'TaskService', 'GetTasksByPatient', request, emptyResponse);
  }
  $async.Future<UpdateTaskResponse> updateTask($pb.ClientContext? ctx, UpdateTaskRequest request) {
    var emptyResponse = UpdateTaskResponse();
    return _client.invoke<UpdateTaskResponse>(ctx, 'TaskService', 'UpdateTask', request, emptyResponse);
  }
  $async.Future<AddSubTaskResponse> addSubTask($pb.ClientContext? ctx, AddSubTaskRequest request) {
    var emptyResponse = AddSubTaskResponse();
    return _client.invoke<AddSubTaskResponse>(ctx, 'TaskService', 'AddSubTask', request, emptyResponse);
  }
  $async.Future<RemoveSubTaskResponse> removeSubTask($pb.ClientContext? ctx, RemoveSubTaskRequest request) {
    var emptyResponse = RemoveSubTaskResponse();
    return _client.invoke<RemoveSubTaskResponse>(ctx, 'TaskService', 'RemoveSubTask', request, emptyResponse);
  }
  $async.Future<SubTaskToToDoResponse> subTaskToToDo($pb.ClientContext? ctx, SubTaskToToDoRequest request) {
    var emptyResponse = SubTaskToToDoResponse();
    return _client.invoke<SubTaskToToDoResponse>(ctx, 'TaskService', 'SubTaskToToDo', request, emptyResponse);
  }
  $async.Future<SubTaskToDoneResponse> subTaskToDone($pb.ClientContext? ctx, SubTaskToDoneRequest request) {
    var emptyResponse = SubTaskToDoneResponse();
    return _client.invoke<SubTaskToDoneResponse>(ctx, 'TaskService', 'SubTaskToDone', request, emptyResponse);
  }
  $async.Future<TaskToToDoResponse> taskToToDo($pb.ClientContext? ctx, TaskToToDoRequest request) {
    var emptyResponse = TaskToToDoResponse();
    return _client.invoke<TaskToToDoResponse>(ctx, 'TaskService', 'TaskToToDo', request, emptyResponse);
  }
  $async.Future<TaskToInProgressResponse> taskToInProgress($pb.ClientContext? ctx, TaskToInProgressRequest request) {
    var emptyResponse = TaskToInProgressResponse();
    return _client.invoke<TaskToInProgressResponse>(ctx, 'TaskService', 'TaskToInProgress', request, emptyResponse);
  }
  $async.Future<TaskToDoneResponse> taskToDone($pb.ClientContext? ctx, TaskToDoneRequest request) {
    var emptyResponse = TaskToDoneResponse();
    return _client.invoke<TaskToDoneResponse>(ctx, 'TaskService', 'TaskToDone', request, emptyResponse);
  }
  $async.Future<AssignTaskToUserResponse> assignTaskToUser($pb.ClientContext? ctx, AssignTaskToUserRequest request) {
    var emptyResponse = AssignTaskToUserResponse();
    return _client.invoke<AssignTaskToUserResponse>(ctx, 'TaskService', 'AssignTaskToUser', request, emptyResponse);
  }
  $async.Future<UnassignTaskFromUserResponse> unassignTaskFromUser($pb.ClientContext? ctx, UnassignTaskFromUserRequest request) {
    var emptyResponse = UnassignTaskFromUserResponse();
    return _client.invoke<UnassignTaskFromUserResponse>(ctx, 'TaskService', 'UnassignTaskFromUser', request, emptyResponse);
  }
  $async.Future<PublishTaskResponse> publishTask($pb.ClientContext? ctx, PublishTaskRequest request) {
    var emptyResponse = PublishTaskResponse();
    return _client.invoke<PublishTaskResponse>(ctx, 'TaskService', 'PublishTask', request, emptyResponse);
  }
  $async.Future<UnpublishTaskResponse> unpublishTask($pb.ClientContext? ctx, UnpublishTaskRequest request) {
    var emptyResponse = UnpublishTaskResponse();
    return _client.invoke<UnpublishTaskResponse>(ctx, 'TaskService', 'UnpublishTask', request, emptyResponse);
  }
  $async.Future<DeleteTaskResponse> deleteTask($pb.ClientContext? ctx, DeleteTaskRequest request) {
    var emptyResponse = DeleteTaskResponse();
    return _client.invoke<DeleteTaskResponse>(ctx, 'TaskService', 'DeleteTask', request, emptyResponse);
  }
}

