//
//  Generated code. Do not modify.
//  source: services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'organization_svc.pbenum.dart';

export 'organization_svc.pbenum.dart';

class CreateOrganizationRequest extends $pb.GeneratedMessage {
  factory CreateOrganizationRequest({
    $core.String? longName,
    $core.String? shortName,
    $core.String? contactEmail,
    $core.bool? isPersonal,
  }) {
    final $result = create();
    if (longName != null) {
      $result.longName = longName;
    }
    if (shortName != null) {
      $result.shortName = shortName;
    }
    if (contactEmail != null) {
      $result.contactEmail = contactEmail;
    }
    if (isPersonal != null) {
      $result.isPersonal = isPersonal;
    }
    return $result;
  }
  CreateOrganizationRequest._() : super();
  factory CreateOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'longName')
    ..aOS(2, _omitFieldNames ? '' : 'shortName')
    ..aOS(3, _omitFieldNames ? '' : 'contactEmail')
    ..aOB(4, _omitFieldNames ? '' : 'isPersonal')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateOrganizationRequest clone() => CreateOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateOrganizationRequest copyWith(void Function(CreateOrganizationRequest) updates) => super.copyWith((message) => updates(message as CreateOrganizationRequest)) as CreateOrganizationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateOrganizationRequest create() => CreateOrganizationRequest._();
  CreateOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<CreateOrganizationRequest> createRepeated() => $pb.PbList<CreateOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateOrganizationRequest>(create);
  static CreateOrganizationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get longName => $_getSZ(0);
  @$pb.TagNumber(1)
  set longName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLongName() => $_has(0);
  @$pb.TagNumber(1)
  void clearLongName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get shortName => $_getSZ(1);
  @$pb.TagNumber(2)
  set shortName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasShortName() => $_has(1);
  @$pb.TagNumber(2)
  void clearShortName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get contactEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set contactEmail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContactEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearContactEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isPersonal => $_getBF(3);
  @$pb.TagNumber(4)
  set isPersonal($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsPersonal() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsPersonal() => clearField(4);
}

