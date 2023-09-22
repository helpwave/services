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

import 'impulse_svc.pbenum.dart';

export 'impulse_svc.pbenum.dart';

class CreateUserRequest extends $pb.GeneratedMessage {
  factory CreateUserRequest({
    $core.String? username,
    $core.String? gender,
    $core.String? birthday,
    $core.int? pal,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (gender != null) {
      $result.gender = gender;
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
    ..aOS(2, _omitFieldNames ? '' : 'gender')
    ..aOS(3, _omitFieldNames ? '' : 'birthday')
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
  $core.String get gender => $_getSZ(1);
  @$pb.TagNumber(2)
  set gender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGender() => $_has(1);
  @$pb.TagNumber(2)
  void clearGender() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get birthday => $_getSZ(2);
  @$pb.TagNumber(3)
  set birthday($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBirthday() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirthday() => clearField(3);

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
    $core.String? gender,
    $core.String? birthday,
    $core.int? pal,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (gender != null) {
      $result.gender = gender;
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
    ..aOS(2, _omitFieldNames ? '' : 'gender')
    ..aOS(3, _omitFieldNames ? '' : 'birthday')
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
  $core.String get gender => $_getSZ(1);
  @$pb.TagNumber(2)
  set gender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGender() => $_has(1);
  @$pb.TagNumber(2)
  void clearGender() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get birthday => $_getSZ(2);
  @$pb.TagNumber(3)
  set birthday($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBirthday() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirthday() => clearField(3);

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
    $core.String? gender,
    $core.String? birthday,
    $core.int? pal,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (gender != null) {
      $result.gender = gender;
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
    ..aOS(2, _omitFieldNames ? '' : 'gender')
    ..aOS(3, _omitFieldNames ? '' : 'birthday')
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
  $core.String get gender => $_getSZ(1);
  @$pb.TagNumber(2)
  set gender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGender() => $_has(1);
  @$pb.TagNumber(2)
  void clearGender() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get birthday => $_getSZ(2);
  @$pb.TagNumber(3)
  set birthday($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBirthday() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirthday() => clearField(3);

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
    $core.String? doneAt,
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
    ..aOS(4, _omitFieldNames ? '' : 'doneAt')
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
  $core.String get doneAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set doneAt($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDoneAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearDoneAt() => clearField(4);
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

class GetActiveChallengesRequest extends $pb.GeneratedMessage {
  factory GetActiveChallengesRequest() => create();
  GetActiveChallengesRequest._() : super();
  factory GetActiveChallengesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetActiveChallengesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetActiveChallengesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetActiveChallengesRequest clone() => GetActiveChallengesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetActiveChallengesRequest copyWith(void Function(GetActiveChallengesRequest) updates) => super.copyWith((message) => updates(message as GetActiveChallengesRequest)) as GetActiveChallengesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetActiveChallengesRequest create() => GetActiveChallengesRequest._();
  GetActiveChallengesRequest createEmptyInstance() => create();
  static $pb.PbList<GetActiveChallengesRequest> createRepeated() => $pb.PbList<GetActiveChallengesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetActiveChallengesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetActiveChallengesRequest>(create);
  static GetActiveChallengesRequest? _defaultInstance;
}

class GetActiveChallengesResponse_Challenge extends $pb.GeneratedMessage {
  factory GetActiveChallengesResponse_Challenge({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.String? startAt,
    $core.String? endAt,
    ChallengeCategory? category,
    ChallengeType? type,
    $fixnum.Int64? threshold,
    $fixnum.Int64? points,
    $core.String? unit,
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
    if (unit != null) {
      $result.unit = unit;
    }
    return $result;
  }
  GetActiveChallengesResponse_Challenge._() : super();
  factory GetActiveChallengesResponse_Challenge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetActiveChallengesResponse_Challenge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetActiveChallengesResponse.Challenge', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'startAt')
    ..aOS(5, _omitFieldNames ? '' : 'endAt')
    ..e<ChallengeCategory>(6, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ChallengeCategory.CHALLENGE_CATEGORY_UNSPECIFIED, valueOf: ChallengeCategory.valueOf, enumValues: ChallengeCategory.values)
    ..e<ChallengeType>(7, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChallengeType.CHALLENGE_TYPE_UNSPECIFIED, valueOf: ChallengeType.valueOf, enumValues: ChallengeType.values)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, _omitFieldNames ? '' : 'unit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetActiveChallengesResponse_Challenge clone() => GetActiveChallengesResponse_Challenge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetActiveChallengesResponse_Challenge copyWith(void Function(GetActiveChallengesResponse_Challenge) updates) => super.copyWith((message) => updates(message as GetActiveChallengesResponse_Challenge)) as GetActiveChallengesResponse_Challenge;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetActiveChallengesResponse_Challenge create() => GetActiveChallengesResponse_Challenge._();
  GetActiveChallengesResponse_Challenge createEmptyInstance() => create();
  static $pb.PbList<GetActiveChallengesResponse_Challenge> createRepeated() => $pb.PbList<GetActiveChallengesResponse_Challenge>();
  @$core.pragma('dart2js:noInline')
  static GetActiveChallengesResponse_Challenge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetActiveChallengesResponse_Challenge>(create);
  static GetActiveChallengesResponse_Challenge? _defaultInstance;

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
  $core.String get startAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set startAt($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartAt() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get endAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set endAt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndAt() => clearField(5);

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

  @$pb.TagNumber(10)
  $core.String get unit => $_getSZ(9);
  @$pb.TagNumber(10)
  set unit($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUnit() => $_has(9);
  @$pb.TagNumber(10)
  void clearUnit() => clearField(10);
}

class GetActiveChallengesResponse extends $pb.GeneratedMessage {
  factory GetActiveChallengesResponse({
    $core.Iterable<GetActiveChallengesResponse_Challenge>? challenges,
  }) {
    final $result = create();
    if (challenges != null) {
      $result.challenges.addAll(challenges);
    }
    return $result;
  }
  GetActiveChallengesResponse._() : super();
  factory GetActiveChallengesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetActiveChallengesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetActiveChallengesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..pc<GetActiveChallengesResponse_Challenge>(1, _omitFieldNames ? '' : 'challenges', $pb.PbFieldType.PM, subBuilder: GetActiveChallengesResponse_Challenge.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetActiveChallengesResponse clone() => GetActiveChallengesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetActiveChallengesResponse copyWith(void Function(GetActiveChallengesResponse) updates) => super.copyWith((message) => updates(message as GetActiveChallengesResponse)) as GetActiveChallengesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetActiveChallengesResponse create() => GetActiveChallengesResponse._();
  GetActiveChallengesResponse createEmptyInstance() => create();
  static $pb.PbList<GetActiveChallengesResponse> createRepeated() => $pb.PbList<GetActiveChallengesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetActiveChallengesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetActiveChallengesResponse>(create);
  static GetActiveChallengesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetActiveChallengesResponse_Challenge> get challenges => $_getList(0);
}

class UpdateChallengeRequest extends $pb.GeneratedMessage {
  factory UpdateChallengeRequest({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.String? startAt,
    $core.String? endAt,
    ChallengeCategory? category,
    $fixnum.Int64? threshold,
    $fixnum.Int64? points,
    $core.String? unit,
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
    if (unit != null) {
      $result.unit = unit;
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
    ..aOS(4, _omitFieldNames ? '' : 'startAt')
    ..aOS(5, _omitFieldNames ? '' : 'endAt')
    ..e<ChallengeCategory>(6, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ChallengeCategory.CHALLENGE_CATEGORY_UNSPECIFIED, valueOf: ChallengeCategory.valueOf, enumValues: ChallengeCategory.values)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(9, _omitFieldNames ? '' : 'unit')
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
  $core.String get startAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set startAt($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartAt() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get endAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set endAt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndAt() => clearField(5);

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

  @$pb.TagNumber(9)
  $core.String get unit => $_getSZ(8);
  @$pb.TagNumber(9)
  set unit($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUnit() => $_has(8);
  @$pb.TagNumber(9)
  void clearUnit() => clearField(9);
}

class UpdateChallengeResponse extends $pb.GeneratedMessage {
  factory UpdateChallengeResponse({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.String? startAt,
    $core.String? endAt,
    ChallengeCategory? category,
    ChallengeType? type,
    $fixnum.Int64? threshold,
    $fixnum.Int64? points,
    $core.String? unit,
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
    if (unit != null) {
      $result.unit = unit;
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
    ..aOS(4, _omitFieldNames ? '' : 'startAt')
    ..aOS(5, _omitFieldNames ? '' : 'endAt')
    ..e<ChallengeCategory>(6, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ChallengeCategory.CHALLENGE_CATEGORY_UNSPECIFIED, valueOf: ChallengeCategory.valueOf, enumValues: ChallengeCategory.values)
    ..e<ChallengeType>(7, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChallengeType.CHALLENGE_TYPE_UNSPECIFIED, valueOf: ChallengeType.valueOf, enumValues: ChallengeType.values)
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'threshold', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(10, _omitFieldNames ? '' : 'unit')
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
  $core.String get startAt => $_getSZ(3);
  @$pb.TagNumber(4)
  set startAt($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartAt() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get endAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set endAt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndAt() => clearField(5);

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

  @$pb.TagNumber(10)
  $core.String get unit => $_getSZ(9);
  @$pb.TagNumber(10)
  set unit($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUnit() => $_has(9);
  @$pb.TagNumber(10)
  void clearUnit() => clearField(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
