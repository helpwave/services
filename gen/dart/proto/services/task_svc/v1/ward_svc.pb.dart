//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/ward_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateWardRequest extends $pb.GeneratedMessage {
  factory CreateWardRequest() => create();
  CreateWardRequest._() : super();
  factory CreateWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory CreateWardResponse() => create();
  CreateWardResponse._() : super();
  factory CreateWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
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
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class GetWardRequest extends $pb.GeneratedMessage {
  factory GetWardRequest() => create();
  GetWardRequest._() : super();
  factory GetWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory GetWardResponse() => create();
  GetWardResponse._() : super();
  factory GetWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
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
}

class GetWardsRequest extends $pb.GeneratedMessage {
  factory GetWardsRequest() => create();
  GetWardsRequest._() : super();
  factory GetWardsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory GetWardsResponse_Ward() => create();
  GetWardsResponse_Ward._() : super();
  factory GetWardsResponse_Ward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardsResponse_Ward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardsResponse.Ward', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
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
}

class GetWardsResponse extends $pb.GeneratedMessage {
  factory GetWardsResponse() => create();
  GetWardsResponse._() : super();
  factory GetWardsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

class UpdateWardRequest extends $pb.GeneratedMessage {
  factory UpdateWardRequest() => create();
  UpdateWardRequest._() : super();
  factory UpdateWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
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
}

class UpdateWardResponse extends $pb.GeneratedMessage {
  factory UpdateWardResponse() => create();
  UpdateWardResponse._() : super();
  factory UpdateWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
}

class DeleteWardRequest extends $pb.GeneratedMessage {
  factory DeleteWardRequest() => create();
  DeleteWardRequest._() : super();
  factory DeleteWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

class GetWardOverviewsRequest extends $pb.GeneratedMessage {
  factory GetWardOverviewsRequest() => create();
  GetWardOverviewsRequest._() : super();
  factory GetWardOverviewsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardOverviewsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardOverviewsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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
  factory GetWardOverviewsResponse_Ward() => create();
  GetWardOverviewsResponse_Ward._() : super();
  factory GetWardOverviewsResponse_Ward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardOverviewsResponse_Ward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardOverviewsResponse.Ward', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'bedCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'tasksTodo', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'tasksInProgress', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'tasksDone', $pb.PbFieldType.OU3)
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
}

class GetWardOverviewsResponse extends $pb.GeneratedMessage {
  factory GetWardOverviewsResponse() => create();
  GetWardOverviewsResponse._() : super();
  factory GetWardOverviewsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWardOverviewsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWardOverviewsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
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

class WardServiceApi {
  $pb.RpcClient _client;
  WardServiceApi(this._client);

  $async.Future<CreateWardResponse> createWard($pb.ClientContext? ctx, CreateWardRequest request) =>
    _client.invoke<CreateWardResponse>(ctx, 'WardService', 'CreateWard', request, CreateWardResponse())
  ;
  $async.Future<GetWardResponse> getWard($pb.ClientContext? ctx, GetWardRequest request) =>
    _client.invoke<GetWardResponse>(ctx, 'WardService', 'GetWard', request, GetWardResponse())
  ;
  $async.Future<GetWardsResponse> getWards($pb.ClientContext? ctx, GetWardsRequest request) =>
    _client.invoke<GetWardsResponse>(ctx, 'WardService', 'GetWards', request, GetWardsResponse())
  ;
  $async.Future<UpdateWardResponse> updateWard($pb.ClientContext? ctx, UpdateWardRequest request) =>
    _client.invoke<UpdateWardResponse>(ctx, 'WardService', 'UpdateWard', request, UpdateWardResponse())
  ;
  $async.Future<DeleteWardResponse> deleteWard($pb.ClientContext? ctx, DeleteWardRequest request) =>
    _client.invoke<DeleteWardResponse>(ctx, 'WardService', 'DeleteWard', request, DeleteWardResponse())
  ;
  $async.Future<GetWardOverviewsResponse> getWardOverviews($pb.ClientContext? ctx, GetWardOverviewsRequest request) =>
    _client.invoke<GetWardOverviewsResponse>(ctx, 'WardService', 'GetWardOverviews', request, GetWardOverviewsResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
