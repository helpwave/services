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

import '../../../google/protobuf/timestamp.pb.dart' as $21;
import 'task_svc.pbenum.dart';

export 'task_svc.pbenum.dart';

class CreateTaskRequest extends $pb.GeneratedMessage {
  factory CreateTaskRequest({
    $core.String? name,
    $core.String? description,
    $core.String? patientId,
    $core.bool? public,
    $21.Timestamp? dueAt,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'patientId')
    ..aOB(4, _omitFieldNames ? '' : 'public')
    ..aOM<$21.Timestamp>(5, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskResponse.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

class GetTaskResponse_Patient extends $pb.GeneratedMessage {
  factory GetTaskResponse_Patient({
    $core.String? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetTaskResponse_Patient._() : super();
  factory GetTaskResponse_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskResponse.Patient', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
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
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class GetTaskResponse extends $pb.GeneratedMessage {
  factory GetTaskResponse({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    TaskStatus? status,
    $core.String? assignedUserId,
    GetTaskResponse_Patient? patient,
    $core.bool? public,
    $21.Timestamp? dueAt,
    $core.String? createdBy,
    $core.Iterable<GetTaskResponse_SubTask>? subtasks,
    $core.String? organizationId,
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
    if (organizationId != null) {
      $result.organizationId = organizationId;
    }
    return $result;
  }
  GetTaskResponse._() : super();
  factory GetTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..e<TaskStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'assignedUserId')
    ..aOM<GetTaskResponse_Patient>(6, _omitFieldNames ? '' : 'patient', subBuilder: GetTaskResponse_Patient.create)
    ..aOB(7, _omitFieldNames ? '' : 'public')
    ..aOM<$21.Timestamp>(8, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..aOS(9, _omitFieldNames ? '' : 'createdBy')
    ..pc<GetTaskResponse_SubTask>(10, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTaskResponse_SubTask.create)
    ..aOS(11, _omitFieldNames ? '' : 'organizationId')
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
  GetTaskResponse_Patient get patient => $_getN(5);
  @$pb.TagNumber(6)
  set patient(GetTaskResponse_Patient v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPatient() => $_has(5);
  @$pb.TagNumber(6)
  void clearPatient() => clearField(6);
  @$pb.TagNumber(6)
  GetTaskResponse_Patient ensurePatient() => $_ensure(5);

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
  $core.List<GetTaskResponse_SubTask> get subtasks => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get organizationId => $_getSZ(10);
  @$pb.TagNumber(11)
  set organizationId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOrganizationId() => $_has(10);
  @$pb.TagNumber(11)
  void clearOrganizationId() => clearField(11);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientResponse.Task.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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
    TaskStatus? status,
    $core.String? assignedUserId,
    $core.String? patientId,
    $core.bool? public,
    $21.Timestamp? dueAt,
    $core.String? createdBy,
    $core.Iterable<GetTasksByPatientResponse_Task_SubTask>? subtasks,
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
    return $result;
  }
  GetTasksByPatientResponse_Task._() : super();
  factory GetTasksByPatientResponse_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientResponse_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientResponse.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..e<TaskStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'assignedUserId')
    ..aOS(6, _omitFieldNames ? '' : 'patientId')
    ..aOB(7, _omitFieldNames ? '' : 'public')
    ..aOM<$21.Timestamp>(8, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..aOS(9, _omitFieldNames ? '' : 'createdBy')
    ..pc<GetTasksByPatientResponse_Task_SubTask>(10, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientResponse_Task_SubTask.create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientSortedByStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientSortedByStatusResponse.Task.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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
    return $result;
  }
  GetTasksByPatientSortedByStatusResponse_Task._() : super();
  factory GetTasksByPatientSortedByStatusResponse_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTasksByPatientSortedByStatusResponse_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientSortedByStatusResponse.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'assignedUserId')
    ..aOS(6, _omitFieldNames ? '' : 'patientId')
    ..aOB(7, _omitFieldNames ? '' : 'public')
    ..aOM<$21.Timestamp>(8, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..aOS(9, _omitFieldNames ? '' : 'createdBy')
    ..pc<GetTasksByPatientSortedByStatusResponse_Task_SubTask>(10, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetTasksByPatientSortedByStatusResponse_Task_SubTask.create)
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

  @$pb.TagNumber(5)
  $core.String get assignedUserId => $_getSZ(3);
  @$pb.TagNumber(5)
  set assignedUserId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssignedUserId() => $_has(3);
  @$pb.TagNumber(5)
  void clearAssignedUserId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get patientId => $_getSZ(4);
  @$pb.TagNumber(6)
  set patientId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasPatientId() => $_has(4);
  @$pb.TagNumber(6)
  void clearPatientId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get public => $_getBF(5);
  @$pb.TagNumber(7)
  set public($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasPublic() => $_has(5);
  @$pb.TagNumber(7)
  void clearPublic() => clearField(7);

  @$pb.TagNumber(8)
  $21.Timestamp get dueAt => $_getN(6);
  @$pb.TagNumber(8)
  set dueAt($21.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDueAt() => $_has(6);
  @$pb.TagNumber(8)
  void clearDueAt() => clearField(8);
  @$pb.TagNumber(8)
  $21.Timestamp ensureDueAt() => $_ensure(6);

  @$pb.TagNumber(9)
  $core.String get createdBy => $_getSZ(7);
  @$pb.TagNumber(9)
  set createdBy($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreatedBy() => $_has(7);
  @$pb.TagNumber(9)
  void clearCreatedBy() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<GetTasksByPatientSortedByStatusResponse_Task_SubTask> get subtasks => $_getList(8);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTasksByPatientSortedByStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetAssignedTasksResponse_Task_Patient._() : super();
  factory GetAssignedTasksResponse_Task_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksResponse_Task_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksResponse.Task.Patient', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
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
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksResponse.Task.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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
    TaskStatus? status,
    $core.String? assignedUserId,
    GetAssignedTasksResponse_Task_Patient? patient,
    $core.bool? public,
    $21.Timestamp? dueAt,
    $core.String? createdBy,
    $core.Iterable<GetAssignedTasksResponse_Task_SubTask>? subtasks,
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
    return $result;
  }
  GetAssignedTasksResponse_Task._() : super();
  factory GetAssignedTasksResponse_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedTasksResponse_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksResponse.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..e<TaskStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: TaskStatus.valueOf, enumValues: TaskStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'assignedUserId')
    ..aOM<GetAssignedTasksResponse_Task_Patient>(6, _omitFieldNames ? '' : 'patient', subBuilder: GetAssignedTasksResponse_Task_Patient.create)
    ..aOB(7, _omitFieldNames ? '' : 'public')
    ..aOM<$21.Timestamp>(8, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..aOS(9, _omitFieldNames ? '' : 'createdBy')
    ..pc<GetAssignedTasksResponse_Task_SubTask>(10, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetAssignedTasksResponse_Task_SubTask.create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAssignedTasksResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

class UpdateTaskRequest extends $pb.GeneratedMessage {
  factory UpdateTaskRequest({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $21.Timestamp? dueAt,
    $core.bool? public,
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
    if (public != null) {
      $result.public = public;
    }
    return $result;
  }
  UpdateTaskRequest._() : super();
  factory UpdateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$21.Timestamp>(4, _omitFieldNames ? '' : 'dueAt', subBuilder: $21.Timestamp.create)
    ..aOB(5, _omitFieldNames ? '' : 'public')
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
  $core.bool get public => $_getBF(4);
  @$pb.TagNumber(5)
  set public($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPublic() => $_has(4);
  @$pb.TagNumber(5)
  void clearPublic() => clearField(5);
}

class UpdateTaskResponse extends $pb.GeneratedMessage {
  factory UpdateTaskResponse() => create();
  UpdateTaskResponse._() : super();
  factory UpdateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

class AddSubTaskRequest extends $pb.GeneratedMessage {
  factory AddSubTaskRequest({
    $core.String? name,
    $core.String? taskId,
    $core.bool? done,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (taskId != null) {
      $result.taskId = taskId;
    }
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  AddSubTaskRequest._() : super();
  factory AddSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSubTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'taskId')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSubTaskRequest clone() => AddSubTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSubTaskRequest copyWith(void Function(AddSubTaskRequest) updates) => super.copyWith((message) => updates(message as AddSubTaskRequest)) as AddSubTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddSubTaskRequest create() => AddSubTaskRequest._();
  AddSubTaskRequest createEmptyInstance() => create();
  static $pb.PbList<AddSubTaskRequest> createRepeated() => $pb.PbList<AddSubTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSubTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSubTaskRequest>(create);
  static AddSubTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

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
  factory AddSubTaskResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  AddSubTaskResponse._() : super();
  factory AddSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddSubTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSubTaskResponse clone() => AddSubTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSubTaskResponse copyWith(void Function(AddSubTaskResponse) updates) => super.copyWith((message) => updates(message as AddSubTaskResponse)) as AddSubTaskResponse;

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
  factory RemoveSubTaskRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  RemoveSubTaskRequest._() : super();
  factory RemoveSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveSubTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSubTaskRequest clone() => RemoveSubTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSubTaskRequest copyWith(void Function(RemoveSubTaskRequest) updates) => super.copyWith((message) => updates(message as RemoveSubTaskRequest)) as RemoveSubTaskRequest;

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
  factory RemoveSubTaskResponse() => create();
  RemoveSubTaskResponse._() : super();
  factory RemoveSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveSubTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSubTaskResponse clone() => RemoveSubTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSubTaskResponse copyWith(void Function(RemoveSubTaskResponse) updates) => super.copyWith((message) => updates(message as RemoveSubTaskResponse)) as RemoveSubTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveSubTaskResponse create() => RemoveSubTaskResponse._();
  RemoveSubTaskResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveSubTaskResponse> createRepeated() => $pb.PbList<RemoveSubTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveSubTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveSubTaskResponse>(create);
  static RemoveSubTaskResponse? _defaultInstance;
}

class UpdateSubTaskRequest extends $pb.GeneratedMessage {
  factory UpdateSubTaskRequest({
    $core.String? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  UpdateSubTaskRequest._() : super();
  factory UpdateSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSubTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSubTaskRequest clone() => UpdateSubTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSubTaskRequest copyWith(void Function(UpdateSubTaskRequest) updates) => super.copyWith((message) => updates(message as UpdateSubTaskRequest)) as UpdateSubTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSubTaskRequest create() => UpdateSubTaskRequest._();
  UpdateSubTaskRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSubTaskRequest> createRepeated() => $pb.PbList<UpdateSubTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSubTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSubTaskRequest>(create);
  static UpdateSubTaskRequest? _defaultInstance;

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
}

class UpdateSubTaskResponse extends $pb.GeneratedMessage {
  factory UpdateSubTaskResponse() => create();
  UpdateSubTaskResponse._() : super();
  factory UpdateSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSubTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSubTaskResponse clone() => UpdateSubTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSubTaskResponse copyWith(void Function(UpdateSubTaskResponse) updates) => super.copyWith((message) => updates(message as UpdateSubTaskResponse)) as UpdateSubTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSubTaskResponse create() => UpdateSubTaskResponse._();
  UpdateSubTaskResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSubTaskResponse> createRepeated() => $pb.PbList<UpdateSubTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSubTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSubTaskResponse>(create);
  static UpdateSubTaskResponse? _defaultInstance;
}

class SubTaskToToDoRequest extends $pb.GeneratedMessage {
  factory SubTaskToToDoRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SubTaskToToDoRequest._() : super();
  factory SubTaskToToDoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTaskToToDoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubTaskToToDoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubTaskToToDoRequest clone() => SubTaskToToDoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubTaskToToDoRequest copyWith(void Function(SubTaskToToDoRequest) updates) => super.copyWith((message) => updates(message as SubTaskToToDoRequest)) as SubTaskToToDoRequest;

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
  factory SubTaskToToDoResponse() => create();
  SubTaskToToDoResponse._() : super();
  factory SubTaskToToDoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTaskToToDoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubTaskToToDoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubTaskToToDoResponse clone() => SubTaskToToDoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubTaskToToDoResponse copyWith(void Function(SubTaskToToDoResponse) updates) => super.copyWith((message) => updates(message as SubTaskToToDoResponse)) as SubTaskToToDoResponse;

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
  factory SubTaskToDoneRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  SubTaskToDoneRequest._() : super();
  factory SubTaskToDoneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTaskToDoneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubTaskToDoneRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubTaskToDoneRequest clone() => SubTaskToDoneRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubTaskToDoneRequest copyWith(void Function(SubTaskToDoneRequest) updates) => super.copyWith((message) => updates(message as SubTaskToDoneRequest)) as SubTaskToDoneRequest;

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
  factory SubTaskToDoneResponse() => create();
  SubTaskToDoneResponse._() : super();
  factory SubTaskToDoneResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubTaskToDoneResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubTaskToDoneResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubTaskToDoneResponse clone() => SubTaskToDoneResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubTaskToDoneResponse copyWith(void Function(SubTaskToDoneResponse) updates) => super.copyWith((message) => updates(message as SubTaskToDoneResponse)) as SubTaskToDoneResponse;

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
  factory TaskToToDoRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  TaskToToDoRequest._() : super();
  factory TaskToToDoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToToDoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskToToDoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToToDoRequest clone() => TaskToToDoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToToDoRequest copyWith(void Function(TaskToToDoRequest) updates) => super.copyWith((message) => updates(message as TaskToToDoRequest)) as TaskToToDoRequest;

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
  factory TaskToToDoResponse() => create();
  TaskToToDoResponse._() : super();
  factory TaskToToDoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToToDoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskToToDoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToToDoResponse clone() => TaskToToDoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToToDoResponse copyWith(void Function(TaskToToDoResponse) updates) => super.copyWith((message) => updates(message as TaskToToDoResponse)) as TaskToToDoResponse;

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
  factory TaskToInProgressRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  TaskToInProgressRequest._() : super();
  factory TaskToInProgressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToInProgressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskToInProgressRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToInProgressRequest clone() => TaskToInProgressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToInProgressRequest copyWith(void Function(TaskToInProgressRequest) updates) => super.copyWith((message) => updates(message as TaskToInProgressRequest)) as TaskToInProgressRequest;

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
  factory TaskToInProgressResponse() => create();
  TaskToInProgressResponse._() : super();
  factory TaskToInProgressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToInProgressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskToInProgressResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToInProgressResponse clone() => TaskToInProgressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToInProgressResponse copyWith(void Function(TaskToInProgressResponse) updates) => super.copyWith((message) => updates(message as TaskToInProgressResponse)) as TaskToInProgressResponse;

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
  factory TaskToDoneRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  TaskToDoneRequest._() : super();
  factory TaskToDoneRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToDoneRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskToDoneRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToDoneRequest clone() => TaskToDoneRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToDoneRequest copyWith(void Function(TaskToDoneRequest) updates) => super.copyWith((message) => updates(message as TaskToDoneRequest)) as TaskToDoneRequest;

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
  factory TaskToDoneResponse() => create();
  TaskToDoneResponse._() : super();
  factory TaskToDoneResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskToDoneResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskToDoneResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskToDoneResponse clone() => TaskToDoneResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskToDoneResponse copyWith(void Function(TaskToDoneResponse) updates) => super.copyWith((message) => updates(message as TaskToDoneResponse)) as TaskToDoneResponse;

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
  factory AssignTaskToUserRequest({
    $core.String? id,
    $core.String? userId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  AssignTaskToUserRequest._() : super();
  factory AssignTaskToUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignTaskToUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignTaskToUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignTaskToUserRequest clone() => AssignTaskToUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignTaskToUserRequest copyWith(void Function(AssignTaskToUserRequest) updates) => super.copyWith((message) => updates(message as AssignTaskToUserRequest)) as AssignTaskToUserRequest;

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
  factory AssignTaskToUserResponse() => create();
  AssignTaskToUserResponse._() : super();
  factory AssignTaskToUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignTaskToUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignTaskToUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignTaskToUserResponse clone() => AssignTaskToUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignTaskToUserResponse copyWith(void Function(AssignTaskToUserResponse) updates) => super.copyWith((message) => updates(message as AssignTaskToUserResponse)) as AssignTaskToUserResponse;

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
  factory UnassignTaskFromUserRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  UnassignTaskFromUserRequest._() : super();
  factory UnassignTaskFromUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignTaskFromUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignTaskFromUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignTaskFromUserRequest clone() => UnassignTaskFromUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignTaskFromUserRequest copyWith(void Function(UnassignTaskFromUserRequest) updates) => super.copyWith((message) => updates(message as UnassignTaskFromUserRequest)) as UnassignTaskFromUserRequest;

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
  factory UnassignTaskFromUserResponse() => create();
  UnassignTaskFromUserResponse._() : super();
  factory UnassignTaskFromUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignTaskFromUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignTaskFromUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignTaskFromUserResponse clone() => UnassignTaskFromUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignTaskFromUserResponse copyWith(void Function(UnassignTaskFromUserResponse) updates) => super.copyWith((message) => updates(message as UnassignTaskFromUserResponse)) as UnassignTaskFromUserResponse;

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
  factory PublishTaskRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  PublishTaskRequest._() : super();
  factory PublishTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PublishTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishTaskRequest clone() => PublishTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishTaskRequest copyWith(void Function(PublishTaskRequest) updates) => super.copyWith((message) => updates(message as PublishTaskRequest)) as PublishTaskRequest;

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
  factory PublishTaskResponse() => create();
  PublishTaskResponse._() : super();
  factory PublishTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PublishTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishTaskResponse clone() => PublishTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishTaskResponse copyWith(void Function(PublishTaskResponse) updates) => super.copyWith((message) => updates(message as PublishTaskResponse)) as PublishTaskResponse;

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
  factory UnpublishTaskRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  UnpublishTaskRequest._() : super();
  factory UnpublishTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnpublishTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnpublishTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnpublishTaskRequest clone() => UnpublishTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnpublishTaskRequest copyWith(void Function(UnpublishTaskRequest) updates) => super.copyWith((message) => updates(message as UnpublishTaskRequest)) as UnpublishTaskRequest;

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
  factory UnpublishTaskResponse() => create();
  UnpublishTaskResponse._() : super();
  factory UnpublishTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnpublishTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnpublishTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnpublishTaskResponse clone() => UnpublishTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnpublishTaskResponse copyWith(void Function(UnpublishTaskResponse) updates) => super.copyWith((message) => updates(message as UnpublishTaskResponse)) as UnpublishTaskResponse;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
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
