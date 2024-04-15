//
//  Generated code. Do not modify.
//  source: proto/services/property_svc/v1/property_value_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $16;
import 'types.pb.dart' as $15;
import 'types.pbenum.dart' as $15;

enum AttachPropertyValueRequest_Value {
  textValue, 
  numberValue, 
  boolValue, 
  dateValue, 
  dateTimeValue, 
  selectValue, 
  notSet
}

///
///  AttachPropertyValueRequest
class AttachPropertyValueRequest extends $pb.GeneratedMessage {
  factory AttachPropertyValueRequest({
    $core.String? subjectId,
    $core.String? propertyId,
    $core.String? textValue,
    $core.double? numberValue,
    $core.bool? boolValue,
    $15.Date? dateValue,
    $16.Timestamp? dateTimeValue,
    $core.String? selectValue,
  }) {
    final $result = create();
    if (subjectId != null) {
      $result.subjectId = subjectId;
    }
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    if (textValue != null) {
      $result.textValue = textValue;
    }
    if (numberValue != null) {
      $result.numberValue = numberValue;
    }
    if (boolValue != null) {
      $result.boolValue = boolValue;
    }
    if (dateValue != null) {
      $result.dateValue = dateValue;
    }
    if (dateTimeValue != null) {
      $result.dateTimeValue = dateTimeValue;
    }
    if (selectValue != null) {
      $result.selectValue = selectValue;
    }
    return $result;
  }
  AttachPropertyValueRequest._() : super();
  factory AttachPropertyValueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachPropertyValueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AttachPropertyValueRequest_Value> _AttachPropertyValueRequest_ValueByTag = {
    4 : AttachPropertyValueRequest_Value.textValue,
    5 : AttachPropertyValueRequest_Value.numberValue,
    6 : AttachPropertyValueRequest_Value.boolValue,
    7 : AttachPropertyValueRequest_Value.dateValue,
    8 : AttachPropertyValueRequest_Value.dateTimeValue,
    9 : AttachPropertyValueRequest_Value.selectValue,
    0 : AttachPropertyValueRequest_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachPropertyValueRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8, 9])
    ..aOS(1, _omitFieldNames ? '' : 'subjectId')
    ..aOS(2, _omitFieldNames ? '' : 'propertyId')
    ..aOS(4, _omitFieldNames ? '' : 'textValue')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'numberValue', $pb.PbFieldType.OD)
    ..aOB(6, _omitFieldNames ? '' : 'boolValue')
    ..aOM<$15.Date>(7, _omitFieldNames ? '' : 'dateValue', subBuilder: $15.Date.create)
    ..aOM<$16.Timestamp>(8, _omitFieldNames ? '' : 'dateTimeValue', subBuilder: $16.Timestamp.create)
    ..aOS(9, _omitFieldNames ? '' : 'selectValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AttachPropertyValueRequest clone() => AttachPropertyValueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AttachPropertyValueRequest copyWith(void Function(AttachPropertyValueRequest) updates) => super.copyWith((message) => updates(message as AttachPropertyValueRequest)) as AttachPropertyValueRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttachPropertyValueRequest create() => AttachPropertyValueRequest._();
  AttachPropertyValueRequest createEmptyInstance() => create();
  static $pb.PbList<AttachPropertyValueRequest> createRepeated() => $pb.PbList<AttachPropertyValueRequest>();
  @$core.pragma('dart2js:noInline')
  static AttachPropertyValueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttachPropertyValueRequest>(create);
  static AttachPropertyValueRequest? _defaultInstance;

  AttachPropertyValueRequest_Value whichValue() => _AttachPropertyValueRequest_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get subjectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set subjectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get propertyId => $_getSZ(1);
  @$pb.TagNumber(2)
  set propertyId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyId() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get textValue => $_getSZ(2);
  @$pb.TagNumber(4)
  set textValue($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasTextValue() => $_has(2);
  @$pb.TagNumber(4)
  void clearTextValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get numberValue => $_getN(3);
  @$pb.TagNumber(5)
  set numberValue($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumberValue() => $_has(3);
  @$pb.TagNumber(5)
  void clearNumberValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get boolValue => $_getBF(4);
  @$pb.TagNumber(6)
  set boolValue($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasBoolValue() => $_has(4);
  @$pb.TagNumber(6)
  void clearBoolValue() => clearField(6);

  @$pb.TagNumber(7)
  $15.Date get dateValue => $_getN(5);
  @$pb.TagNumber(7)
  set dateValue($15.Date v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasDateValue() => $_has(5);
  @$pb.TagNumber(7)
  void clearDateValue() => clearField(7);
  @$pb.TagNumber(7)
  $15.Date ensureDateValue() => $_ensure(5);

  @$pb.TagNumber(8)
  $16.Timestamp get dateTimeValue => $_getN(6);
  @$pb.TagNumber(8)
  set dateTimeValue($16.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDateTimeValue() => $_has(6);
  @$pb.TagNumber(8)
  void clearDateTimeValue() => clearField(8);
  @$pb.TagNumber(8)
  $16.Timestamp ensureDateTimeValue() => $_ensure(6);

  @$pb.TagNumber(9)
  $core.String get selectValue => $_getSZ(7);
  @$pb.TagNumber(9)
  set selectValue($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasSelectValue() => $_has(7);
  @$pb.TagNumber(9)
  void clearSelectValue() => clearField(9);
}

class AttachPropertyValueResponse extends $pb.GeneratedMessage {
  factory AttachPropertyValueResponse({
    $core.String? propertyValueId,
  }) {
    final $result = create();
    if (propertyValueId != null) {
      $result.propertyValueId = propertyValueId;
    }
    return $result;
  }
  AttachPropertyValueResponse._() : super();
  factory AttachPropertyValueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachPropertyValueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachPropertyValueResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'propertyValueId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AttachPropertyValueResponse clone() => AttachPropertyValueResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AttachPropertyValueResponse copyWith(void Function(AttachPropertyValueResponse) updates) => super.copyWith((message) => updates(message as AttachPropertyValueResponse)) as AttachPropertyValueResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttachPropertyValueResponse create() => AttachPropertyValueResponse._();
  AttachPropertyValueResponse createEmptyInstance() => create();
  static $pb.PbList<AttachPropertyValueResponse> createRepeated() => $pb.PbList<AttachPropertyValueResponse>();
  @$core.pragma('dart2js:noInline')
  static AttachPropertyValueResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttachPropertyValueResponse>(create);
  static AttachPropertyValueResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get propertyValueId => $_getSZ(0);
  @$pb.TagNumber(1)
  set propertyValueId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyValueId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyValueId() => clearField(1);
}

///
///  GetAttachedPropertyValue
class GetAttachedPropertyValuesRequest extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesRequest({
    $core.String? subjectId,
  }) {
    final $result = create();
    if (subjectId != null) {
      $result.subjectId = subjectId;
    }
    return $result;
  }
  GetAttachedPropertyValuesRequest._() : super();
  factory GetAttachedPropertyValuesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subjectId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesRequest clone() => GetAttachedPropertyValuesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesRequest copyWith(void Function(GetAttachedPropertyValuesRequest) updates) => super.copyWith((message) => updates(message as GetAttachedPropertyValuesRequest)) as GetAttachedPropertyValuesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesRequest create() => GetAttachedPropertyValuesRequest._();
  GetAttachedPropertyValuesRequest createEmptyInstance() => create();
  static $pb.PbList<GetAttachedPropertyValuesRequest> createRepeated() => $pb.PbList<GetAttachedPropertyValuesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAttachedPropertyValuesRequest>(create);
  static GetAttachedPropertyValuesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subjectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set subjectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubjectId() => clearField(1);
}

enum GetAttachedPropertyValuesResponse_Value_Value {
  textValue, 
  numberValue, 
  boolValue, 
  dateValue, 
  dateTimeValue, 
  selectValue, 
  notSet
}

class GetAttachedPropertyValuesResponse_Value extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesResponse_Value({
    $core.String? propertyId,
    $15.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.String? textValue,
    $core.double? numberValue,
    $core.bool? boolValue,
    $15.Date? dateValue,
    $16.Timestamp? dateTimeValue,
    $core.String? selectValue,
  }) {
    final $result = create();
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    if (fieldType != null) {
      $result.fieldType = fieldType;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (isArchived != null) {
      $result.isArchived = isArchived;
    }
    if (textValue != null) {
      $result.textValue = textValue;
    }
    if (numberValue != null) {
      $result.numberValue = numberValue;
    }
    if (boolValue != null) {
      $result.boolValue = boolValue;
    }
    if (dateValue != null) {
      $result.dateValue = dateValue;
    }
    if (dateTimeValue != null) {
      $result.dateTimeValue = dateTimeValue;
    }
    if (selectValue != null) {
      $result.selectValue = selectValue;
    }
    return $result;
  }
  GetAttachedPropertyValuesResponse_Value._() : super();
  factory GetAttachedPropertyValuesResponse_Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesResponse_Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetAttachedPropertyValuesResponse_Value_Value> _GetAttachedPropertyValuesResponse_Value_ValueByTag = {
    9 : GetAttachedPropertyValuesResponse_Value_Value.textValue,
    10 : GetAttachedPropertyValuesResponse_Value_Value.numberValue,
    11 : GetAttachedPropertyValuesResponse_Value_Value.boolValue,
    12 : GetAttachedPropertyValuesResponse_Value_Value.dateValue,
    13 : GetAttachedPropertyValuesResponse_Value_Value.dateTimeValue,
    14 : GetAttachedPropertyValuesResponse_Value_Value.selectValue,
    0 : GetAttachedPropertyValuesResponse_Value_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse.Value', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [9, 10, 11, 12, 13, 14])
    ..aOS(1, _omitFieldNames ? '' : 'propertyId')
    ..e<$15.FieldType>(2, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $15.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $15.FieldType.valueOf, enumValues: $15.FieldType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOB(5, _omitFieldNames ? '' : 'isArchived')
    ..aOS(9, _omitFieldNames ? '' : 'textValue')
    ..a<$core.double>(10, _omitFieldNames ? '' : 'numberValue', $pb.PbFieldType.OD)
    ..aOB(11, _omitFieldNames ? '' : 'boolValue')
    ..aOM<$15.Date>(12, _omitFieldNames ? '' : 'dateValue', subBuilder: $15.Date.create)
    ..aOM<$16.Timestamp>(13, _omitFieldNames ? '' : 'dateTimeValue', subBuilder: $16.Timestamp.create)
    ..aOS(14, _omitFieldNames ? '' : 'selectValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse_Value clone() => GetAttachedPropertyValuesResponse_Value()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse_Value copyWith(void Function(GetAttachedPropertyValuesResponse_Value) updates) => super.copyWith((message) => updates(message as GetAttachedPropertyValuesResponse_Value)) as GetAttachedPropertyValuesResponse_Value;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse_Value create() => GetAttachedPropertyValuesResponse_Value._();
  GetAttachedPropertyValuesResponse_Value createEmptyInstance() => create();
  static $pb.PbList<GetAttachedPropertyValuesResponse_Value> createRepeated() => $pb.PbList<GetAttachedPropertyValuesResponse_Value>();
  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse_Value getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAttachedPropertyValuesResponse_Value>(create);
  static GetAttachedPropertyValuesResponse_Value? _defaultInstance;

  GetAttachedPropertyValuesResponse_Value_Value whichValue() => _GetAttachedPropertyValuesResponse_Value_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get propertyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set propertyId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyId() => clearField(1);

  @$pb.TagNumber(2)
  $15.FieldType get fieldType => $_getN(1);
  @$pb.TagNumber(2)
  set fieldType($15.FieldType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldType() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isArchived => $_getBF(4);
  @$pb.TagNumber(5)
  set isArchived($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsArchived() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsArchived() => clearField(5);

  @$pb.TagNumber(9)
  $core.String get textValue => $_getSZ(5);
  @$pb.TagNumber(9)
  set textValue($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(9)
  $core.bool hasTextValue() => $_has(5);
  @$pb.TagNumber(9)
  void clearTextValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get numberValue => $_getN(6);
  @$pb.TagNumber(10)
  set numberValue($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasNumberValue() => $_has(6);
  @$pb.TagNumber(10)
  void clearNumberValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get boolValue => $_getBF(7);
  @$pb.TagNumber(11)
  set boolValue($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasBoolValue() => $_has(7);
  @$pb.TagNumber(11)
  void clearBoolValue() => clearField(11);

  @$pb.TagNumber(12)
  $15.Date get dateValue => $_getN(8);
  @$pb.TagNumber(12)
  set dateValue($15.Date v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasDateValue() => $_has(8);
  @$pb.TagNumber(12)
  void clearDateValue() => clearField(12);
  @$pb.TagNumber(12)
  $15.Date ensureDateValue() => $_ensure(8);

  @$pb.TagNumber(13)
  $16.Timestamp get dateTimeValue => $_getN(9);
  @$pb.TagNumber(13)
  set dateTimeValue($16.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasDateTimeValue() => $_has(9);
  @$pb.TagNumber(13)
  void clearDateTimeValue() => clearField(13);
  @$pb.TagNumber(13)
  $16.Timestamp ensureDateTimeValue() => $_ensure(9);

  @$pb.TagNumber(14)
  $core.String get selectValue => $_getSZ(10);
  @$pb.TagNumber(14)
  set selectValue($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(14)
  $core.bool hasSelectValue() => $_has(10);
  @$pb.TagNumber(14)
  void clearSelectValue() => clearField(14);
}

class GetAttachedPropertyValuesResponse extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesResponse({
    $core.Iterable<GetAttachedPropertyValuesResponse_Value>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  GetAttachedPropertyValuesResponse._() : super();
  factory GetAttachedPropertyValuesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..pc<GetAttachedPropertyValuesResponse_Value>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM, subBuilder: GetAttachedPropertyValuesResponse_Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse clone() => GetAttachedPropertyValuesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse copyWith(void Function(GetAttachedPropertyValuesResponse) updates) => super.copyWith((message) => updates(message as GetAttachedPropertyValuesResponse)) as GetAttachedPropertyValuesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse create() => GetAttachedPropertyValuesResponse._();
  GetAttachedPropertyValuesResponse createEmptyInstance() => create();
  static $pb.PbList<GetAttachedPropertyValuesResponse> createRepeated() => $pb.PbList<GetAttachedPropertyValuesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAttachedPropertyValuesResponse>(create);
  static GetAttachedPropertyValuesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetAttachedPropertyValuesResponse_Value> get values => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
