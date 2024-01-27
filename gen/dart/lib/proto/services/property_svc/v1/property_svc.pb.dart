//
//  Generated code. Do not modify.
//  source: proto/services/property_svc/v1/property_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'property_svc.pbenum.dart';

export 'property_svc.pbenum.dart';

///
///  CreateProperty
class CreatePropertyRequest extends $pb.GeneratedMessage {
  factory CreatePropertyRequest({
    $core.String? subjectId,
    $core.String? subjectType,
    FieldType? fieldType,
    $core.String? name,
  }) {
    final $result = create();
    if (subjectId != null) {
      $result.subjectId = subjectId;
    }
    if (subjectType != null) {
      $result.subjectType = subjectType;
    }
    if (fieldType != null) {
      $result.fieldType = fieldType;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreatePropertyRequest._() : super();
  factory CreatePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subjectId')
    ..aOS(2, _omitFieldNames ? '' : 'subjectType')
    ..e<FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: FieldType.FIELD_TYPE_TEXT, valueOf: FieldType.valueOf, enumValues: FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest clone() => CreatePropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest copyWith(void Function(CreatePropertyRequest) updates) => super.copyWith((message) => updates(message as CreatePropertyRequest)) as CreatePropertyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest create() => CreatePropertyRequest._();
  CreatePropertyRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePropertyRequest> createRepeated() => $pb.PbList<CreatePropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertyRequest>(create);
  static CreatePropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subjectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set subjectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subjectType => $_getSZ(1);
  @$pb.TagNumber(2)
  set subjectType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType(FieldType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldType() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);
}

class CreatePropertyResponse extends $pb.GeneratedMessage {
  factory CreatePropertyResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreatePropertyResponse._() : super();
  factory CreatePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertyResponse clone() => CreatePropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertyResponse copyWith(void Function(CreatePropertyResponse) updates) => super.copyWith((message) => updates(message as CreatePropertyResponse)) as CreatePropertyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePropertyResponse create() => CreatePropertyResponse._();
  CreatePropertyResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePropertyResponse> createRepeated() => $pb.PbList<CreatePropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertyResponse>(create);
  static CreatePropertyResponse? _defaultInstance;

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
