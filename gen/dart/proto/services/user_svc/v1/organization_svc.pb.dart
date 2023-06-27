//
//  Generated code. Do not modify.
//  source: proto/services/user_svc/v1/organization_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateOrganizationRequest extends $pb.GeneratedMessage {
  factory CreateOrganizationRequest() => create();
  CreateOrganizationRequest._() : super();
  factory CreateOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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
  factory CreateOrganizationResponse() => create();
  CreateOrganizationResponse._() : super();
  factory CreateOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

class CreateOrganizationForUserRequest extends $pb.GeneratedMessage {
  factory CreateOrganizationForUserRequest() => create();
  CreateOrganizationForUserRequest._() : super();
  factory CreateOrganizationForUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateOrganizationForUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateOrganizationForUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'longName')
    ..aOS(2, _omitFieldNames ? '' : 'shortName')
    ..aOS(3, _omitFieldNames ? '' : 'contactEmail')
    ..aOB(4, _omitFieldNames ? '' : 'isPersonal')
    ..aOS(5, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateOrganizationForUserRequest clone() => CreateOrganizationForUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateOrganizationForUserRequest copyWith(void Function(CreateOrganizationForUserRequest) updates) => super.copyWith((message) => updates(message as CreateOrganizationForUserRequest)) as CreateOrganizationForUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateOrganizationForUserRequest create() => CreateOrganizationForUserRequest._();
  CreateOrganizationForUserRequest createEmptyInstance() => create();
  static $pb.PbList<CreateOrganizationForUserRequest> createRepeated() => $pb.PbList<CreateOrganizationForUserRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateOrganizationForUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateOrganizationForUserRequest>(create);
  static CreateOrganizationForUserRequest? _defaultInstance;

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

  @$pb.TagNumber(5)
  $core.String get userId => $_getSZ(4);
  @$pb.TagNumber(5)
  set userId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserId() => clearField(5);
}

