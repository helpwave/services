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
  }) {
    final $result = create();
    if (conflictingAttributes != null) {
      $result.conflictingAttributes.addAll(conflictingAttributes);
    }
    return $result;
  }
  Conflict._() : super();
  factory Conflict.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Conflict.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Conflict', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.common.v1'), createEmptyInstance: create)
    ..m<$core.String, AttributeConflict>(1, _omitFieldNames ? '' : 'conflictingAttributes', entryClassName: 'Conflict.ConflictingAttributesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: AttributeConflict.create, valueDefaultOrMaker: AttributeConflict.getDefault, packageName: const $pb.PackageName('libs.common.v1'))
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

  /// might be empty, in that case we don't have the history to calculate the conflicting attributes
  @$pb.TagNumber(1)
  $core.Map<$core.String, AttributeConflict> get conflictingAttributes => $_getMap(0);
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
