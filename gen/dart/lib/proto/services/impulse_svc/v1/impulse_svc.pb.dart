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
    Gender? gender,
    $core.String? birthday,
    $core.double? pal,
    $core.int? length,
    $core.double? weight,
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
    if (length != null) {
      $result.length = length;
    }
    if (weight != null) {
      $result.weight = weight;
    }
    return $result;
  }
  CreateUserRequest._() : super();
  factory CreateUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..e<Gender>(2, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.GENDER_UNSPECIFIED, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..aOS(3, _omitFieldNames ? '' : 'birthday')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'pal', $pb.PbFieldType.OF)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'length', $pb.PbFieldType.O3)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'weight', $pb.PbFieldType.OF)
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
  Gender get gender => $_getN(1);
  @$pb.TagNumber(2)
  set gender(Gender v) { setField(2, v); }
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
  $core.double get pal => $_getN(3);
  @$pb.TagNumber(4)
  set pal($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPal() => $_has(3);
  @$pb.TagNumber(4)
  void clearPal() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get length => $_getIZ(4);
  @$pb.TagNumber(5)
  set length($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLength() => $_has(4);
  @$pb.TagNumber(5)
  void clearLength() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get weight => $_getN(5);
  @$pb.TagNumber(6)
  set weight($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearWeight() => clearField(6);
}

class CreateUserResponse extends $pb.GeneratedMessage {
  factory CreateUserResponse({
    $core.String? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  CreateUserResponse._() : super();
  factory CreateUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
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
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class UpdateUserRequest extends $pb.GeneratedMessage {
  factory UpdateUserRequest({
    $core.String? userId,
    $core.String? teamId,
    Gender? gender,
    $core.String? birthday,
    $core.double? pal,
    $core.int? length,
    $core.double? weight,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (teamId != null) {
      $result.teamId = teamId;
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
    if (length != null) {
      $result.length = length;
    }
    if (weight != null) {
      $result.weight = weight;
    }
    return $result;
  }
  UpdateUserRequest._() : super();
  factory UpdateUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'teamId')
    ..e<Gender>(3, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.GENDER_UNSPECIFIED, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..aOS(4, _omitFieldNames ? '' : 'birthday')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'pal', $pb.PbFieldType.OF)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'length', $pb.PbFieldType.O3)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'weight', $pb.PbFieldType.OF)
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
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get teamId => $_getSZ(1);
  @$pb.TagNumber(2)
  set teamId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTeamId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTeamId() => clearField(2);

  @$pb.TagNumber(3)
  Gender get gender => $_getN(2);
  @$pb.TagNumber(3)
  set gender(Gender v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGender() => $_has(2);
  @$pb.TagNumber(3)
  void clearGender() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get birthday => $_getSZ(3);
  @$pb.TagNumber(4)
  set birthday($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBirthday() => $_has(3);
  @$pb.TagNumber(4)
  void clearBirthday() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get pal => $_getN(4);
  @$pb.TagNumber(5)
  set pal($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPal() => $_has(4);
  @$pb.TagNumber(5)
  void clearPal() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get length => $_getIZ(5);
  @$pb.TagNumber(6)
  set length($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLength() => $_has(5);
  @$pb.TagNumber(6)
  void clearLength() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get weight => $_getN(6);
  @$pb.TagNumber(7)
  set weight($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearWeight() => clearField(7);
}

class UpdateUserResponse extends $pb.GeneratedMessage {
  factory UpdateUserResponse({
    $core.String? userId,
    $core.String? teamId,
    Gender? gender,
    $core.String? birthday,
    $core.double? pal,
    $core.int? length,
    $core.double? weight,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (teamId != null) {
      $result.teamId = teamId;
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
    if (length != null) {
      $result.length = length;
    }
    if (weight != null) {
      $result.weight = weight;
    }
    return $result;
  }
  UpdateUserResponse._() : super();
  factory UpdateUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'teamId')
    ..e<Gender>(3, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.GENDER_UNSPECIFIED, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..aOS(4, _omitFieldNames ? '' : 'birthday')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'pal', $pb.PbFieldType.OF)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'length', $pb.PbFieldType.O3)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'weight', $pb.PbFieldType.OF)
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
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get teamId => $_getSZ(1);
  @$pb.TagNumber(2)
  set teamId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTeamId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTeamId() => clearField(2);

  @$pb.TagNumber(3)
  Gender get gender => $_getN(2);
  @$pb.TagNumber(3)
  set gender(Gender v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGender() => $_has(2);
  @$pb.TagNumber(3)
  void clearGender() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get birthday => $_getSZ(3);
  @$pb.TagNumber(4)
  set birthday($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBirthday() => $_has(3);
  @$pb.TagNumber(4)
  void clearBirthday() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get pal => $_getN(4);
  @$pb.TagNumber(5)
  set pal($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPal() => $_has(4);
  @$pb.TagNumber(5)
  void clearPal() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get length => $_getIZ(5);
  @$pb.TagNumber(6)
  set length($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLength() => $_has(5);
  @$pb.TagNumber(6)
  void clearLength() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get weight => $_getN(6);
  @$pb.TagNumber(7)
  set weight($core.double v) { $_setFloat(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearWeight() => clearField(7);
}

class GetAllTeamsRequest extends $pb.GeneratedMessage {
  factory GetAllTeamsRequest() => create();
  GetAllTeamsRequest._() : super();
  factory GetAllTeamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTeamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTeamsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTeamsRequest clone() => GetAllTeamsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTeamsRequest copyWith(void Function(GetAllTeamsRequest) updates) => super.copyWith((message) => updates(message as GetAllTeamsRequest)) as GetAllTeamsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTeamsRequest create() => GetAllTeamsRequest._();
  GetAllTeamsRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllTeamsRequest> createRepeated() => $pb.PbList<GetAllTeamsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllTeamsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTeamsRequest>(create);
  static GetAllTeamsRequest? _defaultInstance;
}

class GetAllTeamsResponse_Team extends $pb.GeneratedMessage {
  factory GetAllTeamsResponse_Team({
    $core.String? teamId,
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (teamId != null) {
      $result.teamId = teamId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  GetAllTeamsResponse_Team._() : super();
  factory GetAllTeamsResponse_Team.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTeamsResponse_Team.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTeamsResponse.Team', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'teamId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTeamsResponse_Team clone() => GetAllTeamsResponse_Team()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTeamsResponse_Team copyWith(void Function(GetAllTeamsResponse_Team) updates) => super.copyWith((message) => updates(message as GetAllTeamsResponse_Team)) as GetAllTeamsResponse_Team;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTeamsResponse_Team create() => GetAllTeamsResponse_Team._();
  GetAllTeamsResponse_Team createEmptyInstance() => create();
  static $pb.PbList<GetAllTeamsResponse_Team> createRepeated() => $pb.PbList<GetAllTeamsResponse_Team>();
  @$core.pragma('dart2js:noInline')
  static GetAllTeamsResponse_Team getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTeamsResponse_Team>(create);
  static GetAllTeamsResponse_Team? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get teamId => $_getSZ(0);
  @$pb.TagNumber(1)
  set teamId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTeamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeamId() => clearField(1);

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

class GetAllTeamsResponse extends $pb.GeneratedMessage {
  factory GetAllTeamsResponse({
    $core.Iterable<GetAllTeamsResponse_Team>? teams,
  }) {
    final $result = create();
    if (teams != null) {
      $result.teams.addAll(teams);
    }
    return $result;
  }
  GetAllTeamsResponse._() : super();
  factory GetAllTeamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTeamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTeamsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..pc<GetAllTeamsResponse_Team>(1, _omitFieldNames ? '' : 'teams', $pb.PbFieldType.PM, subBuilder: GetAllTeamsResponse_Team.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTeamsResponse clone() => GetAllTeamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTeamsResponse copyWith(void Function(GetAllTeamsResponse) updates) => super.copyWith((message) => updates(message as GetAllTeamsResponse)) as GetAllTeamsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTeamsResponse create() => GetAllTeamsResponse._();
  GetAllTeamsResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllTeamsResponse> createRepeated() => $pb.PbList<GetAllTeamsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllTeamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTeamsResponse>(create);
  static GetAllTeamsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetAllTeamsResponse_Team> get teams => $_getList(0);
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
    $core.String? challengeId,
  }) {
    final $result = create();
    if (challengeId != null) {
      $result.challengeId = challengeId;
    }
    return $result;
  }
  TrackChallengeResponse._() : super();
  factory TrackChallengeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackChallengeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrackChallengeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'challengeId')
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
  $core.String get challengeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set challengeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallengeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallengeId() => clearField(1);
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
    $core.String? challengeId,
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
    if (challengeId != null) {
      $result.challengeId = challengeId;
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
    ..aOS(1, _omitFieldNames ? '' : 'challengeId')
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
  $core.String get challengeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set challengeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallengeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallengeId() => clearField(1);

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
    $core.String? challengeId,
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
    if (challengeId != null) {
      $result.challengeId = challengeId;
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
    ..aOS(1, _omitFieldNames ? '' : 'challengeId')
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
  $core.String get challengeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set challengeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallengeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallengeId() => clearField(1);

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
    $core.String? challengeId,
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
    if (challengeId != null) {
      $result.challengeId = challengeId;
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
    ..aOS(1, _omitFieldNames ? '' : 'challengeId')
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
  $core.String get challengeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set challengeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallengeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallengeId() => clearField(1);

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

class GetScoreRequest extends $pb.GeneratedMessage {
  factory GetScoreRequest({
    $core.String? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  GetScoreRequest._() : super();
  factory GetScoreRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScoreRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetScoreRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScoreRequest clone() => GetScoreRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScoreRequest copyWith(void Function(GetScoreRequest) updates) => super.copyWith((message) => updates(message as GetScoreRequest)) as GetScoreRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetScoreRequest create() => GetScoreRequest._();
  GetScoreRequest createEmptyInstance() => create();
  static $pb.PbList<GetScoreRequest> createRepeated() => $pb.PbList<GetScoreRequest>();
  @$core.pragma('dart2js:noInline')
  static GetScoreRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScoreRequest>(create);
  static GetScoreRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetScoreResponse extends $pb.GeneratedMessage {
  factory GetScoreResponse({
    $fixnum.Int64? score,
  }) {
    final $result = create();
    if (score != null) {
      $result.score = score;
    }
    return $result;
  }
  GetScoreResponse._() : super();
  factory GetScoreResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScoreResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetScoreResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScoreResponse clone() => GetScoreResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScoreResponse copyWith(void Function(GetScoreResponse) updates) => super.copyWith((message) => updates(message as GetScoreResponse)) as GetScoreResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetScoreResponse create() => GetScoreResponse._();
  GetScoreResponse createEmptyInstance() => create();
  static $pb.PbList<GetScoreResponse> createRepeated() => $pb.PbList<GetScoreResponse>();
  @$core.pragma('dart2js:noInline')
  static GetScoreResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScoreResponse>(create);
  static GetScoreResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get score => $_getI64(0);
  @$pb.TagNumber(1)
  set score($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScore() => $_has(0);
  @$pb.TagNumber(1)
  void clearScore() => clearField(1);
}

class GetRewardsRequest extends $pb.GeneratedMessage {
  factory GetRewardsRequest({
    $core.String? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  GetRewardsRequest._() : super();
  factory GetRewardsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRewardsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRewardsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRewardsRequest clone() => GetRewardsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRewardsRequest copyWith(void Function(GetRewardsRequest) updates) => super.copyWith((message) => updates(message as GetRewardsRequest)) as GetRewardsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRewardsRequest create() => GetRewardsRequest._();
  GetRewardsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRewardsRequest> createRepeated() => $pb.PbList<GetRewardsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRewardsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRewardsRequest>(create);
  static GetRewardsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetRewardsResponse_Reward extends $pb.GeneratedMessage {
  factory GetRewardsResponse_Reward({
    $core.String? rewardId,
    $core.String? title,
    $core.String? description,
    $fixnum.Int64? points,
  }) {
    final $result = create();
    if (rewardId != null) {
      $result.rewardId = rewardId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (points != null) {
      $result.points = points;
    }
    return $result;
  }
  GetRewardsResponse_Reward._() : super();
  factory GetRewardsResponse_Reward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRewardsResponse_Reward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRewardsResponse.Reward', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rewardId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRewardsResponse_Reward clone() => GetRewardsResponse_Reward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRewardsResponse_Reward copyWith(void Function(GetRewardsResponse_Reward) updates) => super.copyWith((message) => updates(message as GetRewardsResponse_Reward)) as GetRewardsResponse_Reward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRewardsResponse_Reward create() => GetRewardsResponse_Reward._();
  GetRewardsResponse_Reward createEmptyInstance() => create();
  static $pb.PbList<GetRewardsResponse_Reward> createRepeated() => $pb.PbList<GetRewardsResponse_Reward>();
  @$core.pragma('dart2js:noInline')
  static GetRewardsResponse_Reward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRewardsResponse_Reward>(create);
  static GetRewardsResponse_Reward? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rewardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set rewardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRewardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRewardId() => clearField(1);

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

  @$pb.TagNumber(5)
  $fixnum.Int64 get points => $_getI64(3);
  @$pb.TagNumber(5)
  set points($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasPoints() => $_has(3);
  @$pb.TagNumber(5)
  void clearPoints() => clearField(5);
}

class GetRewardsResponse extends $pb.GeneratedMessage {
  factory GetRewardsResponse({
    $core.Iterable<GetRewardsResponse_Reward>? rewards,
  }) {
    final $result = create();
    if (rewards != null) {
      $result.rewards.addAll(rewards);
    }
    return $result;
  }
  GetRewardsResponse._() : super();
  factory GetRewardsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRewardsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRewardsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..pc<GetRewardsResponse_Reward>(1, _omitFieldNames ? '' : 'rewards', $pb.PbFieldType.PM, subBuilder: GetRewardsResponse_Reward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRewardsResponse clone() => GetRewardsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRewardsResponse copyWith(void Function(GetRewardsResponse) updates) => super.copyWith((message) => updates(message as GetRewardsResponse)) as GetRewardsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRewardsResponse create() => GetRewardsResponse._();
  GetRewardsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRewardsResponse> createRepeated() => $pb.PbList<GetRewardsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRewardsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRewardsResponse>(create);
  static GetRewardsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetRewardsResponse_Reward> get rewards => $_getList(0);
}

class GetAllRewardsRequest extends $pb.GeneratedMessage {
  factory GetAllRewardsRequest() => create();
  GetAllRewardsRequest._() : super();
  factory GetAllRewardsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllRewardsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllRewardsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllRewardsRequest clone() => GetAllRewardsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllRewardsRequest copyWith(void Function(GetAllRewardsRequest) updates) => super.copyWith((message) => updates(message as GetAllRewardsRequest)) as GetAllRewardsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllRewardsRequest create() => GetAllRewardsRequest._();
  GetAllRewardsRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllRewardsRequest> createRepeated() => $pb.PbList<GetAllRewardsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllRewardsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllRewardsRequest>(create);
  static GetAllRewardsRequest? _defaultInstance;
}

class GetAllRewardsResponse_Reward extends $pb.GeneratedMessage {
  factory GetAllRewardsResponse_Reward({
    $core.String? rewardId,
    $core.String? title,
    $core.String? description,
    $fixnum.Int64? points,
  }) {
    final $result = create();
    if (rewardId != null) {
      $result.rewardId = rewardId;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (points != null) {
      $result.points = points;
    }
    return $result;
  }
  GetAllRewardsResponse_Reward._() : super();
  factory GetAllRewardsResponse_Reward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllRewardsResponse_Reward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllRewardsResponse.Reward', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rewardId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'points', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllRewardsResponse_Reward clone() => GetAllRewardsResponse_Reward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllRewardsResponse_Reward copyWith(void Function(GetAllRewardsResponse_Reward) updates) => super.copyWith((message) => updates(message as GetAllRewardsResponse_Reward)) as GetAllRewardsResponse_Reward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllRewardsResponse_Reward create() => GetAllRewardsResponse_Reward._();
  GetAllRewardsResponse_Reward createEmptyInstance() => create();
  static $pb.PbList<GetAllRewardsResponse_Reward> createRepeated() => $pb.PbList<GetAllRewardsResponse_Reward>();
  @$core.pragma('dart2js:noInline')
  static GetAllRewardsResponse_Reward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllRewardsResponse_Reward>(create);
  static GetAllRewardsResponse_Reward? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rewardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set rewardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRewardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRewardId() => clearField(1);

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

  @$pb.TagNumber(5)
  $fixnum.Int64 get points => $_getI64(3);
  @$pb.TagNumber(5)
  set points($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasPoints() => $_has(3);
  @$pb.TagNumber(5)
  void clearPoints() => clearField(5);
}

class GetAllRewardsResponse extends $pb.GeneratedMessage {
  factory GetAllRewardsResponse({
    $core.Iterable<GetAllRewardsResponse_Reward>? rewards,
  }) {
    final $result = create();
    if (rewards != null) {
      $result.rewards.addAll(rewards);
    }
    return $result;
  }
  GetAllRewardsResponse._() : super();
  factory GetAllRewardsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllRewardsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllRewardsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..pc<GetAllRewardsResponse_Reward>(1, _omitFieldNames ? '' : 'rewards', $pb.PbFieldType.PM, subBuilder: GetAllRewardsResponse_Reward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllRewardsResponse clone() => GetAllRewardsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllRewardsResponse copyWith(void Function(GetAllRewardsResponse) updates) => super.copyWith((message) => updates(message as GetAllRewardsResponse)) as GetAllRewardsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllRewardsResponse create() => GetAllRewardsResponse._();
  GetAllRewardsResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllRewardsResponse> createRepeated() => $pb.PbList<GetAllRewardsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllRewardsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllRewardsResponse>(create);
  static GetAllRewardsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetAllRewardsResponse_Reward> get rewards => $_getList(0);
}

class StatsForTeamByUserRequest extends $pb.GeneratedMessage {
  factory StatsForTeamByUserRequest({
    $core.String? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  StatsForTeamByUserRequest._() : super();
  factory StatsForTeamByUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatsForTeamByUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatsForTeamByUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatsForTeamByUserRequest clone() => StatsForTeamByUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatsForTeamByUserRequest copyWith(void Function(StatsForTeamByUserRequest) updates) => super.copyWith((message) => updates(message as StatsForTeamByUserRequest)) as StatsForTeamByUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatsForTeamByUserRequest create() => StatsForTeamByUserRequest._();
  StatsForTeamByUserRequest createEmptyInstance() => create();
  static $pb.PbList<StatsForTeamByUserRequest> createRepeated() => $pb.PbList<StatsForTeamByUserRequest>();
  @$core.pragma('dart2js:noInline')
  static StatsForTeamByUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatsForTeamByUserRequest>(create);
  static StatsForTeamByUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class StatsForTeamByUserResponse_GenderCount extends $pb.GeneratedMessage {
  factory StatsForTeamByUserResponse_GenderCount({
    Gender? gender,
    $core.int? count,
  }) {
    final $result = create();
    if (gender != null) {
      $result.gender = gender;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  StatsForTeamByUserResponse_GenderCount._() : super();
  factory StatsForTeamByUserResponse_GenderCount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatsForTeamByUserResponse_GenderCount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatsForTeamByUserResponse.GenderCount', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..e<Gender>(1, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.GENDER_UNSPECIFIED, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatsForTeamByUserResponse_GenderCount clone() => StatsForTeamByUserResponse_GenderCount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatsForTeamByUserResponse_GenderCount copyWith(void Function(StatsForTeamByUserResponse_GenderCount) updates) => super.copyWith((message) => updates(message as StatsForTeamByUserResponse_GenderCount)) as StatsForTeamByUserResponse_GenderCount;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatsForTeamByUserResponse_GenderCount create() => StatsForTeamByUserResponse_GenderCount._();
  StatsForTeamByUserResponse_GenderCount createEmptyInstance() => create();
  static $pb.PbList<StatsForTeamByUserResponse_GenderCount> createRepeated() => $pb.PbList<StatsForTeamByUserResponse_GenderCount>();
  @$core.pragma('dart2js:noInline')
  static StatsForTeamByUserResponse_GenderCount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatsForTeamByUserResponse_GenderCount>(create);
  static StatsForTeamByUserResponse_GenderCount? _defaultInstance;

  @$pb.TagNumber(1)
  Gender get gender => $_getN(0);
  @$pb.TagNumber(1)
  set gender(Gender v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGender() => $_has(0);
  @$pb.TagNumber(1)
  void clearGender() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class StatsForTeamByUserResponse extends $pb.GeneratedMessage {
  factory StatsForTeamByUserResponse({
    $core.String? teamId,
    $core.double? score,
    $core.Iterable<StatsForTeamByUserResponse_GenderCount>? genderCount,
    $core.double? averageAge,
    $fixnum.Int64? userCount,
  }) {
    final $result = create();
    if (teamId != null) {
      $result.teamId = teamId;
    }
    if (score != null) {
      $result.score = score;
    }
    if (genderCount != null) {
      $result.genderCount.addAll(genderCount);
    }
    if (averageAge != null) {
      $result.averageAge = averageAge;
    }
    if (userCount != null) {
      $result.userCount = userCount;
    }
    return $result;
  }
  StatsForTeamByUserResponse._() : super();
  factory StatsForTeamByUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatsForTeamByUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatsForTeamByUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'teamId')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'score', $pb.PbFieldType.OF)
    ..pc<StatsForTeamByUserResponse_GenderCount>(3, _omitFieldNames ? '' : 'genderCount', $pb.PbFieldType.PM, subBuilder: StatsForTeamByUserResponse_GenderCount.create)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'averageAge', $pb.PbFieldType.OF)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'userCount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatsForTeamByUserResponse clone() => StatsForTeamByUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatsForTeamByUserResponse copyWith(void Function(StatsForTeamByUserResponse) updates) => super.copyWith((message) => updates(message as StatsForTeamByUserResponse)) as StatsForTeamByUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatsForTeamByUserResponse create() => StatsForTeamByUserResponse._();
  StatsForTeamByUserResponse createEmptyInstance() => create();
  static $pb.PbList<StatsForTeamByUserResponse> createRepeated() => $pb.PbList<StatsForTeamByUserResponse>();
  @$core.pragma('dart2js:noInline')
  static StatsForTeamByUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatsForTeamByUserResponse>(create);
  static StatsForTeamByUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get teamId => $_getSZ(0);
  @$pb.TagNumber(1)
  set teamId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTeamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeamId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get score => $_getN(1);
  @$pb.TagNumber(2)
  set score($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<StatsForTeamByUserResponse_GenderCount> get genderCount => $_getList(2);

  @$pb.TagNumber(4)
  $core.double get averageAge => $_getN(3);
  @$pb.TagNumber(4)
  set averageAge($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAverageAge() => $_has(3);
  @$pb.TagNumber(4)
  void clearAverageAge() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get userCount => $_getI64(4);
  @$pb.TagNumber(5)
  set userCount($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserCount() => clearField(5);
}

class VerificationRequest extends $pb.GeneratedMessage {
  factory VerificationRequest({
    $core.String? challengeId,
  }) {
    final $result = create();
    if (challengeId != null) {
      $result.challengeId = challengeId;
    }
    return $result;
  }
  VerificationRequest._() : super();
  factory VerificationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerificationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'challengeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationRequest clone() => VerificationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationRequest copyWith(void Function(VerificationRequest) updates) => super.copyWith((message) => updates(message as VerificationRequest)) as VerificationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationRequest create() => VerificationRequest._();
  VerificationRequest createEmptyInstance() => create();
  static $pb.PbList<VerificationRequest> createRepeated() => $pb.PbList<VerificationRequest>();
  @$core.pragma('dart2js:noInline')
  static VerificationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationRequest>(create);
  static VerificationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get challengeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set challengeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChallengeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChallengeId() => clearField(1);
}

class VerificationResponse_StringVerification extends $pb.GeneratedMessage {
  factory VerificationResponse_StringVerification({
    $core.int? order,
    StringVerificationType? type,
    $core.String? value,
  }) {
    final $result = create();
    if (order != null) {
      $result.order = order;
    }
    if (type != null) {
      $result.type = type;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  VerificationResponse_StringVerification._() : super();
  factory VerificationResponse_StringVerification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationResponse_StringVerification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerificationResponse.StringVerification', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OU3)
    ..e<StringVerificationType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: StringVerificationType.STRING_VERIFICATION_TYPE_UNSPECIFIED, valueOf: StringVerificationType.valueOf, enumValues: StringVerificationType.values)
    ..aOS(3, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationResponse_StringVerification clone() => VerificationResponse_StringVerification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationResponse_StringVerification copyWith(void Function(VerificationResponse_StringVerification) updates) => super.copyWith((message) => updates(message as VerificationResponse_StringVerification)) as VerificationResponse_StringVerification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationResponse_StringVerification create() => VerificationResponse_StringVerification._();
  VerificationResponse_StringVerification createEmptyInstance() => create();
  static $pb.PbList<VerificationResponse_StringVerification> createRepeated() => $pb.PbList<VerificationResponse_StringVerification>();
  @$core.pragma('dart2js:noInline')
  static VerificationResponse_StringVerification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationResponse_StringVerification>(create);
  static VerificationResponse_StringVerification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get order => $_getIZ(0);
  @$pb.TagNumber(1)
  set order($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);

  @$pb.TagNumber(2)
  StringVerificationType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(StringVerificationType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class VerificationResponse_IntegerVerification extends $pb.GeneratedMessage {
  factory VerificationResponse_IntegerVerification({
    $core.int? order,
    IntegerVerificationType? type,
    $fixnum.Int64? value,
  }) {
    final $result = create();
    if (order != null) {
      $result.order = order;
    }
    if (type != null) {
      $result.type = type;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  VerificationResponse_IntegerVerification._() : super();
  factory VerificationResponse_IntegerVerification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationResponse_IntegerVerification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerificationResponse.IntegerVerification', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'order', $pb.PbFieldType.OU3)
    ..e<IntegerVerificationType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: IntegerVerificationType.INTEGER_VERIFICATION_TYPE_UNSPECIFIED, valueOf: IntegerVerificationType.valueOf, enumValues: IntegerVerificationType.values)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationResponse_IntegerVerification clone() => VerificationResponse_IntegerVerification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationResponse_IntegerVerification copyWith(void Function(VerificationResponse_IntegerVerification) updates) => super.copyWith((message) => updates(message as VerificationResponse_IntegerVerification)) as VerificationResponse_IntegerVerification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationResponse_IntegerVerification create() => VerificationResponse_IntegerVerification._();
  VerificationResponse_IntegerVerification createEmptyInstance() => create();
  static $pb.PbList<VerificationResponse_IntegerVerification> createRepeated() => $pb.PbList<VerificationResponse_IntegerVerification>();
  @$core.pragma('dart2js:noInline')
  static VerificationResponse_IntegerVerification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationResponse_IntegerVerification>(create);
  static VerificationResponse_IntegerVerification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get order => $_getIZ(0);
  @$pb.TagNumber(1)
  set order($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrder() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrder() => clearField(1);

  @$pb.TagNumber(2)
  IntegerVerificationType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(IntegerVerificationType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get value => $_getI64(2);
  @$pb.TagNumber(3)
  set value($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class VerificationResponse extends $pb.GeneratedMessage {
  factory VerificationResponse({
    $core.Iterable<VerificationResponse_StringVerification>? stringVerifications,
    $core.Iterable<VerificationResponse_IntegerVerification>? integerVerifications,
  }) {
    final $result = create();
    if (stringVerifications != null) {
      $result.stringVerifications.addAll(stringVerifications);
    }
    if (integerVerifications != null) {
      $result.integerVerifications.addAll(integerVerifications);
    }
    return $result;
  }
  VerificationResponse._() : super();
  factory VerificationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerificationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.impulse_svc.v1'), createEmptyInstance: create)
    ..pc<VerificationResponse_StringVerification>(1, _omitFieldNames ? '' : 'stringVerifications', $pb.PbFieldType.PM, subBuilder: VerificationResponse_StringVerification.create)
    ..pc<VerificationResponse_IntegerVerification>(2, _omitFieldNames ? '' : 'integerVerifications', $pb.PbFieldType.PM, subBuilder: VerificationResponse_IntegerVerification.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationResponse clone() => VerificationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationResponse copyWith(void Function(VerificationResponse) updates) => super.copyWith((message) => updates(message as VerificationResponse)) as VerificationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationResponse create() => VerificationResponse._();
  VerificationResponse createEmptyInstance() => create();
  static $pb.PbList<VerificationResponse> createRepeated() => $pb.PbList<VerificationResponse>();
  @$core.pragma('dart2js:noInline')
  static VerificationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationResponse>(create);
  static VerificationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<VerificationResponse_StringVerification> get stringVerifications => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<VerificationResponse_IntegerVerification> get integerVerifications => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
