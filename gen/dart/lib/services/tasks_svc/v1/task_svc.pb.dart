//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/task_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $17;
import 'task_svc.pbenum.dart';

export 'task_svc.pbenum.dart';

class CreateTaskRequest extends $pb.GeneratedMessage {
  factory CreateTaskRequest({
    $core.String? name,
    $core.String? description,
    $core.String? patientId,
    $core.bool? public,
    $17.Timestamp? dueAt,
    TaskStatus? initialStatus,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (public != null) {
      $result.public = public;
    }
    if (dueAt != null) {
      $result.dueAt = dueAt;
    }
    if (initialStatus != null) {
      $result.initialStatus = initialStatus;
    }
    return $result;
  }
  CreateTaskRequest._() : super();
  factory CreateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'patientId')
    ..aOB(4, _omitFieldNames ? '' : 'public')
    ..aOM<$17.Timestamp>(5, _omitFieldNames ? '' : 'dueAt', subBuilder: $17.Timestamp.create)
    ..e<TaskStatus>(6, _omitFieldNames ? '' : 'initialStatus', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskRequest clone() => CreateTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskRequest copyWith(void Function(CreateTaskRequest) updates) => super.copyWith((message) => updates(message as CreateTaskRequest)) as CreateTaskRequest;

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

  @$pb.TagNumber(5)
  $17.Timestamp get dueAt => $_getN(4);
  @$pb.TagNumber(5)
  set dueAt($17.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDueAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearDueAt() => clearField(5);
  @$pb.TagNumber(5)
  $17.Timestamp ensureDueAt() => $_ensure(4);

  @$pb.TagNumber(6)
  TaskStatus get initialStatus => $_getN(5);
  @$pb.TagNumber(6)
  set initialStatus(TaskStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasInitialStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearInitialStatus() => clearField(6);
}

class CreateTaskResponse extends $pb.GeneratedMessage {
  factory CreateTaskResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateTaskResponse._() : super();
  factory CreateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskResponse clone() => CreateTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskResponse copyWith(void Function(CreateTaskResponse) updates) => super.copyWith((message) => updates(message as CreateTaskResponse)) as CreateTaskResponse;

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

class UpdateTaskRequest extends $pb.GeneratedMessage {
  factory UpdateTaskRequest({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $17.Timestamp? dueAt,
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
    if (dueAt != null) {
      $result.dueAt = dueAt;
    }
    return $result;
  }
  UpdateTaskRequest._() : super();
  factory UpdateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$17.Timestamp>(4, _omitFieldNames ? '' : 'dueAt', subBuilder: $17.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskRequest clone() => UpdateTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskRequest copyWith(void Function(UpdateTaskRequest) updates) => super.copyWith((message) => updates(message as UpdateTaskRequest)) as UpdateTaskRequest;

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

  @$pb.TagNumber(4)
  $17.Timestamp get dueAt => $_getN(3);
  @$pb.TagNumber(4)
  set dueAt($17.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDueAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearDueAt() => clearField(4);
  @$pb.TagNumber(4)
  $17.Timestamp ensureDueAt() => $_ensure(3);
}

class UpdateTaskResponse extends $pb.GeneratedMessage {
  factory UpdateTaskResponse() => create();
  UpdateTaskResponse._() : super();
  factory UpdateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskResponse clone() => UpdateTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskResponse copyWith(void Function(UpdateTaskResponse) updates) => super.copyWith((message) => updates(message as UpdateTaskResponse)) as UpdateTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskResponse create() => UpdateTaskResponse._();
  UpdateTaskResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskResponse> createRepeated() => $pb.PbList<UpdateTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskResponse>(create);
  static UpdateTaskResponse? _defaultInstance;
}

class GetTaskRequest extends $pb.GeneratedMessage {
  factory GetTaskRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetTaskRequest._() : super();
  factory GetTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskRequest clone() => GetTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskRequest copyWith(void Function(GetTaskRequest) updates) => super.copyWith((message) => updates(message as GetTaskRequest)) as GetTaskRequest;

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

class GetTaskResponse_Subtask extends $pb.GeneratedMessage {
  factory GetTaskResponse_Subtask({
    $core.String? id,
    $core.String? name,
    $core.bool? done,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  GetTaskResponse_Subtask._() : super();
  factory GetTaskResponse_Subtask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse_Subtask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskResponse.Subtask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskResponse_Subtask clone() => GetTaskResponse_Subtask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskResponse_Subtask copyWith(void Function(GetTaskResponse_Subtask) updates) => super.copyWith((message) => updates(message as GetTaskResponse_Subtask)) as GetTaskResponse_Subtask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskResponse_Subtask create() => GetTaskResponse_Subtask._();
  GetTaskResponse_Subtask createEmptyInstance() => create();
  static $pb.PbList<GetTaskResponse_Subtask> createRepeated() => $pb.PbList<GetTaskResponse_Subtask>();
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse_Subtask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskResponse_Subtask>(create);
  static GetTaskResponse_Subtask? _defaultInstance;

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
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class GetTaskResponse extends $pb.GeneratedMessage {
  factory GetTaskResponse({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.Iterable<$core.String>? assignedUsers,
    $core.Iterable<GetTaskResponse_Subtask>? subtasks,
    TaskStatus? status,
    $17.Timestamp? createdAt,
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
    if (assignedUsers != null) {
      $result.assignedUsers.addAll(assignedUsers);
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    if (status != null) {
      $result.status = status;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    return $result;
  }
  GetTaskResponse._() : super();
  factory GetTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..pPS(4, _omitFieldNames ? '' : 'assignedUsers')
    ..pc<GetTaskResponse_Subtask>(5, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTaskResponse_Subtask.create)
    ..e<TaskStatus>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..aOM<$17.Timestamp>(7, _omitFieldNames ? '' : 'createdAt', subBuilder: $17.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskResponse clone() => GetTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskResponse copyWith(void Function(GetTaskResponse) updates) => super.copyWith((message) => updates(message as GetTaskResponse)) as GetTaskResponse;

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
  $core.List<$core.String> get assignedUsers => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<GetTaskResponse_Subtask> get subtasks => $_getList(4);

  @$pb.TagNumber(6)
  TaskStatus get status => $_getN(5);
  @$pb.TagNumber(6)
  set status(TaskStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  $17.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(7)
  set createdAt($17.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $17.Timestamp ensureCreatedAt() => $_ensure(6);
}

class AssignTaskRequest extends $pb.GeneratedMessage {
  factory AssignTaskRequest({
    $core.String? taskId,
    $core.String? userId,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  AssignTaskRequest._() : super();
  factory AssignTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignTaskRequest clone() => AssignTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignTaskRequest copyWith(void Function(AssignTaskRequest) updates) => super.copyWith((message) => updates(message as AssignTaskRequest)) as AssignTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssignTaskRequest create() => AssignTaskRequest._();
  AssignTaskRequest createEmptyInstance() => create();
  static $pb.PbList<AssignTaskRequest> createRepeated() => $pb.PbList<AssignTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static AssignTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignTaskRequest>(create);
  static AssignTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class AssignTaskResponse extends $pb.GeneratedMessage {
  factory AssignTaskResponse() => create();
  AssignTaskResponse._() : super();
  factory AssignTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignTaskResponse clone() => AssignTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignTaskResponse copyWith(void Function(AssignTaskResponse) updates) => super.copyWith((message) => updates(message as AssignTaskResponse)) as AssignTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssignTaskResponse create() => AssignTaskResponse._();
  AssignTaskResponse createEmptyInstance() => create();
  static $pb.PbList<AssignTaskResponse> createRepeated() => $pb.PbList<AssignTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static AssignTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignTaskResponse>(create);
  static AssignTaskResponse? _defaultInstance;
}

class UnassignTaskRequest extends $pb.GeneratedMessage {
  factory UnassignTaskRequest({
    $core.String? taskId,
    $core.String? userId,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UnassignTaskRequest._() : super();
  factory UnassignTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignTaskRequest clone() => UnassignTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignTaskRequest copyWith(void Function(UnassignTaskRequest) updates) => super.copyWith((message) => updates(message as UnassignTaskRequest)) as UnassignTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnassignTaskRequest create() => UnassignTaskRequest._();
  UnassignTaskRequest createEmptyInstance() => create();
  static $pb.PbList<UnassignTaskRequest> createRepeated() => $pb.PbList<UnassignTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static UnassignTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnassignTaskRequest>(create);
  static UnassignTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class UnassignTaskResponse extends $pb.GeneratedMessage {
  factory UnassignTaskResponse() => create();
  UnassignTaskResponse._() : super();
  factory UnassignTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignTaskResponse clone() => UnassignTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignTaskResponse copyWith(void Function(UnassignTaskResponse) updates) => super.copyWith((message) => updates(message as UnassignTaskResponse)) as UnassignTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnassignTaskResponse create() => UnassignTaskResponse._();
  UnassignTaskResponse createEmptyInstance() => create();
  static $pb.PbList<UnassignTaskResponse> createRepeated() => $pb.PbList<UnassignTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static UnassignTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnassignTaskResponse>(create);
  static UnassignTaskResponse? _defaultInstance;
}

class CreateSubtaskRequest_Subtask extends $pb.GeneratedMessage {
  factory CreateSubtaskRequest_Subtask({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateSubtaskRequest_Subtask._() : super();
  factory CreateSubtaskRequest_Subtask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSubtaskRequest_Subtask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSubtaskRequest.Subtask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSubtaskRequest_Subtask clone() => CreateSubtaskRequest_Subtask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSubtaskRequest_Subtask copyWith(void Function(CreateSubtaskRequest_Subtask) updates) => super.copyWith((message) => updates(message as CreateSubtaskRequest_Subtask)) as CreateSubtaskRequest_Subtask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSubtaskRequest_Subtask create() => CreateSubtaskRequest_Subtask._();
  CreateSubtaskRequest_Subtask createEmptyInstance() => create();
  static $pb.PbList<CreateSubtaskRequest_Subtask> createRepeated() => $pb.PbList<CreateSubtaskRequest_Subtask>();
  @$core.pragma('dart2js:noInline')
  static CreateSubtaskRequest_Subtask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSubtaskRequest_Subtask>(create);
  static CreateSubtaskRequest_Subtask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class CreateSubtaskRequest extends $pb.GeneratedMessage {
  factory CreateSubtaskRequest({
    $core.String? taskId,
    CreateSubtaskRequest_Subtask? subtask,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (subtask != null) {
      $result.subtask = subtask;
    }
    return $result;
  }
  CreateSubtaskRequest._() : super();
  factory CreateSubtaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSubtaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSubtaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOM<CreateSubtaskRequest_Subtask>(2, _omitFieldNames ? '' : 'subtask', subBuilder: CreateSubtaskRequest_Subtask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSubtaskRequest clone() => CreateSubtaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSubtaskRequest copyWith(void Function(CreateSubtaskRequest) updates) => super.copyWith((message) => updates(message as CreateSubtaskRequest)) as CreateSubtaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSubtaskRequest create() => CreateSubtaskRequest._();
  CreateSubtaskRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSubtaskRequest> createRepeated() => $pb.PbList<CreateSubtaskRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSubtaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSubtaskRequest>(create);
  static CreateSubtaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  CreateSubtaskRequest_Subtask get subtask => $_getN(1);
  @$pb.TagNumber(2)
  set subtask(CreateSubtaskRequest_Subtask v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtask() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtask() => clearField(2);
  @$pb.TagNumber(2)
  CreateSubtaskRequest_Subtask ensureSubtask() => $_ensure(1);
}

class CreateSubtaskResponse extends $pb.GeneratedMessage {
  factory CreateSubtaskResponse({
    $core.String? subtaskId,
  }) {
    final $result = create();
    if (subtaskId != null) {
      $result.subtaskId = subtaskId;
    }
    return $result;
  }
  CreateSubtaskResponse._() : super();
  factory CreateSubtaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSubtaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subtaskId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSubtaskResponse clone() => CreateSubtaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSubtaskResponse copyWith(void Function(CreateSubtaskResponse) updates) => super.copyWith((message) => updates(message as CreateSubtaskResponse)) as CreateSubtaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSubtaskResponse create() => CreateSubtaskResponse._();
  CreateSubtaskResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSubtaskResponse> createRepeated() => $pb.PbList<CreateSubtaskResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSubtaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSubtaskResponse>(create);
  static CreateSubtaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subtaskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set subtaskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubtaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubtaskId() => clearField(1);
}

class UpdateSubtaskRequest_Subtask extends $pb.GeneratedMessage {
  factory UpdateSubtaskRequest_Subtask({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  UpdateSubtaskRequest_Subtask._() : super();
  factory UpdateSubtaskRequest_Subtask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSubtaskRequest_Subtask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSubtaskRequest.Subtask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSubtaskRequest_Subtask clone() => UpdateSubtaskRequest_Subtask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSubtaskRequest_Subtask copyWith(void Function(UpdateSubtaskRequest_Subtask) updates) => super.copyWith((message) => updates(message as UpdateSubtaskRequest_Subtask)) as UpdateSubtaskRequest_Subtask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSubtaskRequest_Subtask create() => UpdateSubtaskRequest_Subtask._();
  UpdateSubtaskRequest_Subtask createEmptyInstance() => create();
  static $pb.PbList<UpdateSubtaskRequest_Subtask> createRepeated() => $pb.PbList<UpdateSubtaskRequest_Subtask>();
  @$core.pragma('dart2js:noInline')
  static UpdateSubtaskRequest_Subtask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSubtaskRequest_Subtask>(create);
  static UpdateSubtaskRequest_Subtask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class UpdateSubtaskRequest extends $pb.GeneratedMessage {
  factory UpdateSubtaskRequest({
    $core.String? taskId,
    $core.String? subtaskId,
    UpdateSubtaskRequest_Subtask? subtask,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (subtaskId != null) {
      $result.subtaskId = subtaskId;
    }
    if (subtask != null) {
      $result.subtask = subtask;
    }
    return $result;
  }
  UpdateSubtaskRequest._() : super();
  factory UpdateSubtaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSubtaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSubtaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'subtaskId')
    ..aOM<UpdateSubtaskRequest_Subtask>(3, _omitFieldNames ? '' : 'subtask', subBuilder: UpdateSubtaskRequest_Subtask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSubtaskRequest clone() => UpdateSubtaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSubtaskRequest copyWith(void Function(UpdateSubtaskRequest) updates) => super.copyWith((message) => updates(message as UpdateSubtaskRequest)) as UpdateSubtaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSubtaskRequest create() => UpdateSubtaskRequest._();
  UpdateSubtaskRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSubtaskRequest> createRepeated() => $pb.PbList<UpdateSubtaskRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSubtaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSubtaskRequest>(create);
  static UpdateSubtaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subtaskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subtaskId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtaskId() => clearField(2);

  @$pb.TagNumber(3)
  UpdateSubtaskRequest_Subtask get subtask => $_getN(2);
  @$pb.TagNumber(3)
  set subtask(UpdateSubtaskRequest_Subtask v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubtask() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubtask() => clearField(3);
  @$pb.TagNumber(3)
  UpdateSubtaskRequest_Subtask ensureSubtask() => $_ensure(2);
}

class UpdateSubtaskResponse extends $pb.GeneratedMessage {
  factory UpdateSubtaskResponse() => create();
  UpdateSubtaskResponse._() : super();
  factory UpdateSubtaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSubtaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSubtaskResponse clone() => UpdateSubtaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSubtaskResponse copyWith(void Function(UpdateSubtaskResponse) updates) => super.copyWith((message) => updates(message as UpdateSubtaskResponse)) as UpdateSubtaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSubtaskResponse create() => UpdateSubtaskResponse._();
  UpdateSubtaskResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSubtaskResponse> createRepeated() => $pb.PbList<UpdateSubtaskResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSubtaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSubtaskResponse>(create);
  static UpdateSubtaskResponse? _defaultInstance;
}

class CompleteSubtaskRequest extends $pb.GeneratedMessage {
  factory CompleteSubtaskRequest({
    $core.String? taskId,
    $core.String? subtaskId,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (subtaskId != null) {
      $result.subtaskId = subtaskId;
    }
    return $result;
  }
  CompleteSubtaskRequest._() : super();
  factory CompleteSubtaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompleteSubtaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompleteSubtaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'subtaskId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompleteSubtaskRequest clone() => CompleteSubtaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompleteSubtaskRequest copyWith(void Function(CompleteSubtaskRequest) updates) => super.copyWith((message) => updates(message as CompleteSubtaskRequest)) as CompleteSubtaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompleteSubtaskRequest create() => CompleteSubtaskRequest._();
  CompleteSubtaskRequest createEmptyInstance() => create();
  static $pb.PbList<CompleteSubtaskRequest> createRepeated() => $pb.PbList<CompleteSubtaskRequest>();
  @$core.pragma('dart2js:noInline')
  static CompleteSubtaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompleteSubtaskRequest>(create);
  static CompleteSubtaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subtaskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subtaskId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtaskId() => clearField(2);
}

class CompleteSubtaskResponse extends $pb.GeneratedMessage {
  factory CompleteSubtaskResponse() => create();
  CompleteSubtaskResponse._() : super();
  factory CompleteSubtaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompleteSubtaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompleteSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompleteSubtaskResponse clone() => CompleteSubtaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompleteSubtaskResponse copyWith(void Function(CompleteSubtaskResponse) updates) => super.copyWith((message) => updates(message as CompleteSubtaskResponse)) as CompleteSubtaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompleteSubtaskResponse create() => CompleteSubtaskResponse._();
  CompleteSubtaskResponse createEmptyInstance() => create();
  static $pb.PbList<CompleteSubtaskResponse> createRepeated() => $pb.PbList<CompleteSubtaskResponse>();
  @$core.pragma('dart2js:noInline')
  static CompleteSubtaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompleteSubtaskResponse>(create);
  static CompleteSubtaskResponse? _defaultInstance;
}

class UncompleteSubtaskRequest extends $pb.GeneratedMessage {
  factory UncompleteSubtaskRequest({
    $core.String? taskId,
    $core.String? subtaskId,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (subtaskId != null) {
      $result.subtaskId = subtaskId;
    }
    return $result;
  }
  UncompleteSubtaskRequest._() : super();
  factory UncompleteSubtaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UncompleteSubtaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UncompleteSubtaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'subtaskId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UncompleteSubtaskRequest clone() => UncompleteSubtaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UncompleteSubtaskRequest copyWith(void Function(UncompleteSubtaskRequest) updates) => super.copyWith((message) => updates(message as UncompleteSubtaskRequest)) as UncompleteSubtaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UncompleteSubtaskRequest create() => UncompleteSubtaskRequest._();
  UncompleteSubtaskRequest createEmptyInstance() => create();
  static $pb.PbList<UncompleteSubtaskRequest> createRepeated() => $pb.PbList<UncompleteSubtaskRequest>();
  @$core.pragma('dart2js:noInline')
  static UncompleteSubtaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UncompleteSubtaskRequest>(create);
  static UncompleteSubtaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subtaskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subtaskId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtaskId() => clearField(2);
}

class UncompleteSubtaskResponse extends $pb.GeneratedMessage {
  factory UncompleteSubtaskResponse() => create();
  UncompleteSubtaskResponse._() : super();
  factory UncompleteSubtaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UncompleteSubtaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UncompleteSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UncompleteSubtaskResponse clone() => UncompleteSubtaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UncompleteSubtaskResponse copyWith(void Function(UncompleteSubtaskResponse) updates) => super.copyWith((message) => updates(message as UncompleteSubtaskResponse)) as UncompleteSubtaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UncompleteSubtaskResponse create() => UncompleteSubtaskResponse._();
  UncompleteSubtaskResponse createEmptyInstance() => create();
  static $pb.PbList<UncompleteSubtaskResponse> createRepeated() => $pb.PbList<UncompleteSubtaskResponse>();
  @$core.pragma('dart2js:noInline')
  static UncompleteSubtaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UncompleteSubtaskResponse>(create);
  static UncompleteSubtaskResponse? _defaultInstance;
}

class DeleteSubtaskRequest extends $pb.GeneratedMessage {
  factory DeleteSubtaskRequest({
    $core.String? taskId,
    $core.String? subtaskId,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (subtaskId != null) {
      $result.subtaskId = subtaskId;
    }
    return $result;
  }
  DeleteSubtaskRequest._() : super();
  factory DeleteSubtaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSubtaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSubtaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'subtaskId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSubtaskRequest clone() => DeleteSubtaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSubtaskRequest copyWith(void Function(DeleteSubtaskRequest) updates) => super.copyWith((message) => updates(message as DeleteSubtaskRequest)) as DeleteSubtaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSubtaskRequest create() => DeleteSubtaskRequest._();
  DeleteSubtaskRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSubtaskRequest> createRepeated() => $pb.PbList<DeleteSubtaskRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSubtaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSubtaskRequest>(create);
  static DeleteSubtaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subtaskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set subtaskId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtaskId() => clearField(2);
}

class DeleteSubtaskResponse extends $pb.GeneratedMessage {
  factory DeleteSubtaskResponse() => create();
  DeleteSubtaskResponse._() : super();
  factory DeleteSubtaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSubtaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSubtaskResponse clone() => DeleteSubtaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSubtaskResponse copyWith(void Function(DeleteSubtaskResponse) updates) => super.copyWith((message) => updates(message as DeleteSubtaskResponse)) as DeleteSubtaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSubtaskResponse create() => DeleteSubtaskResponse._();
  DeleteSubtaskResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSubtaskResponse> createRepeated() => $pb.PbList<DeleteSubtaskResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSubtaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSubtaskResponse>(create);
  static DeleteSubtaskResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
