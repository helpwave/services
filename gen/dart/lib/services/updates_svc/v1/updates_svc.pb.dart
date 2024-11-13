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

/// A reduced event from our event store
class Event extends $pb.GeneratedMessage {
  factory Event({
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
  Event._() : super();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Event', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.updates_svc.v1'), createEmptyInstance: create)
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
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

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

class ReceiveUpdatesResponse extends $pb.GeneratedMessage {
  factory ReceiveUpdatesResponse({
    $fixnum.Int64? revision,
    Event? event,
  }) {
    final $result = create();
    if (revision != null) {
      $result.revision = revision;
    }
    if (event != null) {
      $result.event = event;
    }
    return $result;
  }
  ReceiveUpdatesResponse._() : super();
  factory ReceiveUpdatesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReceiveUpdatesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReceiveUpdatesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.updates_svc.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Event>(2, _omitFieldNames ? '' : 'event', subBuilder: Event.create)
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

  @$pb.TagNumber(1)
  $fixnum.Int64 get revision => $_getI64(0);
  @$pb.TagNumber(1)
  set revision($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRevision() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevision() => clearField(1);

  @$pb.TagNumber(2)
  Event get event => $_getN(1);
  @$pb.TagNumber(2)
  set event(Event v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvent() => clearField(2);
  @$pb.TagNumber(2)
  Event ensureEvent() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
