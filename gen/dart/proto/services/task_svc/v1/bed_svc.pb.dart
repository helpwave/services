///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/bed_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateBedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateBedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  CreateBedRequest._() : super();
  factory CreateBedRequest({
    $core.String? roomId,
  }) {
    final _result = create();
    if (roomId != null) {
      _result.roomId = roomId;
    }
    return _result;
  }
  factory CreateBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBedRequest clone() => CreateBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBedRequest copyWith(void Function(CreateBedRequest) updates) => super.copyWith((message) => updates(message as CreateBedRequest)) as CreateBedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateBedRequest create() => CreateBedRequest._();
  CreateBedRequest createEmptyInstance() => create();
  static $pb.PbList<CreateBedRequest> createRepeated() => $pb.PbList<CreateBedRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateBedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateBedRequest>(create);
  static CreateBedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomId => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);
}

class CreateBedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateBedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  CreateBedResponse._() : super();
  factory CreateBedResponse({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory CreateBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBedResponse clone() => CreateBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBedResponse copyWith(void Function(CreateBedResponse) updates) => super.copyWith((message) => updates(message as CreateBedResponse)) as CreateBedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateBedResponse create() => CreateBedResponse._();
  CreateBedResponse createEmptyInstance() => create();
  static $pb.PbList<CreateBedResponse> createRepeated() => $pb.PbList<CreateBedResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateBedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateBedResponse>(create);
  static CreateBedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class BulkCreateBedsBed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BulkCreateBedsBed', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  BulkCreateBedsBed._() : super();
  factory BulkCreateBedsBed({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory BulkCreateBedsBed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BulkCreateBedsBed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BulkCreateBedsBed clone() => BulkCreateBedsBed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BulkCreateBedsBed copyWith(void Function(BulkCreateBedsBed) updates) => super.copyWith((message) => updates(message as BulkCreateBedsBed)) as BulkCreateBedsBed; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsBed create() => BulkCreateBedsBed._();
  BulkCreateBedsBed createEmptyInstance() => create();
  static $pb.PbList<BulkCreateBedsBed> createRepeated() => $pb.PbList<BulkCreateBedsBed>();
  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsBed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BulkCreateBedsBed>(create);
  static BulkCreateBedsBed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class BulkCreateBedsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BulkCreateBedsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountOfBeds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  BulkCreateBedsRequest._() : super();
  factory BulkCreateBedsRequest({
    $core.String? roomId,
    $core.int? amountOfBeds,
  }) {
    final _result = create();
    if (roomId != null) {
      _result.roomId = roomId;
    }
    if (amountOfBeds != null) {
      _result.amountOfBeds = amountOfBeds;
    }
    return _result;
  }
  factory BulkCreateBedsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BulkCreateBedsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BulkCreateBedsRequest clone() => BulkCreateBedsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BulkCreateBedsRequest copyWith(void Function(BulkCreateBedsRequest) updates) => super.copyWith((message) => updates(message as BulkCreateBedsRequest)) as BulkCreateBedsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsRequest create() => BulkCreateBedsRequest._();
  BulkCreateBedsRequest createEmptyInstance() => create();
  static $pb.PbList<BulkCreateBedsRequest> createRepeated() => $pb.PbList<BulkCreateBedsRequest>();
  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BulkCreateBedsRequest>(create);
  static BulkCreateBedsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomId => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get amountOfBeds => $_getIZ(1);
  @$pb.TagNumber(2)
  set amountOfBeds($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmountOfBeds() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmountOfBeds() => clearField(2);
}

class BulkCreateBedsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BulkCreateBedsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<BulkCreateBedsBed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: BulkCreateBedsBed.create)
    ..hasRequiredFields = false
  ;

  BulkCreateBedsResponse._() : super();
  factory BulkCreateBedsResponse({
    $core.Iterable<BulkCreateBedsBed>? beds,
  }) {
    final _result = create();
    if (beds != null) {
      _result.beds.addAll(beds);
    }
    return _result;
  }
  factory BulkCreateBedsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BulkCreateBedsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BulkCreateBedsResponse clone() => BulkCreateBedsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BulkCreateBedsResponse copyWith(void Function(BulkCreateBedsResponse) updates) => super.copyWith((message) => updates(message as BulkCreateBedsResponse)) as BulkCreateBedsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsResponse create() => BulkCreateBedsResponse._();
  BulkCreateBedsResponse createEmptyInstance() => create();
  static $pb.PbList<BulkCreateBedsResponse> createRepeated() => $pb.PbList<BulkCreateBedsResponse>();
  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BulkCreateBedsResponse>(create);
  static BulkCreateBedsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BulkCreateBedsBed> get beds => $_getList(0);
}

class GetBedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetBedRequest._() : super();
  factory GetBedRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedRequest clone() => GetBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedRequest copyWith(void Function(GetBedRequest) updates) => super.copyWith((message) => updates(message as GetBedRequest)) as GetBedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBedRequest create() => GetBedRequest._();
  GetBedRequest createEmptyInstance() => create();
  static $pb.PbList<GetBedRequest> createRepeated() => $pb.PbList<GetBedRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedRequest>(create);
  static GetBedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetBedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  GetBedResponse._() : super();
  factory GetBedResponse({
    $core.String? id,
    $core.String? roomId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (roomId != null) {
      _result.roomId = roomId;
    }
    return _result;
  }
  factory GetBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedResponse clone() => GetBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedResponse copyWith(void Function(GetBedResponse) updates) => super.copyWith((message) => updates(message as GetBedResponse)) as GetBedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBedResponse create() => GetBedResponse._();
  GetBedResponse createEmptyInstance() => create();
  static $pb.PbList<GetBedResponse> createRepeated() => $pb.PbList<GetBedResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedResponse>(create);
  static GetBedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);
}

class GetBedsBed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBedsBed', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  GetBedsBed._() : super();
  factory GetBedsBed({
    $core.String? id,
    $core.String? roomId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (roomId != null) {
      _result.roomId = roomId;
    }
    return _result;
  }
  factory GetBedsBed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsBed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsBed clone() => GetBedsBed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsBed copyWith(void Function(GetBedsBed) updates) => super.copyWith((message) => updates(message as GetBedsBed)) as GetBedsBed; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBedsBed create() => GetBedsBed._();
  GetBedsBed createEmptyInstance() => create();
  static $pb.PbList<GetBedsBed> createRepeated() => $pb.PbList<GetBedsBed>();
  @$core.pragma('dart2js:noInline')
  static GetBedsBed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsBed>(create);
  static GetBedsBed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);
}

class GetBedsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBedsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetBedsRequest._() : super();
  factory GetBedsRequest() => create();
  factory GetBedsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsRequest clone() => GetBedsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsRequest copyWith(void Function(GetBedsRequest) updates) => super.copyWith((message) => updates(message as GetBedsRequest)) as GetBedsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBedsRequest create() => GetBedsRequest._();
  GetBedsRequest createEmptyInstance() => create();
  static $pb.PbList<GetBedsRequest> createRepeated() => $pb.PbList<GetBedsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBedsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsRequest>(create);
  static GetBedsRequest? _defaultInstance;
}

class GetBedsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBedsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetBedsBed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetBedsBed.create)
    ..hasRequiredFields = false
  ;

  GetBedsResponse._() : super();
  factory GetBedsResponse({
    $core.Iterable<GetBedsBed>? beds,
  }) {
    final _result = create();
    if (beds != null) {
      _result.beds.addAll(beds);
    }
    return _result;
  }
  factory GetBedsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsResponse clone() => GetBedsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsResponse copyWith(void Function(GetBedsResponse) updates) => super.copyWith((message) => updates(message as GetBedsResponse)) as GetBedsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBedsResponse create() => GetBedsResponse._();
  GetBedsResponse createEmptyInstance() => create();
  static $pb.PbList<GetBedsResponse> createRepeated() => $pb.PbList<GetBedsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBedsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsResponse>(create);
  static GetBedsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetBedsBed> get beds => $_getList(0);
}

class GetBedsByRoomBed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBedsByRoomBed', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetBedsByRoomBed._() : super();
  factory GetBedsByRoomBed({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetBedsByRoomBed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsByRoomBed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsByRoomBed clone() => GetBedsByRoomBed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsByRoomBed copyWith(void Function(GetBedsByRoomBed) updates) => super.copyWith((message) => updates(message as GetBedsByRoomBed)) as GetBedsByRoomBed; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomBed create() => GetBedsByRoomBed._();
  GetBedsByRoomBed createEmptyInstance() => create();
  static $pb.PbList<GetBedsByRoomBed> createRepeated() => $pb.PbList<GetBedsByRoomBed>();
  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomBed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsByRoomBed>(create);
  static GetBedsByRoomBed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetBedsByRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBedsByRoomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  GetBedsByRoomRequest._() : super();
  factory GetBedsByRoomRequest({
    $core.String? roomId,
  }) {
    final _result = create();
    if (roomId != null) {
      _result.roomId = roomId;
    }
    return _result;
  }
  factory GetBedsByRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsByRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsByRoomRequest clone() => GetBedsByRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsByRoomRequest copyWith(void Function(GetBedsByRoomRequest) updates) => super.copyWith((message) => updates(message as GetBedsByRoomRequest)) as GetBedsByRoomRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomRequest create() => GetBedsByRoomRequest._();
  GetBedsByRoomRequest createEmptyInstance() => create();
  static $pb.PbList<GetBedsByRoomRequest> createRepeated() => $pb.PbList<GetBedsByRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsByRoomRequest>(create);
  static GetBedsByRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomId => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);
}

class GetBedsByRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBedsByRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetBedsByRoomBed>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetBedsByRoomBed.create)
    ..hasRequiredFields = false
  ;

  GetBedsByRoomResponse._() : super();
  factory GetBedsByRoomResponse({
    $core.Iterable<GetBedsByRoomBed>? beds,
  }) {
    final _result = create();
    if (beds != null) {
      _result.beds.addAll(beds);
    }
    return _result;
  }
  factory GetBedsByRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsByRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsByRoomResponse clone() => GetBedsByRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsByRoomResponse copyWith(void Function(GetBedsByRoomResponse) updates) => super.copyWith((message) => updates(message as GetBedsByRoomResponse)) as GetBedsByRoomResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomResponse create() => GetBedsByRoomResponse._();
  GetBedsByRoomResponse createEmptyInstance() => create();
  static $pb.PbList<GetBedsByRoomResponse> createRepeated() => $pb.PbList<GetBedsByRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsByRoomResponse>(create);
  static GetBedsByRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetBedsByRoomBed> get beds => $_getList(0);
}

class UpdateBedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateBedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  UpdateBedRequest._() : super();
  factory UpdateBedRequest({
    $core.String? id,
    $core.String? roomId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (roomId != null) {
      _result.roomId = roomId;
    }
    return _result;
  }
  factory UpdateBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBedRequest clone() => UpdateBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBedRequest copyWith(void Function(UpdateBedRequest) updates) => super.copyWith((message) => updates(message as UpdateBedRequest)) as UpdateBedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateBedRequest create() => UpdateBedRequest._();
  UpdateBedRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateBedRequest> createRepeated() => $pb.PbList<UpdateBedRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateBedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateBedRequest>(create);
  static UpdateBedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roomId => $_getSZ(1);
  @$pb.TagNumber(2)
  set roomId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => clearField(2);
}

class UpdateBedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateBedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateBedResponse._() : super();
  factory UpdateBedResponse() => create();
  factory UpdateBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBedResponse clone() => UpdateBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBedResponse copyWith(void Function(UpdateBedResponse) updates) => super.copyWith((message) => updates(message as UpdateBedResponse)) as UpdateBedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateBedResponse create() => UpdateBedResponse._();
  UpdateBedResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateBedResponse> createRepeated() => $pb.PbList<UpdateBedResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateBedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateBedResponse>(create);
  static UpdateBedResponse? _defaultInstance;
}

class DeleteBedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteBedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteBedRequest._() : super();
  factory DeleteBedRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBedRequest clone() => DeleteBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBedRequest copyWith(void Function(DeleteBedRequest) updates) => super.copyWith((message) => updates(message as DeleteBedRequest)) as DeleteBedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteBedRequest create() => DeleteBedRequest._();
  DeleteBedRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteBedRequest> createRepeated() => $pb.PbList<DeleteBedRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteBedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteBedRequest>(create);
  static DeleteBedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteBedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteBedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteBedResponse._() : super();
  factory DeleteBedResponse() => create();
  factory DeleteBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBedResponse clone() => DeleteBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBedResponse copyWith(void Function(DeleteBedResponse) updates) => super.copyWith((message) => updates(message as DeleteBedResponse)) as DeleteBedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteBedResponse create() => DeleteBedResponse._();
  DeleteBedResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteBedResponse> createRepeated() => $pb.PbList<DeleteBedResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteBedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteBedResponse>(create);
  static DeleteBedResponse? _defaultInstance;
}

class BedServiceApi {
  $pb.RpcClient _client;
  BedServiceApi(this._client);

  $async.Future<CreateBedResponse> createBed($pb.ClientContext? ctx, CreateBedRequest request) {
    var emptyResponse = CreateBedResponse();
    return _client.invoke<CreateBedResponse>(ctx, 'BedService', 'CreateBed', request, emptyResponse);
  }
  $async.Future<BulkCreateBedsResponse> bulkCreateBeds($pb.ClientContext? ctx, BulkCreateBedsRequest request) {
    var emptyResponse = BulkCreateBedsResponse();
    return _client.invoke<BulkCreateBedsResponse>(ctx, 'BedService', 'BulkCreateBeds', request, emptyResponse);
  }
  $async.Future<GetBedResponse> getBed($pb.ClientContext? ctx, GetBedRequest request) {
    var emptyResponse = GetBedResponse();
    return _client.invoke<GetBedResponse>(ctx, 'BedService', 'GetBed', request, emptyResponse);
  }
  $async.Future<GetBedsResponse> getBeds($pb.ClientContext? ctx, GetBedsRequest request) {
    var emptyResponse = GetBedsResponse();
    return _client.invoke<GetBedsResponse>(ctx, 'BedService', 'GetBeds', request, emptyResponse);
  }
  $async.Future<GetBedsByRoomResponse> getBedsByRoom($pb.ClientContext? ctx, GetBedsByRoomRequest request) {
    var emptyResponse = GetBedsByRoomResponse();
    return _client.invoke<GetBedsByRoomResponse>(ctx, 'BedService', 'GetBedsByRoom', request, emptyResponse);
  }
  $async.Future<UpdateBedResponse> updateBed($pb.ClientContext? ctx, UpdateBedRequest request) {
    var emptyResponse = UpdateBedResponse();
    return _client.invoke<UpdateBedResponse>(ctx, 'BedService', 'UpdateBed', request, emptyResponse);
  }
  $async.Future<DeleteBedResponse> deleteBed($pb.ClientContext? ctx, DeleteBedRequest request) {
    var emptyResponse = DeleteBedResponse();
    return _client.invoke<DeleteBedResponse>(ctx, 'BedService', 'DeleteBed', request, emptyResponse);
  }
}

