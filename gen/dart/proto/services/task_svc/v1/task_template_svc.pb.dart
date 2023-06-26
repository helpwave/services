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

class CreateTaskTemplateSubTaskRequest extends $pb.GeneratedMessage {
  factory CreateTaskTemplateSubTaskRequest() => create();
  CreateTaskTemplateSubTaskRequest._() : super();
  factory CreateTaskTemplateSubTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateSubTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateSubTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory CreateTaskTemplateSubTaskResponse() => create();
  CreateTaskTemplateSubTaskResponse._() : super();
  factory CreateTaskTemplateSubTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateSubTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskTemplateSubTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

class TaskTemplateServiceApi {
  $pb.RpcClient _client;
  TaskTemplateServiceApi(this._client);

  $async.Future<CreateTaskTemplateResponse> createTaskTemplate($pb.ClientContext? ctx, CreateTaskTemplateRequest request) =>
    _client.invoke<CreateTaskTemplateResponse>(ctx, 'TaskTemplateService', 'CreateTaskTemplate', request, CreateTaskTemplateResponse())
  ;
  $async.Future<CreateTaskTemplateSubTaskResponse> createTaskTemplateSubTask($pb.ClientContext? ctx, CreateTaskTemplateSubTaskRequest request) =>
    _client.invoke<CreateTaskTemplateSubTaskResponse>(ctx, 'TaskTemplateService', 'CreateTaskTemplateSubTask', request, CreateTaskTemplateSubTaskResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
