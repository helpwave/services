//
//  Generated code. Do not modify.
//  source: proto/services/tasks_svc/v1/task_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'task_svc.pbenum.dart';

class CreateTaskRequest extends $pb.GeneratedMessage {
  factory CreateTaskRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateTaskRequest._() : super();
  factory CreateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskResponse.Subtask', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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
    $core.Iterable<$core.String>? assignedUsers,
    $core.Iterable<GetTaskResponse_Subtask>? subtasks,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (assignedUsers != null) {
      $result.assignedUsers.addAll(assignedUsers);
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    return $result;
  }
  GetTaskResponse._() : super();
  factory GetTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'assignedUsers')
    ..pc<GetTaskResponse_Subtask>(4, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTaskResponse_Subtask.create)
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
  $core.List<$core.String> get assignedUsers => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<GetTaskResponse_Subtask> get subtasks => $_getList(3);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSubtaskRequest.Subtask', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSubtaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompleteSubtaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CompleteSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UncompleteSubtaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UncompleteSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
