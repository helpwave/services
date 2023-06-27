//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_template_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateTaskTemplateRequest_SubTask extends $pb.GeneratedMessage {
  factory CreateTaskTemplateRequest_SubTask() => create();
  CreateTaskTemplateRequest_SubTask._() : super();
  factory CreateTaskTemplateRequest_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateRequest_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateRequest.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory CreateTaskTemplateRequest() => create();
  CreateTaskTemplateRequest._() : super();
  factory CreateTaskTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOB(3, _omitFieldNames ? '' : 'public')
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

  @$pb.TagNumber(3)
  $core.bool get public => $_getBF(2);
  @$pb.TagNumber(3)
  set public($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublic() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublic() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get wardId => $_getSZ(3);
  @$pb.TagNumber(4)
  set wardId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWardId() => $_has(3);
  @$pb.TagNumber(4)
  void clearWardId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<CreateTaskTemplateRequest_SubTask> get subtasks => $_getList(4);
}

class CreateTaskTemplateResponse extends $pb.GeneratedMessage {
  factory CreateTaskTemplateResponse() => create();
  CreateTaskTemplateResponse._() : super();
  factory CreateTaskTemplateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory GetAllTaskTemplatesResponse_TaskTemplate_SubTask() => create();
  GetAllTaskTemplatesResponse_TaskTemplate_SubTask._() : super();
  factory GetAllTaskTemplatesResponse_TaskTemplate_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesResponse_TaskTemplate_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesResponse.TaskTemplate.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory GetAllTaskTemplatesResponse_TaskTemplate() => create();
  GetAllTaskTemplatesResponse_TaskTemplate._() : super();
  factory GetAllTaskTemplatesResponse_TaskTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesResponse_TaskTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesResponse.TaskTemplate', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'isPublic')
    ..aOS(6, _omitFieldNames ? '' : 'userId')
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
  $core.String get userId => $_getSZ(4);
  @$pb.TagNumber(6)
  set userId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasUserId() => $_has(4);
  @$pb.TagNumber(6)
  void clearUserId() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<GetAllTaskTemplatesResponse_TaskTemplate_SubTask> get subtasks => $_getList(5);
}

class GetAllTaskTemplatesResponse extends $pb.GeneratedMessage {
  factory GetAllTaskTemplatesResponse() => create();
  GetAllTaskTemplatesResponse._() : super();
  factory GetAllTaskTemplatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskTemplatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskTemplatesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory DeleteTaskTemplateRequest() => create();
  DeleteTaskTemplateRequest._() : super();
  factory DeleteTaskTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory DeleteTaskTemplateSubTaskRequest() => create();
  DeleteTaskTemplateSubTaskRequest._() : super();
  factory DeleteTaskTemplateSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskTemplateSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskTemplateSubTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskTemplateSubTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory UpdateTaskTemplateRequest() => create();
  UpdateTaskTemplateRequest._() : super();
  factory UpdateTaskTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskTemplateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskTemplateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory UpdateTaskTemplateSubTaskRequest() => create();
  UpdateTaskTemplateSubTaskRequest._() : super();
  factory UpdateTaskTemplateSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskTemplateSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskTemplateSubTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskTemplateSubTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

class TaskTemplateServiceApi {
  $pb.RpcClient _client;
  TaskTemplateServiceApi(this._client);

  $async.Future<CreateTaskTemplateResponse> createTaskTemplate($pb.ClientContext? ctx, CreateTaskTemplateRequest request) =>
    _client.invoke<CreateTaskTemplateResponse>(ctx, 'TaskTemplateService', 'CreateTaskTemplate', request, CreateTaskTemplateResponse())
  ;
  $async.Future<GetAllTaskTemplatesResponse> getAllTaskTemplates($pb.ClientContext? ctx, GetAllTaskTemplatesRequest request) =>
    _client.invoke<GetAllTaskTemplatesResponse>(ctx, 'TaskTemplateService', 'GetAllTaskTemplates', request, GetAllTaskTemplatesResponse())
  ;
  $async.Future<DeleteTaskTemplateResponse> deleteTaskTemplate($pb.ClientContext? ctx, DeleteTaskTemplateRequest request) =>
    _client.invoke<DeleteTaskTemplateResponse>(ctx, 'TaskTemplateService', 'DeleteTaskTemplate', request, DeleteTaskTemplateResponse())
  ;
  $async.Future<DeleteTaskTemplateSubTaskResponse> deleteTaskTemplateSubTask($pb.ClientContext? ctx, DeleteTaskTemplateSubTaskRequest request) =>
    _client.invoke<DeleteTaskTemplateSubTaskResponse>(ctx, 'TaskTemplateService', 'DeleteTaskTemplateSubTask', request, DeleteTaskTemplateSubTaskResponse())
  ;
  $async.Future<UpdateTaskTemplateResponse> updateTaskTemplate($pb.ClientContext? ctx, UpdateTaskTemplateRequest request) =>
    _client.invoke<UpdateTaskTemplateResponse>(ctx, 'TaskTemplateService', 'UpdateTaskTemplate', request, UpdateTaskTemplateResponse())
  ;
  $async.Future<UpdateTaskTemplateSubTaskResponse> updateTaskTemplateSubTask($pb.ClientContext? ctx, UpdateTaskTemplateSubTaskRequest request) =>
    _client.invoke<UpdateTaskTemplateSubTaskResponse>(ctx, 'TaskTemplateService', 'UpdateTaskTemplateSubTask', request, UpdateTaskTemplateSubTaskResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
