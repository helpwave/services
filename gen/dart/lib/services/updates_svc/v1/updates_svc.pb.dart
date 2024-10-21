//
//  Generated code. Do not modify.
//  source: services/updates_svc/v1/updates_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// An event that gets raised on non-event sourced entities
class EntityEvent extends $pb.GeneratedMessage {
  factory EntityEvent({
    $core.String? entityId,
  }) {
    final $result = create();
    if (entityId != null) {
      $result.entityId = entityId;
    }
    return $result;
  }
  EntityEvent._() : super();
  factory EntityEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntityEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EntityEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.updates_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'entityId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntityEvent clone() => EntityEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntityEvent copyWith(void Function(EntityEvent) updates) => super.copyWith((message) => updates(message as EntityEvent)) as EntityEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityEvent create() => EntityEvent._();
  EntityEvent createEmptyInstance() => create();
  static $pb.PbList<EntityEvent> createRepeated() => $pb.PbList<EntityEvent>();
  @$core.pragma('dart2js:noInline')
  static EntityEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntityEvent>(create);
  static EntityEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set entityId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntityId() => clearField(1);
}

/// An event that gets raised for event sourced entities
class DomainEvent extends $pb.GeneratedMessage {
  factory DomainEvent({
    $core.String? eventId,
    $core.String? eventType,
    $core.String? aggregateId,
    $core.String? aggregateType,
  }) {
    final $result = create();
    if (eventId != null) {
      $result.eventId = eventId;
    }
    if (eventType != null) {
      $result.eventType = eventType;
    }
    if (aggregateId != null) {
      $result.aggregateId = aggregateId;
    }
    if (aggregateType != null) {
      $result.aggregateType = aggregateType;
    }
    return $result;
  }
  DomainEvent._() : super();
  factory DomainEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DomainEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DomainEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.updates_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'eventId')
    ..aOS(2, _omitFieldNames ? '' : 'eventType')
    ..aOS(3, _omitFieldNames ? '' : 'aggregateId')
    ..aOS(4, _omitFieldNames ? '' : 'aggregateType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DomainEvent clone() => DomainEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DomainEvent copyWith(void Function(DomainEvent) updates) => super.copyWith((message) => updates(message as DomainEvent)) as DomainEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DomainEvent create() => DomainEvent._();
  DomainEvent createEmptyInstance() => create();
  static $pb.PbList<DomainEvent> createRepeated() => $pb.PbList<DomainEvent>();
  @$core.pragma('dart2js:noInline')
  static DomainEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DomainEvent>(create);
  static DomainEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get eventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set eventId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get eventType => $_getSZ(1);
  @$pb.TagNumber(2)
  set eventType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventType() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get aggregateId => $_getSZ(2);
  @$pb.TagNumber(3)
  set aggregateId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAggregateId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAggregateId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get aggregateType => $_getSZ(3);
  @$pb.TagNumber(4)
  set aggregateType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAggregateType() => $_has(3);
  @$pb.TagNumber(4)
  void clearAggregateType() => clearField(4);
}

class ReceiveUpdatesRequest extends $pb.GeneratedMessage {
  factory ReceiveUpdatesRequest({
    $fixnum.Int64? revision,
  }) {
    final $result = create();
    if (revision != null) {
      $result.revision = revision;
    }
    return $result;
  }
  ReceiveUpdatesRequest._() : super();
  factory ReceiveUpdatesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReceiveUpdatesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReceiveUpdatesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.updates_svc.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReceiveUpdatesRequest clone() => ReceiveUpdatesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReceiveUpdatesRequest copyWith(void Function(ReceiveUpdatesRequest) updates) => super.copyWith((message) => updates(message as ReceiveUpdatesRequest)) as ReceiveUpdatesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReceiveUpdatesRequest create() => ReceiveUpdatesRequest._();
  ReceiveUpdatesRequest createEmptyInstance() => create();
  static $pb.PbList<ReceiveUpdatesRequest> createRepeated() => $pb.PbList<ReceiveUpdatesRequest>();
  @$core.pragma('dart2js:noInline')
  static ReceiveUpdatesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReceiveUpdatesRequest>(create);
  static ReceiveUpdatesRequest? _defaultInstance;

  /// If your stream gets interrupted, you can pass your last
  /// received revision to start receiving events at this revision.
  @$pb.TagNumber(1)
  $fixnum.Int64 get revision => $_getI64(0);
  @$pb.TagNumber(1)
  set revision($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRevision() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevision() => clearField(1);
}

enum ReceiveUpdatesResponse_Event {
  entityEvent, 
  domainEvent, 
  notSet
}

class ReceiveUpdatesResponse extends $pb.GeneratedMessage {
  factory ReceiveUpdatesResponse({
    $fixnum.Int64? revision,
    EntityEvent? entityEvent,
    DomainEvent? domainEvent,
  }) {
    final $result = create();
    if (revision != null) {
      $result.revision = revision;
    }
    if (entityEvent != null) {
      $result.entityEvent = entityEvent;
    }
    if (domainEvent != null) {
      $result.domainEvent = domainEvent;
    }
    return $result;
  }
  ReceiveUpdatesResponse._() : super();
  factory ReceiveUpdatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReceiveUpdatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ReceiveUpdatesResponse_Event> _ReceiveUpdatesResponse_EventByTag = {
    2 : ReceiveUpdatesResponse_Event.entityEvent,
    3 : ReceiveUpdatesResponse_Event.domainEvent,
    0 : ReceiveUpdatesResponse_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReceiveUpdatesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.updates_svc.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<EntityEvent>(2, _omitFieldNames ? '' : 'entityEvent', subBuilder: EntityEvent.create)
    ..aOM<DomainEvent>(3, _omitFieldNames ? '' : 'domainEvent', subBuilder: DomainEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReceiveUpdatesResponse clone() => ReceiveUpdatesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReceiveUpdatesResponse copyWith(void Function(ReceiveUpdatesResponse) updates) => super.copyWith((message) => updates(message as ReceiveUpdatesResponse)) as ReceiveUpdatesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReceiveUpdatesResponse create() => ReceiveUpdatesResponse._();
  ReceiveUpdatesResponse createEmptyInstance() => create();
  static $pb.PbList<ReceiveUpdatesResponse> createRepeated() => $pb.PbList<ReceiveUpdatesResponse>();
  @$core.pragma('dart2js:noInline')
  static ReceiveUpdatesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReceiveUpdatesResponse>(create);
  static ReceiveUpdatesResponse? _defaultInstance;

  ReceiveUpdatesResponse_Event whichEvent() => _ReceiveUpdatesResponse_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get revision => $_getI64(0);
  @$pb.TagNumber(1)
  set revision($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRevision() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevision() => clearField(1);

  @$pb.TagNumber(2)
  EntityEvent get entityEvent => $_getN(1);
  @$pb.TagNumber(2)
  set entityEvent(EntityEvent v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntityEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntityEvent() => clearField(2);
  @$pb.TagNumber(2)
  EntityEvent ensureEntityEvent() => $_ensure(1);

  @$pb.TagNumber(3)
  DomainEvent get domainEvent => $_getN(2);
  @$pb.TagNumber(3)
  set domainEvent(DomainEvent v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDomainEvent() => $_has(2);
  @$pb.TagNumber(3)
  void clearDomainEvent() => clearField(3);
  @$pb.TagNumber(3)
  DomainEvent ensureDomainEvent() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
