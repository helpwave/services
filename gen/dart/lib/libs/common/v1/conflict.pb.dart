//
//  Generated code. Do not modify.
//  source: libs/common/v1/conflict.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/any.pb.dart' as $20;

/// Conflicts are returned, if a request was made with a consistency token, and a conflict to the requested action was caused.
/// There are three states:
///  - WAS - the state expected to be the newest by the frontend as identified by the consistency token,
///  - WANT - the state resulting from applying the changes requested)
///  - IS - the true current state, which only differs from WAS if another action was performed since the client retrieved the WAS state
/// If WAS == IS, or WANT and IS are merge-able (e.g., requested action changes "name", and another action has changed "age"), no conflict arises.
/// Warning: If a previous action has deleted the resource, an error is raised, and no conflict returned.
class Conflict extends $pb.GeneratedMessage {
  factory Conflict({
    $core.Map<$core.String, AttributeConflict>? conflictingAttributes,
    $core.bool? historyMissing,
  }) {
    final $result = create();
    if (conflictingAttributes != null) {
      $result.conflictingAttributes.addAll(conflictingAttributes);
    }
    if (historyMissing != null) {
      $result.historyMissing = historyMissing;
    }
    return $result;
  }
  Conflict._() : super();
  factory Conflict.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Conflict.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Conflict', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.common.v1'), createEmptyInstance: create)
    ..m<$core.String, AttributeConflict>(1, _omitFieldNames ? '' : 'conflictingAttributes', entryClassName: 'Conflict.ConflictingAttributesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: AttributeConflict.create, valueDefaultOrMaker: AttributeConflict.getDefault, packageName: const $pb.PackageName('libs.common.v1'))
    ..aOB(2, _omitFieldNames ? '' : 'historyMissing')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Conflict clone() => Conflict()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Conflict copyWith(void Function(Conflict) updates) => super.copyWith((message) => updates(message as Conflict)) as Conflict;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Conflict create() => Conflict._();
  Conflict createEmptyInstance() => create();
  static $pb.PbList<Conflict> createRepeated() => $pb.PbList<Conflict>();
  @$core.pragma('dart2js:noInline')
  static Conflict getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Conflict>(create);
  static Conflict? _defaultInstance;

  ///  when history_missing is true, this map will contain elements, that might not have been updated since you have seen them last.
  ///  it is then on you to compare these against your view of the world
  ///
  ///  The key is the json-name of the field you tried to change, subkeys are split by dots ('.'), array elements are represented by the resources id:
  ///  e.g.: for the request: `{"description": "Conflict", "select_data": {"upsert_options": [{"id": "123", "name": "Conflict"}]}}`
  ///  this might be the conflict: `{"conflicting_attributes": {"description": ..., "select_data.upsert_options.123.name": ...}}`
  @$pb.TagNumber(1)
  $core.Map<$core.String, AttributeConflict> get conflictingAttributes => $_getMap(0);

  @$pb.TagNumber(2)
  $core.bool get historyMissing => $_getBF(1);
  @$pb.TagNumber(2)
  set historyMissing($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHistoryMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearHistoryMissing() => clearField(2);
}

class AttributeConflict extends $pb.GeneratedMessage {
  factory AttributeConflict({
    $20.Any? is_1,
    $20.Any? want,
  }) {
    final $result = create();
    if (is_1 != null) {
      $result.is_1 = is_1;
    }
    if (want != null) {
      $result.want = want;
    }
    return $result;
  }
  AttributeConflict._() : super();
  factory AttributeConflict.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttributeConflict.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttributeConflict', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.common.v1'), createEmptyInstance: create)
    ..aOM<$20.Any>(1, _omitFieldNames ? '' : 'is', subBuilder: $20.Any.create)
    ..aOM<$20.Any>(2, _omitFieldNames ? '' : 'want', subBuilder: $20.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AttributeConflict clone() => AttributeConflict()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AttributeConflict copyWith(void Function(AttributeConflict) updates) => super.copyWith((message) => updates(message as AttributeConflict)) as AttributeConflict;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttributeConflict create() => AttributeConflict._();
  AttributeConflict createEmptyInstance() => create();
  static $pb.PbList<AttributeConflict> createRepeated() => $pb.PbList<AttributeConflict>();
  @$core.pragma('dart2js:noInline')
  static AttributeConflict getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttributeConflict>(create);
  static AttributeConflict? _defaultInstance;

  /// CAUTION: may be missing, if the is underlying value is missing (e.g., unassigned beds)
  /// Enums are returned as Int32s
  /// Arrays are encoded as AnyArrays
  @$pb.TagNumber(1)
  $20.Any get is_1 => $_getN(0);
  @$pb.TagNumber(1)
  set is_1($20.Any v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIs_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearIs_1() => clearField(1);
  @$pb.TagNumber(1)
  $20.Any ensureIs_1() => $_ensure(0);

  /// CAUTION: may be missing, if the requested value is missing (e.g., unassignment of a bed)
  /// Enums are returned as Int32s
  /// Arrays are encoded as AnyArrays
  @$pb.TagNumber(2)
  $20.Any get want => $_getN(1);
  @$pb.TagNumber(2)
  set want($20.Any v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWant() => $_has(1);
  @$pb.TagNumber(2)
  void clearWant() => clearField(2);
  @$pb.TagNumber(2)
  $20.Any ensureWant() => $_ensure(1);
}

/// there is no native Any-compatible wrapper for arrays,
/// so here is one
class AnyArray extends $pb.GeneratedMessage {
  factory AnyArray({
    $core.Iterable<$20.Any>? elements,
  }) {
    final $result = create();
    if (elements != null) {
      $result.elements.addAll(elements);
    }
    return $result;
  }
  AnyArray._() : super();
  factory AnyArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnyArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnyArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.common.v1'), createEmptyInstance: create)
    ..pc<$20.Any>(1, _omitFieldNames ? '' : 'elements', $pb.PbFieldType.PM, subBuilder: $20.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnyArray clone() => AnyArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnyArray copyWith(void Function(AnyArray) updates) => super.copyWith((message) => updates(message as AnyArray)) as AnyArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnyArray create() => AnyArray._();
  AnyArray createEmptyInstance() => create();
  static $pb.PbList<AnyArray> createRepeated() => $pb.PbList<AnyArray>();
  @$core.pragma('dart2js:noInline')
  static AnyArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnyArray>(create);
  static AnyArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$20.Any> get elements => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
