//
//  Generated code. Do not modify.
//  source: libs/events/v1/organization_events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// TOPIC: ORGANIZATION_CREATED
class OrganizationCreatedEvent extends $pb.GeneratedMessage {
  factory OrganizationCreatedEvent({
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
  OrganizationCreatedEvent._() : super();
  factory OrganizationCreatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrganizationCreatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OrganizationCreatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.events.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrganizationCreatedEvent clone() => OrganizationCreatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrganizationCreatedEvent copyWith(void Function(OrganizationCreatedEvent) updates) => super.copyWith((message) => updates(message as OrganizationCreatedEvent)) as OrganizationCreatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OrganizationCreatedEvent create() => OrganizationCreatedEvent._();
  OrganizationCreatedEvent createEmptyInstance() => create();
  static $pb.PbList<OrganizationCreatedEvent> createRepeated() => $pb.PbList<OrganizationCreatedEvent>();
  @$core.pragma('dart2js:noInline')
  static OrganizationCreatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrganizationCreatedEvent>(create);
  static OrganizationCreatedEvent? _defaultInstance;

  /// the id of the created organization
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// the id of the user that created the organization
  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

/// TOPIC: ORGANIZATION_DELETED
class OrganizationDeletedEvent extends $pb.GeneratedMessage {
  factory OrganizationDeletedEvent({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  OrganizationDeletedEvent._() : super();
  factory OrganizationDeletedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrganizationDeletedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OrganizationDeletedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.events.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrganizationDeletedEvent clone() => OrganizationDeletedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrganizationDeletedEvent copyWith(void Function(OrganizationDeletedEvent) updates) => super.copyWith((message) => updates(message as OrganizationDeletedEvent)) as OrganizationDeletedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OrganizationDeletedEvent create() => OrganizationDeletedEvent._();
  OrganizationDeletedEvent createEmptyInstance() => create();
  static $pb.PbList<OrganizationDeletedEvent> createRepeated() => $pb.PbList<OrganizationDeletedEvent>();
  @$core.pragma('dart2js:noInline')
  static OrganizationDeletedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrganizationDeletedEvent>(create);
  static OrganizationDeletedEvent? _defaultInstance;

  /// the id of the deleted organization
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
