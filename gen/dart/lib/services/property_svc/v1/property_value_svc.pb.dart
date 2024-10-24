//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_value_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $21;
import '../../../libs/common/v1/conflict.pb.dart' as $22;
import 'types.pb.dart' as $23;
import 'types.pbenum.dart' as $23;

class AttachPropertyValueRequest_MultiSelectValue extends $pb.GeneratedMessage {
  factory AttachPropertyValueRequest_MultiSelectValue({
    $core.Iterable<$core.String>? selectValues,
    $core.Iterable<$core.String>? removeSelectValues,
  }) {
    final $result = create();
    if (selectValues != null) {
      $result.selectValues.addAll(selectValues);
    }
    if (removeSelectValues != null) {
      $result.removeSelectValues.addAll(removeSelectValues);
    }
    return $result;
  }
  AttachPropertyValueRequest_MultiSelectValue._() : super();
  factory AttachPropertyValueRequest_MultiSelectValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachPropertyValueRequest_MultiSelectValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachPropertyValueRequest.MultiSelectValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'selectValues')
    ..pPS(2, _omitFieldNames ? '' : 'removeSelectValues')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AttachPropertyValueRequest_MultiSelectValue clone() => AttachPropertyValueRequest_MultiSelectValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AttachPropertyValueRequest_MultiSelectValue copyWith(void Function(AttachPropertyValueRequest_MultiSelectValue) updates) => super.copyWith((message) => updates(message as AttachPropertyValueRequest_MultiSelectValue)) as AttachPropertyValueRequest_MultiSelectValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttachPropertyValueRequest_MultiSelectValue create() => AttachPropertyValueRequest_MultiSelectValue._();
  AttachPropertyValueRequest_MultiSelectValue createEmptyInstance() => create();
  static $pb.PbList<AttachPropertyValueRequest_MultiSelectValue> createRepeated() => $pb.PbList<AttachPropertyValueRequest_MultiSelectValue>();
  @$core.pragma('dart2js:noInline')
  static AttachPropertyValueRequest_MultiSelectValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttachPropertyValueRequest_MultiSelectValue>(create);
  static AttachPropertyValueRequest_MultiSelectValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get selectValues => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get removeSelectValues => $_getList(1);
}

