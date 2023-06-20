///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/task_template_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateTaskTemplateRequest_SubTask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTaskTemplateRequest.SubTask', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  CreateTaskTemplateRequest_SubTask._() : super();
  factory CreateTaskTemplateRequest_SubTask({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory CreateTaskTemplateRequest_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateRequest_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateRequest_SubTask clone() => CreateTaskTemplateRequest_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateRequest_SubTask copyWith(void Function(CreateTaskTemplateRequest_SubTask) updates) => super.copyWith((message) => updates(message as CreateTaskTemplateRequest_SubTask)) as CreateTaskTemplateRequest_SubTask; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTaskTemplateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'public')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wardId')
    ..pc<CreateTaskTemplateRequest_SubTask>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: CreateTaskTemplateRequest_SubTask.create)
    ..hasRequiredFields = false
  ;

  CreateTaskTemplateRequest._() : super();
  factory CreateTaskTemplateRequest({
    $core.String? name,
    $core.String? description,
    $core.bool? public,
    $core.String? userId,
    $core.String? wardId,
    $core.Iterable<CreateTaskTemplateRequest_SubTask>? subtasks,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (public != null) {
      _result.public = public;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (wardId != null) {
      _result.wardId = wardId;
    }
    if (subtasks != null) {
      _result.subtasks.addAll(subtasks);
    }
    return _result;
  }
  factory CreateTaskTemplateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateRequest clone() => CreateTaskTemplateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateRequest copyWith(void Function(CreateTaskTemplateRequest) updates) => super.copyWith((message) => updates(message as CreateTaskTemplateRequest)) as CreateTaskTemplateRequest; // ignore: deprecated_member_use
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
  $core.String get userId => $_getSZ(3);
  @$pb.TagNumber(4)
  set userId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get wardId => $_getSZ(4);
  @$pb.TagNumber(5)
  set wardId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWardId() => $_has(4);
  @$pb.TagNumber(5)
  void clearWardId() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<CreateTaskTemplateRequest_SubTask> get subtasks => $_getList(5);
}

class CreateTaskTemplateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateTaskTemplateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  CreateTaskTemplateResponse._() : super();
  factory CreateTaskTemplateResponse({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory CreateTaskTemplateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskTemplateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateResponse clone() => CreateTaskTemplateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskTemplateResponse copyWith(void Function(CreateTaskTemplateResponse) updates) => super.copyWith((message) => updates(message as CreateTaskTemplateResponse)) as CreateTaskTemplateResponse; // ignore: deprecated_member_use
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

class TaskTemplateServiceApi {
  $pb.RpcClient _client;
  TaskTemplateServiceApi(this._client);

  $async.Future<CreateTaskTemplateResponse> createTaskTemplate($pb.ClientContext? ctx, CreateTaskTemplateRequest request) {
    var emptyResponse = CreateTaskTemplateResponse();
    return _client.invoke<CreateTaskTemplateResponse>(ctx, 'TaskTemplateService', 'CreateTaskTemplate', request, emptyResponse);
  }
}

