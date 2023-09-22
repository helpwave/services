//
//  Generated code. Do not modify.
//  source: proto/services/impulse_svc/v1/impulse_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $10;
import 'impulse_svc.pbenum.dart';

export 'impulse_svc.pbenum.dart';

class CreateUserRequest extends $pb.GeneratedMessage {
  factory CreateUserRequest({
    $core.String? username,
    $core.String? sex,
    $10.Timestamp? birthday,
    $core.int? pal,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (sex != null) {
      $result.sex = sex;
    }
    if (birthday != null) {
      $result.birthday = birthday;
    }
    if (pal != null) {
      $result.pal = pal;
    }
    return $result;
  }
  CreateUserRequest._() : super();
  factory CreateUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'sex')
    ..aOM<$10.Timestamp>(3, _omitFieldNames ? '' : 'birthday', subBuilder: $10.Timestamp.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'pal', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateUserRequest clone() => CreateUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateUserRequest copyWith(void Function(CreateUserRequest) updates) => super.copyWith((message) => updates(message as CreateUserRequest)) as CreateUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateUserRequest create() => CreateUserRequest._();
  CreateUserRequest createEmptyInstance() => create();
  static $pb.PbList<CreateUserRequest> createRepeated() => $pb.PbList<CreateUserRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateUserRequest>(create);
  static CreateUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sex => $_getSZ(1);
  @$pb.TagNumber(2)
  set sex($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSex() => $_has(1);
  @$pb.TagNumber(2)
  void clearSex() => clearField(2);

  @$pb.TagNumber(3)
  $10.Timestamp get birthday => $_getN(2);
  @$pb.TagNumber(3)
  set birthday($10.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBirthday() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirthday() => clearField(3);
  @$pb.TagNumber(3)
  $10.Timestamp ensureBirthday() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get pal => $_getIZ(3);
  @$pb.TagNumber(4)
  set pal($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPal() => $_has(3);
  @$pb.TagNumber(4)
  void clearPal() => clearField(4);
}

class CreateUserResponse extends $pb.GeneratedMessage {
  factory CreateUserResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateUserResponse._() : super();
  factory CreateUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateUserResponse clone() => CreateUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateUserResponse copyWith(void Function(CreateUserResponse) updates) => super.copyWith((message) => updates(message as CreateUserResponse)) as CreateUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateUserResponse create() => CreateUserResponse._();
  CreateUserResponse createEmptyInstance() => create();
  static $pb.PbList<CreateUserResponse> createRepeated() => $pb.PbList<CreateUserResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateUserResponse>(create);
  static CreateUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdateUserRequest extends $pb.GeneratedMessage {
  factory UpdateUserRequest({
    $core.String? id,
    $core.String? sex,
    $10.Timestamp? birthday,
    $core.int? pal,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (sex != null) {
      $result.sex = sex;
    }
    if (birthday != null) {
      $result.birthday = birthday;
    }
    if (pal != null) {
      $result.pal = pal;
    }
    return $result;
  }
  UpdateUserRequest._() : super();
  factory UpdateUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'sex')
    ..aOM<$10.Timestamp>(3, _omitFieldNames ? '' : 'birthday', subBuilder: $10.Timestamp.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'pal', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserRequest clone() => UpdateUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserRequest copyWith(void Function(UpdateUserRequest) updates) => super.copyWith((message) => updates(message as UpdateUserRequest)) as UpdateUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserRequest create() => UpdateUserRequest._();
  UpdateUserRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserRequest> createRepeated() => $pb.PbList<UpdateUserRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserRequest>(create);
  static UpdateUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sex => $_getSZ(1);
  @$pb.TagNumber(2)
  set sex($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSex() => $_has(1);
  @$pb.TagNumber(2)
  void clearSex() => clearField(2);

  @$pb.TagNumber(3)
  $10.Timestamp get birthday => $_getN(2);
  @$pb.TagNumber(3)
  set birthday($10.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBirthday() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirthday() => clearField(3);
  @$pb.TagNumber(3)
  $10.Timestamp ensureBirthday() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get pal => $_getIZ(3);
  @$pb.TagNumber(4)
  set pal($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPal() => $_has(3);
  @$pb.TagNumber(4)
  void clearPal() => clearField(4);
}

class UpdateUserResponse extends $pb.GeneratedMessage {
  factory UpdateUserResponse({
    $core.String? id,
    $core.String? sex,
    $10.Timestamp? birthday,
    $core.int? pal,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (sex != null) {
      $result.sex = sex;
    }
    if (birthday != null) {
      $result.birthday = birthday;
    }
    if (pal != null) {
      $result.pal = pal;
    }
    return $result;
  }
  UpdateUserResponse._() : super();
  factory UpdateUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'sex')
    ..aOM<$10.Timestamp>(3, _omitFieldNames ? '' : 'birthday', subBuilder: $10.Timestamp.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'pal', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserResponse clone() => UpdateUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserResponse copyWith(void Function(UpdateUserResponse) updates) => super.copyWith((message) => updates(message as UpdateUserResponse)) as UpdateUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserResponse create() => UpdateUserResponse._();
  UpdateUserResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateUserResponse> createRepeated() => $pb.PbList<UpdateUserResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserResponse>(create);
  static UpdateUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sex => $_getSZ(1);
  @$pb.TagNumber(2)
  set sex($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSex() => $_has(1);
  @$pb.TagNumber(2)
  void clearSex() => clearField(2);

  @$pb.TagNumber(3)
  $10.Timestamp get birthday => $_getN(2);
  @$pb.TagNumber(3)
  set birthday($10.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBirthday() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirthday() => clearField(3);
  @$pb.TagNumber(3)
  $10.Timestamp ensureBirthday() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get pal => $_getIZ(3);
  @$pb.TagNumber(4)
  set pal($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPal() => $_has(3);
  @$pb.TagNumber(4)
  void clearPal() => clearField(4);
}

class TrackChallengeRequest extends $pb.GeneratedMessage {
  factory TrackChallengeRequest({
    $core.String? challengeId,
    $core.String? userId,
    $fixnum.Int64? score,
    $10.Timestamp? doneAt,
  }) {
    final $result = create();
    if (challengeId != null) {
      $result.challengeId = challengeId;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (score != null) {
      $result.score = score;
    }
    if (doneAt != null) {
      $result.doneAt = doneAt;
    }
    return $result;
  }
  TrackChallengeRequest._() : super();
  factory TrackChallengeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackChallengeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrackChallengeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'challengeId')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$10.Timestamp>(4, _omitFieldNames ? '' : 'doneAt', subBuilder: $10.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackChallengeRequest clone() => TrackChallengeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackChallengeRequest copyWith(void Function(TrackChallengeRequest) updates) => super.copyWith((message) => updates(message as TrackChallengeRequest)) as TrackChallengeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackChallengeRequest create() => TrackChallengeRequest._();
  TrackChallengeRequest createEmptyInstance() => create();
  static $pb.PbList<TrackChallengeRequest> createRepeated() => $pb.PbList<TrackChallengeRequest>();
  @$core.pragma('dart2js:noInline')
  static TrackChallengeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackChallengeRequest>(create);
  static TrackChallengeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get challengeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set challengeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallengeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallengeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get score => $_getI64(2);
  @$pb.TagNumber(3)
  set score($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearScore() => clearField(3);

  @$pb.TagNumber(4)
  $10.Timestamp get doneAt => $_getN(3);
  @$pb.TagNumber(4)
  set doneAt($10.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDoneAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearDoneAt() => clearField(4);
  @$pb.TagNumber(4)
  $10.Timestamp ensureDoneAt() => $_ensure(3);
}

class TrackChallengeResponse extends $pb.GeneratedMessage {
  factory TrackChallengeResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  TrackChallengeResponse._() : super();
  factory TrackChallengeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackChallengeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrackChallengeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackChallengeResponse clone() => TrackChallengeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackChallengeResponse copyWith(void Function(TrackChallengeResponse) updates) => super.copyWith((message) => updates(message as TrackChallengeResponse)) as TrackChallengeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackChallengeResponse create() => TrackChallengeResponse._();
  TrackChallengeResponse createEmptyInstance() => create();
  static $pb.PbList<TrackChallengeResponse> createRepeated() => $pb.PbList<TrackChallengeResponse>();
  @$core.pragma('dart2js:noInline')
  static TrackChallengeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackChallengeResponse>(create);
  static TrackChallengeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateDailyChallengeRequest extends $pb.GeneratedMessage {
  factory CreateDailyChallengeRequest({
    $core.String? title,
    $core.String? description,
    ChallengeCategory? category,
    $fixnum.Int64? threshold,
    $fixnum.Int64? points,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (category != null) {
      $result.category = category;
    }
    if (threshold != null) {
      $result.threshold = threshold;
    }
    if (points != null) {
      $result.points = points;
    }
    return $result;
  }
  CreateDailyChallengeRequest._() : super();
  factory CreateDailyChallengeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDailyChallengeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateDailyChallengeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..e<ChallengeCategory>(3, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ChallengeCategory.CHALLENGE_CATEGORY_UNSPECIFIED, valueOf: ChallengeCategory.valueOf, enumValues: ChallengeCategory.values)
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDailyChallengeRequest clone() => CreateDailyChallengeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDailyChallengeRequest copyWith(void Function(CreateDailyChallengeRequest) updates) => super.copyWith((message) => updates(message as CreateDailyChallengeRequest)) as CreateDailyChallengeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDailyChallengeRequest create() => CreateDailyChallengeRequest._();
  CreateDailyChallengeRequest createEmptyInstance() => create();
  static $pb.PbList<CreateDailyChallengeRequest> createRepeated() => $pb.PbList<CreateDailyChallengeRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateDailyChallengeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDailyChallengeRequest>(create);
  static CreateDailyChallengeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  ChallengeCategory get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(ChallengeCategory v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get threshold => $_getI64(3);
  @$pb.TagNumber(4)
  set threshold($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasThreshold() => $_has(3);
  @$pb.TagNumber(4)
  void clearThreshold() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get points => $_getI64(4);
  @$pb.TagNumber(5)
  set points($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPoints() => $_has(4);
  @$pb.TagNumber(5)
  void clearPoints() => clearField(5);
}

class CreateDailyChallengeResponse extends $pb.GeneratedMessage {
  factory CreateDailyChallengeResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateDailyChallengeResponse._() : super();
  factory CreateDailyChallengeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDailyChallengeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateDailyChallengeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDailyChallengeResponse clone() => CreateDailyChallengeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDailyChallengeResponse copyWith(void Function(CreateDailyChallengeResponse) updates) => super.copyWith((message) => updates(message as CreateDailyChallengeResponse)) as CreateDailyChallengeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDailyChallengeResponse create() => CreateDailyChallengeResponse._();
  CreateDailyChallengeResponse createEmptyInstance() => create();
  static $pb.PbList<CreateDailyChallengeResponse> createRepeated() => $pb.PbList<CreateDailyChallengeResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateDailyChallengeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDailyChallengeResponse>(create);
  static CreateDailyChallengeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateQuestChallengeRequest extends $pb.GeneratedMessage {
  factory CreateQuestChallengeRequest({
    $core.String? title,
    $core.String? description,
    $10.Timestamp? startAt,
    $10.Timestamp? endAt,
    ChallengeCategory? category,
    $fixnum.Int64? threshold,
    $fixnum.Int64? points,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (startAt != null) {
      $result.startAt = startAt;
    }
    if (endAt != null) {
      $result.endAt = endAt;
    }
    if (category != null) {
      $result.category = category;
    }
    if (threshold != null) {
      $result.threshold = threshold;
    }
    if (points != null) {
      $result.points = points;
    }
    return $result;
  }
  CreateQuestChallengeRequest._() : super();
  factory CreateQuestChallengeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateQuestChallengeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateQuestChallengeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOM<$10.Timestamp>(3, _omitFieldNames ? '' : 'startAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(4, _omitFieldNames ? '' : 'endAt', subBuilder: $10.Timestamp.create)
    ..e<ChallengeCategory>(5, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ChallengeCategory.CHALLENGE_CATEGORY_UNSPECIFIED, valueOf: ChallengeCategory.valueOf, enumValues: ChallengeCategory.values)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateQuestChallengeRequest clone() => CreateQuestChallengeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateQuestChallengeRequest copyWith(void Function(CreateQuestChallengeRequest) updates) => super.copyWith((message) => updates(message as CreateQuestChallengeRequest)) as CreateQuestChallengeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateQuestChallengeRequest create() => CreateQuestChallengeRequest._();
  CreateQuestChallengeRequest createEmptyInstance() => create();
  static $pb.PbList<CreateQuestChallengeRequest> createRepeated() => $pb.PbList<CreateQuestChallengeRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateQuestChallengeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateQuestChallengeRequest>(create);
  static CreateQuestChallengeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $10.Timestamp get startAt => $_getN(2);
  @$pb.TagNumber(3)
  set startAt($10.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartAt() => clearField(3);
  @$pb.TagNumber(3)
  $10.Timestamp ensureStartAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $10.Timestamp get endAt => $_getN(3);
  @$pb.TagNumber(4)
  set endAt($10.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndAt() => clearField(4);
  @$pb.TagNumber(4)
  $10.Timestamp ensureEndAt() => $_ensure(3);

  @$pb.TagNumber(5)
  ChallengeCategory get category => $_getN(4);
  @$pb.TagNumber(5)
  set category(ChallengeCategory v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategory() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategory() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get threshold => $_getI64(5);
  @$pb.TagNumber(6)
  set threshold($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasThreshold() => $_has(5);
  @$pb.TagNumber(6)
  void clearThreshold() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get points => $_getI64(6);
  @$pb.TagNumber(7)
  set points($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPoints() => $_has(6);
  @$pb.TagNumber(7)
  void clearPoints() => clearField(7);
}

class CreateQuestChallengeResponse extends $pb.GeneratedMessage {
  factory CreateQuestChallengeResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateQuestChallengeResponse._() : super();
  factory CreateQuestChallengeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateQuestChallengeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateQuestChallengeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateQuestChallengeResponse clone() => CreateQuestChallengeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateQuestChallengeResponse copyWith(void Function(CreateQuestChallengeResponse) updates) => super.copyWith((message) => updates(message as CreateQuestChallengeResponse)) as CreateQuestChallengeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateQuestChallengeResponse create() => CreateQuestChallengeResponse._();
  CreateQuestChallengeResponse createEmptyInstance() => create();
  static $pb.PbList<CreateQuestChallengeResponse> createRepeated() => $pb.PbList<CreateQuestChallengeResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateQuestChallengeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateQuestChallengeResponse>(create);
  static CreateQuestChallengeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetChallengesRequest extends $pb.GeneratedMessage {
  factory GetChallengesRequest() => create();
  GetChallengesRequest._() : super();
  factory GetChallengesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChallengesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetChallengesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChallengesRequest clone() => GetChallengesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChallengesRequest copyWith(void Function(GetChallengesRequest) updates) => super.copyWith((message) => updates(message as GetChallengesRequest)) as GetChallengesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetChallengesRequest create() => GetChallengesRequest._();
  GetChallengesRequest createEmptyInstance() => create();
  static $pb.PbList<GetChallengesRequest> createRepeated() => $pb.PbList<GetChallengesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetChallengesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChallengesRequest>(create);
  static GetChallengesRequest? _defaultInstance;
}

class GetChallengesResponse_Challenge extends $pb.GeneratedMessage {
  factory GetChallengesResponse_Challenge({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $10.Timestamp? startAt,
    $10.Timestamp? endAt,
    ChallengeCategory? category,
    ChallengeType? type,
    $fixnum.Int64? threshold,
    $fixnum.Int64? points,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (startAt != null) {
      $result.startAt = startAt;
    }
    if (endAt != null) {
      $result.endAt = endAt;
    }
    if (category != null) {
      $result.category = category;
    }
    if (type != null) {
      $result.type = type;
    }
    if (threshold != null) {
      $result.threshold = threshold;
    }
    if (points != null) {
      $result.points = points;
    }
    return $result;
  }
  GetChallengesResponse_Challenge._() : super();
  factory GetChallengesResponse_Challenge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChallengesResponse_Challenge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetChallengesResponse.Challenge', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$10.Timestamp>(4, _omitFieldNames ? '' : 'startAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(5, _omitFieldNames ? '' : 'endAt', subBuilder: $10.Timestamp.create)
    ..e<ChallengeCategory>(6, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ChallengeCategory.CHALLENGE_CATEGORY_UNSPECIFIED, valueOf: ChallengeCategory.valueOf, enumValues: ChallengeCategory.values)
    ..e<ChallengeType>(7, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChallengeType.CHALLENGE_TYPE_UNSPECIFIED, valueOf: ChallengeType.valueOf, enumValues: ChallengeType.values)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChallengesResponse_Challenge clone() => GetChallengesResponse_Challenge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChallengesResponse_Challenge copyWith(void Function(GetChallengesResponse_Challenge) updates) => super.copyWith((message) => updates(message as GetChallengesResponse_Challenge)) as GetChallengesResponse_Challenge;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetChallengesResponse_Challenge create() => GetChallengesResponse_Challenge._();
  GetChallengesResponse_Challenge createEmptyInstance() => create();
  static $pb.PbList<GetChallengesResponse_Challenge> createRepeated() => $pb.PbList<GetChallengesResponse_Challenge>();
  @$core.pragma('dart2js:noInline')
  static GetChallengesResponse_Challenge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChallengesResponse_Challenge>(create);
  static GetChallengesResponse_Challenge? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $10.Timestamp get startAt => $_getN(3);
  @$pb.TagNumber(4)
  set startAt($10.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartAt() => clearField(4);
  @$pb.TagNumber(4)
  $10.Timestamp ensureStartAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $10.Timestamp get endAt => $_getN(4);
  @$pb.TagNumber(5)
  set endAt($10.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndAt() => clearField(5);
  @$pb.TagNumber(5)
  $10.Timestamp ensureEndAt() => $_ensure(4);

  @$pb.TagNumber(6)
  ChallengeCategory get category => $_getN(5);
  @$pb.TagNumber(6)
  set category(ChallengeCategory v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCategory() => $_has(5);
  @$pb.TagNumber(6)
  void clearCategory() => clearField(6);

  @$pb.TagNumber(7)
  ChallengeType get type => $_getN(6);
  @$pb.TagNumber(7)
  set type(ChallengeType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get threshold => $_getI64(7);
  @$pb.TagNumber(8)
  set threshold($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasThreshold() => $_has(7);
  @$pb.TagNumber(8)
  void clearThreshold() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get points => $_getI64(8);
  @$pb.TagNumber(9)
  set points($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPoints() => $_has(8);
  @$pb.TagNumber(9)
  void clearPoints() => clearField(9);
}

class GetChallengesResponse extends $pb.GeneratedMessage {
  factory GetChallengesResponse({
    $core.Iterable<GetChallengesResponse_Challenge>? challenges,
  }) {
    final $result = create();
    if (challenges != null) {
      $result.challenges.addAll(challenges);
    }
    return $result;
  }
  GetChallengesResponse._() : super();
  factory GetChallengesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChallengesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetChallengesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..pc<GetChallengesResponse_Challenge>(1, _omitFieldNames ? '' : 'challenges', $pb.PbFieldType.PM, subBuilder: GetChallengesResponse_Challenge.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChallengesResponse clone() => GetChallengesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChallengesResponse copyWith(void Function(GetChallengesResponse) updates) => super.copyWith((message) => updates(message as GetChallengesResponse)) as GetChallengesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetChallengesResponse create() => GetChallengesResponse._();
  GetChallengesResponse createEmptyInstance() => create();
  static $pb.PbList<GetChallengesResponse> createRepeated() => $pb.PbList<GetChallengesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetChallengesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChallengesResponse>(create);
  static GetChallengesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetChallengesResponse_Challenge> get challenges => $_getList(0);
}

class UpdateChallengeRequest extends $pb.GeneratedMessage {
  factory UpdateChallengeRequest({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $10.Timestamp? startAt,
    $10.Timestamp? endAt,
    ChallengeCategory? category,
    $fixnum.Int64? threshold,
    $fixnum.Int64? points,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (startAt != null) {
      $result.startAt = startAt;
    }
    if (endAt != null) {
      $result.endAt = endAt;
    }
    if (category != null) {
      $result.category = category;
    }
    if (threshold != null) {
      $result.threshold = threshold;
    }
    if (points != null) {
      $result.points = points;
    }
    return $result;
  }
  UpdateChallengeRequest._() : super();
  factory UpdateChallengeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateChallengeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateChallengeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$10.Timestamp>(4, _omitFieldNames ? '' : 'startAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(5, _omitFieldNames ? '' : 'endAt', subBuilder: $10.Timestamp.create)
    ..e<ChallengeCategory>(6, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ChallengeCategory.CHALLENGE_CATEGORY_UNSPECIFIED, valueOf: ChallengeCategory.valueOf, enumValues: ChallengeCategory.values)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateChallengeRequest clone() => UpdateChallengeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateChallengeRequest copyWith(void Function(UpdateChallengeRequest) updates) => super.copyWith((message) => updates(message as UpdateChallengeRequest)) as UpdateChallengeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateChallengeRequest create() => UpdateChallengeRequest._();
  UpdateChallengeRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateChallengeRequest> createRepeated() => $pb.PbList<UpdateChallengeRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateChallengeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateChallengeRequest>(create);
  static UpdateChallengeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $10.Timestamp get startAt => $_getN(3);
  @$pb.TagNumber(4)
  set startAt($10.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartAt() => clearField(4);
  @$pb.TagNumber(4)
  $10.Timestamp ensureStartAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $10.Timestamp get endAt => $_getN(4);
  @$pb.TagNumber(5)
  set endAt($10.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndAt() => clearField(5);
  @$pb.TagNumber(5)
  $10.Timestamp ensureEndAt() => $_ensure(4);

  @$pb.TagNumber(6)
  ChallengeCategory get category => $_getN(5);
  @$pb.TagNumber(6)
  set category(ChallengeCategory v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCategory() => $_has(5);
  @$pb.TagNumber(6)
  void clearCategory() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get threshold => $_getI64(6);
  @$pb.TagNumber(7)
  set threshold($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasThreshold() => $_has(6);
  @$pb.TagNumber(7)
  void clearThreshold() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get points => $_getI64(7);
  @$pb.TagNumber(8)
  set points($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPoints() => $_has(7);
  @$pb.TagNumber(8)
  void clearPoints() => clearField(8);
}

class UpdateChallengeResponse extends $pb.GeneratedMessage {
  factory UpdateChallengeResponse({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $10.Timestamp? startAt,
    $10.Timestamp? endAt,
    ChallengeCategory? category,
    ChallengeType? type,
    $fixnum.Int64? threshold,
    $fixnum.Int64? points,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (startAt != null) {
      $result.startAt = startAt;
    }
    if (endAt != null) {
      $result.endAt = endAt;
    }
    if (category != null) {
      $result.category = category;
    }
    if (type != null) {
      $result.type = type;
    }
    if (threshold != null) {
      $result.threshold = threshold;
    }
    if (points != null) {
      $result.points = points;
    }
    return $result;
  }
  UpdateChallengeResponse._() : super();
  factory UpdateChallengeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateChallengeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateChallengeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$10.Timestamp>(4, _omitFieldNames ? '' : 'startAt', subBuilder: $10.Timestamp.create)
    ..aOM<$10.Timestamp>(5, _omitFieldNames ? '' : 'endAt', subBuilder: $10.Timestamp.create)
    ..e<ChallengeCategory>(6, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ChallengeCategory.CHALLENGE_CATEGORY_UNSPECIFIED, valueOf: ChallengeCategory.valueOf, enumValues: ChallengeCategory.values)
    ..e<ChallengeType>(7, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChallengeType.CHALLENGE_TYPE_UNSPECIFIED, valueOf: ChallengeType.valueOf, enumValues: ChallengeType.values)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateChallengeResponse clone() => UpdateChallengeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateChallengeResponse copyWith(void Function(UpdateChallengeResponse) updates) => super.copyWith((message) => updates(message as UpdateChallengeResponse)) as UpdateChallengeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateChallengeResponse create() => UpdateChallengeResponse._();
  UpdateChallengeResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateChallengeResponse> createRepeated() => $pb.PbList<UpdateChallengeResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateChallengeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateChallengeResponse>(create);
  static UpdateChallengeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $10.Timestamp get startAt => $_getN(3);
  @$pb.TagNumber(4)
  set startAt($10.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartAt() => clearField(4);
  @$pb.TagNumber(4)
  $10.Timestamp ensureStartAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $10.Timestamp get endAt => $_getN(4);
  @$pb.TagNumber(5)
  set endAt($10.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndAt() => clearField(5);
  @$pb.TagNumber(5)
  $10.Timestamp ensureEndAt() => $_ensure(4);

  @$pb.TagNumber(6)
  ChallengeCategory get category => $_getN(5);
  @$pb.TagNumber(6)
  set category(ChallengeCategory v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCategory() => $_has(5);
  @$pb.TagNumber(6)
  void clearCategory() => clearField(6);

  @$pb.TagNumber(7)
  ChallengeType get type => $_getN(6);
  @$pb.TagNumber(7)
  set type(ChallengeType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get threshold => $_getI64(7);
  @$pb.TagNumber(8)
  set threshold($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasThreshold() => $_has(7);
  @$pb.TagNumber(8)
  void clearThreshold() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get points => $_getI64(8);
  @$pb.TagNumber(9)
  set points($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPoints() => $_has(8);
  @$pb.TagNumber(9)
  void clearPoints() => clearField(9);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
