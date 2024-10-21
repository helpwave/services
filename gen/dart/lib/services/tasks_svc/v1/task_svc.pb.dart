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

import '../../../google/protobuf/timestamp.pb.dart' as $21;
import '../../../libs/common/v1/conflict.pb.dart' as $22;
import 'types.pbenum.dart' as $24;

class CreateTaskRequest_SubTask extends $pb.GeneratedMessage {
  factory CreateTaskRequest_SubTask({
    $core.String? name,
    $core.bool? done,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  CreateTaskRequest_SubTask._() : super();
  factory CreateTaskRequest_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskRequest_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskRequest.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'done')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskRequest_SubTask clone() => CreateTaskRequest_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskRequest_SubTask copyWith(void Function(CreateTaskRequest_SubTask) updates) => super.copyWith((message) => updates(message as CreateTaskRequest_SubTask)) as CreateTaskRequest_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest_SubTask create() => CreateTaskRequest_SubTask._();
  CreateTaskRequest_SubTask createEmptyInstance() => create();
  static $pb.PbList<CreateTaskRequest_SubTask> createRepeated() => $pb.PbList<CreateTaskRequest_SubTask>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskRequest_SubTask>(create);
  static CreateTaskRequest_SubTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get done => $_getBF(1);
  @$pb.TagNumber(2)
  set done($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearDone() => clearField(2);
}

class CreateTaskRequest extends $pb.GeneratedMessage {
  factory CreateTaskRequest({
    $core.String? name,
    $core.String? description,
    $core.String? patientId,
    $core.bool? public,
    $21.Timestamp? dueAt,
    $24.TaskStatus? initialStatus,
    $core.String? assignedUserId,
    $core.Iterable<CreateTaskRequest_SubTask>? subtasks,
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
    if (assignedUserId != null) {
      $result.assignedUserId = assignedUserId;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
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
    ..aOM<$21.Timestamp>(5, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..e<$24.TaskStatus>(6, _omitFieldNames ? '' : 'initialStatus', $pb.PbFieldType.OE, defaultOrMaker: $24.TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: $24.TaskStatus.valueOf, enumValues: $24.TaskStatus.values)
    ..aOS(7, _omitFieldNames ? '' : 'assignedUserId')
    ..pc<CreateTaskRequest_SubTask>(8, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: CreateTaskRequest_SubTask.create)
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
  $21.Timestamp get dueAt => $_getN(4);
  @$pb.TagNumber(5)
  set dueAt($21.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDueAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearDueAt() => clearField(5);
  @$pb.TagNumber(5)
  $21.Timestamp ensureDueAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $24.TaskStatus get initialStatus => $_getN(5);
  @$pb.TagNumber(6)
  set initialStatus($24.TaskStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasInitialStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearInitialStatus() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get assignedUserId => $_getSZ(6);
  @$pb.TagNumber(7)
  set assignedUserId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAssignedUserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearAssignedUserId() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<CreateTaskRequest_SubTask> get subtasks => $_getList(7);
}

class CreateTaskResponse extends $pb.GeneratedMessage {
  factory CreateTaskResponse({
    $core.String? id,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  CreateTaskResponse._() : super();
  factory CreateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'consistency')
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

  @$pb.TagNumber(2)
  $core.String get consistency => $_getSZ(1);
  @$pb.TagNumber(2)
  set consistency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsistency() => clearField(2);
}

class UpdateTaskRequest extends $pb.GeneratedMessage {
  factory UpdateTaskRequest({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $21.Timestamp? dueAt,
    $24.TaskStatus? status,
    $core.bool? public,
    $core.String? consistency,
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
    if (status != null) {
      $result.status = status;
    }
    if (public != null) {
      $result.public = public;
    }
    if (consistency != null) {
      $result.consistency = consistency;
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
    ..aOM<$21.Timestamp>(4, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..e<$24.TaskStatus>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $24.TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: $24.TaskStatus.valueOf, enumValues: $24.TaskStatus.values)
    ..aOB(6, _omitFieldNames ? '' : 'public')
    ..aOS(7, _omitFieldNames ? '' : 'consistency')
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
  $21.Timestamp get dueAt => $_getN(3);
  @$pb.TagNumber(4)
  set dueAt($21.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDueAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearDueAt() => clearField(4);
  @$pb.TagNumber(4)
  $21.Timestamp ensureDueAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $24.TaskStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status($24.TaskStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get public => $_getBF(5);
  @$pb.TagNumber(6)
  set public($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublic() => $_has(5);
  @$pb.TagNumber(6)
  void clearPublic() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get consistency => $_getSZ(6);
  @$pb.TagNumber(7)
  set consistency($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasConsistency() => $_has(6);
  @$pb.TagNumber(7)
  void clearConsistency() => clearField(7);
}

class UpdateTaskResponse extends $pb.GeneratedMessage {
  factory UpdateTaskResponse({
    $22.Conflict? conflict,
    $core.String? consistency,
  }) {
    final $result = create();
    if (conflict != null) {
      $result.conflict = conflict;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  UpdateTaskResponse._() : super();
  factory UpdateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOM<$22.Conflict>(1, _omitFieldNames ? '' : 'conflict', subBuilder: $22.Conflict.create)
    ..aOS(2, _omitFieldNames ? '' : 'consistency')
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

  @$pb.TagNumber(1)
  $22.Conflict get conflict => $_getN(0);
  @$pb.TagNumber(1)
  set conflict($22.Conflict v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConflict() => $_has(0);
  @$pb.TagNumber(1)
  void clearConflict() => clearField(1);
  @$pb.TagNumber(1)
  $22.Conflict ensureConflict() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get consistency => $_getSZ(1);
  @$pb.TagNumber(2)
  set consistency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsistency() => clearField(2);
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

class GetTaskResponse_Patient extends $pb.GeneratedMessage {
  factory GetTaskResponse_Patient({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetTaskResponse_Patient._() : super();
  factory GetTaskResponse_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskResponse.Patient', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskResponse_Patient clone() => GetTaskResponse_Patient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskResponse_Patient copyWith(void Function(GetTaskResponse_Patient) updates) => super.copyWith((message) => updates(message as GetTaskResponse_Patient)) as GetTaskResponse_Patient;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskResponse_Patient create() => GetTaskResponse_Patient._();
  GetTaskResponse_Patient createEmptyInstance() => create();
  static $pb.PbList<GetTaskResponse_Patient> createRepeated() => $pb.PbList<GetTaskResponse_Patient>();
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse_Patient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTaskResponse_Patient>(create);
  static GetTaskResponse_Patient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get humanReadableIdentifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set humanReadableIdentifier($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHumanReadableIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearHumanReadableIdentifier() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}

class GetTaskResponse_SubTask extends $pb.GeneratedMessage {
  factory GetTaskResponse_SubTask({
    $core.String? id,
    $core.String? name,
    $core.bool? done,
    $core.String? createdBy,
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
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    return $result;
  }
  GetTaskResponse_SubTask._() : super();
  factory GetTaskResponse_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskResponse.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..aOS(4, _omitFieldNames ? '' : 'createdBy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTaskResponse_SubTask clone() => GetTaskResponse_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTaskResponse_SubTask copyWith(void Function(GetTaskResponse_SubTask) updates) => super.copyWith((message) => updates(message as GetTaskResponse_SubTask)) as GetTaskResponse_SubTask;

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

  @$pb.TagNumber(4)
  $core.String get createdBy => $_getSZ(3);
  @$pb.TagNumber(4)
  set createdBy($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedBy() => clearField(4);
}

class GetTaskResponse extends $pb.GeneratedMessage {
  factory GetTaskResponse({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? assignedUserId,
    $core.Iterable<GetTaskResponse_SubTask>? subtasks,
    $24.TaskStatus? status,
    $21.Timestamp? createdAt,
    $core.bool? public,
    $21.Timestamp? dueAt,
    $core.String? createdBy,
    GetTaskResponse_Patient? patient,
    $core.String? consistency,
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
    if (assignedUserId != null) {
      $result.assignedUserId = assignedUserId;
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
    if (public != null) {
      $result.public = public;
    }
    if (dueAt != null) {
      $result.dueAt = dueAt;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (patient != null) {
      $result.patient = patient;
    }
    if (consistency != null) {
      $result.consistency = consistency;
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
    ..aOS(4, _omitFieldNames ? '' : 'assignedUserId')
    ..pc<GetTaskResponse_SubTask>(5, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTaskResponse_SubTask.create)
    ..e<$24.TaskStatus>(6, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $24.TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: $24.TaskStatus.valueOf, enumValues: $24.TaskStatus.values)
    ..aOM<$21.Timestamp>(7, _omitFieldNames ? '' : 'createdAt', subBuilder: $21.Timestamp.create)
    ..aOB(8, _omitFieldNames ? '' : 'public')
    ..aOM<$21.Timestamp>(9, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..aOS(10, _omitFieldNames ? '' : 'createdBy')
    ..aOM<GetTaskResponse_Patient>(11, _omitFieldNames ? '' : 'patient', subBuilder: GetTaskResponse_Patient.create)
    ..aOS(12, _omitFieldNames ? '' : 'consistency')
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
  $core.String get assignedUserId => $_getSZ(3);
  @$pb.TagNumber(4)
  set assignedUserId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAssignedUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssignedUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<GetTaskResponse_SubTask> get subtasks => $_getList(4);

  @$pb.TagNumber(6)
  $24.TaskStatus get status => $_getN(5);
  @$pb.TagNumber(6)
  set status($24.TaskStatus v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  $21.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(7)
  set createdAt($21.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $21.Timestamp ensureCreatedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.bool get public => $_getBF(7);
  @$pb.TagNumber(8)
  set public($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPublic() => $_has(7);
  @$pb.TagNumber(8)
  void clearPublic() => clearField(8);

  @$pb.TagNumber(9)
  $21.Timestamp get dueAt => $_getN(8);
  @$pb.TagNumber(9)
  set dueAt($21.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasDueAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearDueAt() => clearField(9);
  @$pb.TagNumber(9)
  $21.Timestamp ensureDueAt() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get createdBy => $_getSZ(9);
  @$pb.TagNumber(10)
  set createdBy($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedBy() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedBy() => clearField(10);

  @$pb.TagNumber(11)
  GetTaskResponse_Patient get patient => $_getN(10);
  @$pb.TagNumber(11)
  set patient(GetTaskResponse_Patient v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasPatient() => $_has(10);
  @$pb.TagNumber(11)
  void clearPatient() => clearField(11);
  @$pb.TagNumber(11)
  GetTaskResponse_Patient ensurePatient() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.String get consistency => $_getSZ(11);
  @$pb.TagNumber(12)
  set consistency($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasConsistency() => $_has(11);
  @$pb.TagNumber(12)
  void clearConsistency() => clearField(12);
}

class GetTasksByPatientRequest extends $pb.GeneratedMessage {
  factory GetTasksByPatientRequest({
    $core.String? patientId,
  }) {
    final $result = create();
    if (patientId != null) {
      $result.patientId = patientId;
    }
    return $result;
  }
  GetTasksByPatientRequest._() : super();
  factory GetTasksByPatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'patientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientRequest clone() => GetTasksByPatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientRequest copyWith(void Function(GetTasksByPatientRequest) updates) => super.copyWith((message) => updates(message as GetTasksByPatientRequest)) as GetTasksByPatientRequest;

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
  factory GetTasksByPatientResponse_Task_SubTask({
    $core.String? id,
    $core.String? name,
    $core.bool? done,
    $core.String? createdBy,
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
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    return $result;
  }
  GetTasksByPatientResponse_Task_SubTask._() : super();
  factory GetTasksByPatientResponse_Task_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientResponse_Task_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientResponse.Task.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..aOS(4, _omitFieldNames ? '' : 'createdBy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse_Task_SubTask clone() => GetTasksByPatientResponse_Task_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse_Task_SubTask copyWith(void Function(GetTasksByPatientResponse_Task_SubTask) updates) => super.copyWith((message) => updates(message as GetTasksByPatientResponse_Task_SubTask)) as GetTasksByPatientResponse_Task_SubTask;

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

  @$pb.TagNumber(4)
  $core.String get createdBy => $_getSZ(3);
  @$pb.TagNumber(4)
  set createdBy($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedBy() => clearField(4);
}

class GetTasksByPatientResponse_Task extends $pb.GeneratedMessage {
  factory GetTasksByPatientResponse_Task({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $24.TaskStatus? status,
    $core.String? assignedUserId,
    $core.String? patientId,
    $core.bool? public,
    $21.Timestamp? dueAt,
    $core.String? createdBy,
    $core.Iterable<GetTasksByPatientResponse_Task_SubTask>? subtasks,
    $21.Timestamp? createdAt,
    $core.String? consistency,
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
    if (status != null) {
      $result.status = status;
    }
    if (assignedUserId != null) {
      $result.assignedUserId = assignedUserId;
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
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetTasksByPatientResponse_Task._() : super();
  factory GetTasksByPatientResponse_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientResponse_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientResponse.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..e<$24.TaskStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $24.TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: $24.TaskStatus.valueOf, enumValues: $24.TaskStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'assignedUserId')
    ..aOS(6, _omitFieldNames ? '' : 'patientId')
    ..aOB(7, _omitFieldNames ? '' : 'public')
    ..aOM<$21.Timestamp>(8, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..aOS(9, _omitFieldNames ? '' : 'createdBy')
    ..pc<GetTasksByPatientResponse_Task_SubTask>(10, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientResponse_Task_SubTask.create)
    ..aOM<$21.Timestamp>(11, _omitFieldNames ? '' : 'createdAt', subBuilder: $21.Timestamp.create)
    ..aOS(12, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse_Task clone() => GetTasksByPatientResponse_Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse_Task copyWith(void Function(GetTasksByPatientResponse_Task) updates) => super.copyWith((message) => updates(message as GetTasksByPatientResponse_Task)) as GetTasksByPatientResponse_Task;

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
  $24.TaskStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status($24.TaskStatus v) { setField(4, v); }
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
  $21.Timestamp get dueAt => $_getN(7);
  @$pb.TagNumber(8)
  set dueAt($21.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDueAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearDueAt() => clearField(8);
  @$pb.TagNumber(8)
  $21.Timestamp ensureDueAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get createdBy => $_getSZ(8);
  @$pb.TagNumber(9)
  set createdBy($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreatedBy() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedBy() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<GetTasksByPatientResponse_Task_SubTask> get subtasks => $_getList(9);

  @$pb.TagNumber(11)
  $21.Timestamp get createdAt => $_getN(10);
  @$pb.TagNumber(11)
  set createdAt($21.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedAt() => clearField(11);
  @$pb.TagNumber(11)
  $21.Timestamp ensureCreatedAt() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.String get consistency => $_getSZ(11);
  @$pb.TagNumber(12)
  set consistency($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasConsistency() => $_has(11);
  @$pb.TagNumber(12)
  void clearConsistency() => clearField(12);
}

class GetTasksByPatientResponse extends $pb.GeneratedMessage {
  factory GetTasksByPatientResponse({
    $core.Iterable<GetTasksByPatientResponse_Task>? tasks,
  }) {
    final $result = create();
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  GetTasksByPatientResponse._() : super();
  factory GetTasksByPatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..pc<GetTasksByPatientResponse_Task>(1, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientResponse_Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse clone() => GetTasksByPatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientResponse copyWith(void Function(GetTasksByPatientResponse) updates) => super.copyWith((message) => updates(message as GetTasksByPatientResponse)) as GetTasksByPatientResponse;

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

class GetTasksByPatientSortedByStatusRequest extends $pb.GeneratedMessage {
  factory GetTasksByPatientSortedByStatusRequest({
    $core.String? patientId,
  }) {
    final $result = create();
    if (patientId != null) {
      $result.patientId = patientId;
    }
    return $result;
  }
  GetTasksByPatientSortedByStatusRequest._() : super();
  factory GetTasksByPatientSortedByStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientSortedByStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientSortedByStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'patientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientSortedByStatusRequest clone() => GetTasksByPatientSortedByStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientSortedByStatusRequest copyWith(void Function(GetTasksByPatientSortedByStatusRequest) updates) => super.copyWith((message) => updates(message as GetTasksByPatientSortedByStatusRequest)) as GetTasksByPatientSortedByStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientSortedByStatusRequest create() => GetTasksByPatientSortedByStatusRequest._();
  GetTasksByPatientSortedByStatusRequest createEmptyInstance() => create();
  static $pb.PbList<GetTasksByPatientSortedByStatusRequest> createRepeated() => $pb.PbList<GetTasksByPatientSortedByStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientSortedByStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTasksByPatientSortedByStatusRequest>(create);
  static GetTasksByPatientSortedByStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get patientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set patientId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPatientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPatientId() => clearField(1);
}

class GetTasksByPatientSortedByStatusResponse_Task_SubTask extends $pb.GeneratedMessage {
  factory GetTasksByPatientSortedByStatusResponse_Task_SubTask({
    $core.String? id,
    $core.String? name,
    $core.bool? done,
    $core.String? createdBy,
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
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    return $result;
  }
  GetTasksByPatientSortedByStatusResponse_Task_SubTask._() : super();
  factory GetTasksByPatientSortedByStatusResponse_Task_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientSortedByStatusResponse_Task_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientSortedByStatusResponse.Task.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..aOS(4, _omitFieldNames ? '' : 'createdBy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientSortedByStatusResponse_Task_SubTask clone() => GetTasksByPatientSortedByStatusResponse_Task_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientSortedByStatusResponse_Task_SubTask copyWith(void Function(GetTasksByPatientSortedByStatusResponse_Task_SubTask) updates) => super.copyWith((message) => updates(message as GetTasksByPatientSortedByStatusResponse_Task_SubTask)) as GetTasksByPatientSortedByStatusResponse_Task_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientSortedByStatusResponse_Task_SubTask create() => GetTasksByPatientSortedByStatusResponse_Task_SubTask._();
  GetTasksByPatientSortedByStatusResponse_Task_SubTask createEmptyInstance() => create();
  static $pb.PbList<GetTasksByPatientSortedByStatusResponse_Task_SubTask> createRepeated() => $pb.PbList<GetTasksByPatientSortedByStatusResponse_Task_SubTask>();
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientSortedByStatusResponse_Task_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTasksByPatientSortedByStatusResponse_Task_SubTask>(create);
  static GetTasksByPatientSortedByStatusResponse_Task_SubTask? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get createdBy => $_getSZ(3);
  @$pb.TagNumber(4)
  set createdBy($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedBy() => clearField(4);
}

class GetTasksByPatientSortedByStatusResponse_Task extends $pb.GeneratedMessage {
  factory GetTasksByPatientSortedByStatusResponse_Task({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? assignedUserId,
    $core.String? patientId,
    $core.bool? public,
    $21.Timestamp? dueAt,
    $core.String? createdBy,
    $core.Iterable<GetTasksByPatientSortedByStatusResponse_Task_SubTask>? subtasks,
    $21.Timestamp? createdAt,
    $core.String? consistency,
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
    if (assignedUserId != null) {
      $result.assignedUserId = assignedUserId;
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
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetTasksByPatientSortedByStatusResponse_Task._() : super();
  factory GetTasksByPatientSortedByStatusResponse_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientSortedByStatusResponse_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientSortedByStatusResponse.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'assignedUserId')
    ..aOS(5, _omitFieldNames ? '' : 'patientId')
    ..aOB(6, _omitFieldNames ? '' : 'public')
    ..aOM<$21.Timestamp>(7, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..aOS(8, _omitFieldNames ? '' : 'createdBy')
    ..pc<GetTasksByPatientSortedByStatusResponse_Task_SubTask>(9, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientSortedByStatusResponse_Task_SubTask.create)
    ..aOM<$21.Timestamp>(10, _omitFieldNames ? '' : 'createdAt', subBuilder: $21.Timestamp.create)
    ..aOS(11, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientSortedByStatusResponse_Task clone() => GetTasksByPatientSortedByStatusResponse_Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientSortedByStatusResponse_Task copyWith(void Function(GetTasksByPatientSortedByStatusResponse_Task) updates) => super.copyWith((message) => updates(message as GetTasksByPatientSortedByStatusResponse_Task)) as GetTasksByPatientSortedByStatusResponse_Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientSortedByStatusResponse_Task create() => GetTasksByPatientSortedByStatusResponse_Task._();
  GetTasksByPatientSortedByStatusResponse_Task createEmptyInstance() => create();
  static $pb.PbList<GetTasksByPatientSortedByStatusResponse_Task> createRepeated() => $pb.PbList<GetTasksByPatientSortedByStatusResponse_Task>();
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientSortedByStatusResponse_Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTasksByPatientSortedByStatusResponse_Task>(create);
  static GetTasksByPatientSortedByStatusResponse_Task? _defaultInstance;

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
  $core.String get assignedUserId => $_getSZ(3);
  @$pb.TagNumber(4)
  set assignedUserId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAssignedUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssignedUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get patientId => $_getSZ(4);
  @$pb.TagNumber(5)
  set patientId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPatientId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPatientId() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get public => $_getBF(5);
  @$pb.TagNumber(6)
  set public($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPublic() => $_has(5);
  @$pb.TagNumber(6)
  void clearPublic() => clearField(6);

  @$pb.TagNumber(7)
  $21.Timestamp get dueAt => $_getN(6);
  @$pb.TagNumber(7)
  set dueAt($21.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasDueAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearDueAt() => clearField(7);
  @$pb.TagNumber(7)
  $21.Timestamp ensureDueAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get createdBy => $_getSZ(7);
  @$pb.TagNumber(8)
  set createdBy($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreatedBy() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedBy() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<GetTasksByPatientSortedByStatusResponse_Task_SubTask> get subtasks => $_getList(8);

  @$pb.TagNumber(10)
  $21.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(10)
  set createdAt($21.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $21.Timestamp ensureCreatedAt() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.String get consistency => $_getSZ(10);
  @$pb.TagNumber(11)
  set consistency($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasConsistency() => $_has(10);
  @$pb.TagNumber(11)
  void clearConsistency() => clearField(11);
}

class GetTasksByPatientSortedByStatusResponse extends $pb.GeneratedMessage {
  factory GetTasksByPatientSortedByStatusResponse({
    $core.Iterable<GetTasksByPatientSortedByStatusResponse_Task>? todo,
    $core.Iterable<GetTasksByPatientSortedByStatusResponse_Task>? inProgress,
    $core.Iterable<GetTasksByPatientSortedByStatusResponse_Task>? done,
  }) {
    final $result = create();
    if (todo != null) {
      $result.todo.addAll(todo);
    }
    if (inProgress != null) {
      $result.inProgress.addAll(inProgress);
    }
    if (done != null) {
      $result.done.addAll(done);
    }
    return $result;
  }
  GetTasksByPatientSortedByStatusResponse._() : super();
  factory GetTasksByPatientSortedByStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientSortedByStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientSortedByStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..pc<GetTasksByPatientSortedByStatusResponse_Task>(1, _omitFieldNames ? '' : 'todo', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientSortedByStatusResponse_Task.create)
    ..pc<GetTasksByPatientSortedByStatusResponse_Task>(2, _omitFieldNames ? '' : 'inProgress', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientSortedByStatusResponse_Task.create)
    ..pc<GetTasksByPatientSortedByStatusResponse_Task>(3, _omitFieldNames ? '' : 'done', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientSortedByStatusResponse_Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTasksByPatientSortedByStatusResponse clone() => GetTasksByPatientSortedByStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTasksByPatientSortedByStatusResponse copyWith(void Function(GetTasksByPatientSortedByStatusResponse) updates) => super.copyWith((message) => updates(message as GetTasksByPatientSortedByStatusResponse)) as GetTasksByPatientSortedByStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientSortedByStatusResponse create() => GetTasksByPatientSortedByStatusResponse._();
  GetTasksByPatientSortedByStatusResponse createEmptyInstance() => create();
  static $pb.PbList<GetTasksByPatientSortedByStatusResponse> createRepeated() => $pb.PbList<GetTasksByPatientSortedByStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTasksByPatientSortedByStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTasksByPatientSortedByStatusResponse>(create);
  static GetTasksByPatientSortedByStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetTasksByPatientSortedByStatusResponse_Task> get todo => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<GetTasksByPatientSortedByStatusResponse_Task> get inProgress => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<GetTasksByPatientSortedByStatusResponse_Task> get done => $_getList(2);
}

class GetAssignedTasksRequest extends $pb.GeneratedMessage {
  factory GetAssignedTasksRequest() => create();
  GetAssignedTasksRequest._() : super();
  factory GetAssignedTasksRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssignedTasksRequest clone() => GetAssignedTasksRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssignedTasksRequest copyWith(void Function(GetAssignedTasksRequest) updates) => super.copyWith((message) => updates(message as GetAssignedTasksRequest)) as GetAssignedTasksRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksRequest create() => GetAssignedTasksRequest._();
  GetAssignedTasksRequest createEmptyInstance() => create();
  static $pb.PbList<GetAssignedTasksRequest> createRepeated() => $pb.PbList<GetAssignedTasksRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedTasksRequest>(create);
  static GetAssignedTasksRequest? _defaultInstance;
}

class GetAssignedTasksResponse_Task_Patient extends $pb.GeneratedMessage {
  factory GetAssignedTasksResponse_Task_Patient({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetAssignedTasksResponse_Task_Patient._() : super();
  factory GetAssignedTasksResponse_Task_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksResponse_Task_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksResponse.Task.Patient', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse_Task_Patient clone() => GetAssignedTasksResponse_Task_Patient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse_Task_Patient copyWith(void Function(GetAssignedTasksResponse_Task_Patient) updates) => super.copyWith((message) => updates(message as GetAssignedTasksResponse_Task_Patient)) as GetAssignedTasksResponse_Task_Patient;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse_Task_Patient create() => GetAssignedTasksResponse_Task_Patient._();
  GetAssignedTasksResponse_Task_Patient createEmptyInstance() => create();
  static $pb.PbList<GetAssignedTasksResponse_Task_Patient> createRepeated() => $pb.PbList<GetAssignedTasksResponse_Task_Patient>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse_Task_Patient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedTasksResponse_Task_Patient>(create);
  static GetAssignedTasksResponse_Task_Patient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get humanReadableIdentifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set humanReadableIdentifier($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHumanReadableIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearHumanReadableIdentifier() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}

class GetAssignedTasksResponse_Task_SubTask extends $pb.GeneratedMessage {
  factory GetAssignedTasksResponse_Task_SubTask({
    $core.String? id,
    $core.String? name,
    $core.bool? done,
    $core.String? createdBy,
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
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    return $result;
  }
  GetAssignedTasksResponse_Task_SubTask._() : super();
  factory GetAssignedTasksResponse_Task_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksResponse_Task_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksResponse.Task.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..aOS(4, _omitFieldNames ? '' : 'createdBy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse_Task_SubTask clone() => GetAssignedTasksResponse_Task_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse_Task_SubTask copyWith(void Function(GetAssignedTasksResponse_Task_SubTask) updates) => super.copyWith((message) => updates(message as GetAssignedTasksResponse_Task_SubTask)) as GetAssignedTasksResponse_Task_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse_Task_SubTask create() => GetAssignedTasksResponse_Task_SubTask._();
  GetAssignedTasksResponse_Task_SubTask createEmptyInstance() => create();
  static $pb.PbList<GetAssignedTasksResponse_Task_SubTask> createRepeated() => $pb.PbList<GetAssignedTasksResponse_Task_SubTask>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse_Task_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedTasksResponse_Task_SubTask>(create);
  static GetAssignedTasksResponse_Task_SubTask? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get createdBy => $_getSZ(3);
  @$pb.TagNumber(4)
  set createdBy($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedBy() => clearField(4);
}

class GetAssignedTasksResponse_Task extends $pb.GeneratedMessage {
  factory GetAssignedTasksResponse_Task({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $24.TaskStatus? status,
    $core.String? assignedUserId,
    GetAssignedTasksResponse_Task_Patient? patient,
    $core.bool? public,
    $21.Timestamp? dueAt,
    $core.String? createdBy,
    $core.Iterable<GetAssignedTasksResponse_Task_SubTask>? subtasks,
    $21.Timestamp? createdAt,
    $core.String? consistency,
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
    if (status != null) {
      $result.status = status;
    }
    if (assignedUserId != null) {
      $result.assignedUserId = assignedUserId;
    }
    if (patient != null) {
      $result.patient = patient;
    }
    if (public != null) {
      $result.public = public;
    }
    if (dueAt != null) {
      $result.dueAt = dueAt;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetAssignedTasksResponse_Task._() : super();
  factory GetAssignedTasksResponse_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksResponse_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksResponse.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..e<$24.TaskStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $24.TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: $24.TaskStatus.valueOf, enumValues: $24.TaskStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'assignedUserId')
    ..aOM<GetAssignedTasksResponse_Task_Patient>(6, _omitFieldNames ? '' : 'patient', subBuilder: GetAssignedTasksResponse_Task_Patient.create)
    ..aOB(7, _omitFieldNames ? '' : 'public')
    ..aOM<$21.Timestamp>(8, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..aOS(9, _omitFieldNames ? '' : 'createdBy')
    ..pc<GetAssignedTasksResponse_Task_SubTask>(10, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetAssignedTasksResponse_Task_SubTask.create)
    ..aOM<$21.Timestamp>(11, _omitFieldNames ? '' : 'createdAt', subBuilder: $21.Timestamp.create)
    ..aOS(12, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse_Task clone() => GetAssignedTasksResponse_Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse_Task copyWith(void Function(GetAssignedTasksResponse_Task) updates) => super.copyWith((message) => updates(message as GetAssignedTasksResponse_Task)) as GetAssignedTasksResponse_Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse_Task create() => GetAssignedTasksResponse_Task._();
  GetAssignedTasksResponse_Task createEmptyInstance() => create();
  static $pb.PbList<GetAssignedTasksResponse_Task> createRepeated() => $pb.PbList<GetAssignedTasksResponse_Task>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse_Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedTasksResponse_Task>(create);
  static GetAssignedTasksResponse_Task? _defaultInstance;

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
  $24.TaskStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status($24.TaskStatus v) { setField(4, v); }
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
  GetAssignedTasksResponse_Task_Patient get patient => $_getN(5);
  @$pb.TagNumber(6)
  set patient(GetAssignedTasksResponse_Task_Patient v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPatient() => $_has(5);
  @$pb.TagNumber(6)
  void clearPatient() => clearField(6);
  @$pb.TagNumber(6)
  GetAssignedTasksResponse_Task_Patient ensurePatient() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get public => $_getBF(6);
  @$pb.TagNumber(7)
  set public($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPublic() => $_has(6);
  @$pb.TagNumber(7)
  void clearPublic() => clearField(7);

  @$pb.TagNumber(8)
  $21.Timestamp get dueAt => $_getN(7);
  @$pb.TagNumber(8)
  set dueAt($21.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDueAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearDueAt() => clearField(8);
  @$pb.TagNumber(8)
  $21.Timestamp ensureDueAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.String get createdBy => $_getSZ(8);
  @$pb.TagNumber(9)
  set createdBy($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreatedBy() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedBy() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<GetAssignedTasksResponse_Task_SubTask> get subtasks => $_getList(9);

  @$pb.TagNumber(11)
  $21.Timestamp get createdAt => $_getN(10);
  @$pb.TagNumber(11)
  set createdAt($21.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedAt() => clearField(11);
  @$pb.TagNumber(11)
  $21.Timestamp ensureCreatedAt() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.String get consistency => $_getSZ(11);
  @$pb.TagNumber(12)
  set consistency($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasConsistency() => $_has(11);
  @$pb.TagNumber(12)
  void clearConsistency() => clearField(12);
}

class GetAssignedTasksResponse extends $pb.GeneratedMessage {
  factory GetAssignedTasksResponse({
    $core.Iterable<GetAssignedTasksResponse_Task>? tasks,
  }) {
    final $result = create();
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  GetAssignedTasksResponse._() : super();
  factory GetAssignedTasksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..pc<GetAssignedTasksResponse_Task>(1, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: GetAssignedTasksResponse_Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse clone() => GetAssignedTasksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAssignedTasksResponse copyWith(void Function(GetAssignedTasksResponse) updates) => super.copyWith((message) => updates(message as GetAssignedTasksResponse)) as GetAssignedTasksResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse create() => GetAssignedTasksResponse._();
  GetAssignedTasksResponse createEmptyInstance() => create();
  static $pb.PbList<GetAssignedTasksResponse> createRepeated() => $pb.PbList<GetAssignedTasksResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedTasksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedTasksResponse>(create);
  static GetAssignedTasksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetAssignedTasksResponse_Task> get tasks => $_getList(0);
}

class AssignTaskRequest extends $pb.GeneratedMessage {
  factory AssignTaskRequest({
    $core.String? taskId,
    $core.String? userId,
    $core.String? consistency,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  AssignTaskRequest._() : super();
  factory AssignTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
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

  @$pb.TagNumber(3)
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}

class AssignTaskResponse extends $pb.GeneratedMessage {
  factory AssignTaskResponse({
    $22.Conflict? conflict,
    $core.String? consistency,
  }) {
    final $result = create();
    if (conflict != null) {
      $result.conflict = conflict;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  AssignTaskResponse._() : super();
  factory AssignTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOM<$22.Conflict>(1, _omitFieldNames ? '' : 'conflict', subBuilder: $22.Conflict.create)
    ..aOS(2, _omitFieldNames ? '' : 'consistency')
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

  @$pb.TagNumber(1)
  $22.Conflict get conflict => $_getN(0);
  @$pb.TagNumber(1)
  set conflict($22.Conflict v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConflict() => $_has(0);
  @$pb.TagNumber(1)
  void clearConflict() => clearField(1);
  @$pb.TagNumber(1)
  $22.Conflict ensureConflict() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get consistency => $_getSZ(1);
  @$pb.TagNumber(2)
  set consistency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsistency() => clearField(2);
}

class UnassignTaskRequest extends $pb.GeneratedMessage {
  factory UnassignTaskRequest({
    $core.String? taskId,
    $core.String? userId,
    $core.String? consistency,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  UnassignTaskRequest._() : super();
  factory UnassignTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
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

  @$pb.TagNumber(3)
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}

class UnassignTaskResponse extends $pb.GeneratedMessage {
  factory UnassignTaskResponse({
    $22.Conflict? conflict,
    $core.String? consistency,
  }) {
    final $result = create();
    if (conflict != null) {
      $result.conflict = conflict;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  UnassignTaskResponse._() : super();
  factory UnassignTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOM<$22.Conflict>(1, _omitFieldNames ? '' : 'conflict', subBuilder: $22.Conflict.create)
    ..aOS(2, _omitFieldNames ? '' : 'consistency')
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

  @$pb.TagNumber(1)
  $22.Conflict get conflict => $_getN(0);
  @$pb.TagNumber(1)
  set conflict($22.Conflict v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConflict() => $_has(0);
  @$pb.TagNumber(1)
  void clearConflict() => clearField(1);
  @$pb.TagNumber(1)
  $22.Conflict ensureConflict() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get consistency => $_getSZ(1);
  @$pb.TagNumber(2)
  set consistency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsistency() => clearField(2);
}

class CreateSubtaskRequest_Subtask extends $pb.GeneratedMessage {
  factory CreateSubtaskRequest_Subtask({
    $core.String? name,
    $core.bool? done,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  CreateSubtaskRequest_Subtask._() : super();
  factory CreateSubtaskRequest_Subtask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSubtaskRequest_Subtask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSubtaskRequest.Subtask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'done')
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

  @$pb.TagNumber(2)
  $core.bool get done => $_getBF(1);
  @$pb.TagNumber(2)
  set done($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearDone() => clearField(2);
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
    $core.String? taskConsistency,
  }) {
    final $result = create();
    if (subtaskId != null) {
      $result.subtaskId = subtaskId;
    }
    if (taskConsistency != null) {
      $result.taskConsistency = taskConsistency;
    }
    return $result;
  }
  CreateSubtaskResponse._() : super();
  factory CreateSubtaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSubtaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subtaskId')
    ..aOS(2, _omitFieldNames ? '' : 'taskConsistency')
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

  @$pb.TagNumber(2)
  $core.String get taskConsistency => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskConsistency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskConsistency() => clearField(2);
}

class UpdateSubtaskRequest_Subtask extends $pb.GeneratedMessage {
  factory UpdateSubtaskRequest_Subtask({
    $core.String? name,
    $core.bool? done,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  UpdateSubtaskRequest_Subtask._() : super();
  factory UpdateSubtaskRequest_Subtask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSubtaskRequest_Subtask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSubtaskRequest.Subtask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'done')
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

  @$pb.TagNumber(2)
  $core.bool get done => $_getBF(1);
  @$pb.TagNumber(2)
  set done($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearDone() => clearField(2);
}

class UpdateSubtaskRequest extends $pb.GeneratedMessage {
  factory UpdateSubtaskRequest({
    $core.String? taskId,
    $core.String? subtaskId,
    UpdateSubtaskRequest_Subtask? subtask,
    $core.String? taskConsistency,
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
    if (taskConsistency != null) {
      $result.taskConsistency = taskConsistency;
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
    ..aOS(4, _omitFieldNames ? '' : 'taskConsistency')
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

  @$pb.TagNumber(4)
  $core.String get taskConsistency => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskConsistency($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTaskConsistency() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskConsistency() => clearField(4);
}

class UpdateSubtaskResponse extends $pb.GeneratedMessage {
  factory UpdateSubtaskResponse({
    $22.Conflict? conflict,
    $core.String? taskConsistency,
  }) {
    final $result = create();
    if (conflict != null) {
      $result.conflict = conflict;
    }
    if (taskConsistency != null) {
      $result.taskConsistency = taskConsistency;
    }
    return $result;
  }
  UpdateSubtaskResponse._() : super();
  factory UpdateSubtaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSubtaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSubtaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOM<$22.Conflict>(1, _omitFieldNames ? '' : 'conflict', subBuilder: $22.Conflict.create)
    ..aOS(2, _omitFieldNames ? '' : 'taskConsistency')
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

  @$pb.TagNumber(1)
  $22.Conflict get conflict => $_getN(0);
  @$pb.TagNumber(1)
  set conflict($22.Conflict v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConflict() => $_has(0);
  @$pb.TagNumber(1)
  void clearConflict() => clearField(1);
  @$pb.TagNumber(1)
  $22.Conflict ensureConflict() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get taskConsistency => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskConsistency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskConsistency() => clearField(2);
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

class RemoveTaskDueDateRequest extends $pb.GeneratedMessage {
  factory RemoveTaskDueDateRequest({
    $core.String? taskId,
  }) {
    final $result = create();
    if (taskId != null) {
      $result.taskId = taskId;
    }
    return $result;
  }
  RemoveTaskDueDateRequest._() : super();
  factory RemoveTaskDueDateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveTaskDueDateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveTaskDueDateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveTaskDueDateRequest clone() => RemoveTaskDueDateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveTaskDueDateRequest copyWith(void Function(RemoveTaskDueDateRequest) updates) => super.copyWith((message) => updates(message as RemoveTaskDueDateRequest)) as RemoveTaskDueDateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveTaskDueDateRequest create() => RemoveTaskDueDateRequest._();
  RemoveTaskDueDateRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveTaskDueDateRequest> createRepeated() => $pb.PbList<RemoveTaskDueDateRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveTaskDueDateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveTaskDueDateRequest>(create);
  static RemoveTaskDueDateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => clearField(1);
}

class RemoveTaskDueDateResponse extends $pb.GeneratedMessage {
  factory RemoveTaskDueDateResponse({
    $core.String? consistency,
  }) {
    final $result = create();
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  RemoveTaskDueDateResponse._() : super();
  factory RemoveTaskDueDateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveTaskDueDateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveTaskDueDateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveTaskDueDateResponse clone() => RemoveTaskDueDateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveTaskDueDateResponse copyWith(void Function(RemoveTaskDueDateResponse) updates) => super.copyWith((message) => updates(message as RemoveTaskDueDateResponse)) as RemoveTaskDueDateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveTaskDueDateResponse create() => RemoveTaskDueDateResponse._();
  RemoveTaskDueDateResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveTaskDueDateResponse> createRepeated() => $pb.PbList<RemoveTaskDueDateResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveTaskDueDateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveTaskDueDateResponse>(create);
  static RemoveTaskDueDateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get consistency => $_getSZ(0);
  @$pb.TagNumber(1)
  set consistency($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConsistency() => $_has(0);
  @$pb.TagNumber(1)
  void clearConsistency() => clearField(1);
}

class DeleteTaskRequest extends $pb.GeneratedMessage {
  factory DeleteTaskRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteTaskRequest._() : super();
  factory DeleteTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskRequest clone() => DeleteTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskRequest copyWith(void Function(DeleteTaskRequest) updates) => super.copyWith((message) => updates(message as DeleteTaskRequest)) as DeleteTaskRequest;

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
  factory DeleteTaskResponse() => create();
  DeleteTaskResponse._() : super();
  factory DeleteTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskResponse clone() => DeleteTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskResponse copyWith(void Function(DeleteTaskResponse) updates) => super.copyWith((message) => updates(message as DeleteTaskResponse)) as DeleteTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskResponse create() => DeleteTaskResponse._();
  DeleteTaskResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteTaskResponse> createRepeated() => $pb.PbList<DeleteTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTaskResponse>(create);
  static DeleteTaskResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