class CreateOrganizationResponse extends $pb.GeneratedMessage {
  factory CreateOrganizationResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateOrganizationResponse._() : super();
  factory CreateOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateOrganizationResponse clone() => CreateOrganizationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateOrganizationResponse copyWith(void Function(CreateOrganizationResponse) updates) => super.copyWith((message) => updates(message as CreateOrganizationResponse)) as CreateOrganizationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateOrganizationResponse create() => CreateOrganizationResponse._();
  CreateOrganizationResponse createEmptyInstance() => create();
  static $pb.PbList<CreateOrganizationResponse> createRepeated() => $pb.PbList<CreateOrganizationResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateOrganizationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateOrganizationResponse>(create);
  static CreateOrganizationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetOrganizationMember extends $pb.GeneratedMessage {
  factory GetOrganizationMember({
    $core.String? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  GetOrganizationMember._() : super();
  factory GetOrganizationMember.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationMember.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationMember', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationMember clone() => GetOrganizationMember()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationMember copyWith(void Function(GetOrganizationMember) updates) => super.copyWith((message) => updates(message as GetOrganizationMember)) as GetOrganizationMember;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationMember create() => GetOrganizationMember._();
  GetOrganizationMember createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationMember> createRepeated() => $pb.PbList<GetOrganizationMember>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationMember getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationMember>(create);
  static GetOrganizationMember? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetOrganizationRequest extends $pb.GeneratedMessage {
  factory GetOrganizationRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetOrganizationRequest._() : super();
  factory GetOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationRequest clone() => GetOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationRequest copyWith(void Function(GetOrganizationRequest) updates) => super.copyWith((message) => updates(message as GetOrganizationRequest)) as GetOrganizationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationRequest create() => GetOrganizationRequest._();
  GetOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationRequest> createRepeated() => $pb.PbList<GetOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationRequest>(create);
  static GetOrganizationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetOrganizationResponse extends $pb.GeneratedMessage {
  factory GetOrganizationResponse({
    $core.String? id,
    $core.String? longName,
    $core.String? shortName,
    $core.String? contactEmail,
    $core.String? avatarUrl,
    $core.bool? isPersonal,
    $core.Iterable<GetOrganizationMember>? members,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (longName != null) {
      $result.longName = longName;
    }
    if (shortName != null) {
      $result.shortName = shortName;
    }
    if (contactEmail != null) {
      $result.contactEmail = contactEmail;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    if (isPersonal != null) {
      $result.isPersonal = isPersonal;
    }
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  GetOrganizationResponse._() : super();
  factory GetOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'longName')
    ..aOS(3, _omitFieldNames ? '' : 'shortName')
    ..aOS(4, _omitFieldNames ? '' : 'contactEmail')
    ..aOS(5, _omitFieldNames ? '' : 'avatarUrl')
    ..aOB(6, _omitFieldNames ? '' : 'isPersonal')
    ..pc<GetOrganizationMember>(7, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM, subBuilder: GetOrganizationMember.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationResponse clone() => GetOrganizationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationResponse copyWith(void Function(GetOrganizationResponse) updates) => super.copyWith((message) => updates(message as GetOrganizationResponse)) as GetOrganizationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationResponse create() => GetOrganizationResponse._();
  GetOrganizationResponse createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationResponse> createRepeated() => $pb.PbList<GetOrganizationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationResponse>(create);
  static GetOrganizationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get longName => $_getSZ(1);
  @$pb.TagNumber(2)
  set longName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get shortName => $_getSZ(2);
  @$pb.TagNumber(3)
  set shortName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShortName() => $_has(2);
  @$pb.TagNumber(3)
  void clearShortName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contactEmail => $_getSZ(3);
  @$pb.TagNumber(4)
  set contactEmail($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContactEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearContactEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatarUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatarUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatarUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatarUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isPersonal => $_getBF(5);
  @$pb.TagNumber(6)
  set isPersonal($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsPersonal() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsPersonal() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<GetOrganizationMember> get members => $_getList(6);
}

class GetOrganizationsByUserRequest extends $pb.GeneratedMessage {
  factory GetOrganizationsByUserRequest({
    $core.String? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  GetOrganizationsByUserRequest._() : super();
  factory GetOrganizationsByUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsByUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsByUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserRequest clone() => GetOrganizationsByUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserRequest copyWith(void Function(GetOrganizationsByUserRequest) updates) => super.copyWith((message) => updates(message as GetOrganizationsByUserRequest)) as GetOrganizationsByUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserRequest create() => GetOrganizationsByUserRequest._();
  GetOrganizationsByUserRequest createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationsByUserRequest> createRepeated() => $pb.PbList<GetOrganizationsByUserRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationsByUserRequest>(create);
  static GetOrganizationsByUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetOrganizationsByUserResponse_Organization_Member extends $pb.GeneratedMessage {
  factory GetOrganizationsByUserResponse_Organization_Member({
    $core.String? userId,
    $core.String? email,
    $core.String? nickname,
    $core.String? avatarUrl,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (email != null) {
      $result.email = email;
    }
    if (nickname != null) {
      $result.nickname = nickname;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    return $result;
  }
  GetOrganizationsByUserResponse_Organization_Member._() : super();
  factory GetOrganizationsByUserResponse_Organization_Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsByUserResponse_Organization_Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsByUserResponse.Organization.Member', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'nickname')
    ..aOS(4, _omitFieldNames ? '' : 'avatarUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserResponse_Organization_Member clone() => GetOrganizationsByUserResponse_Organization_Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserResponse_Organization_Member copyWith(void Function(GetOrganizationsByUserResponse_Organization_Member) updates) => super.copyWith((message) => updates(message as GetOrganizationsByUserResponse_Organization_Member)) as GetOrganizationsByUserResponse_Organization_Member;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserResponse_Organization_Member create() => GetOrganizationsByUserResponse_Organization_Member._();
  GetOrganizationsByUserResponse_Organization_Member createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationsByUserResponse_Organization_Member> createRepeated() => $pb.PbList<GetOrganizationsByUserResponse_Organization_Member>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserResponse_Organization_Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationsByUserResponse_Organization_Member>(create);
  static GetOrganizationsByUserResponse_Organization_Member? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nickname => $_getSZ(2);
  @$pb.TagNumber(3)
  set nickname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNickname() => $_has(2);
  @$pb.TagNumber(3)
  void clearNickname() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatarUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatarUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatarUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatarUrl() => clearField(4);
}

class GetOrganizationsByUserResponse_Organization extends $pb.GeneratedMessage {
  factory GetOrganizationsByUserResponse_Organization({
    $core.String? id,
    $core.String? longName,
    $core.String? shortName,
    $core.String? contactEmail,
    $core.String? avatarUrl,
    $core.bool? isPersonal,
    $core.Iterable<GetOrganizationsByUserResponse_Organization_Member>? members,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (longName != null) {
      $result.longName = longName;
    }
    if (shortName != null) {
      $result.shortName = shortName;
    }
    if (contactEmail != null) {
      $result.contactEmail = contactEmail;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    if (isPersonal != null) {
      $result.isPersonal = isPersonal;
    }
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  GetOrganizationsByUserResponse_Organization._() : super();
  factory GetOrganizationsByUserResponse_Organization.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsByUserResponse_Organization.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsByUserResponse.Organization', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'longName')
    ..aOS(3, _omitFieldNames ? '' : 'shortName')
    ..aOS(4, _omitFieldNames ? '' : 'contactEmail')
    ..aOS(5, _omitFieldNames ? '' : 'avatarUrl')
    ..aOB(6, _omitFieldNames ? '' : 'isPersonal')
    ..pc<GetOrganizationsByUserResponse_Organization_Member>(7, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM, subBuilder: GetOrganizationsByUserResponse_Organization_Member.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserResponse_Organization clone() => GetOrganizationsByUserResponse_Organization()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserResponse_Organization copyWith(void Function(GetOrganizationsByUserResponse_Organization) updates) => super.copyWith((message) => updates(message as GetOrganizationsByUserResponse_Organization)) as GetOrganizationsByUserResponse_Organization;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserResponse_Organization create() => GetOrganizationsByUserResponse_Organization._();
  GetOrganizationsByUserResponse_Organization createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationsByUserResponse_Organization> createRepeated() => $pb.PbList<GetOrganizationsByUserResponse_Organization>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserResponse_Organization getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationsByUserResponse_Organization>(create);
  static GetOrganizationsByUserResponse_Organization? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get longName => $_getSZ(1);
  @$pb.TagNumber(2)
  set longName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get shortName => $_getSZ(2);
  @$pb.TagNumber(3)
  set shortName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShortName() => $_has(2);
  @$pb.TagNumber(3)
  void clearShortName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contactEmail => $_getSZ(3);
  @$pb.TagNumber(4)
  set contactEmail($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContactEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearContactEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatarUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatarUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatarUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatarUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isPersonal => $_getBF(5);
  @$pb.TagNumber(6)
  set isPersonal($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsPersonal() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsPersonal() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<GetOrganizationsByUserResponse_Organization_Member> get members => $_getList(6);
}

class GetOrganizationsByUserResponse extends $pb.GeneratedMessage {
  factory GetOrganizationsByUserResponse({
    $core.Iterable<GetOrganizationsByUserResponse_Organization>? organizations,
  }) {
    final $result = create();
    if (organizations != null) {
      $result.organizations.addAll(organizations);
    }
    return $result;
  }
  GetOrganizationsByUserResponse._() : super();
  factory GetOrganizationsByUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsByUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsByUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..pc<GetOrganizationsByUserResponse_Organization>(1, _omitFieldNames ? '' : 'organizations', $pb.PbFieldType.PM, subBuilder: GetOrganizationsByUserResponse_Organization.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserResponse clone() => GetOrganizationsByUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserResponse copyWith(void Function(GetOrganizationsByUserResponse) updates) => super.copyWith((message) => updates(message as GetOrganizationsByUserResponse)) as GetOrganizationsByUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserResponse create() => GetOrganizationsByUserResponse._();
  GetOrganizationsByUserResponse createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationsByUserResponse> createRepeated() => $pb.PbList<GetOrganizationsByUserResponse>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationsByUserResponse>(create);
  static GetOrganizationsByUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetOrganizationsByUserResponse_Organization> get organizations => $_getList(0);
}

class GetOrganizationsForUserRequest extends $pb.GeneratedMessage {
  factory GetOrganizationsForUserRequest() => create();
  GetOrganizationsForUserRequest._() : super();
  factory GetOrganizationsForUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsForUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsForUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationsForUserRequest clone() => GetOrganizationsForUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationsForUserRequest copyWith(void Function(GetOrganizationsForUserRequest) updates) => super.copyWith((message) => updates(message as GetOrganizationsForUserRequest)) as GetOrganizationsForUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationsForUserRequest create() => GetOrganizationsForUserRequest._();
  GetOrganizationsForUserRequest createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationsForUserRequest> createRepeated() => $pb.PbList<GetOrganizationsForUserRequest>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationsForUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationsForUserRequest>(create);
  static GetOrganizationsForUserRequest? _defaultInstance;
}

class GetOrganizationsForUserResponse_Organization_Member extends $pb.GeneratedMessage {
  factory GetOrganizationsForUserResponse_Organization_Member({
    $core.String? userId,
    $core.String? email,
    $core.String? nickname,
    $core.String? avatarUrl,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (email != null) {
      $result.email = email;
    }
    if (nickname != null) {
      $result.nickname = nickname;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    return $result;
  }
  GetOrganizationsForUserResponse_Organization_Member._() : super();
  factory GetOrganizationsForUserResponse_Organization_Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsForUserResponse_Organization_Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsForUserResponse.Organization.Member', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'nickname')
    ..aOS(4, _omitFieldNames ? '' : 'avatarUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationsForUserResponse_Organization_Member clone() => GetOrganizationsForUserResponse_Organization_Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationsForUserResponse_Organization_Member copyWith(void Function(GetOrganizationsForUserResponse_Organization_Member) updates) => super.copyWith((message) => updates(message as GetOrganizationsForUserResponse_Organization_Member)) as GetOrganizationsForUserResponse_Organization_Member;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationsForUserResponse_Organization_Member create() => GetOrganizationsForUserResponse_Organization_Member._();
  GetOrganizationsForUserResponse_Organization_Member createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationsForUserResponse_Organization_Member> createRepeated() => $pb.PbList<GetOrganizationsForUserResponse_Organization_Member>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationsForUserResponse_Organization_Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationsForUserResponse_Organization_Member>(create);
  static GetOrganizationsForUserResponse_Organization_Member? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nickname => $_getSZ(2);
  @$pb.TagNumber(3)
  set nickname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNickname() => $_has(2);
  @$pb.TagNumber(3)
  void clearNickname() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatarUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatarUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatarUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatarUrl() => clearField(4);
}

class GetOrganizationsForUserResponse_Organization extends $pb.GeneratedMessage {
  factory GetOrganizationsForUserResponse_Organization({
    $core.String? id,
    $core.String? longName,
    $core.String? shortName,
    $core.String? contactEmail,
    $core.String? avatarUrl,
    $core.bool? isPersonal,
    $core.Iterable<GetOrganizationsForUserResponse_Organization_Member>? members,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (longName != null) {
      $result.longName = longName;
    }
    if (shortName != null) {
      $result.shortName = shortName;
    }
    if (contactEmail != null) {
      $result.contactEmail = contactEmail;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    if (isPersonal != null) {
      $result.isPersonal = isPersonal;
    }
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  GetOrganizationsForUserResponse_Organization._() : super();
  factory GetOrganizationsForUserResponse_Organization.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsForUserResponse_Organization.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsForUserResponse.Organization', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'longName')
    ..aOS(3, _omitFieldNames ? '' : 'shortName')
    ..aOS(4, _omitFieldNames ? '' : 'contactEmail')
    ..aOS(5, _omitFieldNames ? '' : 'avatarUrl')
    ..aOB(6, _omitFieldNames ? '' : 'isPersonal')
    ..pc<GetOrganizationsForUserResponse_Organization_Member>(7, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM, subBuilder: GetOrganizationsForUserResponse_Organization_Member.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationsForUserResponse_Organization clone() => GetOrganizationsForUserResponse_Organization()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationsForUserResponse_Organization copyWith(void Function(GetOrganizationsForUserResponse_Organization) updates) => super.copyWith((message) => updates(message as GetOrganizationsForUserResponse_Organization)) as GetOrganizationsForUserResponse_Organization;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationsForUserResponse_Organization create() => GetOrganizationsForUserResponse_Organization._();
  GetOrganizationsForUserResponse_Organization createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationsForUserResponse_Organization> createRepeated() => $pb.PbList<GetOrganizationsForUserResponse_Organization>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationsForUserResponse_Organization getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationsForUserResponse_Organization>(create);
  static GetOrganizationsForUserResponse_Organization? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get longName => $_getSZ(1);
  @$pb.TagNumber(2)
  set longName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get shortName => $_getSZ(2);
  @$pb.TagNumber(3)
  set shortName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShortName() => $_has(2);
  @$pb.TagNumber(3)
  void clearShortName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contactEmail => $_getSZ(3);
  @$pb.TagNumber(4)
  set contactEmail($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContactEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearContactEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatarUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatarUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatarUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatarUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isPersonal => $_getBF(5);
  @$pb.TagNumber(6)
  set isPersonal($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsPersonal() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsPersonal() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<GetOrganizationsForUserResponse_Organization_Member> get members => $_getList(6);
}

class GetOrganizationsForUserResponse extends $pb.GeneratedMessage {
  factory GetOrganizationsForUserResponse({
    $core.Iterable<GetOrganizationsForUserResponse_Organization>? organizations,
  }) {
    final $result = create();
    if (organizations != null) {
      $result.organizations.addAll(organizations);
    }
    return $result;
  }
  GetOrganizationsForUserResponse._() : super();
  factory GetOrganizationsForUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsForUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsForUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..pc<GetOrganizationsForUserResponse_Organization>(1, _omitFieldNames ? '' : 'organizations', $pb.PbFieldType.PM, subBuilder: GetOrganizationsForUserResponse_Organization.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationsForUserResponse clone() => GetOrganizationsForUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationsForUserResponse copyWith(void Function(GetOrganizationsForUserResponse) updates) => super.copyWith((message) => updates(message as GetOrganizationsForUserResponse)) as GetOrganizationsForUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationsForUserResponse create() => GetOrganizationsForUserResponse._();
  GetOrganizationsForUserResponse createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationsForUserResponse> createRepeated() => $pb.PbList<GetOrganizationsForUserResponse>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationsForUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationsForUserResponse>(create);
  static GetOrganizationsForUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetOrganizationsForUserResponse_Organization> get organizations => $_getList(0);
}

class UpdateOrganizationRequest extends $pb.GeneratedMessage {
  factory UpdateOrganizationRequest({
    $core.String? id,
    $core.String? longName,
    $core.String? shortName,
    $core.String? contactEmail,
    $core.String? avatarUrl,
    $core.bool? isPersonal,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (longName != null) {
      $result.longName = longName;
    }
    if (shortName != null) {
      $result.shortName = shortName;
    }
    if (contactEmail != null) {
      $result.contactEmail = contactEmail;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    if (isPersonal != null) {
      $result.isPersonal = isPersonal;
    }
    return $result;
  }
  UpdateOrganizationRequest._() : super();
  factory UpdateOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'longName')
    ..aOS(3, _omitFieldNames ? '' : 'shortName')
    ..aOS(4, _omitFieldNames ? '' : 'contactEmail')
    ..aOS(5, _omitFieldNames ? '' : 'avatarUrl')
    ..aOB(6, _omitFieldNames ? '' : 'isPersonal')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOrganizationRequest clone() => UpdateOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOrganizationRequest copyWith(void Function(UpdateOrganizationRequest) updates) => super.copyWith((message) => updates(message as UpdateOrganizationRequest)) as UpdateOrganizationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOrganizationRequest create() => UpdateOrganizationRequest._();
  UpdateOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateOrganizationRequest> createRepeated() => $pb.PbList<UpdateOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOrganizationRequest>(create);
  static UpdateOrganizationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get longName => $_getSZ(1);
  @$pb.TagNumber(2)
  set longName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get shortName => $_getSZ(2);
  @$pb.TagNumber(3)
  set shortName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShortName() => $_has(2);
  @$pb.TagNumber(3)
  void clearShortName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contactEmail => $_getSZ(3);
  @$pb.TagNumber(4)
  set contactEmail($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContactEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearContactEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatarUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatarUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatarUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatarUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isPersonal => $_getBF(5);
  @$pb.TagNumber(6)
  set isPersonal($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsPersonal() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsPersonal() => clearField(6);
}

class UpdateOrganizationResponse extends $pb.GeneratedMessage {
  factory UpdateOrganizationResponse() => create();
  UpdateOrganizationResponse._() : super();
  factory UpdateOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOrganizationResponse clone() => UpdateOrganizationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOrganizationResponse copyWith(void Function(UpdateOrganizationResponse) updates) => super.copyWith((message) => updates(message as UpdateOrganizationResponse)) as UpdateOrganizationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOrganizationResponse create() => UpdateOrganizationResponse._();
  UpdateOrganizationResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateOrganizationResponse> createRepeated() => $pb.PbList<UpdateOrganizationResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateOrganizationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOrganizationResponse>(create);
  static UpdateOrganizationResponse? _defaultInstance;
}

class DeleteOrganizationRequest extends $pb.GeneratedMessage {
  factory DeleteOrganizationRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteOrganizationRequest._() : super();
  factory DeleteOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteOrganizationRequest clone() => DeleteOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteOrganizationRequest copyWith(void Function(DeleteOrganizationRequest) updates) => super.copyWith((message) => updates(message as DeleteOrganizationRequest)) as DeleteOrganizationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteOrganizationRequest create() => DeleteOrganizationRequest._();
  DeleteOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteOrganizationRequest> createRepeated() => $pb.PbList<DeleteOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteOrganizationRequest>(create);
  static DeleteOrganizationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteOrganizationResponse extends $pb.GeneratedMessage {
  factory DeleteOrganizationResponse() => create();
  DeleteOrganizationResponse._() : super();
  factory DeleteOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteOrganizationResponse clone() => DeleteOrganizationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteOrganizationResponse copyWith(void Function(DeleteOrganizationResponse) updates) => super.copyWith((message) => updates(message as DeleteOrganizationResponse)) as DeleteOrganizationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteOrganizationResponse create() => DeleteOrganizationResponse._();
  DeleteOrganizationResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteOrganizationResponse> createRepeated() => $pb.PbList<DeleteOrganizationResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteOrganizationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteOrganizationResponse>(create);
  static DeleteOrganizationResponse? _defaultInstance;
}

class GetMembersByOrganizationRequest extends $pb.GeneratedMessage {
  factory GetMembersByOrganizationRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetMembersByOrganizationRequest._() : super();
  factory GetMembersByOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMembersByOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMembersByOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMembersByOrganizationRequest clone() => GetMembersByOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMembersByOrganizationRequest copyWith(void Function(GetMembersByOrganizationRequest) updates) => super.copyWith((message) => updates(message as GetMembersByOrganizationRequest)) as GetMembersByOrganizationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMembersByOrganizationRequest create() => GetMembersByOrganizationRequest._();
  GetMembersByOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<GetMembersByOrganizationRequest> createRepeated() => $pb.PbList<GetMembersByOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMembersByOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMembersByOrganizationRequest>(create);
  static GetMembersByOrganizationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetMembersByOrganizationResponse_Member extends $pb.GeneratedMessage {
  factory GetMembersByOrganizationResponse_Member({
    $core.String? userId,
    $core.String? email,
    $core.String? nickname,
    $core.String? avatarUrl,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (email != null) {
      $result.email = email;
    }
    if (nickname != null) {
      $result.nickname = nickname;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    return $result;
  }
  GetMembersByOrganizationResponse_Member._() : super();
  factory GetMembersByOrganizationResponse_Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMembersByOrganizationResponse_Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMembersByOrganizationResponse.Member', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'nickname')
    ..aOS(4, _omitFieldNames ? '' : 'avatarUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMembersByOrganizationResponse_Member clone() => GetMembersByOrganizationResponse_Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMembersByOrganizationResponse_Member copyWith(void Function(GetMembersByOrganizationResponse_Member) updates) => super.copyWith((message) => updates(message as GetMembersByOrganizationResponse_Member)) as GetMembersByOrganizationResponse_Member;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMembersByOrganizationResponse_Member create() => GetMembersByOrganizationResponse_Member._();
  GetMembersByOrganizationResponse_Member createEmptyInstance() => create();
  static $pb.PbList<GetMembersByOrganizationResponse_Member> createRepeated() => $pb.PbList<GetMembersByOrganizationResponse_Member>();
  @$core.pragma('dart2js:noInline')
  static GetMembersByOrganizationResponse_Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMembersByOrganizationResponse_Member>(create);
  static GetMembersByOrganizationResponse_Member? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nickname => $_getSZ(2);
  @$pb.TagNumber(3)
  set nickname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNickname() => $_has(2);
  @$pb.TagNumber(3)
  void clearNickname() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatarUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatarUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatarUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatarUrl() => clearField(4);
}

class GetMembersByOrganizationResponse extends $pb.GeneratedMessage {
  factory GetMembersByOrganizationResponse({
    $core.Iterable<GetMembersByOrganizationResponse_Member>? members,
  }) {
    final $result = create();
    if (members != null) {
      $result.members.addAll(members);
    }
    return $result;
  }
  GetMembersByOrganizationResponse._() : super();
  factory GetMembersByOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMembersByOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMembersByOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..pc<GetMembersByOrganizationResponse_Member>(1, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM, subBuilder: GetMembersByOrganizationResponse_Member.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMembersByOrganizationResponse clone() => GetMembersByOrganizationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMembersByOrganizationResponse copyWith(void Function(GetMembersByOrganizationResponse) updates) => super.copyWith((message) => updates(message as GetMembersByOrganizationResponse)) as GetMembersByOrganizationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMembersByOrganizationResponse create() => GetMembersByOrganizationResponse._();
  GetMembersByOrganizationResponse createEmptyInstance() => create();
  static $pb.PbList<GetMembersByOrganizationResponse> createRepeated() => $pb.PbList<GetMembersByOrganizationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMembersByOrganizationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMembersByOrganizationResponse>(create);
  static GetMembersByOrganizationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetMembersByOrganizationResponse_Member> get members => $_getList(0);
}

class AddMemberRequest extends $pb.GeneratedMessage {
  factory AddMemberRequest({
    $core.String? id,
    $core.String? userId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  AddMemberRequest._() : super();
  factory AddMemberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddMemberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddMemberRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddMemberRequest clone() => AddMemberRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddMemberRequest copyWith(void Function(AddMemberRequest) updates) => super.copyWith((message) => updates(message as AddMemberRequest)) as AddMemberRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddMemberRequest create() => AddMemberRequest._();
  AddMemberRequest createEmptyInstance() => create();
  static $pb.PbList<AddMemberRequest> createRepeated() => $pb.PbList<AddMemberRequest>();
  @$core.pragma('dart2js:noInline')
  static AddMemberRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddMemberRequest>(create);
  static AddMemberRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class AddMemberResponse extends $pb.GeneratedMessage {
  factory AddMemberResponse() => create();
  AddMemberResponse._() : super();
  factory AddMemberResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddMemberResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddMemberResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddMemberResponse clone() => AddMemberResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddMemberResponse copyWith(void Function(AddMemberResponse) updates) => super.copyWith((message) => updates(message as AddMemberResponse)) as AddMemberResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddMemberResponse create() => AddMemberResponse._();
  AddMemberResponse createEmptyInstance() => create();
  static $pb.PbList<AddMemberResponse> createRepeated() => $pb.PbList<AddMemberResponse>();
  @$core.pragma('dart2js:noInline')
  static AddMemberResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddMemberResponse>(create);
  static AddMemberResponse? _defaultInstance;
}

class RemoveMemberRequest extends $pb.GeneratedMessage {
  factory RemoveMemberRequest({
    $core.String? id,
    $core.String? userId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  RemoveMemberRequest._() : super();
  factory RemoveMemberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveMemberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveMemberRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveMemberRequest clone() => RemoveMemberRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveMemberRequest copyWith(void Function(RemoveMemberRequest) updates) => super.copyWith((message) => updates(message as RemoveMemberRequest)) as RemoveMemberRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveMemberRequest create() => RemoveMemberRequest._();
  RemoveMemberRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveMemberRequest> createRepeated() => $pb.PbList<RemoveMemberRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveMemberRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveMemberRequest>(create);
  static RemoveMemberRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class RemoveMemberResponse extends $pb.GeneratedMessage {
  factory RemoveMemberResponse() => create();
  RemoveMemberResponse._() : super();
  factory RemoveMemberResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveMemberResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveMemberResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveMemberResponse clone() => RemoveMemberResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveMemberResponse copyWith(void Function(RemoveMemberResponse) updates) => super.copyWith((message) => updates(message as RemoveMemberResponse)) as RemoveMemberResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveMemberResponse create() => RemoveMemberResponse._();
  RemoveMemberResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveMemberResponse> createRepeated() => $pb.PbList<RemoveMemberResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveMemberResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveMemberResponse>(create);
  static RemoveMemberResponse? _defaultInstance;
}

class InviteMemberRequest extends $pb.GeneratedMessage {
  factory InviteMemberRequest({
    $core.String? organizationId,
    $core.String? email,
  }) {
    final $result = create();
    if (organizationId != null) {
      $result.organizationId = organizationId;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  InviteMemberRequest._() : super();
  factory InviteMemberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteMemberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteMemberRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'organizationId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteMemberRequest clone() => InviteMemberRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteMemberRequest copyWith(void Function(InviteMemberRequest) updates) => super.copyWith((message) => updates(message as InviteMemberRequest)) as InviteMemberRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteMemberRequest create() => InviteMemberRequest._();
  InviteMemberRequest createEmptyInstance() => create();
  static $pb.PbList<InviteMemberRequest> createRepeated() => $pb.PbList<InviteMemberRequest>();
  @$core.pragma('dart2js:noInline')
  static InviteMemberRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteMemberRequest>(create);
  static InviteMemberRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
}

class InviteMemberResponse extends $pb.GeneratedMessage {
  factory InviteMemberResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  InviteMemberResponse._() : super();
  factory InviteMemberResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteMemberResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteMemberResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InviteMemberResponse clone() => InviteMemberResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InviteMemberResponse copyWith(void Function(InviteMemberResponse) updates) => super.copyWith((message) => updates(message as InviteMemberResponse)) as InviteMemberResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InviteMemberResponse create() => InviteMemberResponse._();
  InviteMemberResponse createEmptyInstance() => create();
  static $pb.PbList<InviteMemberResponse> createRepeated() => $pb.PbList<InviteMemberResponse>();
  @$core.pragma('dart2js:noInline')
  static InviteMemberResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InviteMemberResponse>(create);
  static InviteMemberResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetInvitationsByOrganizationRequest extends $pb.GeneratedMessage {
  factory GetInvitationsByOrganizationRequest({
    $core.String? organizationId,
    InvitationState? state,
  }) {
    final $result = create();
    if (organizationId != null) {
      $result.organizationId = organizationId;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  GetInvitationsByOrganizationRequest._() : super();
  factory GetInvitationsByOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'organizationId')
    ..e<InvitationState>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: InvitationState.INVITATION_STATE_UNSPECIFIED, valueOf: InvitationState.valueOf, enumValues: InvitationState.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInvitationsByOrganizationRequest clone() => GetInvitationsByOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInvitationsByOrganizationRequest copyWith(void Function(GetInvitationsByOrganizationRequest) updates) => super.copyWith((message) => updates(message as GetInvitationsByOrganizationRequest)) as GetInvitationsByOrganizationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInvitationsByOrganizationRequest create() => GetInvitationsByOrganizationRequest._();
  GetInvitationsByOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<GetInvitationsByOrganizationRequest> createRepeated() => $pb.PbList<GetInvitationsByOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInvitationsByOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInvitationsByOrganizationRequest>(create);
  static GetInvitationsByOrganizationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);

  @$pb.TagNumber(2)
  InvitationState get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(InvitationState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
}

class GetInvitationsByOrganizationResponse_Invitation extends $pb.GeneratedMessage {
  factory GetInvitationsByOrganizationResponse_Invitation({
    $core.String? id,
    $core.String? email,
    $core.String? organizationId,
    InvitationState? state,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (email != null) {
      $result.email = email;
    }
    if (organizationId != null) {
      $result.organizationId = organizationId;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  GetInvitationsByOrganizationResponse_Invitation._() : super();
  factory GetInvitationsByOrganizationResponse_Invitation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByOrganizationResponse_Invitation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByOrganizationResponse.Invitation', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'organizationId')
    ..e<InvitationState>(4, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: InvitationState.INVITATION_STATE_UNSPECIFIED, valueOf: InvitationState.valueOf, enumValues: InvitationState.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInvitationsByOrganizationResponse_Invitation clone() => GetInvitationsByOrganizationResponse_Invitation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInvitationsByOrganizationResponse_Invitation copyWith(void Function(GetInvitationsByOrganizationResponse_Invitation) updates) => super.copyWith((message) => updates(message as GetInvitationsByOrganizationResponse_Invitation)) as GetInvitationsByOrganizationResponse_Invitation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInvitationsByOrganizationResponse_Invitation create() => GetInvitationsByOrganizationResponse_Invitation._();
  GetInvitationsByOrganizationResponse_Invitation createEmptyInstance() => create();
  static $pb.PbList<GetInvitationsByOrganizationResponse_Invitation> createRepeated() => $pb.PbList<GetInvitationsByOrganizationResponse_Invitation>();
  @$core.pragma('dart2js:noInline')
  static GetInvitationsByOrganizationResponse_Invitation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInvitationsByOrganizationResponse_Invitation>(create);
  static GetInvitationsByOrganizationResponse_Invitation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get organizationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set organizationId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrganizationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrganizationId() => clearField(3);

  @$pb.TagNumber(4)
  InvitationState get state => $_getN(3);
  @$pb.TagNumber(4)
  set state(InvitationState v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => clearField(4);
}

class GetInvitationsByOrganizationResponse extends $pb.GeneratedMessage {
  factory GetInvitationsByOrganizationResponse({
    $core.Iterable<GetInvitationsByOrganizationResponse_Invitation>? invitations,
  }) {
    final $result = create();
    if (invitations != null) {
      $result.invitations.addAll(invitations);
    }
    return $result;
  }
  GetInvitationsByOrganizationResponse._() : super();
  factory GetInvitationsByOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..pc<GetInvitationsByOrganizationResponse_Invitation>(1, _omitFieldNames ? '' : 'invitations', $pb.PbFieldType.PM, subBuilder: GetInvitationsByOrganizationResponse_Invitation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInvitationsByOrganizationResponse clone() => GetInvitationsByOrganizationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInvitationsByOrganizationResponse copyWith(void Function(GetInvitationsByOrganizationResponse) updates) => super.copyWith((message) => updates(message as GetInvitationsByOrganizationResponse)) as GetInvitationsByOrganizationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInvitationsByOrganizationResponse create() => GetInvitationsByOrganizationResponse._();
  GetInvitationsByOrganizationResponse createEmptyInstance() => create();
  static $pb.PbList<GetInvitationsByOrganizationResponse> createRepeated() => $pb.PbList<GetInvitationsByOrganizationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetInvitationsByOrganizationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInvitationsByOrganizationResponse>(create);
  static GetInvitationsByOrganizationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetInvitationsByOrganizationResponse_Invitation> get invitations => $_getList(0);
}

class GetInvitationsByUserRequest extends $pb.GeneratedMessage {
  factory GetInvitationsByUserRequest({
    InvitationState? state,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  GetInvitationsByUserRequest._() : super();
  factory GetInvitationsByUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..e<InvitationState>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: InvitationState.INVITATION_STATE_UNSPECIFIED, valueOf: InvitationState.valueOf, enumValues: InvitationState.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInvitationsByUserRequest clone() => GetInvitationsByUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInvitationsByUserRequest copyWith(void Function(GetInvitationsByUserRequest) updates) => super.copyWith((message) => updates(message as GetInvitationsByUserRequest)) as GetInvitationsByUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInvitationsByUserRequest create() => GetInvitationsByUserRequest._();
  GetInvitationsByUserRequest createEmptyInstance() => create();
  static $pb.PbList<GetInvitationsByUserRequest> createRepeated() => $pb.PbList<GetInvitationsByUserRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInvitationsByUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInvitationsByUserRequest>(create);
  static GetInvitationsByUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  InvitationState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(InvitationState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

class GetInvitationsByUserResponse_Invitation_Organization extends $pb.GeneratedMessage {
  factory GetInvitationsByUserResponse_Invitation_Organization({
    $core.String? id,
    $core.String? longName,
    $core.String? avatarUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (longName != null) {
      $result.longName = longName;
    }
    if (avatarUrl != null) {
      $result.avatarUrl = avatarUrl;
    }
    return $result;
  }
  GetInvitationsByUserResponse_Invitation_Organization._() : super();
  factory GetInvitationsByUserResponse_Invitation_Organization.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByUserResponse_Invitation_Organization.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByUserResponse.Invitation.Organization', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'longName')
    ..aOS(3, _omitFieldNames ? '' : 'avatarUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInvitationsByUserResponse_Invitation_Organization clone() => GetInvitationsByUserResponse_Invitation_Organization()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInvitationsByUserResponse_Invitation_Organization copyWith(void Function(GetInvitationsByUserResponse_Invitation_Organization) updates) => super.copyWith((message) => updates(message as GetInvitationsByUserResponse_Invitation_Organization)) as GetInvitationsByUserResponse_Invitation_Organization;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInvitationsByUserResponse_Invitation_Organization create() => GetInvitationsByUserResponse_Invitation_Organization._();
  GetInvitationsByUserResponse_Invitation_Organization createEmptyInstance() => create();
  static $pb.PbList<GetInvitationsByUserResponse_Invitation_Organization> createRepeated() => $pb.PbList<GetInvitationsByUserResponse_Invitation_Organization>();
  @$core.pragma('dart2js:noInline')
  static GetInvitationsByUserResponse_Invitation_Organization getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInvitationsByUserResponse_Invitation_Organization>(create);
  static GetInvitationsByUserResponse_Invitation_Organization? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get longName => $_getSZ(1);
  @$pb.TagNumber(2)
  set longName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatarUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatarUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatarUrl() => clearField(3);
}

class GetInvitationsByUserResponse_Invitation extends $pb.GeneratedMessage {
  factory GetInvitationsByUserResponse_Invitation({
    $core.String? id,
    $core.String? email,
    GetInvitationsByUserResponse_Invitation_Organization? organization,
    InvitationState? state,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (email != null) {
      $result.email = email;
    }
    if (organization != null) {
      $result.organization = organization;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  GetInvitationsByUserResponse_Invitation._() : super();
  factory GetInvitationsByUserResponse_Invitation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByUserResponse_Invitation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByUserResponse.Invitation', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOM<GetInvitationsByUserResponse_Invitation_Organization>(3, _omitFieldNames ? '' : 'organization', subBuilder: GetInvitationsByUserResponse_Invitation_Organization.create)
    ..e<InvitationState>(4, _omitFieldNames ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: InvitationState.INVITATION_STATE_UNSPECIFIED, valueOf: InvitationState.valueOf, enumValues: InvitationState.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInvitationsByUserResponse_Invitation clone() => GetInvitationsByUserResponse_Invitation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInvitationsByUserResponse_Invitation copyWith(void Function(GetInvitationsByUserResponse_Invitation) updates) => super.copyWith((message) => updates(message as GetInvitationsByUserResponse_Invitation)) as GetInvitationsByUserResponse_Invitation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInvitationsByUserResponse_Invitation create() => GetInvitationsByUserResponse_Invitation._();
  GetInvitationsByUserResponse_Invitation createEmptyInstance() => create();
  static $pb.PbList<GetInvitationsByUserResponse_Invitation> createRepeated() => $pb.PbList<GetInvitationsByUserResponse_Invitation>();
  @$core.pragma('dart2js:noInline')
  static GetInvitationsByUserResponse_Invitation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInvitationsByUserResponse_Invitation>(create);
  static GetInvitationsByUserResponse_Invitation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);

  @$pb.TagNumber(3)
  GetInvitationsByUserResponse_Invitation_Organization get organization => $_getN(2);
  @$pb.TagNumber(3)
  set organization(GetInvitationsByUserResponse_Invitation_Organization v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrganization() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrganization() => clearField(3);
  @$pb.TagNumber(3)
  GetInvitationsByUserResponse_Invitation_Organization ensureOrganization() => $_ensure(2);

  @$pb.TagNumber(4)
  InvitationState get state => $_getN(3);
  @$pb.TagNumber(4)
  set state(InvitationState v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => clearField(4);
}

class GetInvitationsByUserResponse extends $pb.GeneratedMessage {
  factory GetInvitationsByUserResponse({
    $core.Iterable<GetInvitationsByUserResponse_Invitation>? invitations,
  }) {
    final $result = create();
    if (invitations != null) {
      $result.invitations.addAll(invitations);
    }
    return $result;
  }
  GetInvitationsByUserResponse._() : super();
  factory GetInvitationsByUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..pc<GetInvitationsByUserResponse_Invitation>(1, _omitFieldNames ? '' : 'invitations', $pb.PbFieldType.PM, subBuilder: GetInvitationsByUserResponse_Invitation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInvitationsByUserResponse clone() => GetInvitationsByUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInvitationsByUserResponse copyWith(void Function(GetInvitationsByUserResponse) updates) => super.copyWith((message) => updates(message as GetInvitationsByUserResponse)) as GetInvitationsByUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInvitationsByUserResponse create() => GetInvitationsByUserResponse._();
  GetInvitationsByUserResponse createEmptyInstance() => create();
  static $pb.PbList<GetInvitationsByUserResponse> createRepeated() => $pb.PbList<GetInvitationsByUserResponse>();
  @$core.pragma('dart2js:noInline')
  static GetInvitationsByUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInvitationsByUserResponse>(create);
  static GetInvitationsByUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetInvitationsByUserResponse_Invitation> get invitations => $_getList(0);
}

///
///  AcceptInvite
class AcceptInvitationRequest extends $pb.GeneratedMessage {
  factory AcceptInvitationRequest({
    $core.String? invitationId,
  }) {
    final $result = create();
    if (invitationId != null) {
      $result.invitationId = invitationId;
    }
    return $result;
  }
  AcceptInvitationRequest._() : super();
  factory AcceptInvitationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcceptInvitationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AcceptInvitationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'invitationId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AcceptInvitationRequest clone() => AcceptInvitationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AcceptInvitationRequest copyWith(void Function(AcceptInvitationRequest) updates) => super.copyWith((message) => updates(message as AcceptInvitationRequest)) as AcceptInvitationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcceptInvitationRequest create() => AcceptInvitationRequest._();
  AcceptInvitationRequest createEmptyInstance() => create();
  static $pb.PbList<AcceptInvitationRequest> createRepeated() => $pb.PbList<AcceptInvitationRequest>();
  @$core.pragma('dart2js:noInline')
  static AcceptInvitationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AcceptInvitationRequest>(create);
  static AcceptInvitationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get invitationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set invitationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInvitationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInvitationId() => clearField(1);
}

class AcceptInvitationResponse extends $pb.GeneratedMessage {
  factory AcceptInvitationResponse() => create();
  AcceptInvitationResponse._() : super();
  factory AcceptInvitationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcceptInvitationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AcceptInvitationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AcceptInvitationResponse clone() => AcceptInvitationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AcceptInvitationResponse copyWith(void Function(AcceptInvitationResponse) updates) => super.copyWith((message) => updates(message as AcceptInvitationResponse)) as AcceptInvitationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AcceptInvitationResponse create() => AcceptInvitationResponse._();
  AcceptInvitationResponse createEmptyInstance() => create();
  static $pb.PbList<AcceptInvitationResponse> createRepeated() => $pb.PbList<AcceptInvitationResponse>();
  @$core.pragma('dart2js:noInline')
  static AcceptInvitationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AcceptInvitationResponse>(create);
  static AcceptInvitationResponse? _defaultInstance;
}

class DeclineInvitationRequest extends $pb.GeneratedMessage {
  factory DeclineInvitationRequest({
    $core.String? invitationId,
  }) {
    final $result = create();
    if (invitationId != null) {
      $result.invitationId = invitationId;
    }
    return $result;
  }
  DeclineInvitationRequest._() : super();
  factory DeclineInvitationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeclineInvitationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeclineInvitationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'invitationId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeclineInvitationRequest clone() => DeclineInvitationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeclineInvitationRequest copyWith(void Function(DeclineInvitationRequest) updates) => super.copyWith((message) => updates(message as DeclineInvitationRequest)) as DeclineInvitationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeclineInvitationRequest create() => DeclineInvitationRequest._();
  DeclineInvitationRequest createEmptyInstance() => create();
  static $pb.PbList<DeclineInvitationRequest> createRepeated() => $pb.PbList<DeclineInvitationRequest>();
  @$core.pragma('dart2js:noInline')
  static DeclineInvitationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeclineInvitationRequest>(create);
  static DeclineInvitationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get invitationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set invitationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInvitationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInvitationId() => clearField(1);
}

class DeclineInvitationResponse extends $pb.GeneratedMessage {
  factory DeclineInvitationResponse() => create();
  DeclineInvitationResponse._() : super();
  factory DeclineInvitationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeclineInvitationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeclineInvitationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeclineInvitationResponse clone() => DeclineInvitationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeclineInvitationResponse copyWith(void Function(DeclineInvitationResponse) updates) => super.copyWith((message) => updates(message as DeclineInvitationResponse)) as DeclineInvitationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeclineInvitationResponse create() => DeclineInvitationResponse._();
  DeclineInvitationResponse createEmptyInstance() => create();
  static $pb.PbList<DeclineInvitationResponse> createRepeated() => $pb.PbList<DeclineInvitationResponse>();
  @$core.pragma('dart2js:noInline')
  static DeclineInvitationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeclineInvitationResponse>(create);
  static DeclineInvitationResponse? _defaultInstance;
}

class RevokeInvitationRequest extends $pb.GeneratedMessage {
  factory RevokeInvitationRequest({
    $core.String? invitationId,
  }) {
    final $result = create();
    if (invitationId != null) {
      $result.invitationId = invitationId;
    }
    return $result;
  }
  RevokeInvitationRequest._() : super();
  factory RevokeInvitationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeInvitationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RevokeInvitationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'invitationId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevokeInvitationRequest clone() => RevokeInvitationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevokeInvitationRequest copyWith(void Function(RevokeInvitationRequest) updates) => super.copyWith((message) => updates(message as RevokeInvitationRequest)) as RevokeInvitationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevokeInvitationRequest create() => RevokeInvitationRequest._();
  RevokeInvitationRequest createEmptyInstance() => create();
  static $pb.PbList<RevokeInvitationRequest> createRepeated() => $pb.PbList<RevokeInvitationRequest>();
  @$core.pragma('dart2js:noInline')
  static RevokeInvitationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevokeInvitationRequest>(create);
  static RevokeInvitationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get invitationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set invitationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInvitationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInvitationId() => clearField(1);
}

class RevokeInvitationResponse extends $pb.GeneratedMessage {
  factory RevokeInvitationResponse() => create();
  RevokeInvitationResponse._() : super();
  factory RevokeInvitationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevokeInvitationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RevokeInvitationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevokeInvitationResponse clone() => RevokeInvitationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevokeInvitationResponse copyWith(void Function(RevokeInvitationResponse) updates) => super.copyWith((message) => updates(message as RevokeInvitationResponse)) as RevokeInvitationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevokeInvitationResponse create() => RevokeInvitationResponse._();
  RevokeInvitationResponse createEmptyInstance() => create();
  static $pb.PbList<RevokeInvitationResponse> createRepeated() => $pb.PbList<RevokeInvitationResponse>();
  @$core.pragma('dart2js:noInline')
  static RevokeInvitationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevokeInvitationResponse>(create);
  static RevokeInvitationResponse? _defaultInstance;
}

class CreatePersonalOrganizationRequest extends $pb.GeneratedMessage {
  factory CreatePersonalOrganizationRequest() => create();
  CreatePersonalOrganizationRequest._() : super();
  factory CreatePersonalOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePersonalOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePersonalOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePersonalOrganizationRequest clone() => CreatePersonalOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePersonalOrganizationRequest copyWith(void Function(CreatePersonalOrganizationRequest) updates) => super.copyWith((message) => updates(message as CreatePersonalOrganizationRequest)) as CreatePersonalOrganizationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePersonalOrganizationRequest create() => CreatePersonalOrganizationRequest._();
  CreatePersonalOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePersonalOrganizationRequest> createRepeated() => $pb.PbList<CreatePersonalOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePersonalOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePersonalOrganizationRequest>(create);
  static CreatePersonalOrganizationRequest? _defaultInstance;
}

class CreatePersonalOrganizationResponse extends $pb.GeneratedMessage {
  factory CreatePersonalOrganizationResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreatePersonalOrganizationResponse._() : super();
  factory CreatePersonalOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePersonalOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePersonalOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePersonalOrganizationResponse clone() => CreatePersonalOrganizationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePersonalOrganizationResponse copyWith(void Function(CreatePersonalOrganizationResponse) updates) => super.copyWith((message) => updates(message as CreatePersonalOrganizationResponse)) as CreatePersonalOrganizationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePersonalOrganizationResponse create() => CreatePersonalOrganizationResponse._();
  CreatePersonalOrganizationResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePersonalOrganizationResponse> createRepeated() => $pb.PbList<CreatePersonalOrganizationResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePersonalOrganizationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePersonalOrganizationResponse>(create);
  static CreatePersonalOrganizationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
