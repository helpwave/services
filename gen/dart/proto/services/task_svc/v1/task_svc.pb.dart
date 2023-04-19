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
    ..hasRequiredFields = false
  ;

  CreateTaskRequest._() : super();
  factory CreateTaskRequest({
    $core.String? name,
    $core.String? description,
    $core.String? patientId,
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

class GetTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<TaskStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignedUserId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patientId')
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
}

class GetTasksByPatientTask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTasksByPatientTask', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..e<TaskStatus>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assignedUserId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patientId')
    ..hasRequiredFields = false
  ;

  GetTasksByPatientTask._() : super();
  factory GetTasksByPatientTask({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    TaskStatus? status,
    $core.String? assignedUserId,
    $core.String? patientId,
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
    return _result;
  }
  factory GetTasksByPatientTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientTask clone() => GetTasksByPatientTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientTask copyWith(void Function(GetTasksByPatientTask) updates) => super.copyWith((message) => updates(message as GetTasksByPatientTask)) as GetTasksByPatientTask; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientTask create() => GetTasksByPatientTask._();
  GetTasksByPatientTask createEmptyInstance() => create();
  static $pb.PbList<GetTasksByPatientTask> createRepeated() => $pb.PbList<GetTasksByPatientTask>();
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTasksByPatientTask>(create);
  static GetTasksByPatientTask? _defaultInstance;

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

class GetTasksByPatientResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTasksByPatientResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetTasksByPatientTask>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientTask.create)
    ..hasRequiredFields = false
  ;

  GetTasksByPatientResponse._() : super();
  factory GetTasksByPatientResponse({
    $core.Iterable<GetTasksByPatientTask>? tasks,
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
  $core.List<GetTasksByPatientTask> get tasks => $_getList(0);
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
  $async.Future<UpdateTaskResponse> updateTask($pb.ClientContext? ctx, UpdateTaskRequest request) {
    var emptyResponse = UpdateTaskResponse();
    return _client.invoke<UpdateTaskResponse>(ctx, 'TaskService', 'UpdateTask', request, emptyResponse);
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
}

