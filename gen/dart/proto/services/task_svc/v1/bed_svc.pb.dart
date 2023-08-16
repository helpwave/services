//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/bed_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateBedRequest extends $pb.GeneratedMessage {
  factory CreateBedRequest({
    $core.String? roomId,
    $core.String? name,
  }) {
    final $result = create();
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateBedRequest._() : super();
  factory CreateBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateBedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'roomId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBedRequest clone() => CreateBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBedRequest copyWith(void Function(CreateBedRequest) updates) => super.copyWith((message) => updates(message as CreateBedRequest)) as CreateBedRequest;

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

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class CreateBedResponse extends $pb.GeneratedMessage {
  factory CreateBedResponse({
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
  CreateBedResponse._() : super();
  factory CreateBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateBedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBedResponse clone() => CreateBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBedResponse copyWith(void Function(CreateBedResponse) updates) => super.copyWith((message) => updates(message as CreateBedResponse)) as CreateBedResponse;

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

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class BulkCreateBedsRequest extends $pb.GeneratedMessage {
  factory BulkCreateBedsRequest({
    $core.String? roomId,
    $core.int? amountOfBeds,
  }) {
    final $result = create();
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (amountOfBeds != null) {
      $result.amountOfBeds = amountOfBeds;
    }
    return $result;
  }
  BulkCreateBedsRequest._() : super();
  factory BulkCreateBedsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BulkCreateBedsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BulkCreateBedsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'roomId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'amountOfBeds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BulkCreateBedsRequest clone() => BulkCreateBedsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BulkCreateBedsRequest copyWith(void Function(BulkCreateBedsRequest) updates) => super.copyWith((message) => updates(message as BulkCreateBedsRequest)) as BulkCreateBedsRequest;

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

class BulkCreateBedsResponse_Bed extends $pb.GeneratedMessage {
  factory BulkCreateBedsResponse_Bed({
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
  BulkCreateBedsResponse_Bed._() : super();
  factory BulkCreateBedsResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BulkCreateBedsResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BulkCreateBedsResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BulkCreateBedsResponse_Bed clone() => BulkCreateBedsResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BulkCreateBedsResponse_Bed copyWith(void Function(BulkCreateBedsResponse_Bed) updates) => super.copyWith((message) => updates(message as BulkCreateBedsResponse_Bed)) as BulkCreateBedsResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsResponse_Bed create() => BulkCreateBedsResponse_Bed._();
  BulkCreateBedsResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<BulkCreateBedsResponse_Bed> createRepeated() => $pb.PbList<BulkCreateBedsResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BulkCreateBedsResponse_Bed>(create);
  static BulkCreateBedsResponse_Bed? _defaultInstance;

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

class BulkCreateBedsResponse extends $pb.GeneratedMessage {
  factory BulkCreateBedsResponse({
    $core.Iterable<BulkCreateBedsResponse_Bed>? beds,
  }) {
    final $result = create();
    if (beds != null) {
      $result.beds.addAll(beds);
    }
    return $result;
  }
  BulkCreateBedsResponse._() : super();
  factory BulkCreateBedsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BulkCreateBedsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BulkCreateBedsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<BulkCreateBedsResponse_Bed>(1, _omitFieldNames ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: BulkCreateBedsResponse_Bed.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BulkCreateBedsResponse clone() => BulkCreateBedsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BulkCreateBedsResponse copyWith(void Function(BulkCreateBedsResponse) updates) => super.copyWith((message) => updates(message as BulkCreateBedsResponse)) as BulkCreateBedsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsResponse create() => BulkCreateBedsResponse._();
  BulkCreateBedsResponse createEmptyInstance() => create();
  static $pb.PbList<BulkCreateBedsResponse> createRepeated() => $pb.PbList<BulkCreateBedsResponse>();
  @$core.pragma('dart2js:noInline')
  static BulkCreateBedsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BulkCreateBedsResponse>(create);
  static BulkCreateBedsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BulkCreateBedsResponse_Bed> get beds => $_getList(0);
}

class GetBedRequest extends $pb.GeneratedMessage {
  factory GetBedRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetBedRequest._() : super();
  factory GetBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedRequest clone() => GetBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedRequest copyWith(void Function(GetBedRequest) updates) => super.copyWith((message) => updates(message as GetBedRequest)) as GetBedRequest;

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
  factory GetBedResponse({
    $core.String? id,
    $core.String? roomId,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetBedResponse._() : super();
  factory GetBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'roomId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedResponse clone() => GetBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedResponse copyWith(void Function(GetBedResponse) updates) => super.copyWith((message) => updates(message as GetBedResponse)) as GetBedResponse;

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

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GetBedsRequest extends $pb.GeneratedMessage {
  factory GetBedsRequest() => create();
  GetBedsRequest._() : super();
  factory GetBedsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBedsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsRequest clone() => GetBedsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsRequest copyWith(void Function(GetBedsRequest) updates) => super.copyWith((message) => updates(message as GetBedsRequest)) as GetBedsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBedsRequest create() => GetBedsRequest._();
  GetBedsRequest createEmptyInstance() => create();
  static $pb.PbList<GetBedsRequest> createRepeated() => $pb.PbList<GetBedsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBedsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsRequest>(create);
  static GetBedsRequest? _defaultInstance;
}

class GetBedsResponse_Bed extends $pb.GeneratedMessage {
  factory GetBedsResponse_Bed({
    $core.String? id,
    $core.String? roomId,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetBedsResponse_Bed._() : super();
  factory GetBedsResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBedsResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'roomId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsResponse_Bed clone() => GetBedsResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsResponse_Bed copyWith(void Function(GetBedsResponse_Bed) updates) => super.copyWith((message) => updates(message as GetBedsResponse_Bed)) as GetBedsResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBedsResponse_Bed create() => GetBedsResponse_Bed._();
  GetBedsResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<GetBedsResponse_Bed> createRepeated() => $pb.PbList<GetBedsResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetBedsResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsResponse_Bed>(create);
  static GetBedsResponse_Bed? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GetBedsResponse extends $pb.GeneratedMessage {
  factory GetBedsResponse({
    $core.Iterable<GetBedsResponse_Bed>? beds,
  }) {
    final $result = create();
    if (beds != null) {
      $result.beds.addAll(beds);
    }
    return $result;
  }
  GetBedsResponse._() : super();
  factory GetBedsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBedsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetBedsResponse_Bed>(1, _omitFieldNames ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetBedsResponse_Bed.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsResponse clone() => GetBedsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsResponse copyWith(void Function(GetBedsResponse) updates) => super.copyWith((message) => updates(message as GetBedsResponse)) as GetBedsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBedsResponse create() => GetBedsResponse._();
  GetBedsResponse createEmptyInstance() => create();
  static $pb.PbList<GetBedsResponse> createRepeated() => $pb.PbList<GetBedsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBedsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsResponse>(create);
  static GetBedsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetBedsResponse_Bed> get beds => $_getList(0);
}

class GetBedsByRoomRequest extends $pb.GeneratedMessage {
  factory GetBedsByRoomRequest({
    $core.String? roomId,
  }) {
    final $result = create();
    if (roomId != null) {
      $result.roomId = roomId;
    }
    return $result;
  }
  GetBedsByRoomRequest._() : super();
  factory GetBedsByRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsByRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBedsByRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsByRoomRequest clone() => GetBedsByRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsByRoomRequest copyWith(void Function(GetBedsByRoomRequest) updates) => super.copyWith((message) => updates(message as GetBedsByRoomRequest)) as GetBedsByRoomRequest;

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

class GetBedsByRoomResponse_Bed extends $pb.GeneratedMessage {
  factory GetBedsByRoomResponse_Bed({
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
  GetBedsByRoomResponse_Bed._() : super();
  factory GetBedsByRoomResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsByRoomResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBedsByRoomResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsByRoomResponse_Bed clone() => GetBedsByRoomResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsByRoomResponse_Bed copyWith(void Function(GetBedsByRoomResponse_Bed) updates) => super.copyWith((message) => updates(message as GetBedsByRoomResponse_Bed)) as GetBedsByRoomResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomResponse_Bed create() => GetBedsByRoomResponse_Bed._();
  GetBedsByRoomResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<GetBedsByRoomResponse_Bed> createRepeated() => $pb.PbList<GetBedsByRoomResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsByRoomResponse_Bed>(create);
  static GetBedsByRoomResponse_Bed? _defaultInstance;

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

class GetBedsByRoomResponse extends $pb.GeneratedMessage {
  factory GetBedsByRoomResponse({
    $core.Iterable<GetBedsByRoomResponse_Bed>? beds,
  }) {
    final $result = create();
    if (beds != null) {
      $result.beds.addAll(beds);
    }
    return $result;
  }
  GetBedsByRoomResponse._() : super();
  factory GetBedsByRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBedsByRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBedsByRoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetBedsByRoomResponse_Bed>(1, _omitFieldNames ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetBedsByRoomResponse_Bed.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBedsByRoomResponse clone() => GetBedsByRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBedsByRoomResponse copyWith(void Function(GetBedsByRoomResponse) updates) => super.copyWith((message) => updates(message as GetBedsByRoomResponse)) as GetBedsByRoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomResponse create() => GetBedsByRoomResponse._();
  GetBedsByRoomResponse createEmptyInstance() => create();
  static $pb.PbList<GetBedsByRoomResponse> createRepeated() => $pb.PbList<GetBedsByRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBedsByRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBedsByRoomResponse>(create);
  static GetBedsByRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetBedsByRoomResponse_Bed> get beds => $_getList(0);
}

class UpdateBedRequest extends $pb.GeneratedMessage {
  factory UpdateBedRequest({
    $core.String? id,
    $core.String? roomId,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  UpdateBedRequest._() : super();
  factory UpdateBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateBedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'roomId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBedRequest clone() => UpdateBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBedRequest copyWith(void Function(UpdateBedRequest) updates) => super.copyWith((message) => updates(message as UpdateBedRequest)) as UpdateBedRequest;

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

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class UpdateBedResponse extends $pb.GeneratedMessage {
  factory UpdateBedResponse() => create();
  UpdateBedResponse._() : super();
  factory UpdateBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateBedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBedResponse clone() => UpdateBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBedResponse copyWith(void Function(UpdateBedResponse) updates) => super.copyWith((message) => updates(message as UpdateBedResponse)) as UpdateBedResponse;

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
  factory DeleteBedRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteBedRequest._() : super();
  factory DeleteBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteBedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBedRequest clone() => DeleteBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBedRequest copyWith(void Function(DeleteBedRequest) updates) => super.copyWith((message) => updates(message as DeleteBedRequest)) as DeleteBedRequest;

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
  factory DeleteBedResponse() => create();
  DeleteBedResponse._() : super();
  factory DeleteBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteBedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBedResponse clone() => DeleteBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBedResponse copyWith(void Function(DeleteBedResponse) updates) => super.copyWith((message) => updates(message as DeleteBedResponse)) as DeleteBedResponse;

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

  $async.Future<CreateBedResponse> createBed($pb.ClientContext? ctx, CreateBedRequest request) =>
    _client.invoke<CreateBedResponse>(ctx, 'BedService', 'CreateBed', request, CreateBedResponse())
  ;
  $async.Future<BulkCreateBedsResponse> bulkCreateBeds($pb.ClientContext? ctx, BulkCreateBedsRequest request) =>
    _client.invoke<BulkCreateBedsResponse>(ctx, 'BedService', 'BulkCreateBeds', request, BulkCreateBedsResponse())
  ;
  $async.Future<GetBedResponse> getBed($pb.ClientContext? ctx, GetBedRequest request) =>
    _client.invoke<GetBedResponse>(ctx, 'BedService', 'GetBed', request, GetBedResponse())
  ;
  $async.Future<GetBedsResponse> getBeds($pb.ClientContext? ctx, GetBedsRequest request) =>
    _client.invoke<GetBedsResponse>(ctx, 'BedService', 'GetBeds', request, GetBedsResponse())
  ;
  $async.Future<GetBedsByRoomResponse> getBedsByRoom($pb.ClientContext? ctx, GetBedsByRoomRequest request) =>
    _client.invoke<GetBedsByRoomResponse>(ctx, 'BedService', 'GetBedsByRoom', request, GetBedsByRoomResponse())
  ;
  $async.Future<UpdateBedResponse> updateBed($pb.ClientContext? ctx, UpdateBedRequest request) =>
    _client.invoke<UpdateBedResponse>(ctx, 'BedService', 'UpdateBed', request, UpdateBedResponse())
  ;
  $async.Future<DeleteBedResponse> deleteBed($pb.ClientContext? ctx, DeleteBedRequest request) =>
    _client.invoke<DeleteBedResponse>(ctx, 'BedService', 'DeleteBed', request, DeleteBedResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
