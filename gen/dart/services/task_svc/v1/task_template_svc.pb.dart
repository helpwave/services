//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/task_template_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateTaskTemplateRequest_SubTask extends $pb.GeneratedMessage {
  factory CreateTaskTemplateRequest_SubTask({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateTaskTemplateRequest_SubTask._() : super();
  factory CreateTaskTemplateRequest_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateRequest_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateRequest.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateRequest_SubTask clone() => CreateTaskTemplateRequest_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateRequest_SubTask copyWith(void Function(CreateTaskTemplateRequest_SubTask) updates) => super.copyWith((message) => updates(message as CreateTaskTemplateRequest_SubTask)) as CreateTaskTemplateRequest_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateRequest_SubTask create() => CreateTaskTemplateRequest_SubTask._();
  CreateTaskTemplateRequest_SubTask createEmptyInstance() => create();
  static $pb.PbList<CreateTaskTemplateRequest_SubTask> createRepeated() => $pb.PbList<CreateTaskTemplateRequest_SubTask>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateRequest_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskTemplateRequest_SubTask>(create);
  static CreateTaskTemplateRequest_SubTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class CreateTaskTemplateRequest extends $pb.GeneratedMessage {
  factory CreateTaskTemplateRequest({
    $core.String? name,
    $core.String? description,
    $core.String? wardId,
    $core.Iterable<CreateTaskTemplateRequest_SubTask>? subtasks,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    return $result;
  }
  CreateTaskTemplateRequest._() : super();
  factory CreateTaskTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'wardId')
    ..pc<CreateTaskTemplateRequest_SubTask>(5, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: CreateTaskTemplateRequest_SubTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateRequest clone() => CreateTaskTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateRequest copyWith(void Function(CreateTaskTemplateRequest) updates) => super.copyWith((message) => updates(message as CreateTaskTemplateRequest)) as CreateTaskTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateRequest create() => CreateTaskTemplateRequest._();
  CreateTaskTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTaskTemplateRequest> createRepeated() => $pb.PbList<CreateTaskTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskTemplateRequest>(create);
  static CreateTaskTemplateRequest? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.String get wardId => $_getSZ(2);
  @$pb.TagNumber(4)
  set wardId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasWardId() => $_has(2);
  @$pb.TagNumber(4)
  void clearWardId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<CreateTaskTemplateRequest_SubTask> get subtasks => $_getList(3);
}

class CreateTaskTemplateResponse extends $pb.GeneratedMessage {
  factory CreateTaskTemplateResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateTaskTemplateResponse._() : super();
  factory CreateTaskTemplateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateResponse clone() => CreateTaskTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateResponse copyWith(void Function(CreateTaskTemplateResponse) updates) => super.copyWith((message) => updates(message as CreateTaskTemplateResponse)) as CreateTaskTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateResponse create() => CreateTaskTemplateResponse._();
  CreateTaskTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTaskTemplateResponse> createRepeated() => $pb.PbList<CreateTaskTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskTemplateResponse>(create);
  static CreateTaskTemplateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetAllTaskTemplatesRequest extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesRequest() => create();
  GetAllTaskTemplatesRequest._() : super();
  factory GetAllTaskTemplatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesRequest clone() => GetAllTaskTemplatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesRequest copyWith(void Function(GetAllTaskTemplatesRequest) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesRequest)) as GetAllTaskTemplatesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesRequest create() => GetAllTaskTemplatesRequest._();
  GetAllTaskTemplatesRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesRequest> createRepeated() => $pb.PbList<GetAllTaskTemplatesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesRequest>(create);
  static GetAllTaskTemplatesRequest? _defaultInstance;
}

class GetAllTaskTemplatesResponse_TaskTemplate_SubTask extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesResponse_TaskTemplate_SubTask({
    $core.String? id,
    $core.String? taskTemplateId,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (taskTemplateId != null) {
      $result.taskTemplateId = taskTemplateId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetAllTaskTemplatesResponse_TaskTemplate_SubTask._() : super();
  factory GetAllTaskTemplatesResponse_TaskTemplate_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesResponse_TaskTemplate_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesResponse.TaskTemplate.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'taskTemplateId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesResponse_TaskTemplate_SubTask clone() => GetAllTaskTemplatesResponse_TaskTemplate_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesResponse_TaskTemplate_SubTask copyWith(void Function(GetAllTaskTemplatesResponse_TaskTemplate_SubTask) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesResponse_TaskTemplate_SubTask)) as GetAllTaskTemplatesResponse_TaskTemplate_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesResponse_TaskTemplate_SubTask create() => GetAllTaskTemplatesResponse_TaskTemplate_SubTask._();
  GetAllTaskTemplatesResponse_TaskTemplate_SubTask createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesResponse_TaskTemplate_SubTask> createRepeated() => $pb.PbList<GetAllTaskTemplatesResponse_TaskTemplate_SubTask>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesResponse_TaskTemplate_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesResponse_TaskTemplate_SubTask>(create);
  static GetAllTaskTemplatesResponse_TaskTemplate_SubTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskTemplateId => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskTemplateId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskTemplateId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskTemplateId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GetAllTaskTemplatesResponse_TaskTemplate extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesResponse_TaskTemplate({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.bool? isPublic,
    $core.String? createdBy,
    $core.Iterable<GetAllTaskTemplatesResponse_TaskTemplate_SubTask>? subtasks,
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
    if (isPublic != null) {
      $result.isPublic = isPublic;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    return $result;
  }
  GetAllTaskTemplatesResponse_TaskTemplate._() : super();
  factory GetAllTaskTemplatesResponse_TaskTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesResponse_TaskTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesResponse.TaskTemplate', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'isPublic')
    ..aOS(6, _omitFieldNames ? '' : 'createdBy')
    ..pc<GetAllTaskTemplatesResponse_TaskTemplate_SubTask>(7, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetAllTaskTemplatesResponse_TaskTemplate_SubTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesResponse_TaskTemplate clone() => GetAllTaskTemplatesResponse_TaskTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesResponse_TaskTemplate copyWith(void Function(GetAllTaskTemplatesResponse_TaskTemplate) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesResponse_TaskTemplate)) as GetAllTaskTemplatesResponse_TaskTemplate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesResponse_TaskTemplate create() => GetAllTaskTemplatesResponse_TaskTemplate._();
  GetAllTaskTemplatesResponse_TaskTemplate createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesResponse_TaskTemplate> createRepeated() => $pb.PbList<GetAllTaskTemplatesResponse_TaskTemplate>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesResponse_TaskTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesResponse_TaskTemplate>(create);
  static GetAllTaskTemplatesResponse_TaskTemplate? _defaultInstance;

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
  $core.bool get isPublic => $_getBF(3);
  @$pb.TagNumber(4)
  set isPublic($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsPublic() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsPublic() => clearField(4);

  @$pb.TagNumber(6)
  $core.String get createdBy => $_getSZ(4);
  @$pb.TagNumber(6)
  set createdBy($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedBy() => $_has(4);
  @$pb.TagNumber(6)
  void clearCreatedBy() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<GetAllTaskTemplatesResponse_TaskTemplate_SubTask> get subtasks => $_getList(5);
}

class GetAllTaskTemplatesResponse extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesResponse({
    $core.Iterable<GetAllTaskTemplatesResponse_TaskTemplate>? templates,
  }) {
    final $result = create();
    if (templates != null) {
      $result.templates.addAll(templates);
    }
    return $result;
  }
  GetAllTaskTemplatesResponse._() : super();
  factory GetAllTaskTemplatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetAllTaskTemplatesResponse_TaskTemplate>(1, _omitFieldNames ? '' : 'templates', $pb.PbFieldType.PM, subBuilder: GetAllTaskTemplatesResponse_TaskTemplate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesResponse clone() => GetAllTaskTemplatesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesResponse copyWith(void Function(GetAllTaskTemplatesResponse) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesResponse)) as GetAllTaskTemplatesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesResponse create() => GetAllTaskTemplatesResponse._();
  GetAllTaskTemplatesResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesResponse> createRepeated() => $pb.PbList<GetAllTaskTemplatesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesResponse>(create);
  static GetAllTaskTemplatesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetAllTaskTemplatesResponse_TaskTemplate> get templates => $_getList(0);
}

class DeleteTaskTemplateRequest extends $pb.GeneratedMessage {
  factory DeleteTaskTemplateRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteTaskTemplateRequest._() : super();
  factory DeleteTaskTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskTemplateRequest clone() => DeleteTaskTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskTemplateRequest copyWith(void Function(DeleteTaskTemplateRequest) updates) => super.copyWith((message) => updates(message as DeleteTaskTemplateRequest)) as DeleteTaskTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskTemplateRequest create() => DeleteTaskTemplateRequest._();
  DeleteTaskTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTaskTemplateRequest> createRepeated() => $pb.PbList<DeleteTaskTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskTemplateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTaskTemplateRequest>(create);
  static DeleteTaskTemplateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteTaskTemplateResponse extends $pb.GeneratedMessage {
  factory DeleteTaskTemplateResponse() => create();
  DeleteTaskTemplateResponse._() : super();
  factory DeleteTaskTemplateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskTemplateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskTemplateResponse clone() => DeleteTaskTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskTemplateResponse copyWith(void Function(DeleteTaskTemplateResponse) updates) => super.copyWith((message) => updates(message as DeleteTaskTemplateResponse)) as DeleteTaskTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskTemplateResponse create() => DeleteTaskTemplateResponse._();
  DeleteTaskTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteTaskTemplateResponse> createRepeated() => $pb.PbList<DeleteTaskTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskTemplateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTaskTemplateResponse>(create);
  static DeleteTaskTemplateResponse? _defaultInstance;
}

class DeleteTaskTemplateSubTaskRequest extends $pb.GeneratedMessage {
  factory DeleteTaskTemplateSubTaskRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteTaskTemplateSubTaskRequest._() : super();
  factory DeleteTaskTemplateSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskTemplateSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskTemplateSubTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskTemplateSubTaskRequest clone() => DeleteTaskTemplateSubTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskTemplateSubTaskRequest copyWith(void Function(DeleteTaskTemplateSubTaskRequest) updates) => super.copyWith((message) => updates(message as DeleteTaskTemplateSubTaskRequest)) as DeleteTaskTemplateSubTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskTemplateSubTaskRequest create() => DeleteTaskTemplateSubTaskRequest._();
  DeleteTaskTemplateSubTaskRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTaskTemplateSubTaskRequest> createRepeated() => $pb.PbList<DeleteTaskTemplateSubTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskTemplateSubTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTaskTemplateSubTaskRequest>(create);
  static DeleteTaskTemplateSubTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteTaskTemplateSubTaskResponse extends $pb.GeneratedMessage {
  factory DeleteTaskTemplateSubTaskResponse() => create();
  DeleteTaskTemplateSubTaskResponse._() : super();
  factory DeleteTaskTemplateSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskTemplateSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskTemplateSubTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskTemplateSubTaskResponse clone() => DeleteTaskTemplateSubTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskTemplateSubTaskResponse copyWith(void Function(DeleteTaskTemplateSubTaskResponse) updates) => super.copyWith((message) => updates(message as DeleteTaskTemplateSubTaskResponse)) as DeleteTaskTemplateSubTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskTemplateSubTaskResponse create() => DeleteTaskTemplateSubTaskResponse._();
  DeleteTaskTemplateSubTaskResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteTaskTemplateSubTaskResponse> createRepeated() => $pb.PbList<DeleteTaskTemplateSubTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskTemplateSubTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTaskTemplateSubTaskResponse>(create);
  static DeleteTaskTemplateSubTaskResponse? _defaultInstance;
}

class UpdateTaskTemplateRequest extends $pb.GeneratedMessage {
  factory UpdateTaskTemplateRequest({
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
  UpdateTaskTemplateRequest._() : super();
  factory UpdateTaskTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskTemplateRequest clone() => UpdateTaskTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskTemplateRequest copyWith(void Function(UpdateTaskTemplateRequest) updates) => super.copyWith((message) => updates(message as UpdateTaskTemplateRequest)) as UpdateTaskTemplateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskTemplateRequest create() => UpdateTaskTemplateRequest._();
  UpdateTaskTemplateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskTemplateRequest> createRepeated() => $pb.PbList<UpdateTaskTemplateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskTemplateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskTemplateRequest>(create);
  static UpdateTaskTemplateRequest? _defaultInstance;

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

class UpdateTaskTemplateResponse extends $pb.GeneratedMessage {
  factory UpdateTaskTemplateResponse() => create();
  UpdateTaskTemplateResponse._() : super();
  factory UpdateTaskTemplateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskTemplateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskTemplateResponse clone() => UpdateTaskTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskTemplateResponse copyWith(void Function(UpdateTaskTemplateResponse) updates) => super.copyWith((message) => updates(message as UpdateTaskTemplateResponse)) as UpdateTaskTemplateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskTemplateResponse create() => UpdateTaskTemplateResponse._();
  UpdateTaskTemplateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskTemplateResponse> createRepeated() => $pb.PbList<UpdateTaskTemplateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskTemplateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskTemplateResponse>(create);
  static UpdateTaskTemplateResponse? _defaultInstance;
}

class UpdateTaskTemplateSubTaskRequest extends $pb.GeneratedMessage {
  factory UpdateTaskTemplateSubTaskRequest({
    $core.String? subtaskId,
    $core.String? name,
  }) {
    final $result = create();
    if (subtaskId != null) {
      $result.subtaskId = subtaskId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  UpdateTaskTemplateSubTaskRequest._() : super();
  factory UpdateTaskTemplateSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskTemplateSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskTemplateSubTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subtaskId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskTemplateSubTaskRequest clone() => UpdateTaskTemplateSubTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskTemplateSubTaskRequest copyWith(void Function(UpdateTaskTemplateSubTaskRequest) updates) => super.copyWith((message) => updates(message as UpdateTaskTemplateSubTaskRequest)) as UpdateTaskTemplateSubTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskTemplateSubTaskRequest create() => UpdateTaskTemplateSubTaskRequest._();
  UpdateTaskTemplateSubTaskRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskTemplateSubTaskRequest> createRepeated() => $pb.PbList<UpdateTaskTemplateSubTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskTemplateSubTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskTemplateSubTaskRequest>(create);
  static UpdateTaskTemplateSubTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subtaskId => $_getSZ(0);
  @$pb.TagNumber(1)
  set subtaskId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubtaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubtaskId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class UpdateTaskTemplateSubTaskResponse extends $pb.GeneratedMessage {
  factory UpdateTaskTemplateSubTaskResponse() => create();
  UpdateTaskTemplateSubTaskResponse._() : super();
  factory UpdateTaskTemplateSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskTemplateSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskTemplateSubTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskTemplateSubTaskResponse clone() => UpdateTaskTemplateSubTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskTemplateSubTaskResponse copyWith(void Function(UpdateTaskTemplateSubTaskResponse) updates) => super.copyWith((message) => updates(message as UpdateTaskTemplateSubTaskResponse)) as UpdateTaskTemplateSubTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskTemplateSubTaskResponse create() => UpdateTaskTemplateSubTaskResponse._();
  UpdateTaskTemplateSubTaskResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskTemplateSubTaskResponse> createRepeated() => $pb.PbList<UpdateTaskTemplateSubTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskTemplateSubTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskTemplateSubTaskResponse>(create);
  static UpdateTaskTemplateSubTaskResponse? _defaultInstance;
}

class CreateTaskTemplateSubTaskRequest extends $pb.GeneratedMessage {
  factory CreateTaskTemplateSubTaskRequest({
    $core.String? taskTemplateId,
    $core.String? name,
  }) {
    final $result = create();
    if (taskTemplateId != null) {
      $result.taskTemplateId = taskTemplateId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateTaskTemplateSubTaskRequest._() : super();
  factory CreateTaskTemplateSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateSubTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskTemplateId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateSubTaskRequest clone() => CreateTaskTemplateSubTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateSubTaskRequest copyWith(void Function(CreateTaskTemplateSubTaskRequest) updates) => super.copyWith((message) => updates(message as CreateTaskTemplateSubTaskRequest)) as CreateTaskTemplateSubTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateSubTaskRequest create() => CreateTaskTemplateSubTaskRequest._();
  CreateTaskTemplateSubTaskRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTaskTemplateSubTaskRequest> createRepeated() => $pb.PbList<CreateTaskTemplateSubTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateSubTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskTemplateSubTaskRequest>(create);
  static CreateTaskTemplateSubTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskTemplateId => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskTemplateId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskTemplateId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskTemplateId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class CreateTaskTemplateSubTaskResponse extends $pb.GeneratedMessage {
  factory CreateTaskTemplateSubTaskResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateTaskTemplateSubTaskResponse._() : super();
  factory CreateTaskTemplateSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateSubTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateSubTaskResponse clone() => CreateTaskTemplateSubTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateSubTaskResponse copyWith(void Function(CreateTaskTemplateSubTaskResponse) updates) => super.copyWith((message) => updates(message as CreateTaskTemplateSubTaskResponse)) as CreateTaskTemplateSubTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateSubTaskResponse create() => CreateTaskTemplateSubTaskResponse._();
  CreateTaskTemplateSubTaskResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTaskTemplateSubTaskResponse> createRepeated() => $pb.PbList<CreateTaskTemplateSubTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskTemplateSubTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskTemplateSubTaskResponse>(create);
  static CreateTaskTemplateSubTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetAllTaskTemplatesByCreatorRequest extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesByCreatorRequest({
    $core.String? createdBy,
    $core.bool? privateOnly,
  }) {
    final $result = create();
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (privateOnly != null) {
      $result.privateOnly = privateOnly;
    }
    return $result;
  }
  GetAllTaskTemplatesByCreatorRequest._() : super();
  factory GetAllTaskTemplatesByCreatorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesByCreatorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesByCreatorRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'createdBy')
    ..aOB(2, _omitFieldNames ? '' : 'privateOnly')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByCreatorRequest clone() => GetAllTaskTemplatesByCreatorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByCreatorRequest copyWith(void Function(GetAllTaskTemplatesByCreatorRequest) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesByCreatorRequest)) as GetAllTaskTemplatesByCreatorRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByCreatorRequest create() => GetAllTaskTemplatesByCreatorRequest._();
  GetAllTaskTemplatesByCreatorRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesByCreatorRequest> createRepeated() => $pb.PbList<GetAllTaskTemplatesByCreatorRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByCreatorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesByCreatorRequest>(create);
  static GetAllTaskTemplatesByCreatorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get createdBy => $_getSZ(0);
  @$pb.TagNumber(1)
  set createdBy($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedBy() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedBy() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get privateOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set privateOnly($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrivateOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrivateOnly() => clearField(2);
}

class GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask({
    $core.String? id,
    $core.String? taskTemplateId,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (taskTemplateId != null) {
      $result.taskTemplateId = taskTemplateId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask._() : super();
  factory GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesByCreatorResponse.TaskTemplate.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'taskTemplateId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask clone() => GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask copyWith(void Function(GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask)) as GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask create() => GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask._();
  GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask> createRepeated() => $pb.PbList<GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask>(create);
  static GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskTemplateId => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskTemplateId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskTemplateId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskTemplateId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GetAllTaskTemplatesByCreatorResponse_TaskTemplate extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesByCreatorResponse_TaskTemplate({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.bool? isPublic,
    $core.Iterable<GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask>? subtasks,
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
    if (isPublic != null) {
      $result.isPublic = isPublic;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    return $result;
  }
  GetAllTaskTemplatesByCreatorResponse_TaskTemplate._() : super();
  factory GetAllTaskTemplatesByCreatorResponse_TaskTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesByCreatorResponse_TaskTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesByCreatorResponse.TaskTemplate', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'isPublic')
    ..pc<GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask>(7, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByCreatorResponse_TaskTemplate clone() => GetAllTaskTemplatesByCreatorResponse_TaskTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByCreatorResponse_TaskTemplate copyWith(void Function(GetAllTaskTemplatesByCreatorResponse_TaskTemplate) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesByCreatorResponse_TaskTemplate)) as GetAllTaskTemplatesByCreatorResponse_TaskTemplate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByCreatorResponse_TaskTemplate create() => GetAllTaskTemplatesByCreatorResponse_TaskTemplate._();
  GetAllTaskTemplatesByCreatorResponse_TaskTemplate createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesByCreatorResponse_TaskTemplate> createRepeated() => $pb.PbList<GetAllTaskTemplatesByCreatorResponse_TaskTemplate>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByCreatorResponse_TaskTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesByCreatorResponse_TaskTemplate>(create);
  static GetAllTaskTemplatesByCreatorResponse_TaskTemplate? _defaultInstance;

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
  $core.bool get isPublic => $_getBF(3);
  @$pb.TagNumber(4)
  set isPublic($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsPublic() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsPublic() => clearField(4);

  @$pb.TagNumber(7)
  $core.List<GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask> get subtasks => $_getList(4);
}

class GetAllTaskTemplatesByCreatorResponse extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesByCreatorResponse({
    $core.Iterable<GetAllTaskTemplatesByCreatorResponse_TaskTemplate>? templates,
  }) {
    final $result = create();
    if (templates != null) {
      $result.templates.addAll(templates);
    }
    return $result;
  }
  GetAllTaskTemplatesByCreatorResponse._() : super();
  factory GetAllTaskTemplatesByCreatorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesByCreatorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesByCreatorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetAllTaskTemplatesByCreatorResponse_TaskTemplate>(1, _omitFieldNames ? '' : 'templates', $pb.PbFieldType.PM, subBuilder: GetAllTaskTemplatesByCreatorResponse_TaskTemplate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByCreatorResponse clone() => GetAllTaskTemplatesByCreatorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByCreatorResponse copyWith(void Function(GetAllTaskTemplatesByCreatorResponse) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesByCreatorResponse)) as GetAllTaskTemplatesByCreatorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByCreatorResponse create() => GetAllTaskTemplatesByCreatorResponse._();
  GetAllTaskTemplatesByCreatorResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesByCreatorResponse> createRepeated() => $pb.PbList<GetAllTaskTemplatesByCreatorResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByCreatorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesByCreatorResponse>(create);
  static GetAllTaskTemplatesByCreatorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetAllTaskTemplatesByCreatorResponse_TaskTemplate> get templates => $_getList(0);
}

class GetAllTaskTemplatesByWardRequest extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesByWardRequest({
    $core.String? wardId,
  }) {
    final $result = create();
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetAllTaskTemplatesByWardRequest._() : super();
  factory GetAllTaskTemplatesByWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesByWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesByWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByWardRequest clone() => GetAllTaskTemplatesByWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByWardRequest copyWith(void Function(GetAllTaskTemplatesByWardRequest) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesByWardRequest)) as GetAllTaskTemplatesByWardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByWardRequest create() => GetAllTaskTemplatesByWardRequest._();
  GetAllTaskTemplatesByWardRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesByWardRequest> createRepeated() => $pb.PbList<GetAllTaskTemplatesByWardRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByWardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesByWardRequest>(create);
  static GetAllTaskTemplatesByWardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set wardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWardId() => clearField(1);
}

class GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask({
    $core.String? id,
    $core.String? taskTemplateId,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (taskTemplateId != null) {
      $result.taskTemplateId = taskTemplateId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask._() : super();
  factory GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesByWardResponse.TaskTemplate.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'taskTemplateId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask clone() => GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask copyWith(void Function(GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask)) as GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask create() => GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask._();
  GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask> createRepeated() => $pb.PbList<GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask>(create);
  static GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskTemplateId => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskTemplateId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskTemplateId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskTemplateId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GetAllTaskTemplatesByWardResponse_TaskTemplate extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesByWardResponse_TaskTemplate({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.bool? isPublic,
    $core.String? createdBy,
    $core.Iterable<GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask>? subtasks,
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
    if (isPublic != null) {
      $result.isPublic = isPublic;
    }
    if (createdBy != null) {
      $result.createdBy = createdBy;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    return $result;
  }
  GetAllTaskTemplatesByWardResponse_TaskTemplate._() : super();
  factory GetAllTaskTemplatesByWardResponse_TaskTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesByWardResponse_TaskTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesByWardResponse.TaskTemplate', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'isPublic')
    ..aOS(6, _omitFieldNames ? '' : 'createdBy')
    ..pc<GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask>(7, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByWardResponse_TaskTemplate clone() => GetAllTaskTemplatesByWardResponse_TaskTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByWardResponse_TaskTemplate copyWith(void Function(GetAllTaskTemplatesByWardResponse_TaskTemplate) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesByWardResponse_TaskTemplate)) as GetAllTaskTemplatesByWardResponse_TaskTemplate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByWardResponse_TaskTemplate create() => GetAllTaskTemplatesByWardResponse_TaskTemplate._();
  GetAllTaskTemplatesByWardResponse_TaskTemplate createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesByWardResponse_TaskTemplate> createRepeated() => $pb.PbList<GetAllTaskTemplatesByWardResponse_TaskTemplate>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByWardResponse_TaskTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesByWardResponse_TaskTemplate>(create);
  static GetAllTaskTemplatesByWardResponse_TaskTemplate? _defaultInstance;

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
  $core.bool get isPublic => $_getBF(3);
  @$pb.TagNumber(4)
  set isPublic($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsPublic() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsPublic() => clearField(4);

  @$pb.TagNumber(6)
  $core.String get createdBy => $_getSZ(4);
  @$pb.TagNumber(6)
  set createdBy($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedBy() => $_has(4);
  @$pb.TagNumber(6)
  void clearCreatedBy() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask> get subtasks => $_getList(5);
}

class GetAllTaskTemplatesByWardResponse extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesByWardResponse({
    $core.Iterable<GetAllTaskTemplatesByWardResponse_TaskTemplate>? templates,
  }) {
    final $result = create();
    if (templates != null) {
      $result.templates.addAll(templates);
    }
    return $result;
  }
  GetAllTaskTemplatesByWardResponse._() : super();
  factory GetAllTaskTemplatesByWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesByWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesByWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetAllTaskTemplatesByWardResponse_TaskTemplate>(1, _omitFieldNames ? '' : 'templates', $pb.PbFieldType.PM, subBuilder: GetAllTaskTemplatesByWardResponse_TaskTemplate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByWardResponse clone() => GetAllTaskTemplatesByWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskTemplatesByWardResponse copyWith(void Function(GetAllTaskTemplatesByWardResponse) updates) => super.copyWith((message) => updates(message as GetAllTaskTemplatesByWardResponse)) as GetAllTaskTemplatesByWardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByWardResponse create() => GetAllTaskTemplatesByWardResponse._();
  GetAllTaskTemplatesByWardResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskTemplatesByWardResponse> createRepeated() => $pb.PbList<GetAllTaskTemplatesByWardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskTemplatesByWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskTemplatesByWardResponse>(create);
  static GetAllTaskTemplatesByWardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetAllTaskTemplatesByWardResponse_TaskTemplate> get templates => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
