//
//  Generated code. Do not modify.
//  source: services/tasks_svc/v1/ward_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../libs/common/v1/conflict.pb.dart' as $22;

class CreateWardRequest extends $pb.GeneratedMessage {
  factory CreateWardRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateWardRequest._() : super();
  factory CreateWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateWardRequest clone() => CreateWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateWardRequest copyWith(void Function(CreateWardRequest) updates) => super.copyWith((message) => updates(message as CreateWardRequest)) as CreateWardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWardRequest create() => CreateWardRequest._();
  CreateWardRequest createEmptyInstance() => create();
  static $pb.PbList<CreateWardRequest> createRepeated() => $pb.PbList<CreateWardRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateWardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateWardRequest>(create);
  static CreateWardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class CreateWardResponse extends $pb.GeneratedMessage {
  factory CreateWardResponse({
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
  CreateWardResponse._() : super();
  factory CreateWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateWardResponse clone() => CreateWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateWardResponse copyWith(void Function(CreateWardResponse) updates) => super.copyWith((message) => updates(message as CreateWardResponse)) as CreateWardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateWardResponse create() => CreateWardResponse._();
  CreateWardResponse createEmptyInstance() => create();
  static $pb.PbList<CreateWardResponse> createRepeated() => $pb.PbList<CreateWardResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateWardResponse>(create);
  static CreateWardResponse? _defaultInstance;

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

class GetWardRequest extends $pb.GeneratedMessage {
  factory GetWardRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetWardRequest._() : super();
  factory GetWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardRequest clone() => GetWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardRequest copyWith(void Function(GetWardRequest) updates) => super.copyWith((message) => updates(message as GetWardRequest)) as GetWardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardRequest create() => GetWardRequest._();
  GetWardRequest createEmptyInstance() => create();
  static $pb.PbList<GetWardRequest> createRepeated() => $pb.PbList<GetWardRequest>();
  @$core.pragma('dart2js:noInline')
  static GetWardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardRequest>(create);
  static GetWardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetWardResponse extends $pb.GeneratedMessage {
  factory GetWardResponse({
    $core.String? id,
    $core.String? name,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetWardResponse._() : super();
  factory GetWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardResponse clone() => GetWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardResponse copyWith(void Function(GetWardResponse) updates) => super.copyWith((message) => updates(message as GetWardResponse)) as GetWardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardResponse create() => GetWardResponse._();
  GetWardResponse createEmptyInstance() => create();
  static $pb.PbList<GetWardResponse> createRepeated() => $pb.PbList<GetWardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardResponse>(create);
  static GetWardResponse? _defaultInstance;

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
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}

class GetWardsRequest extends $pb.GeneratedMessage {
  factory GetWardsRequest() => create();
  GetWardsRequest._() : super();
  factory GetWardsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardsRequest clone() => GetWardsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardsRequest copyWith(void Function(GetWardsRequest) updates) => super.copyWith((message) => updates(message as GetWardsRequest)) as GetWardsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardsRequest create() => GetWardsRequest._();
  GetWardsRequest createEmptyInstance() => create();
  static $pb.PbList<GetWardsRequest> createRepeated() => $pb.PbList<GetWardsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetWardsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardsRequest>(create);
  static GetWardsRequest? _defaultInstance;
}

class GetWardsResponse_Ward extends $pb.GeneratedMessage {
  factory GetWardsResponse_Ward({
    $core.String? id,
    $core.String? name,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetWardsResponse_Ward._() : super();
  factory GetWardsResponse_Ward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardsResponse_Ward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardsResponse.Ward', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardsResponse_Ward clone() => GetWardsResponse_Ward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardsResponse_Ward copyWith(void Function(GetWardsResponse_Ward) updates) => super.copyWith((message) => updates(message as GetWardsResponse_Ward)) as GetWardsResponse_Ward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardsResponse_Ward create() => GetWardsResponse_Ward._();
  GetWardsResponse_Ward createEmptyInstance() => create();
  static $pb.PbList<GetWardsResponse_Ward> createRepeated() => $pb.PbList<GetWardsResponse_Ward>();
  @$core.pragma('dart2js:noInline')
  static GetWardsResponse_Ward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardsResponse_Ward>(create);
  static GetWardsResponse_Ward? _defaultInstance;

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
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}

class GetWardsResponse extends $pb.GeneratedMessage {
  factory GetWardsResponse({
    $core.Iterable<GetWardsResponse_Ward>? wards,
  }) {
    final $result = create();
    if (wards != null) {
      $result.wards.addAll(wards);
    }
    return $result;
  }
  GetWardsResponse._() : super();
  factory GetWardsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..pc<GetWardsResponse_Ward>(1, _omitFieldNames ? '' : 'wards', $pb.PbFieldType.PM, subBuilder: GetWardsResponse_Ward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardsResponse clone() => GetWardsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardsResponse copyWith(void Function(GetWardsResponse) updates) => super.copyWith((message) => updates(message as GetWardsResponse)) as GetWardsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardsResponse create() => GetWardsResponse._();
  GetWardsResponse createEmptyInstance() => create();
  static $pb.PbList<GetWardsResponse> createRepeated() => $pb.PbList<GetWardsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWardsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardsResponse>(create);
  static GetWardsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetWardsResponse_Ward> get wards => $_getList(0);
}

class GetRecentWardsRequest extends $pb.GeneratedMessage {
  factory GetRecentWardsRequest() => create();
  GetRecentWardsRequest._() : super();
  factory GetRecentWardsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecentWardsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRecentWardsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecentWardsRequest clone() => GetRecentWardsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecentWardsRequest copyWith(void Function(GetRecentWardsRequest) updates) => super.copyWith((message) => updates(message as GetRecentWardsRequest)) as GetRecentWardsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRecentWardsRequest create() => GetRecentWardsRequest._();
  GetRecentWardsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRecentWardsRequest> createRepeated() => $pb.PbList<GetRecentWardsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRecentWardsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecentWardsRequest>(create);
  static GetRecentWardsRequest? _defaultInstance;
}

class GetRecentWardsResponse_Ward extends $pb.GeneratedMessage {
  factory GetRecentWardsResponse_Ward({
    $core.String? id,
    $core.String? name,
    $core.int? bedCount,
    $core.int? tasksTodo,
    $core.int? tasksInProgress,
    $core.int? tasksDone,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (bedCount != null) {
      $result.bedCount = bedCount;
    }
    if (tasksTodo != null) {
      $result.tasksTodo = tasksTodo;
    }
    if (tasksInProgress != null) {
      $result.tasksInProgress = tasksInProgress;
    }
    if (tasksDone != null) {
      $result.tasksDone = tasksDone;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetRecentWardsResponse_Ward._() : super();
  factory GetRecentWardsResponse_Ward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecentWardsResponse_Ward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRecentWardsResponse.Ward', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'bedCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'tasksTodo', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'tasksInProgress', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'tasksDone', $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecentWardsResponse_Ward clone() => GetRecentWardsResponse_Ward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecentWardsResponse_Ward copyWith(void Function(GetRecentWardsResponse_Ward) updates) => super.copyWith((message) => updates(message as GetRecentWardsResponse_Ward)) as GetRecentWardsResponse_Ward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRecentWardsResponse_Ward create() => GetRecentWardsResponse_Ward._();
  GetRecentWardsResponse_Ward createEmptyInstance() => create();
  static $pb.PbList<GetRecentWardsResponse_Ward> createRepeated() => $pb.PbList<GetRecentWardsResponse_Ward>();
  @$core.pragma('dart2js:noInline')
  static GetRecentWardsResponse_Ward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecentWardsResponse_Ward>(create);
  static GetRecentWardsResponse_Ward? _defaultInstance;

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
  $core.int get bedCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set bedCount($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBedCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearBedCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get tasksTodo => $_getIZ(3);
  @$pb.TagNumber(4)
  set tasksTodo($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTasksTodo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTasksTodo() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get tasksInProgress => $_getIZ(4);
  @$pb.TagNumber(5)
  set tasksInProgress($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTasksInProgress() => $_has(4);
  @$pb.TagNumber(5)
  void clearTasksInProgress() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get tasksDone => $_getIZ(5);
  @$pb.TagNumber(6)
  set tasksDone($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTasksDone() => $_has(5);
  @$pb.TagNumber(6)
  void clearTasksDone() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get consistency => $_getSZ(6);
  @$pb.TagNumber(7)
  set consistency($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasConsistency() => $_has(6);
  @$pb.TagNumber(7)
  void clearConsistency() => clearField(7);
}

class GetRecentWardsResponse extends $pb.GeneratedMessage {
  factory GetRecentWardsResponse({
    $core.Iterable<GetRecentWardsResponse_Ward>? wards,
  }) {
    final $result = create();
    if (wards != null) {
      $result.wards.addAll(wards);
    }
    return $result;
  }
  GetRecentWardsResponse._() : super();
  factory GetRecentWardsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecentWardsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRecentWardsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..pc<GetRecentWardsResponse_Ward>(1, _omitFieldNames ? '' : 'wards', $pb.PbFieldType.PM, subBuilder: GetRecentWardsResponse_Ward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecentWardsResponse clone() => GetRecentWardsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecentWardsResponse copyWith(void Function(GetRecentWardsResponse) updates) => super.copyWith((message) => updates(message as GetRecentWardsResponse)) as GetRecentWardsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRecentWardsResponse create() => GetRecentWardsResponse._();
  GetRecentWardsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRecentWardsResponse> createRepeated() => $pb.PbList<GetRecentWardsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRecentWardsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecentWardsResponse>(create);
  static GetRecentWardsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetRecentWardsResponse_Ward> get wards => $_getList(0);
}

class UpdateWardRequest extends $pb.GeneratedMessage {
  factory UpdateWardRequest({
    $core.String? id,
    $core.String? name,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  UpdateWardRequest._() : super();
  factory UpdateWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateWardRequest clone() => UpdateWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateWardRequest copyWith(void Function(UpdateWardRequest) updates) => super.copyWith((message) => updates(message as UpdateWardRequest)) as UpdateWardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateWardRequest create() => UpdateWardRequest._();
  UpdateWardRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateWardRequest> createRepeated() => $pb.PbList<UpdateWardRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateWardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateWardRequest>(create);
  static UpdateWardRequest? _defaultInstance;

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
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}

class UpdateWardResponse extends $pb.GeneratedMessage {
  factory UpdateWardResponse({
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
  UpdateWardResponse._() : super();
  factory UpdateWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOM<$22.Conflict>(1, _omitFieldNames ? '' : 'conflict', subBuilder: $22.Conflict.create)
    ..aOS(2, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateWardResponse clone() => UpdateWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateWardResponse copyWith(void Function(UpdateWardResponse) updates) => super.copyWith((message) => updates(message as UpdateWardResponse)) as UpdateWardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateWardResponse create() => UpdateWardResponse._();
  UpdateWardResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateWardResponse> createRepeated() => $pb.PbList<UpdateWardResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateWardResponse>(create);
  static UpdateWardResponse? _defaultInstance;

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

class DeleteWardRequest extends $pb.GeneratedMessage {
  factory DeleteWardRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteWardRequest._() : super();
  factory DeleteWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteWardRequest clone() => DeleteWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteWardRequest copyWith(void Function(DeleteWardRequest) updates) => super.copyWith((message) => updates(message as DeleteWardRequest)) as DeleteWardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteWardRequest create() => DeleteWardRequest._();
  DeleteWardRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteWardRequest> createRepeated() => $pb.PbList<DeleteWardRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteWardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteWardRequest>(create);
  static DeleteWardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteWardResponse extends $pb.GeneratedMessage {
  factory DeleteWardResponse() => create();
  DeleteWardResponse._() : super();
  factory DeleteWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteWardResponse clone() => DeleteWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteWardResponse copyWith(void Function(DeleteWardResponse) updates) => super.copyWith((message) => updates(message as DeleteWardResponse)) as DeleteWardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteWardResponse create() => DeleteWardResponse._();
  DeleteWardResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteWardResponse> createRepeated() => $pb.PbList<DeleteWardResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteWardResponse>(create);
  static DeleteWardResponse? _defaultInstance;
}

class GetWardDetailsRequest extends $pb.GeneratedMessage {
  factory GetWardDetailsRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetWardDetailsRequest._() : super();
  factory GetWardDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardDetailsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardDetailsRequest clone() => GetWardDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardDetailsRequest copyWith(void Function(GetWardDetailsRequest) updates) => super.copyWith((message) => updates(message as GetWardDetailsRequest)) as GetWardDetailsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardDetailsRequest create() => GetWardDetailsRequest._();
  GetWardDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<GetWardDetailsRequest> createRepeated() => $pb.PbList<GetWardDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetWardDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardDetailsRequest>(create);
  static GetWardDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetWardDetailsResponse_Bed extends $pb.GeneratedMessage {
  factory GetWardDetailsResponse_Bed({
    $core.String? id,
    $core.String? name,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetWardDetailsResponse_Bed._() : super();
  factory GetWardDetailsResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardDetailsResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardDetailsResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse_Bed clone() => GetWardDetailsResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse_Bed copyWith(void Function(GetWardDetailsResponse_Bed) updates) => super.copyWith((message) => updates(message as GetWardDetailsResponse_Bed)) as GetWardDetailsResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse_Bed create() => GetWardDetailsResponse_Bed._();
  GetWardDetailsResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<GetWardDetailsResponse_Bed> createRepeated() => $pb.PbList<GetWardDetailsResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardDetailsResponse_Bed>(create);
  static GetWardDetailsResponse_Bed? _defaultInstance;

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
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}

class GetWardDetailsResponse_Subtask extends $pb.GeneratedMessage {
  factory GetWardDetailsResponse_Subtask({
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
  GetWardDetailsResponse_Subtask._() : super();
  factory GetWardDetailsResponse_Subtask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardDetailsResponse_Subtask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardDetailsResponse.Subtask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse_Subtask clone() => GetWardDetailsResponse_Subtask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse_Subtask copyWith(void Function(GetWardDetailsResponse_Subtask) updates) => super.copyWith((message) => updates(message as GetWardDetailsResponse_Subtask)) as GetWardDetailsResponse_Subtask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse_Subtask create() => GetWardDetailsResponse_Subtask._();
  GetWardDetailsResponse_Subtask createEmptyInstance() => create();
  static $pb.PbList<GetWardDetailsResponse_Subtask> createRepeated() => $pb.PbList<GetWardDetailsResponse_Subtask>();
  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse_Subtask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardDetailsResponse_Subtask>(create);
  static GetWardDetailsResponse_Subtask? _defaultInstance;

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

class GetWardDetailsResponse_Room extends $pb.GeneratedMessage {
  factory GetWardDetailsResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetWardDetailsResponse_Bed>? beds,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (beds != null) {
      $result.beds.addAll(beds);
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetWardDetailsResponse_Room._() : super();
  factory GetWardDetailsResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardDetailsResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardDetailsResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GetWardDetailsResponse_Bed>(3, _omitFieldNames ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetWardDetailsResponse_Bed.create)
    ..aOS(4, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse_Room clone() => GetWardDetailsResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse_Room copyWith(void Function(GetWardDetailsResponse_Room) updates) => super.copyWith((message) => updates(message as GetWardDetailsResponse_Room)) as GetWardDetailsResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse_Room create() => GetWardDetailsResponse_Room._();
  GetWardDetailsResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetWardDetailsResponse_Room> createRepeated() => $pb.PbList<GetWardDetailsResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardDetailsResponse_Room>(create);
  static GetWardDetailsResponse_Room? _defaultInstance;

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
  $core.List<GetWardDetailsResponse_Bed> get beds => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get consistency => $_getSZ(3);
  @$pb.TagNumber(4)
  set consistency($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasConsistency() => $_has(3);
  @$pb.TagNumber(4)
  void clearConsistency() => clearField(4);
}

class GetWardDetailsResponse_TaskTemplate extends $pb.GeneratedMessage {
  factory GetWardDetailsResponse_TaskTemplate({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetWardDetailsResponse_Subtask>? subtasks,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetWardDetailsResponse_TaskTemplate._() : super();
  factory GetWardDetailsResponse_TaskTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardDetailsResponse_TaskTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardDetailsResponse.TaskTemplate', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GetWardDetailsResponse_Subtask>(3, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetWardDetailsResponse_Subtask.create)
    ..aOS(4, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse_TaskTemplate clone() => GetWardDetailsResponse_TaskTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse_TaskTemplate copyWith(void Function(GetWardDetailsResponse_TaskTemplate) updates) => super.copyWith((message) => updates(message as GetWardDetailsResponse_TaskTemplate)) as GetWardDetailsResponse_TaskTemplate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse_TaskTemplate create() => GetWardDetailsResponse_TaskTemplate._();
  GetWardDetailsResponse_TaskTemplate createEmptyInstance() => create();
  static $pb.PbList<GetWardDetailsResponse_TaskTemplate> createRepeated() => $pb.PbList<GetWardDetailsResponse_TaskTemplate>();
  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse_TaskTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardDetailsResponse_TaskTemplate>(create);
  static GetWardDetailsResponse_TaskTemplate? _defaultInstance;

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
  $core.List<GetWardDetailsResponse_Subtask> get subtasks => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get consistency => $_getSZ(3);
  @$pb.TagNumber(4)
  set consistency($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasConsistency() => $_has(3);
  @$pb.TagNumber(4)
  void clearConsistency() => clearField(4);
}

class GetWardDetailsResponse extends $pb.GeneratedMessage {
  factory GetWardDetailsResponse({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetWardDetailsResponse_Room>? rooms,
    $core.Iterable<GetWardDetailsResponse_TaskTemplate>? taskTemplates,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (rooms != null) {
      $result.rooms.addAll(rooms);
    }
    if (taskTemplates != null) {
      $result.taskTemplates.addAll(taskTemplates);
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetWardDetailsResponse._() : super();
  factory GetWardDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardDetailsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GetWardDetailsResponse_Room>(3, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: GetWardDetailsResponse_Room.create)
    ..pc<GetWardDetailsResponse_TaskTemplate>(4, _omitFieldNames ? '' : 'taskTemplates', $pb.PbFieldType.PM, subBuilder: GetWardDetailsResponse_TaskTemplate.create)
    ..aOS(5, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse clone() => GetWardDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardDetailsResponse copyWith(void Function(GetWardDetailsResponse) updates) => super.copyWith((message) => updates(message as GetWardDetailsResponse)) as GetWardDetailsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse create() => GetWardDetailsResponse._();
  GetWardDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<GetWardDetailsResponse> createRepeated() => $pb.PbList<GetWardDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWardDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardDetailsResponse>(create);
  static GetWardDetailsResponse? _defaultInstance;

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
  $core.List<GetWardDetailsResponse_Room> get rooms => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<GetWardDetailsResponse_TaskTemplate> get taskTemplates => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get consistency => $_getSZ(4);
  @$pb.TagNumber(5)
  set consistency($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasConsistency() => $_has(4);
  @$pb.TagNumber(5)
  void clearConsistency() => clearField(5);
}

class GetWardOverviewsRequest extends $pb.GeneratedMessage {
  factory GetWardOverviewsRequest() => create();
  GetWardOverviewsRequest._() : super();
  factory GetWardOverviewsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardOverviewsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardOverviewsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardOverviewsRequest clone() => GetWardOverviewsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardOverviewsRequest copyWith(void Function(GetWardOverviewsRequest) updates) => super.copyWith((message) => updates(message as GetWardOverviewsRequest)) as GetWardOverviewsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardOverviewsRequest create() => GetWardOverviewsRequest._();
  GetWardOverviewsRequest createEmptyInstance() => create();
  static $pb.PbList<GetWardOverviewsRequest> createRepeated() => $pb.PbList<GetWardOverviewsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetWardOverviewsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardOverviewsRequest>(create);
  static GetWardOverviewsRequest? _defaultInstance;
}

class GetWardOverviewsResponse_Ward extends $pb.GeneratedMessage {
  factory GetWardOverviewsResponse_Ward({
    $core.String? id,
    $core.String? name,
    $core.int? bedCount,
    $core.int? tasksTodo,
    $core.int? tasksInProgress,
    $core.int? tasksDone,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (bedCount != null) {
      $result.bedCount = bedCount;
    }
    if (tasksTodo != null) {
      $result.tasksTodo = tasksTodo;
    }
    if (tasksInProgress != null) {
      $result.tasksInProgress = tasksInProgress;
    }
    if (tasksDone != null) {
      $result.tasksDone = tasksDone;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetWardOverviewsResponse_Ward._() : super();
  factory GetWardOverviewsResponse_Ward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardOverviewsResponse_Ward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardOverviewsResponse.Ward', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'bedCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'tasksTodo', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'tasksInProgress', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'tasksDone', $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardOverviewsResponse_Ward clone() => GetWardOverviewsResponse_Ward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardOverviewsResponse_Ward copyWith(void Function(GetWardOverviewsResponse_Ward) updates) => super.copyWith((message) => updates(message as GetWardOverviewsResponse_Ward)) as GetWardOverviewsResponse_Ward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardOverviewsResponse_Ward create() => GetWardOverviewsResponse_Ward._();
  GetWardOverviewsResponse_Ward createEmptyInstance() => create();
  static $pb.PbList<GetWardOverviewsResponse_Ward> createRepeated() => $pb.PbList<GetWardOverviewsResponse_Ward>();
  @$core.pragma('dart2js:noInline')
  static GetWardOverviewsResponse_Ward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardOverviewsResponse_Ward>(create);
  static GetWardOverviewsResponse_Ward? _defaultInstance;

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
  $core.int get bedCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set bedCount($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBedCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearBedCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get tasksTodo => $_getIZ(3);
  @$pb.TagNumber(4)
  set tasksTodo($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTasksTodo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTasksTodo() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get tasksInProgress => $_getIZ(4);
  @$pb.TagNumber(5)
  set tasksInProgress($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTasksInProgress() => $_has(4);
  @$pb.TagNumber(5)
  void clearTasksInProgress() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get tasksDone => $_getIZ(5);
  @$pb.TagNumber(6)
  set tasksDone($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTasksDone() => $_has(5);
  @$pb.TagNumber(6)
  void clearTasksDone() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get consistency => $_getSZ(6);
  @$pb.TagNumber(7)
  set consistency($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasConsistency() => $_has(6);
  @$pb.TagNumber(7)
  void clearConsistency() => clearField(7);
}

class GetWardOverviewsResponse extends $pb.GeneratedMessage {
  factory GetWardOverviewsResponse({
    $core.Iterable<GetWardOverviewsResponse_Ward>? wards,
  }) {
    final $result = create();
    if (wards != null) {
      $result.wards.addAll(wards);
    }
    return $result;
  }
  GetWardOverviewsResponse._() : super();
  factory GetWardOverviewsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardOverviewsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardOverviewsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.tasks_svc.v1'), createEmptyInstance: create)
    ..pc<GetWardOverviewsResponse_Ward>(1, _omitFieldNames ? '' : 'wards', $pb.PbFieldType.PM, subBuilder: GetWardOverviewsResponse_Ward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWardOverviewsResponse clone() => GetWardOverviewsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWardOverviewsResponse copyWith(void Function(GetWardOverviewsResponse) updates) => super.copyWith((message) => updates(message as GetWardOverviewsResponse)) as GetWardOverviewsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWardOverviewsResponse create() => GetWardOverviewsResponse._();
  GetWardOverviewsResponse createEmptyInstance() => create();
  static $pb.PbList<GetWardOverviewsResponse> createRepeated() => $pb.PbList<GetWardOverviewsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWardOverviewsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWardOverviewsResponse>(create);
  static GetWardOverviewsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetWardOverviewsResponse_Ward> get wards => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
