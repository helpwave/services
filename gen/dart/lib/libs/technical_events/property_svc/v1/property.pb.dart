//
//  Generated code. Do not modify.
//  source: libs/technical_events/property_svc/v1/property.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../services/property_svc/v1/types.pbenum.dart' as $21;

class PropertyCreatedEvent extends $pb.GeneratedMessage {
  factory PropertyCreatedEvent({
    $core.String? id,
    $21.SubjectType? subjectType,
    $21.FieldType? fieldType,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
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
  PropertyCreatedEvent._() : super();
  factory PropertyCreatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyCreatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyCreatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$21.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $21.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $21.SubjectType.valueOf, enumValues: $21.SubjectType.values)
    ..e<$21.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $21.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $21.FieldType.valueOf, enumValues: $21.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyCreatedEvent clone() => PropertyCreatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyCreatedEvent copyWith(void Function(PropertyCreatedEvent) updates) => super.copyWith((message) => updates(message as PropertyCreatedEvent)) as PropertyCreatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyCreatedEvent create() => PropertyCreatedEvent._();
  PropertyCreatedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyCreatedEvent> createRepeated() => $pb.PbList<PropertyCreatedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyCreatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyCreatedEvent>(create);
  static PropertyCreatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $21.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($21.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $21.FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($21.FieldType v) { setField(3, v); }
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

class PropertyDescriptionUpdatedEvent extends $pb.GeneratedMessage {
  factory PropertyDescriptionUpdatedEvent({
    $core.String? description,
  }) {
    final $result = create();
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  PropertyDescriptionUpdatedEvent._() : super();
  factory PropertyDescriptionUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyDescriptionUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyDescriptionUpdatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyDescriptionUpdatedEvent clone() => PropertyDescriptionUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyDescriptionUpdatedEvent copyWith(void Function(PropertyDescriptionUpdatedEvent) updates) => super.copyWith((message) => updates(message as PropertyDescriptionUpdatedEvent)) as PropertyDescriptionUpdatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyDescriptionUpdatedEvent create() => PropertyDescriptionUpdatedEvent._();
  PropertyDescriptionUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyDescriptionUpdatedEvent> createRepeated() => $pb.PbList<PropertyDescriptionUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyDescriptionUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyDescriptionUpdatedEvent>(create);
  static PropertyDescriptionUpdatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);
}

class PropertySetIDUpdatedEvent extends $pb.GeneratedMessage {
  factory PropertySetIDUpdatedEvent({
    $core.String? setId,
  }) {
    final $result = create();
    if (setId != null) {
      $result.setId = setId;
    }
    return $result;
  }
  PropertySetIDUpdatedEvent._() : super();
  factory PropertySetIDUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertySetIDUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertySetIDUpdatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'setId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertySetIDUpdatedEvent clone() => PropertySetIDUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertySetIDUpdatedEvent copyWith(void Function(PropertySetIDUpdatedEvent) updates) => super.copyWith((message) => updates(message as PropertySetIDUpdatedEvent)) as PropertySetIDUpdatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertySetIDUpdatedEvent create() => PropertySetIDUpdatedEvent._();
  PropertySetIDUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertySetIDUpdatedEvent> createRepeated() => $pb.PbList<PropertySetIDUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertySetIDUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertySetIDUpdatedEvent>(create);
  static PropertySetIDUpdatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get setId => $_getSZ(0);
  @$pb.TagNumber(1)
  set setId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetId() => clearField(1);
}

class PropertySubjectTypeUpdatedEvent extends $pb.GeneratedMessage {
  factory PropertySubjectTypeUpdatedEvent({
    $core.String? subjectType,
  }) {
    final $result = create();
    if (subjectType != null) {
      $result.subjectType = subjectType;
    }
    return $result;
  }
  PropertySubjectTypeUpdatedEvent._() : super();
  factory PropertySubjectTypeUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertySubjectTypeUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertySubjectTypeUpdatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subjectType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertySubjectTypeUpdatedEvent clone() => PropertySubjectTypeUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertySubjectTypeUpdatedEvent copyWith(void Function(PropertySubjectTypeUpdatedEvent) updates) => super.copyWith((message) => updates(message as PropertySubjectTypeUpdatedEvent)) as PropertySubjectTypeUpdatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertySubjectTypeUpdatedEvent create() => PropertySubjectTypeUpdatedEvent._();
  PropertySubjectTypeUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertySubjectTypeUpdatedEvent> createRepeated() => $pb.PbList<PropertySubjectTypeUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertySubjectTypeUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertySubjectTypeUpdatedEvent>(create);
  static PropertySubjectTypeUpdatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subjectType => $_getSZ(0);
  @$pb.TagNumber(1)
  set subjectType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubjectType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubjectType() => clearField(1);
}

class PropertyFieldTypeUpdatedEvent extends $pb.GeneratedMessage {
  factory PropertyFieldTypeUpdatedEvent({
    $core.String? fieldType,
  }) {
    final $result = create();
    if (fieldType != null) {
      $result.fieldType = fieldType;
    }
    return $result;
  }
  PropertyFieldTypeUpdatedEvent._() : super();
  factory PropertyFieldTypeUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyFieldTypeUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyFieldTypeUpdatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fieldType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeUpdatedEvent clone() => PropertyFieldTypeUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeUpdatedEvent copyWith(void Function(PropertyFieldTypeUpdatedEvent) updates) => super.copyWith((message) => updates(message as PropertyFieldTypeUpdatedEvent)) as PropertyFieldTypeUpdatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeUpdatedEvent create() => PropertyFieldTypeUpdatedEvent._();
  PropertyFieldTypeUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyFieldTypeUpdatedEvent> createRepeated() => $pb.PbList<PropertyFieldTypeUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyFieldTypeUpdatedEvent>(create);
  static PropertyFieldTypeUpdatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fieldType => $_getSZ(0);
  @$pb.TagNumber(1)
  set fieldType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldType() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldType() => clearField(1);
}

class PropertyFieldTypeDataCreatedEvent_SelectOption extends $pb.GeneratedMessage {
  factory PropertyFieldTypeDataCreatedEvent_SelectOption({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.bool? isCustom,
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
    if (isCustom != null) {
      $result.isCustom = isCustom;
    }
    return $result;
  }
  PropertyFieldTypeDataCreatedEvent_SelectOption._() : super();
  factory PropertyFieldTypeDataCreatedEvent_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyFieldTypeDataCreatedEvent_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyFieldTypeDataCreatedEvent.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'isCustom')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataCreatedEvent_SelectOption clone() => PropertyFieldTypeDataCreatedEvent_SelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataCreatedEvent_SelectOption copyWith(void Function(PropertyFieldTypeDataCreatedEvent_SelectOption) updates) => super.copyWith((message) => updates(message as PropertyFieldTypeDataCreatedEvent_SelectOption)) as PropertyFieldTypeDataCreatedEvent_SelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataCreatedEvent_SelectOption create() => PropertyFieldTypeDataCreatedEvent_SelectOption._();
  PropertyFieldTypeDataCreatedEvent_SelectOption createEmptyInstance() => create();
  static $pb.PbList<PropertyFieldTypeDataCreatedEvent_SelectOption> createRepeated() => $pb.PbList<PropertyFieldTypeDataCreatedEvent_SelectOption>();
  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataCreatedEvent_SelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyFieldTypeDataCreatedEvent_SelectOption>(create);
  static PropertyFieldTypeDataCreatedEvent_SelectOption? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.bool get isCustom => $_getBF(3);
  @$pb.TagNumber(4)
  set isCustom($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsCustom() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCustom() => clearField(4);
}

class PropertyFieldTypeDataCreatedEvent_SelectData extends $pb.GeneratedMessage {
  factory PropertyFieldTypeDataCreatedEvent_SelectData({
    $core.bool? allowFreetext,
    $core.Iterable<PropertyFieldTypeDataCreatedEvent_SelectOption>? selectOptions,
  }) {
    final $result = create();
    if (allowFreetext != null) {
      $result.allowFreetext = allowFreetext;
    }
    if (selectOptions != null) {
      $result.selectOptions.addAll(selectOptions);
    }
    return $result;
  }
  PropertyFieldTypeDataCreatedEvent_SelectData._() : super();
  factory PropertyFieldTypeDataCreatedEvent_SelectData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyFieldTypeDataCreatedEvent_SelectData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyFieldTypeDataCreatedEvent.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'allowFreetext')
    ..pc<PropertyFieldTypeDataCreatedEvent_SelectOption>(2, _omitFieldNames ? '' : 'selectOptions', $pb.PbFieldType.PM, subBuilder: PropertyFieldTypeDataCreatedEvent_SelectOption.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataCreatedEvent_SelectData clone() => PropertyFieldTypeDataCreatedEvent_SelectData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataCreatedEvent_SelectData copyWith(void Function(PropertyFieldTypeDataCreatedEvent_SelectData) updates) => super.copyWith((message) => updates(message as PropertyFieldTypeDataCreatedEvent_SelectData)) as PropertyFieldTypeDataCreatedEvent_SelectData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataCreatedEvent_SelectData create() => PropertyFieldTypeDataCreatedEvent_SelectData._();
  PropertyFieldTypeDataCreatedEvent_SelectData createEmptyInstance() => create();
  static $pb.PbList<PropertyFieldTypeDataCreatedEvent_SelectData> createRepeated() => $pb.PbList<PropertyFieldTypeDataCreatedEvent_SelectData>();
  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataCreatedEvent_SelectData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyFieldTypeDataCreatedEvent_SelectData>(create);
  static PropertyFieldTypeDataCreatedEvent_SelectData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get allowFreetext => $_getBF(0);
  @$pb.TagNumber(1)
  set allowFreetext($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAllowFreetext() => $_has(0);
  @$pb.TagNumber(1)
  void clearAllowFreetext() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<PropertyFieldTypeDataCreatedEvent_SelectOption> get selectOptions => $_getList(1);
}

class PropertyFieldTypeDataCreatedEvent_FieldTypeData extends $pb.GeneratedMessage {
  factory PropertyFieldTypeDataCreatedEvent_FieldTypeData({
    PropertyFieldTypeDataCreatedEvent_SelectData? selectData,
  }) {
    final $result = create();
    if (selectData != null) {
      $result.selectData = selectData;
    }
    return $result;
  }
  PropertyFieldTypeDataCreatedEvent_FieldTypeData._() : super();
  factory PropertyFieldTypeDataCreatedEvent_FieldTypeData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyFieldTypeDataCreatedEvent_FieldTypeData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyFieldTypeDataCreatedEvent.FieldTypeData', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOM<PropertyFieldTypeDataCreatedEvent_SelectData>(1, _omitFieldNames ? '' : 'selectData', subBuilder: PropertyFieldTypeDataCreatedEvent_SelectData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataCreatedEvent_FieldTypeData clone() => PropertyFieldTypeDataCreatedEvent_FieldTypeData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataCreatedEvent_FieldTypeData copyWith(void Function(PropertyFieldTypeDataCreatedEvent_FieldTypeData) updates) => super.copyWith((message) => updates(message as PropertyFieldTypeDataCreatedEvent_FieldTypeData)) as PropertyFieldTypeDataCreatedEvent_FieldTypeData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataCreatedEvent_FieldTypeData create() => PropertyFieldTypeDataCreatedEvent_FieldTypeData._();
  PropertyFieldTypeDataCreatedEvent_FieldTypeData createEmptyInstance() => create();
  static $pb.PbList<PropertyFieldTypeDataCreatedEvent_FieldTypeData> createRepeated() => $pb.PbList<PropertyFieldTypeDataCreatedEvent_FieldTypeData>();
  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataCreatedEvent_FieldTypeData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyFieldTypeDataCreatedEvent_FieldTypeData>(create);
  static PropertyFieldTypeDataCreatedEvent_FieldTypeData? _defaultInstance;

  @$pb.TagNumber(1)
  PropertyFieldTypeDataCreatedEvent_SelectData get selectData => $_getN(0);
  @$pb.TagNumber(1)
  set selectData(PropertyFieldTypeDataCreatedEvent_SelectData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelectData() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelectData() => clearField(1);
  @$pb.TagNumber(1)
  PropertyFieldTypeDataCreatedEvent_SelectData ensureSelectData() => $_ensure(0);
}

class PropertyFieldTypeDataCreatedEvent extends $pb.GeneratedMessage {
  factory PropertyFieldTypeDataCreatedEvent({
    PropertyFieldTypeDataCreatedEvent_FieldTypeData? fieldTypeData,
  }) {
    final $result = create();
    if (fieldTypeData != null) {
      $result.fieldTypeData = fieldTypeData;
    }
    return $result;
  }
  PropertyFieldTypeDataCreatedEvent._() : super();
  factory PropertyFieldTypeDataCreatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyFieldTypeDataCreatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyFieldTypeDataCreatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOM<PropertyFieldTypeDataCreatedEvent_FieldTypeData>(1, _omitFieldNames ? '' : 'fieldTypeData', subBuilder: PropertyFieldTypeDataCreatedEvent_FieldTypeData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataCreatedEvent clone() => PropertyFieldTypeDataCreatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataCreatedEvent copyWith(void Function(PropertyFieldTypeDataCreatedEvent) updates) => super.copyWith((message) => updates(message as PropertyFieldTypeDataCreatedEvent)) as PropertyFieldTypeDataCreatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataCreatedEvent create() => PropertyFieldTypeDataCreatedEvent._();
  PropertyFieldTypeDataCreatedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyFieldTypeDataCreatedEvent> createRepeated() => $pb.PbList<PropertyFieldTypeDataCreatedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataCreatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyFieldTypeDataCreatedEvent>(create);
  static PropertyFieldTypeDataCreatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  PropertyFieldTypeDataCreatedEvent_FieldTypeData get fieldTypeData => $_getN(0);
  @$pb.TagNumber(1)
  set fieldTypeData(PropertyFieldTypeDataCreatedEvent_FieldTypeData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFieldTypeData() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldTypeData() => clearField(1);
  @$pb.TagNumber(1)
  PropertyFieldTypeDataCreatedEvent_FieldTypeData ensureFieldTypeData() => $_ensure(0);
}

class PropertyNameUpdatedEvent extends $pb.GeneratedMessage {
  factory PropertyNameUpdatedEvent({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  PropertyNameUpdatedEvent._() : super();
  factory PropertyNameUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyNameUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyNameUpdatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyNameUpdatedEvent clone() => PropertyNameUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyNameUpdatedEvent copyWith(void Function(PropertyNameUpdatedEvent) updates) => super.copyWith((message) => updates(message as PropertyNameUpdatedEvent)) as PropertyNameUpdatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyNameUpdatedEvent create() => PropertyNameUpdatedEvent._();
  PropertyNameUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyNameUpdatedEvent> createRepeated() => $pb.PbList<PropertyNameUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyNameUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyNameUpdatedEvent>(create);
  static PropertyNameUpdatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class PropertyFieldTypeDataAllowFreetextUpdatedEvent extends $pb.GeneratedMessage {
  factory PropertyFieldTypeDataAllowFreetextUpdatedEvent({
    $core.bool? newAllowFreetext,
  }) {
    final $result = create();
    if (newAllowFreetext != null) {
      $result.newAllowFreetext = newAllowFreetext;
    }
    return $result;
  }
  PropertyFieldTypeDataAllowFreetextUpdatedEvent._() : super();
  factory PropertyFieldTypeDataAllowFreetextUpdatedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyFieldTypeDataAllowFreetextUpdatedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyFieldTypeDataAllowFreetextUpdatedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'newAllowFreetext')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataAllowFreetextUpdatedEvent clone() => PropertyFieldTypeDataAllowFreetextUpdatedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataAllowFreetextUpdatedEvent copyWith(void Function(PropertyFieldTypeDataAllowFreetextUpdatedEvent) updates) => super.copyWith((message) => updates(message as PropertyFieldTypeDataAllowFreetextUpdatedEvent)) as PropertyFieldTypeDataAllowFreetextUpdatedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataAllowFreetextUpdatedEvent create() => PropertyFieldTypeDataAllowFreetextUpdatedEvent._();
  PropertyFieldTypeDataAllowFreetextUpdatedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyFieldTypeDataAllowFreetextUpdatedEvent> createRepeated() => $pb.PbList<PropertyFieldTypeDataAllowFreetextUpdatedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataAllowFreetextUpdatedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyFieldTypeDataAllowFreetextUpdatedEvent>(create);
  static PropertyFieldTypeDataAllowFreetextUpdatedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get newAllowFreetext => $_getBF(0);
  @$pb.TagNumber(1)
  set newAllowFreetext($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNewAllowFreetext() => $_has(0);
  @$pb.TagNumber(1)
  void clearNewAllowFreetext() => clearField(1);
}

class PropertyFieldTypeDataSelectOptionsRemovedEvent extends $pb.GeneratedMessage {
  factory PropertyFieldTypeDataSelectOptionsRemovedEvent({
    $core.Iterable<$core.String>? removedSelectOptions,
  }) {
    final $result = create();
    if (removedSelectOptions != null) {
      $result.removedSelectOptions.addAll(removedSelectOptions);
    }
    return $result;
  }
  PropertyFieldTypeDataSelectOptionsRemovedEvent._() : super();
  factory PropertyFieldTypeDataSelectOptionsRemovedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyFieldTypeDataSelectOptionsRemovedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyFieldTypeDataSelectOptionsRemovedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'removedSelectOptions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataSelectOptionsRemovedEvent clone() => PropertyFieldTypeDataSelectOptionsRemovedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataSelectOptionsRemovedEvent copyWith(void Function(PropertyFieldTypeDataSelectOptionsRemovedEvent) updates) => super.copyWith((message) => updates(message as PropertyFieldTypeDataSelectOptionsRemovedEvent)) as PropertyFieldTypeDataSelectOptionsRemovedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataSelectOptionsRemovedEvent create() => PropertyFieldTypeDataSelectOptionsRemovedEvent._();
  PropertyFieldTypeDataSelectOptionsRemovedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyFieldTypeDataSelectOptionsRemovedEvent> createRepeated() => $pb.PbList<PropertyFieldTypeDataSelectOptionsRemovedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataSelectOptionsRemovedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyFieldTypeDataSelectOptionsRemovedEvent>(create);
  static PropertyFieldTypeDataSelectOptionsRemovedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get removedSelectOptions => $_getList(0);
}

class PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption extends $pb.GeneratedMessage {
  factory PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.bool? isCustom,
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
    if (isCustom != null) {
      $result.isCustom = isCustom;
    }
    return $result;
  }
  PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption._() : super();
  factory PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyFieldTypeDataSelectOptionsUpsertedEvent.UpdateSelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'isCustom')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption clone() => PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption copyWith(void Function(PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption) updates) => super.copyWith((message) => updates(message as PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption)) as PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption create() => PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption._();
  PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption createEmptyInstance() => create();
  static $pb.PbList<PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption> createRepeated() => $pb.PbList<PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption>();
  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption>(create);
  static PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption? _defaultInstance;

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

  @$pb.TagNumber(4)
  $core.bool get isCustom => $_getBF(3);
  @$pb.TagNumber(4)
  set isCustom($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsCustom() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCustom() => clearField(4);
}

class PropertyFieldTypeDataSelectOptionsUpsertedEvent extends $pb.GeneratedMessage {
  factory PropertyFieldTypeDataSelectOptionsUpsertedEvent({
    $core.Iterable<PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption>? upsertedSelectOptions,
  }) {
    final $result = create();
    if (upsertedSelectOptions != null) {
      $result.upsertedSelectOptions.addAll(upsertedSelectOptions);
    }
    return $result;
  }
  PropertyFieldTypeDataSelectOptionsUpsertedEvent._() : super();
  factory PropertyFieldTypeDataSelectOptionsUpsertedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyFieldTypeDataSelectOptionsUpsertedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyFieldTypeDataSelectOptionsUpsertedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..pc<PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption>(1, _omitFieldNames ? '' : 'upsertedSelectOptions', $pb.PbFieldType.PM, subBuilder: PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataSelectOptionsUpsertedEvent clone() => PropertyFieldTypeDataSelectOptionsUpsertedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyFieldTypeDataSelectOptionsUpsertedEvent copyWith(void Function(PropertyFieldTypeDataSelectOptionsUpsertedEvent) updates) => super.copyWith((message) => updates(message as PropertyFieldTypeDataSelectOptionsUpsertedEvent)) as PropertyFieldTypeDataSelectOptionsUpsertedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataSelectOptionsUpsertedEvent create() => PropertyFieldTypeDataSelectOptionsUpsertedEvent._();
  PropertyFieldTypeDataSelectOptionsUpsertedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyFieldTypeDataSelectOptionsUpsertedEvent> createRepeated() => $pb.PbList<PropertyFieldTypeDataSelectOptionsUpsertedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyFieldTypeDataSelectOptionsUpsertedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyFieldTypeDataSelectOptionsUpsertedEvent>(create);
  static PropertyFieldTypeDataSelectOptionsUpsertedEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption> get upsertedSelectOptions => $_getList(0);
}

class PropertyArchivedEvent extends $pb.GeneratedMessage {
  factory PropertyArchivedEvent() => create();
  PropertyArchivedEvent._() : super();
  factory PropertyArchivedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyArchivedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyArchivedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyArchivedEvent clone() => PropertyArchivedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyArchivedEvent copyWith(void Function(PropertyArchivedEvent) updates) => super.copyWith((message) => updates(message as PropertyArchivedEvent)) as PropertyArchivedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyArchivedEvent create() => PropertyArchivedEvent._();
  PropertyArchivedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyArchivedEvent> createRepeated() => $pb.PbList<PropertyArchivedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyArchivedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyArchivedEvent>(create);
  static PropertyArchivedEvent? _defaultInstance;
}

class PropertyRetrievedEvent extends $pb.GeneratedMessage {
  factory PropertyRetrievedEvent() => create();
  PropertyRetrievedEvent._() : super();
  factory PropertyRetrievedEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyRetrievedEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyRetrievedEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyRetrievedEvent clone() => PropertyRetrievedEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyRetrievedEvent copyWith(void Function(PropertyRetrievedEvent) updates) => super.copyWith((message) => updates(message as PropertyRetrievedEvent)) as PropertyRetrievedEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyRetrievedEvent create() => PropertyRetrievedEvent._();
  PropertyRetrievedEvent createEmptyInstance() => create();
  static $pb.PbList<PropertyRetrievedEvent> createRepeated() => $pb.PbList<PropertyRetrievedEvent>();
  @$core.pragma('dart2js:noInline')
  static PropertyRetrievedEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyRetrievedEvent>(create);
  static PropertyRetrievedEvent? _defaultInstance;
}

enum TechnicalEvent_Event {
  propertyCreated, 
  propertyDescriptionUpdated, 
  propertySetIdUpdated, 
  propertySubjectTypeUpdated, 
  propertyFieldTypeUpdated, 
  propertyFieldTypeDataCreated, 
  propertyNameUpdated, 
  propertyFieldTypeDataAllowFreetextUpdated, 
  propertyFieldTypeDataSelectOptionsRemoved, 
  propertyFieldTypeDataSelectOptionsUpserted, 
  propertyArchived, 
  propertyRetrieved, 
  notSet
}

class TechnicalEvent extends $pb.GeneratedMessage {
  factory TechnicalEvent({
    PropertyCreatedEvent? propertyCreated,
    PropertyDescriptionUpdatedEvent? propertyDescriptionUpdated,
    PropertySetIDUpdatedEvent? propertySetIdUpdated,
    PropertySubjectTypeUpdatedEvent? propertySubjectTypeUpdated,
    PropertyFieldTypeUpdatedEvent? propertyFieldTypeUpdated,
    PropertyFieldTypeDataCreatedEvent? propertyFieldTypeDataCreated,
    PropertyNameUpdatedEvent? propertyNameUpdated,
    PropertyFieldTypeDataAllowFreetextUpdatedEvent? propertyFieldTypeDataAllowFreetextUpdated,
    PropertyFieldTypeDataSelectOptionsRemovedEvent? propertyFieldTypeDataSelectOptionsRemoved,
    PropertyFieldTypeDataSelectOptionsUpsertedEvent? propertyFieldTypeDataSelectOptionsUpserted,
    PropertyArchivedEvent? propertyArchived,
    PropertyRetrievedEvent? propertyRetrieved,
  }) {
    final $result = create();
    if (propertyCreated != null) {
      $result.propertyCreated = propertyCreated;
    }
    if (propertyDescriptionUpdated != null) {
      $result.propertyDescriptionUpdated = propertyDescriptionUpdated;
    }
    if (propertySetIdUpdated != null) {
      $result.propertySetIdUpdated = propertySetIdUpdated;
    }
    if (propertySubjectTypeUpdated != null) {
      $result.propertySubjectTypeUpdated = propertySubjectTypeUpdated;
    }
    if (propertyFieldTypeUpdated != null) {
      $result.propertyFieldTypeUpdated = propertyFieldTypeUpdated;
    }
    if (propertyFieldTypeDataCreated != null) {
      $result.propertyFieldTypeDataCreated = propertyFieldTypeDataCreated;
    }
    if (propertyNameUpdated != null) {
      $result.propertyNameUpdated = propertyNameUpdated;
    }
    if (propertyFieldTypeDataAllowFreetextUpdated != null) {
      $result.propertyFieldTypeDataAllowFreetextUpdated = propertyFieldTypeDataAllowFreetextUpdated;
    }
    if (propertyFieldTypeDataSelectOptionsRemoved != null) {
      $result.propertyFieldTypeDataSelectOptionsRemoved = propertyFieldTypeDataSelectOptionsRemoved;
    }
    if (propertyFieldTypeDataSelectOptionsUpserted != null) {
      $result.propertyFieldTypeDataSelectOptionsUpserted = propertyFieldTypeDataSelectOptionsUpserted;
    }
    if (propertyArchived != null) {
      $result.propertyArchived = propertyArchived;
    }
    if (propertyRetrieved != null) {
      $result.propertyRetrieved = propertyRetrieved;
    }
    return $result;
  }
  TechnicalEvent._() : super();
  factory TechnicalEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TechnicalEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TechnicalEvent_Event> _TechnicalEvent_EventByTag = {
    1 : TechnicalEvent_Event.propertyCreated,
    2 : TechnicalEvent_Event.propertyDescriptionUpdated,
    3 : TechnicalEvent_Event.propertySetIdUpdated,
    4 : TechnicalEvent_Event.propertySubjectTypeUpdated,
    5 : TechnicalEvent_Event.propertyFieldTypeUpdated,
    6 : TechnicalEvent_Event.propertyFieldTypeDataCreated,
    7 : TechnicalEvent_Event.propertyNameUpdated,
    8 : TechnicalEvent_Event.propertyFieldTypeDataAllowFreetextUpdated,
    9 : TechnicalEvent_Event.propertyFieldTypeDataSelectOptionsRemoved,
    10 : TechnicalEvent_Event.propertyFieldTypeDataSelectOptionsUpserted,
    11 : TechnicalEvent_Event.propertyArchived,
    12 : TechnicalEvent_Event.propertyRetrieved,
    0 : TechnicalEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TechnicalEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'libs.technical_events.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
    ..aOM<PropertyCreatedEvent>(1, _omitFieldNames ? '' : 'propertyCreated', subBuilder: PropertyCreatedEvent.create)
    ..aOM<PropertyDescriptionUpdatedEvent>(2, _omitFieldNames ? '' : 'propertyDescriptionUpdated', subBuilder: PropertyDescriptionUpdatedEvent.create)
    ..aOM<PropertySetIDUpdatedEvent>(3, _omitFieldNames ? '' : 'propertySetIdUpdated', subBuilder: PropertySetIDUpdatedEvent.create)
    ..aOM<PropertySubjectTypeUpdatedEvent>(4, _omitFieldNames ? '' : 'propertySubjectTypeUpdated', subBuilder: PropertySubjectTypeUpdatedEvent.create)
    ..aOM<PropertyFieldTypeUpdatedEvent>(5, _omitFieldNames ? '' : 'propertyFieldTypeUpdated', subBuilder: PropertyFieldTypeUpdatedEvent.create)
    ..aOM<PropertyFieldTypeDataCreatedEvent>(6, _omitFieldNames ? '' : 'propertyFieldTypeDataCreated', subBuilder: PropertyFieldTypeDataCreatedEvent.create)
    ..aOM<PropertyNameUpdatedEvent>(7, _omitFieldNames ? '' : 'propertyNameUpdated', subBuilder: PropertyNameUpdatedEvent.create)
    ..aOM<PropertyFieldTypeDataAllowFreetextUpdatedEvent>(8, _omitFieldNames ? '' : 'propertyFieldTypeDataAllowFreetextUpdated', subBuilder: PropertyFieldTypeDataAllowFreetextUpdatedEvent.create)
    ..aOM<PropertyFieldTypeDataSelectOptionsRemovedEvent>(9, _omitFieldNames ? '' : 'propertyFieldTypeDataSelectOptionsRemoved', subBuilder: PropertyFieldTypeDataSelectOptionsRemovedEvent.create)
    ..aOM<PropertyFieldTypeDataSelectOptionsUpsertedEvent>(10, _omitFieldNames ? '' : 'propertyFieldTypeDataSelectOptionsUpserted', subBuilder: PropertyFieldTypeDataSelectOptionsUpsertedEvent.create)
    ..aOM<PropertyArchivedEvent>(11, _omitFieldNames ? '' : 'propertyArchived', subBuilder: PropertyArchivedEvent.create)
    ..aOM<PropertyRetrievedEvent>(12, _omitFieldNames ? '' : 'propertyRetrieved', subBuilder: PropertyRetrievedEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TechnicalEvent clone() => TechnicalEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TechnicalEvent copyWith(void Function(TechnicalEvent) updates) => super.copyWith((message) => updates(message as TechnicalEvent)) as TechnicalEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TechnicalEvent create() => TechnicalEvent._();
  TechnicalEvent createEmptyInstance() => create();
  static $pb.PbList<TechnicalEvent> createRepeated() => $pb.PbList<TechnicalEvent>();
  @$core.pragma('dart2js:noInline')
  static TechnicalEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TechnicalEvent>(create);
  static TechnicalEvent? _defaultInstance;

  TechnicalEvent_Event whichEvent() => _TechnicalEvent_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PropertyCreatedEvent get propertyCreated => $_getN(0);
  @$pb.TagNumber(1)
  set propertyCreated(PropertyCreatedEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyCreated() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyCreated() => clearField(1);
  @$pb.TagNumber(1)
  PropertyCreatedEvent ensurePropertyCreated() => $_ensure(0);

  @$pb.TagNumber(2)
  PropertyDescriptionUpdatedEvent get propertyDescriptionUpdated => $_getN(1);
  @$pb.TagNumber(2)
  set propertyDescriptionUpdated(PropertyDescriptionUpdatedEvent v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyDescriptionUpdated() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyDescriptionUpdated() => clearField(2);
  @$pb.TagNumber(2)
  PropertyDescriptionUpdatedEvent ensurePropertyDescriptionUpdated() => $_ensure(1);

  @$pb.TagNumber(3)
  PropertySetIDUpdatedEvent get propertySetIdUpdated => $_getN(2);
  @$pb.TagNumber(3)
  set propertySetIdUpdated(PropertySetIDUpdatedEvent v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPropertySetIdUpdated() => $_has(2);
  @$pb.TagNumber(3)
  void clearPropertySetIdUpdated() => clearField(3);
  @$pb.TagNumber(3)
  PropertySetIDUpdatedEvent ensurePropertySetIdUpdated() => $_ensure(2);

  @$pb.TagNumber(4)
  PropertySubjectTypeUpdatedEvent get propertySubjectTypeUpdated => $_getN(3);
  @$pb.TagNumber(4)
  set propertySubjectTypeUpdated(PropertySubjectTypeUpdatedEvent v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPropertySubjectTypeUpdated() => $_has(3);
  @$pb.TagNumber(4)
  void clearPropertySubjectTypeUpdated() => clearField(4);
  @$pb.TagNumber(4)
  PropertySubjectTypeUpdatedEvent ensurePropertySubjectTypeUpdated() => $_ensure(3);

  @$pb.TagNumber(5)
  PropertyFieldTypeUpdatedEvent get propertyFieldTypeUpdated => $_getN(4);
  @$pb.TagNumber(5)
  set propertyFieldTypeUpdated(PropertyFieldTypeUpdatedEvent v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPropertyFieldTypeUpdated() => $_has(4);
  @$pb.TagNumber(5)
  void clearPropertyFieldTypeUpdated() => clearField(5);
  @$pb.TagNumber(5)
  PropertyFieldTypeUpdatedEvent ensurePropertyFieldTypeUpdated() => $_ensure(4);

  @$pb.TagNumber(6)
  PropertyFieldTypeDataCreatedEvent get propertyFieldTypeDataCreated => $_getN(5);
  @$pb.TagNumber(6)
  set propertyFieldTypeDataCreated(PropertyFieldTypeDataCreatedEvent v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPropertyFieldTypeDataCreated() => $_has(5);
  @$pb.TagNumber(6)
  void clearPropertyFieldTypeDataCreated() => clearField(6);
  @$pb.TagNumber(6)
  PropertyFieldTypeDataCreatedEvent ensurePropertyFieldTypeDataCreated() => $_ensure(5);

  @$pb.TagNumber(7)
  PropertyNameUpdatedEvent get propertyNameUpdated => $_getN(6);
  @$pb.TagNumber(7)
  set propertyNameUpdated(PropertyNameUpdatedEvent v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPropertyNameUpdated() => $_has(6);
  @$pb.TagNumber(7)
  void clearPropertyNameUpdated() => clearField(7);
  @$pb.TagNumber(7)
  PropertyNameUpdatedEvent ensurePropertyNameUpdated() => $_ensure(6);

  @$pb.TagNumber(8)
  PropertyFieldTypeDataAllowFreetextUpdatedEvent get propertyFieldTypeDataAllowFreetextUpdated => $_getN(7);
  @$pb.TagNumber(8)
  set propertyFieldTypeDataAllowFreetextUpdated(PropertyFieldTypeDataAllowFreetextUpdatedEvent v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPropertyFieldTypeDataAllowFreetextUpdated() => $_has(7);
  @$pb.TagNumber(8)
  void clearPropertyFieldTypeDataAllowFreetextUpdated() => clearField(8);
  @$pb.TagNumber(8)
  PropertyFieldTypeDataAllowFreetextUpdatedEvent ensurePropertyFieldTypeDataAllowFreetextUpdated() => $_ensure(7);

  @$pb.TagNumber(9)
  PropertyFieldTypeDataSelectOptionsRemovedEvent get propertyFieldTypeDataSelectOptionsRemoved => $_getN(8);
  @$pb.TagNumber(9)
  set propertyFieldTypeDataSelectOptionsRemoved(PropertyFieldTypeDataSelectOptionsRemovedEvent v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasPropertyFieldTypeDataSelectOptionsRemoved() => $_has(8);
  @$pb.TagNumber(9)
  void clearPropertyFieldTypeDataSelectOptionsRemoved() => clearField(9);
  @$pb.TagNumber(9)
  PropertyFieldTypeDataSelectOptionsRemovedEvent ensurePropertyFieldTypeDataSelectOptionsRemoved() => $_ensure(8);

  @$pb.TagNumber(10)
  PropertyFieldTypeDataSelectOptionsUpsertedEvent get propertyFieldTypeDataSelectOptionsUpserted => $_getN(9);
  @$pb.TagNumber(10)
  set propertyFieldTypeDataSelectOptionsUpserted(PropertyFieldTypeDataSelectOptionsUpsertedEvent v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPropertyFieldTypeDataSelectOptionsUpserted() => $_has(9);
  @$pb.TagNumber(10)
  void clearPropertyFieldTypeDataSelectOptionsUpserted() => clearField(10);
  @$pb.TagNumber(10)
  PropertyFieldTypeDataSelectOptionsUpsertedEvent ensurePropertyFieldTypeDataSelectOptionsUpserted() => $_ensure(9);

  @$pb.TagNumber(11)
  PropertyArchivedEvent get propertyArchived => $_getN(10);
  @$pb.TagNumber(11)
  set propertyArchived(PropertyArchivedEvent v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasPropertyArchived() => $_has(10);
  @$pb.TagNumber(11)
  void clearPropertyArchived() => clearField(11);
  @$pb.TagNumber(11)
  PropertyArchivedEvent ensurePropertyArchived() => $_ensure(10);

  @$pb.TagNumber(12)
  PropertyRetrievedEvent get propertyRetrieved => $_getN(11);
  @$pb.TagNumber(12)
  set propertyRetrieved(PropertyRetrievedEvent v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasPropertyRetrieved() => $_has(11);
  @$pb.TagNumber(12)
  void clearPropertyRetrieved() => clearField(12);
  @$pb.TagNumber(12)
  PropertyRetrievedEvent ensurePropertyRetrieved() => $_ensure(11);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
