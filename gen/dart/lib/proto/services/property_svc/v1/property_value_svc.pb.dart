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

enum CreatePropertyValueRequest_Value {
  isUndefined, 
  textValue, 
  numberValue, 
  boolValue, 
  dateValue, 
  dateTimeValue, 
  selectValue, 
  notSet
}

///
///  CreatePropertyValue
class CreatePropertyValueRequest extends $pb.GeneratedMessage {
  factory CreatePropertyValueRequest({
    $core.String? subjectId,
    $core.String? subjectType,
    $core.String? propertyId,
    $core.bool? isUndefined,
    $core.String? textValue,
    $core.double? numberValue,
    $core.bool? boolValue,
    $core.String? dateValue,
    $core.String? dateTimeValue,
    $core.String? selectValue,
  }) {
    final $result = create();
    if (subjectId != null) {
      $result.subjectId = subjectId;
    }
    if (subjectType != null) {
      $result.subjectType = subjectType;
    }
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    if (isUndefined != null) {
      $result.isUndefined = isUndefined;
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
  CreatePropertyValueRequest._() : super();
  factory CreatePropertyValueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyValueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CreatePropertyValueRequest_Value> _CreatePropertyValueRequest_ValueByTag = {
    4 : CreatePropertyValueRequest_Value.isUndefined,
    5 : CreatePropertyValueRequest_Value.textValue,
    6 : CreatePropertyValueRequest_Value.numberValue,
    7 : CreatePropertyValueRequest_Value.boolValue,
    8 : CreatePropertyValueRequest_Value.dateValue,
    9 : CreatePropertyValueRequest_Value.dateTimeValue,
    10 : CreatePropertyValueRequest_Value.selectValue,
    0 : CreatePropertyValueRequest_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyValueRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8, 9, 10])
    ..aOS(1, _omitFieldNames ? '' : 'subjectId')
    ..aOS(2, _omitFieldNames ? '' : 'subjectType')
    ..aOS(3, _omitFieldNames ? '' : 'propertyId')
    ..aOB(4, _omitFieldNames ? '' : 'isUndefined')
    ..aOS(5, _omitFieldNames ? '' : 'textValue')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'numberValue', $pb.PbFieldType.OF)
    ..aOB(7, _omitFieldNames ? '' : 'boolValue')
    ..aOS(8, _omitFieldNames ? '' : 'dateValue')
    ..aOS(9, _omitFieldNames ? '' : 'dateTimeValue')
    ..aOS(10, _omitFieldNames ? '' : 'selectValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertyValueRequest clone() => CreatePropertyValueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertyValueRequest copyWith(void Function(CreatePropertyValueRequest) updates) => super.copyWith((message) => updates(message as CreatePropertyValueRequest)) as CreatePropertyValueRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePropertyValueRequest create() => CreatePropertyValueRequest._();
  CreatePropertyValueRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePropertyValueRequest> createRepeated() => $pb.PbList<CreatePropertyValueRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertyValueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertyValueRequest>(create);
  static CreatePropertyValueRequest? _defaultInstance;

  CreatePropertyValueRequest_Value whichValue() => _CreatePropertyValueRequest_ValueByTag[$_whichOneof(0)]!;
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
  $core.String get subjectType => $_getSZ(1);
  @$pb.TagNumber(2)
  set subjectType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get propertyId => $_getSZ(2);
  @$pb.TagNumber(3)
  set propertyId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPropertyId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPropertyId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isUndefined => $_getBF(3);
  @$pb.TagNumber(4)
  set isUndefined($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsUndefined() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsUndefined() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get textValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set textValue($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTextValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearTextValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get numberValue => $_getN(5);
  @$pb.TagNumber(6)
  set numberValue($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNumberValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearNumberValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get boolValue => $_getBF(6);
  @$pb.TagNumber(7)
  set boolValue($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBoolValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearBoolValue() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get dateValue => $_getSZ(7);
  @$pb.TagNumber(8)
  set dateValue($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDateValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearDateValue() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get dateTimeValue => $_getSZ(8);
  @$pb.TagNumber(9)
  set dateTimeValue($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDateTimeValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearDateTimeValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get selectValue => $_getSZ(9);
  @$pb.TagNumber(10)
  set selectValue($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSelectValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearSelectValue() => clearField(10);
}

class CreatePropertyValueResponse extends $pb.GeneratedMessage {
  factory CreatePropertyValueResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreatePropertyValueResponse._() : super();
  factory CreatePropertyValueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyValueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyValueResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertyValueResponse clone() => CreatePropertyValueResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertyValueResponse copyWith(void Function(CreatePropertyValueResponse) updates) => super.copyWith((message) => updates(message as CreatePropertyValueResponse)) as CreatePropertyValueResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePropertyValueResponse create() => CreatePropertyValueResponse._();
  CreatePropertyValueResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePropertyValueResponse> createRepeated() => $pb.PbList<CreatePropertyValueResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertyValueResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertyValueResponse>(create);
  static CreatePropertyValueResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetPropertyValueRequest extends $pb.GeneratedMessage {
  factory GetPropertyValueRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetPropertyValueRequest._() : super();
  factory GetPropertyValueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyValueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyValueRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyValueRequest clone() => GetPropertyValueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyValueRequest copyWith(void Function(GetPropertyValueRequest) updates) => super.copyWith((message) => updates(message as GetPropertyValueRequest)) as GetPropertyValueRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyValueRequest create() => GetPropertyValueRequest._();
  GetPropertyValueRequest createEmptyInstance() => create();
  static $pb.PbList<GetPropertyValueRequest> createRepeated() => $pb.PbList<GetPropertyValueRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyValueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyValueRequest>(create);
  static GetPropertyValueRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

enum GetPropertyValueResponse_Value {
  isUndefined, 
  textValue, 
  numberValue, 
  boolValue, 
  dateValue, 
  dateTimeValue, 
  selectValue, 
  notSet
}

class GetPropertyValueResponse extends $pb.GeneratedMessage {
  factory GetPropertyValueResponse({
    $core.String? id,
    $core.String? subjectType,
    $core.String? propertyId,
    $core.bool? isUndefined,
    $core.String? textValue,
    $core.double? numberValue,
    $core.bool? boolValue,
    $core.String? dateValue,
    $core.String? dateTimeValue,
    $core.String? selectValue,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (subjectType != null) {
      $result.subjectType = subjectType;
    }
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    if (isUndefined != null) {
      $result.isUndefined = isUndefined;
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
  GetPropertyValueResponse._() : super();
  factory GetPropertyValueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyValueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetPropertyValueResponse_Value> _GetPropertyValueResponse_ValueByTag = {
    4 : GetPropertyValueResponse_Value.isUndefined,
    5 : GetPropertyValueResponse_Value.textValue,
    6 : GetPropertyValueResponse_Value.numberValue,
    7 : GetPropertyValueResponse_Value.boolValue,
    8 : GetPropertyValueResponse_Value.dateValue,
    9 : GetPropertyValueResponse_Value.dateTimeValue,
    10 : GetPropertyValueResponse_Value.selectValue,
    0 : GetPropertyValueResponse_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyValueResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8, 9, 10])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'subjectType')
    ..aOS(3, _omitFieldNames ? '' : 'propertyId')
    ..aOB(4, _omitFieldNames ? '' : 'isUndefined')
    ..aOS(5, _omitFieldNames ? '' : 'textValue')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'numberValue', $pb.PbFieldType.OF)
    ..aOB(7, _omitFieldNames ? '' : 'boolValue')
    ..aOS(8, _omitFieldNames ? '' : 'dateValue')
    ..aOS(9, _omitFieldNames ? '' : 'dateTimeValue')
    ..aOS(10, _omitFieldNames ? '' : 'selectValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyValueResponse clone() => GetPropertyValueResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyValueResponse copyWith(void Function(GetPropertyValueResponse) updates) => super.copyWith((message) => updates(message as GetPropertyValueResponse)) as GetPropertyValueResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyValueResponse create() => GetPropertyValueResponse._();
  GetPropertyValueResponse createEmptyInstance() => create();
  static $pb.PbList<GetPropertyValueResponse> createRepeated() => $pb.PbList<GetPropertyValueResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyValueResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyValueResponse>(create);
  static GetPropertyValueResponse? _defaultInstance;

  GetPropertyValueResponse_Value whichValue() => _GetPropertyValueResponse_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get subjectType => $_getSZ(1);
  @$pb.TagNumber(2)
  set subjectType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get propertyId => $_getSZ(2);
  @$pb.TagNumber(3)
  set propertyId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPropertyId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPropertyId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isUndefined => $_getBF(3);
  @$pb.TagNumber(4)
  set isUndefined($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsUndefined() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsUndefined() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get textValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set textValue($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTextValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearTextValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get numberValue => $_getN(5);
  @$pb.TagNumber(6)
  set numberValue($core.double v) { $_setFloat(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNumberValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearNumberValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get boolValue => $_getBF(6);
  @$pb.TagNumber(7)
  set boolValue($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBoolValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearBoolValue() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get dateValue => $_getSZ(7);
  @$pb.TagNumber(8)
  set dateValue($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDateValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearDateValue() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get dateTimeValue => $_getSZ(8);
  @$pb.TagNumber(9)
  set dateTimeValue($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDateTimeValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearDateTimeValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get selectValue => $_getSZ(9);
  @$pb.TagNumber(10)
  set selectValue($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSelectValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearSelectValue() => clearField(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
