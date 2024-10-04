//
//  Generated code. Do not modify.
//  source: services/ory_svc/v1/ory_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AfterRegistrationWebhookPayloadRequest extends $pb.GeneratedMessage {
  factory AfterRegistrationWebhookPayloadRequest({
    $core.String? userId,
    $core.String? email,
    $core.String? nickname,
    $core.String? name,
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
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  AfterRegistrationWebhookPayloadRequest._() : super();
  factory AfterRegistrationWebhookPayloadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AfterRegistrationWebhookPayloadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AfterRegistrationWebhookPayloadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.ory_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'nickname')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AfterRegistrationWebhookPayloadRequest clone() => AfterRegistrationWebhookPayloadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AfterRegistrationWebhookPayloadRequest copyWith(void Function(AfterRegistrationWebhookPayloadRequest) updates) => super.copyWith((message) => updates(message as AfterRegistrationWebhookPayloadRequest)) as AfterRegistrationWebhookPayloadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AfterRegistrationWebhookPayloadRequest create() => AfterRegistrationWebhookPayloadRequest._();
  AfterRegistrationWebhookPayloadRequest createEmptyInstance() => create();
  static $pb.PbList<AfterRegistrationWebhookPayloadRequest> createRepeated() => $pb.PbList<AfterRegistrationWebhookPayloadRequest>();
  @$core.pragma('dart2js:noInline')
  static AfterRegistrationWebhookPayloadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AfterRegistrationWebhookPayloadRequest>(create);
  static AfterRegistrationWebhookPayloadRequest? _defaultInstance;

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
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);
}

class AfterSettingsWebhookPayload extends $pb.GeneratedMessage {
  factory AfterSettingsWebhookPayload({
    $core.String? userId,
    $core.String? email,
    $core.String? nickname,
    $core.String? name,
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
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  AfterSettingsWebhookPayload._() : super();
  factory AfterSettingsWebhookPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AfterSettingsWebhookPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AfterSettingsWebhookPayload', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.ory_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'nickname')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AfterSettingsWebhookPayload clone() => AfterSettingsWebhookPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AfterSettingsWebhookPayload copyWith(void Function(AfterSettingsWebhookPayload) updates) => super.copyWith((message) => updates(message as AfterSettingsWebhookPayload)) as AfterSettingsWebhookPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AfterSettingsWebhookPayload create() => AfterSettingsWebhookPayload._();
  AfterSettingsWebhookPayload createEmptyInstance() => create();
  static $pb.PbList<AfterSettingsWebhookPayload> createRepeated() => $pb.PbList<AfterSettingsWebhookPayload>();
  @$core.pragma('dart2js:noInline')
  static AfterSettingsWebhookPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AfterSettingsWebhookPayload>(create);
  static AfterSettingsWebhookPayload? _defaultInstance;

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
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