class CreateOrganizationForUserResponse extends $pb.GeneratedMessage {
  factory CreateOrganizationForUserResponse() => create();
  CreateOrganizationForUserResponse._() : super();
  factory CreateOrganizationForUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateOrganizationForUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateOrganizationForUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateOrganizationForUserResponse clone() => CreateOrganizationForUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateOrganizationForUserResponse copyWith(void Function(CreateOrganizationForUserResponse) updates) => super.copyWith((message) => updates(message as CreateOrganizationForUserResponse)) as CreateOrganizationForUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateOrganizationForUserResponse create() => CreateOrganizationForUserResponse._();
  CreateOrganizationForUserResponse createEmptyInstance() => create();
  static $pb.PbList<CreateOrganizationForUserResponse> createRepeated() => $pb.PbList<CreateOrganizationForUserResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateOrganizationForUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateOrganizationForUserResponse>(create);
  static CreateOrganizationForUserResponse? _defaultInstance;

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
  factory GetOrganizationMember() => create();
  GetOrganizationMember._() : super();
  factory GetOrganizationMember.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationMember.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationMember', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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
  factory GetOrganizationRequest() => create();
  GetOrganizationRequest._() : super();
  factory GetOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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
  factory GetOrganizationResponse() => create();
  GetOrganizationResponse._() : super();
  factory GetOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

class GetOrganizationsByUserMember extends $pb.GeneratedMessage {
  factory GetOrganizationsByUserMember() => create();
  GetOrganizationsByUserMember._() : super();
  factory GetOrganizationsByUserMember.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsByUserMember.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsByUserMember', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserMember clone() => GetOrganizationsByUserMember()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOrganizationsByUserMember copyWith(void Function(GetOrganizationsByUserMember) updates) => super.copyWith((message) => updates(message as GetOrganizationsByUserMember)) as GetOrganizationsByUserMember;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserMember create() => GetOrganizationsByUserMember._();
  GetOrganizationsByUserMember createEmptyInstance() => create();
  static $pb.PbList<GetOrganizationsByUserMember> createRepeated() => $pb.PbList<GetOrganizationsByUserMember>();
  @$core.pragma('dart2js:noInline')
  static GetOrganizationsByUserMember getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOrganizationsByUserMember>(create);
  static GetOrganizationsByUserMember? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetOrganizationsByUserRequest extends $pb.GeneratedMessage {
  factory GetOrganizationsByUserRequest() => create();
  GetOrganizationsByUserRequest._() : super();
  factory GetOrganizationsByUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsByUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsByUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

class GetOrganizationsByUserResponse extends $pb.GeneratedMessage {
  factory GetOrganizationsByUserResponse() => create();
  GetOrganizationsByUserResponse._() : super();
  factory GetOrganizationsByUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOrganizationsByUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOrganizationsByUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'longName')
    ..aOS(3, _omitFieldNames ? '' : 'shortName')
    ..aOS(4, _omitFieldNames ? '' : 'contactEmail')
    ..aOS(5, _omitFieldNames ? '' : 'avatarUrl')
    ..aOB(6, _omitFieldNames ? '' : 'isPersonal')
    ..pc<GetOrganizationsByUserMember>(7, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM, subBuilder: GetOrganizationsByUserMember.create)
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
  $core.List<GetOrganizationsByUserMember> get members => $_getList(6);
}

class UpdateOrganizationRequest extends $pb.GeneratedMessage {
  factory UpdateOrganizationRequest() => create();
  UpdateOrganizationRequest._() : super();
  factory UpdateOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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
  factory DeleteOrganizationRequest() => create();
  DeleteOrganizationRequest._() : super();
  factory DeleteOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteOrganizationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteOrganizationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

class AddMemberRequest extends $pb.GeneratedMessage {
  factory AddMemberRequest() => create();
  AddMemberRequest._() : super();
  factory AddMemberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddMemberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddMemberRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddMemberResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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
  factory RemoveMemberRequest() => create();
  RemoveMemberRequest._() : super();
  factory RemoveMemberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveMemberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveMemberRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveMemberResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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
  factory InviteMemberRequest() => create();
  InviteMemberRequest._() : super();
  factory InviteMemberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteMemberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteMemberRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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
  factory InviteMemberResponse() => create();
  InviteMemberResponse._() : super();
  factory InviteMemberResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InviteMemberResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InviteMemberResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

class AcceptInvitationRequest extends $pb.GeneratedMessage {
  factory AcceptInvitationRequest() => create();
  AcceptInvitationRequest._() : super();
  factory AcceptInvitationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcceptInvitationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AcceptInvitationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AcceptInvitationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

class GetInvitationsByUserRequest extends $pb.GeneratedMessage {
  factory GetInvitationsByUserRequest() => create();
  GetInvitationsByUserRequest._() : super();
  factory GetInvitationsByUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'state')
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
  $core.String get state => $_getSZ(0);
  @$pb.TagNumber(1)
  set state($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

class GetInvitationsByUserResponse_Invitation extends $pb.GeneratedMessage {
  factory GetInvitationsByUserResponse_Invitation() => create();
  GetInvitationsByUserResponse_Invitation._() : super();
  factory GetInvitationsByUserResponse_Invitation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByUserResponse_Invitation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByUserResponse.Invitation', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'organizationId')
    ..aOS(4, _omitFieldNames ? '' : 'state')
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
  $core.String get organizationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set organizationId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrganizationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrganizationId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get state => $_getSZ(3);
  @$pb.TagNumber(4)
  set state($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => clearField(4);
}

class GetInvitationsByUserResponse extends $pb.GeneratedMessage {
  factory GetInvitationsByUserResponse() => create();
  GetInvitationsByUserResponse._() : super();
  factory GetInvitationsByUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInvitationsByUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInvitationsByUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

class DeclineInvitationRequest extends $pb.GeneratedMessage {
  factory DeclineInvitationRequest() => create();
  DeclineInvitationRequest._() : super();
  factory DeclineInvitationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeclineInvitationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeclineInvitationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeclineInvitationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.user_svc.v1'), createEmptyInstance: create)
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

class OrganizationServiceApi {
  $pb.RpcClient _client;
  OrganizationServiceApi(this._client);

  $async.Future<CreateOrganizationResponse> createOrganization($pb.ClientContext? ctx, CreateOrganizationRequest request) =>
    _client.invoke<CreateOrganizationResponse>(ctx, 'OrganizationService', 'CreateOrganization', request, CreateOrganizationResponse())
  ;
  $async.Future<CreateOrganizationForUserResponse> createOrganizationForUser($pb.ClientContext? ctx, CreateOrganizationForUserRequest request) =>
    _client.invoke<CreateOrganizationForUserResponse>(ctx, 'OrganizationService', 'CreateOrganizationForUser', request, CreateOrganizationForUserResponse())
  ;
  $async.Future<GetOrganizationResponse> getOrganization($pb.ClientContext? ctx, GetOrganizationRequest request) =>
    _client.invoke<GetOrganizationResponse>(ctx, 'OrganizationService', 'GetOrganization', request, GetOrganizationResponse())
  ;
  $async.Future<GetOrganizationsByUserResponse> getOrganizationsByUser($pb.ClientContext? ctx, GetOrganizationsByUserRequest request) =>
    _client.invoke<GetOrganizationsByUserResponse>(ctx, 'OrganizationService', 'GetOrganizationsByUser', request, GetOrganizationsByUserResponse())
  ;
  $async.Future<UpdateOrganizationResponse> updateOrganization($pb.ClientContext? ctx, UpdateOrganizationRequest request) =>
    _client.invoke<UpdateOrganizationResponse>(ctx, 'OrganizationService', 'UpdateOrganization', request, UpdateOrganizationResponse())
  ;
  $async.Future<DeleteOrganizationResponse> deleteOrganization($pb.ClientContext? ctx, DeleteOrganizationRequest request) =>
    _client.invoke<DeleteOrganizationResponse>(ctx, 'OrganizationService', 'DeleteOrganization', request, DeleteOrganizationResponse())
  ;
  $async.Future<AddMemberResponse> addMember($pb.ClientContext? ctx, AddMemberRequest request) =>
    _client.invoke<AddMemberResponse>(ctx, 'OrganizationService', 'AddMember', request, AddMemberResponse())
  ;
  $async.Future<RemoveMemberResponse> removeMember($pb.ClientContext? ctx, RemoveMemberRequest request) =>
    _client.invoke<RemoveMemberResponse>(ctx, 'OrganizationService', 'RemoveMember', request, RemoveMemberResponse())
  ;
  $async.Future<InviteMemberResponse> inviteMember($pb.ClientContext? ctx, InviteMemberRequest request) =>
    _client.invoke<InviteMemberResponse>(ctx, 'OrganizationService', 'InviteMember', request, InviteMemberResponse())
  ;
  $async.Future<AcceptInvitationResponse> acceptInvitation($pb.ClientContext? ctx, AcceptInvitationRequest request) =>
    _client.invoke<AcceptInvitationResponse>(ctx, 'OrganizationService', 'AcceptInvitation', request, AcceptInvitationResponse())
  ;
  $async.Future<GetInvitationsByUserResponse> getInvitationsByUser($pb.ClientContext? ctx, GetInvitationsByUserRequest request) =>
    _client.invoke<GetInvitationsByUserResponse>(ctx, 'OrganizationService', 'GetInvitationsByUser', request, GetInvitationsByUserResponse())
  ;
  $async.Future<DeclineInvitationResponse> declineInvitation($pb.ClientContext? ctx, DeclineInvitationRequest request) =>
    _client.invoke<DeclineInvitationResponse>(ctx, 'OrganizationService', 'DeclineInvitation', request, DeclineInvitationResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