enum AttachPropertyValueRequest_Value {
  textValue, 
  numberValue, 
  boolValue, 
  dateValue, 
  dateTimeValue, 
  selectValue, 
  multiSelectValue, 
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
    $23.Date? dateValue,
    $21.Timestamp? dateTimeValue,
    $core.String? selectValue,
    AttachPropertyValueRequest_MultiSelectValue? multiSelectValue,
    $core.String? consistency,
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
    if (multiSelectValue != null) {
      $result.multiSelectValue = multiSelectValue;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  AttachPropertyValueRequest._() : super();
  factory AttachPropertyValueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachPropertyValueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AttachPropertyValueRequest_Value> _AttachPropertyValueRequest_ValueByTag = {
    3 : AttachPropertyValueRequest_Value.textValue,
    4 : AttachPropertyValueRequest_Value.numberValue,
    5 : AttachPropertyValueRequest_Value.boolValue,
    6 : AttachPropertyValueRequest_Value.dateValue,
    7 : AttachPropertyValueRequest_Value.dateTimeValue,
    8 : AttachPropertyValueRequest_Value.selectValue,
    9 : AttachPropertyValueRequest_Value.multiSelectValue,
    0 : AttachPropertyValueRequest_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachPropertyValueRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8, 9])
    ..aOS(1, _omitFieldNames ? '' : 'subjectId')
    ..aOS(2, _omitFieldNames ? '' : 'propertyId')
    ..aOS(3, _omitFieldNames ? '' : 'textValue')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'numberValue', $pb.PbFieldType.OD)
    ..aOB(5, _omitFieldNames ? '' : 'boolValue')
    ..aOM<$23.Date>(6, _omitFieldNames ? '' : 'dateValue', subBuilder: $23.Date.create)
    ..aOM<$21.Timestamp>(7, _omitFieldNames ? '' : 'dateTimeValue', subBuilder: $21.Timestamp.create)
    ..aOS(8, _omitFieldNames ? '' : 'selectValue')
    ..aOM<AttachPropertyValueRequest_MultiSelectValue>(9, _omitFieldNames ? '' : 'multiSelectValue', subBuilder: AttachPropertyValueRequest_MultiSelectValue.create)
    ..aOS(10, _omitFieldNames ? '' : 'consistency')
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

  @$pb.TagNumber(3)
  $core.String get textValue => $_getSZ(2);
  @$pb.TagNumber(3)
  set textValue($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTextValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get numberValue => $_getN(3);
  @$pb.TagNumber(4)
  set numberValue($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumberValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumberValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get boolValue => $_getBF(4);
  @$pb.TagNumber(5)
  set boolValue($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBoolValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearBoolValue() => clearField(5);

  @$pb.TagNumber(6)
  $23.Date get dateValue => $_getN(5);
  @$pb.TagNumber(6)
  set dateValue($23.Date v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDateValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearDateValue() => clearField(6);
  @$pb.TagNumber(6)
  $23.Date ensureDateValue() => $_ensure(5);

  @$pb.TagNumber(7)
  $21.Timestamp get dateTimeValue => $_getN(6);
  @$pb.TagNumber(7)
  set dateTimeValue($21.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasDateTimeValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearDateTimeValue() => clearField(7);
  @$pb.TagNumber(7)
  $21.Timestamp ensureDateTimeValue() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get selectValue => $_getSZ(7);
  @$pb.TagNumber(8)
  set selectValue($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSelectValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearSelectValue() => clearField(8);

  @$pb.TagNumber(9)
  AttachPropertyValueRequest_MultiSelectValue get multiSelectValue => $_getN(8);
  @$pb.TagNumber(9)
  set multiSelectValue(AttachPropertyValueRequest_MultiSelectValue v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasMultiSelectValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearMultiSelectValue() => clearField(9);
  @$pb.TagNumber(9)
  AttachPropertyValueRequest_MultiSelectValue ensureMultiSelectValue() => $_ensure(8);

  /// optional consistency of existing value (not of the property!), no conflict detection, if not provided
  @$pb.TagNumber(10)
  $core.String get consistency => $_getSZ(9);
  @$pb.TagNumber(10)
  set consistency($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasConsistency() => $_has(9);
  @$pb.TagNumber(10)
  void clearConsistency() => clearField(10);
}

class AttachPropertyValueResponse extends $pb.GeneratedMessage {
  factory AttachPropertyValueResponse({
    $core.String? propertyValueId,
    $22.Conflict? conflict,
    $core.String? consistency,
  }) {
    final $result = create();
    if (propertyValueId != null) {
      $result.propertyValueId = propertyValueId;
    }
    if (conflict != null) {
      $result.conflict = conflict;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  AttachPropertyValueResponse._() : super();
  factory AttachPropertyValueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachPropertyValueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachPropertyValueResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'propertyValueId')
    ..aOM<$22.Conflict>(2, _omitFieldNames ? '' : 'conflict', subBuilder: $22.Conflict.create)
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
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

  @$pb.TagNumber(2)
  $22.Conflict get conflict => $_getN(1);
  @$pb.TagNumber(2)
  set conflict($22.Conflict v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConflict() => $_has(1);
  @$pb.TagNumber(2)
  void clearConflict() => clearField(2);
  @$pb.TagNumber(2)
  $22.Conflict ensureConflict() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}

class TaskPropertyMatcher extends $pb.GeneratedMessage {
  factory TaskPropertyMatcher({
    $core.String? wardId,
    $core.String? taskId,
  }) {
    final $result = create();
    if (wardId != null) {
      $result.wardId = wardId;
    }
    if (taskId != null) {
      $result.taskId = taskId;
    }
    return $result;
  }
  TaskPropertyMatcher._() : super();
  factory TaskPropertyMatcher.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskPropertyMatcher.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TaskPropertyMatcher', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'wardId')
    ..aOS(2, _omitFieldNames ? '' : 'taskId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskPropertyMatcher clone() => TaskPropertyMatcher()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskPropertyMatcher copyWith(void Function(TaskPropertyMatcher) updates) => super.copyWith((message) => updates(message as TaskPropertyMatcher)) as TaskPropertyMatcher;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskPropertyMatcher create() => TaskPropertyMatcher._();
  TaskPropertyMatcher createEmptyInstance() => create();
  static $pb.PbList<TaskPropertyMatcher> createRepeated() => $pb.PbList<TaskPropertyMatcher>();
  @$core.pragma('dart2js:noInline')
  static TaskPropertyMatcher getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskPropertyMatcher>(create);
  static TaskPropertyMatcher? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set wardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWardId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskId => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => clearField(2);
}

class PatientPropertyMatcher extends $pb.GeneratedMessage {
  factory PatientPropertyMatcher({
    $core.String? wardId,
    $core.String? patientId,
  }) {
    final $result = create();
    if (wardId != null) {
      $result.wardId = wardId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    return $result;
  }
  PatientPropertyMatcher._() : super();
  factory PatientPropertyMatcher.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PatientPropertyMatcher.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PatientPropertyMatcher', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'wardId')
    ..aOS(2, _omitFieldNames ? '' : 'patientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PatientPropertyMatcher clone() => PatientPropertyMatcher()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PatientPropertyMatcher copyWith(void Function(PatientPropertyMatcher) updates) => super.copyWith((message) => updates(message as PatientPropertyMatcher)) as PatientPropertyMatcher;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatientPropertyMatcher create() => PatientPropertyMatcher._();
  PatientPropertyMatcher createEmptyInstance() => create();
  static $pb.PbList<PatientPropertyMatcher> createRepeated() => $pb.PbList<PatientPropertyMatcher>();
  @$core.pragma('dart2js:noInline')
  static PatientPropertyMatcher getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PatientPropertyMatcher>(create);
  static PatientPropertyMatcher? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set wardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWardId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get patientId => $_getSZ(1);
  @$pb.TagNumber(2)
  set patientId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPatientId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPatientId() => clearField(2);
}

enum GetAttachedPropertyValuesRequest_Matcher {
  taskMatcher, 
  patientMatcher, 
  notSet
}

class GetAttachedPropertyValuesRequest extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesRequest({
    TaskPropertyMatcher? taskMatcher,
    PatientPropertyMatcher? patientMatcher,
  }) {
    final $result = create();
    if (taskMatcher != null) {
      $result.taskMatcher = taskMatcher;
    }
    if (patientMatcher != null) {
      $result.patientMatcher = patientMatcher;
    }
    return $result;
  }
  GetAttachedPropertyValuesRequest._() : super();
  factory GetAttachedPropertyValuesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetAttachedPropertyValuesRequest_Matcher> _GetAttachedPropertyValuesRequest_MatcherByTag = {
    1 : GetAttachedPropertyValuesRequest_Matcher.taskMatcher,
    2 : GetAttachedPropertyValuesRequest_Matcher.patientMatcher,
    0 : GetAttachedPropertyValuesRequest_Matcher.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<TaskPropertyMatcher>(1, _omitFieldNames ? '' : 'taskMatcher', subBuilder: TaskPropertyMatcher.create)
    ..aOM<PatientPropertyMatcher>(2, _omitFieldNames ? '' : 'patientMatcher', subBuilder: PatientPropertyMatcher.create)
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

  GetAttachedPropertyValuesRequest_Matcher whichMatcher() => _GetAttachedPropertyValuesRequest_MatcherByTag[$_whichOneof(0)]!;
  void clearMatcher() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TaskPropertyMatcher get taskMatcher => $_getN(0);
  @$pb.TagNumber(1)
  set taskMatcher(TaskPropertyMatcher v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskMatcher() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskMatcher() => clearField(1);
  @$pb.TagNumber(1)
  TaskPropertyMatcher ensureTaskMatcher() => $_ensure(0);

  @$pb.TagNumber(2)
  PatientPropertyMatcher get patientMatcher => $_getN(1);
  @$pb.TagNumber(2)
  set patientMatcher(PatientPropertyMatcher v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPatientMatcher() => $_has(1);
  @$pb.TagNumber(2)
  void clearPatientMatcher() => clearField(2);
  @$pb.TagNumber(2)
  PatientPropertyMatcher ensurePatientMatcher() => $_ensure(1);
}

class GetAttachedPropertyValuesResponse_Value_SelectValueOption extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesResponse_Value_SelectValueOption({
    $core.String? id,
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  GetAttachedPropertyValuesResponse_Value_SelectValueOption._() : super();
  factory GetAttachedPropertyValuesResponse_Value_SelectValueOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesResponse_Value_SelectValueOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse.Value.SelectValueOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse_Value_SelectValueOption clone() => GetAttachedPropertyValuesResponse_Value_SelectValueOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse_Value_SelectValueOption copyWith(void Function(GetAttachedPropertyValuesResponse_Value_SelectValueOption) updates) => super.copyWith((message) => updates(message as GetAttachedPropertyValuesResponse_Value_SelectValueOption)) as GetAttachedPropertyValuesResponse_Value_SelectValueOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse_Value_SelectValueOption create() => GetAttachedPropertyValuesResponse_Value_SelectValueOption._();
  GetAttachedPropertyValuesResponse_Value_SelectValueOption createEmptyInstance() => create();
  static $pb.PbList<GetAttachedPropertyValuesResponse_Value_SelectValueOption> createRepeated() => $pb.PbList<GetAttachedPropertyValuesResponse_Value_SelectValueOption>();
  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse_Value_SelectValueOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAttachedPropertyValuesResponse_Value_SelectValueOption>(create);
  static GetAttachedPropertyValuesResponse_Value_SelectValueOption? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class GetAttachedPropertyValuesResponse_Value_MultiSelectValue extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesResponse_Value_MultiSelectValue({
    $core.Iterable<GetAttachedPropertyValuesResponse_Value_SelectValueOption>? selectValues,
  }) {
    final $result = create();
    if (selectValues != null) {
      $result.selectValues.addAll(selectValues);
    }
    return $result;
  }
  GetAttachedPropertyValuesResponse_Value_MultiSelectValue._() : super();
  factory GetAttachedPropertyValuesResponse_Value_MultiSelectValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesResponse_Value_MultiSelectValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse.Value.MultiSelectValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..pc<GetAttachedPropertyValuesResponse_Value_SelectValueOption>(1, _omitFieldNames ? '' : 'selectValues', $pb.PbFieldType.PM, subBuilder: GetAttachedPropertyValuesResponse_Value_SelectValueOption.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse_Value_MultiSelectValue clone() => GetAttachedPropertyValuesResponse_Value_MultiSelectValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse_Value_MultiSelectValue copyWith(void Function(GetAttachedPropertyValuesResponse_Value_MultiSelectValue) updates) => super.copyWith((message) => updates(message as GetAttachedPropertyValuesResponse_Value_MultiSelectValue)) as GetAttachedPropertyValuesResponse_Value_MultiSelectValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse_Value_MultiSelectValue create() => GetAttachedPropertyValuesResponse_Value_MultiSelectValue._();
  GetAttachedPropertyValuesResponse_Value_MultiSelectValue createEmptyInstance() => create();
  static $pb.PbList<GetAttachedPropertyValuesResponse_Value_MultiSelectValue> createRepeated() => $pb.PbList<GetAttachedPropertyValuesResponse_Value_MultiSelectValue>();
  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse_Value_MultiSelectValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAttachedPropertyValuesResponse_Value_MultiSelectValue>(create);
  static GetAttachedPropertyValuesResponse_Value_MultiSelectValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetAttachedPropertyValuesResponse_Value_SelectValueOption> get selectValues => $_getList(0);
}

enum GetAttachedPropertyValuesResponse_Value_Value {
  textValue, 
  numberValue, 
  boolValue, 
  dateValue, 
  dateTimeValue, 
  selectValue, 
  multiSelectValue, 
  notSet
}

class GetAttachedPropertyValuesResponse_Value extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesResponse_Value({
    $core.String? propertyId,
    $23.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.String? textValue,
    $core.double? numberValue,
    $core.bool? boolValue,
    $23.Date? dateValue,
    $21.Timestamp? dateTimeValue,
    GetAttachedPropertyValuesResponse_Value_SelectValueOption? selectValue,
    GetAttachedPropertyValuesResponse_Value_MultiSelectValue? multiSelectValue,
    $core.String? propertyConsistency,
    $core.String? valueConsistency,
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
    if (multiSelectValue != null) {
      $result.multiSelectValue = multiSelectValue;
    }
    if (propertyConsistency != null) {
      $result.propertyConsistency = propertyConsistency;
    }
    if (valueConsistency != null) {
      $result.valueConsistency = valueConsistency;
    }
    return $result;
  }
  GetAttachedPropertyValuesResponse_Value._() : super();
  factory GetAttachedPropertyValuesResponse_Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesResponse_Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetAttachedPropertyValuesResponse_Value_Value> _GetAttachedPropertyValuesResponse_Value_ValueByTag = {
    6 : GetAttachedPropertyValuesResponse_Value_Value.textValue,
    7 : GetAttachedPropertyValuesResponse_Value_Value.numberValue,
    8 : GetAttachedPropertyValuesResponse_Value_Value.boolValue,
    9 : GetAttachedPropertyValuesResponse_Value_Value.dateValue,
    10 : GetAttachedPropertyValuesResponse_Value_Value.dateTimeValue,
    11 : GetAttachedPropertyValuesResponse_Value_Value.selectValue,
    12 : GetAttachedPropertyValuesResponse_Value_Value.multiSelectValue,
    0 : GetAttachedPropertyValuesResponse_Value_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse.Value', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [6, 7, 8, 9, 10, 11, 12])
    ..aOS(1, _omitFieldNames ? '' : 'propertyId')
    ..e<$23.FieldType>(2, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $23.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $23.FieldType.valueOf, enumValues: $23.FieldType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOB(5, _omitFieldNames ? '' : 'isArchived')
    ..aOS(6, _omitFieldNames ? '' : 'textValue')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'numberValue', $pb.PbFieldType.OD)
    ..aOB(8, _omitFieldNames ? '' : 'boolValue')
    ..aOM<$23.Date>(9, _omitFieldNames ? '' : 'dateValue', subBuilder: $23.Date.create)
    ..aOM<$21.Timestamp>(10, _omitFieldNames ? '' : 'dateTimeValue', subBuilder: $21.Timestamp.create)
    ..aOM<GetAttachedPropertyValuesResponse_Value_SelectValueOption>(11, _omitFieldNames ? '' : 'selectValue', subBuilder: GetAttachedPropertyValuesResponse_Value_SelectValueOption.create)
    ..aOM<GetAttachedPropertyValuesResponse_Value_MultiSelectValue>(12, _omitFieldNames ? '' : 'multiSelectValue', subBuilder: GetAttachedPropertyValuesResponse_Value_MultiSelectValue.create)
    ..aOS(13, _omitFieldNames ? '' : 'propertyConsistency')
    ..aOS(14, _omitFieldNames ? '' : 'valueConsistency')
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
  $23.FieldType get fieldType => $_getN(1);
  @$pb.TagNumber(2)
  set fieldType($23.FieldType v) { setField(2, v); }
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

  @$pb.TagNumber(6)
  $core.String get textValue => $_getSZ(5);
  @$pb.TagNumber(6)
  set textValue($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTextValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearTextValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get numberValue => $_getN(6);
  @$pb.TagNumber(7)
  set numberValue($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNumberValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearNumberValue() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get boolValue => $_getBF(7);
  @$pb.TagNumber(8)
  set boolValue($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBoolValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearBoolValue() => clearField(8);

  @$pb.TagNumber(9)
  $23.Date get dateValue => $_getN(8);
  @$pb.TagNumber(9)
  set dateValue($23.Date v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasDateValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearDateValue() => clearField(9);
  @$pb.TagNumber(9)
  $23.Date ensureDateValue() => $_ensure(8);

  @$pb.TagNumber(10)
  $21.Timestamp get dateTimeValue => $_getN(9);
  @$pb.TagNumber(10)
  set dateTimeValue($21.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasDateTimeValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearDateTimeValue() => clearField(10);
  @$pb.TagNumber(10)
  $21.Timestamp ensureDateTimeValue() => $_ensure(9);

  @$pb.TagNumber(11)
  GetAttachedPropertyValuesResponse_Value_SelectValueOption get selectValue => $_getN(10);
  @$pb.TagNumber(11)
  set selectValue(GetAttachedPropertyValuesResponse_Value_SelectValueOption v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasSelectValue() => $_has(10);
  @$pb.TagNumber(11)
  void clearSelectValue() => clearField(11);
  @$pb.TagNumber(11)
  GetAttachedPropertyValuesResponse_Value_SelectValueOption ensureSelectValue() => $_ensure(10);

  @$pb.TagNumber(12)
  GetAttachedPropertyValuesResponse_Value_MultiSelectValue get multiSelectValue => $_getN(11);
  @$pb.TagNumber(12)
  set multiSelectValue(GetAttachedPropertyValuesResponse_Value_MultiSelectValue v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasMultiSelectValue() => $_has(11);
  @$pb.TagNumber(12)
  void clearMultiSelectValue() => clearField(12);
  @$pb.TagNumber(12)
  GetAttachedPropertyValuesResponse_Value_MultiSelectValue ensureMultiSelectValue() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get propertyConsistency => $_getSZ(12);
  @$pb.TagNumber(13)
  set propertyConsistency($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPropertyConsistency() => $_has(12);
  @$pb.TagNumber(13)
  void clearPropertyConsistency() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get valueConsistency => $_getSZ(13);
  @$pb.TagNumber(14)
  set valueConsistency($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasValueConsistency() => $_has(13);
  @$pb.TagNumber(14)
  void clearValueConsistency() => clearField(14);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
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
