//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../libs/common/v1/conflict.pb.dart' as $22;
import 'types.pbenum.dart' as $23;

class CreatePropertyRequest_SelectData_SelectOption extends $pb.GeneratedMessage {
  factory CreatePropertyRequest_SelectData_SelectOption({
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  CreatePropertyRequest_SelectData_SelectOption._() : super();
  factory CreatePropertyRequest_SelectData_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyRequest_SelectData_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest_SelectData_SelectOption clone() => CreatePropertyRequest_SelectData_SelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest_SelectData_SelectOption copyWith(void Function(CreatePropertyRequest_SelectData_SelectOption) updates) => super.copyWith((message) => updates(message as CreatePropertyRequest_SelectData_SelectOption)) as CreatePropertyRequest_SelectData_SelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest_SelectData_SelectOption create() => CreatePropertyRequest_SelectData_SelectOption._();
  CreatePropertyRequest_SelectData_SelectOption createEmptyInstance() => create();
  static $pb.PbList<CreatePropertyRequest_SelectData_SelectOption> createRepeated() => $pb.PbList<CreatePropertyRequest_SelectData_SelectOption>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest_SelectData_SelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertyRequest_SelectData_SelectOption>(create);
  static CreatePropertyRequest_SelectData_SelectOption? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
}

/// the select field type requires an (initial) set of options (possible values)
class CreatePropertyRequest_SelectData extends $pb.GeneratedMessage {
  factory CreatePropertyRequest_SelectData({
    $core.bool? allowFreetext,
    $core.Iterable<CreatePropertyRequest_SelectData_SelectOption>? options,
  }) {
    final $result = create();
    if (allowFreetext != null) {
      $result.allowFreetext = allowFreetext;
    }
    if (options != null) {
      $result.options.addAll(options);
    }
    return $result;
  }
  CreatePropertyRequest_SelectData._() : super();
  factory CreatePropertyRequest_SelectData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyRequest_SelectData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'allowFreetext')
    ..pc<CreatePropertyRequest_SelectData_SelectOption>(2, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: CreatePropertyRequest_SelectData_SelectOption.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest_SelectData clone() => CreatePropertyRequest_SelectData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest_SelectData copyWith(void Function(CreatePropertyRequest_SelectData) updates) => super.copyWith((message) => updates(message as CreatePropertyRequest_SelectData)) as CreatePropertyRequest_SelectData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest_SelectData create() => CreatePropertyRequest_SelectData._();
  CreatePropertyRequest_SelectData createEmptyInstance() => create();
  static $pb.PbList<CreatePropertyRequest_SelectData> createRepeated() => $pb.PbList<CreatePropertyRequest_SelectData>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest_SelectData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertyRequest_SelectData>(create);
  static CreatePropertyRequest_SelectData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get allowFreetext => $_getBF(0);
  @$pb.TagNumber(1)
  set allowFreetext($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAllowFreetext() => $_has(0);
  @$pb.TagNumber(1)
  void clearAllowFreetext() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<CreatePropertyRequest_SelectData_SelectOption> get options => $_getList(1);
}

enum CreatePropertyRequest_FieldTypeData {
  selectData, 
  notSet
}

/// Creates a new Property
class CreatePropertyRequest extends $pb.GeneratedMessage {
  factory CreatePropertyRequest({
    $23.SubjectType? subjectType,
    $23.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.String? setId,
    CreatePropertyRequest_SelectData? selectData,
  }) {
    final $result = create();
    if (subjectType != null) {
      $result.subjectType = subjectType;
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
    if (setId != null) {
      $result.setId = setId;
    }
    if (selectData != null) {
      $result.selectData = selectData;
    }
    return $result;
  }
  CreatePropertyRequest._() : super();
  factory CreatePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CreatePropertyRequest_FieldTypeData> _CreatePropertyRequest_FieldTypeDataByTag = {
    9 : CreatePropertyRequest_FieldTypeData.selectData,
    0 : CreatePropertyRequest_FieldTypeData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [9])
    ..e<$23.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $23.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $23.SubjectType.valueOf, enumValues: $23.SubjectType.values)
    ..e<$23.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $23.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $23.FieldType.valueOf, enumValues: $23.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'setId')
    ..aOM<CreatePropertyRequest_SelectData>(9, _omitFieldNames ? '' : 'selectData', subBuilder: CreatePropertyRequest_SelectData.create)
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

  CreatePropertyRequest_FieldTypeData whichFieldTypeData() => _CreatePropertyRequest_FieldTypeDataByTag[$_whichOneof(0)]!;
  void clearFieldTypeData() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  $23.SubjectType get subjectType => $_getN(0);
  @$pb.TagNumber(2)
  set subjectType($23.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(0);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $23.FieldType get fieldType => $_getN(1);
  @$pb.TagNumber(3)
  set fieldType($23.FieldType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldType() => $_has(1);
  @$pb.TagNumber(3)
  void clearFieldType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  /// ID of set this Property should belong to
  @$pb.TagNumber(6)
  $core.String get setId => $_getSZ(4);
  @$pb.TagNumber(6)
  set setId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasSetId() => $_has(4);
  @$pb.TagNumber(6)
  void clearSetId() => clearField(6);

  @$pb.TagNumber(9)
  CreatePropertyRequest_SelectData get selectData => $_getN(5);
  @$pb.TagNumber(9)
  set selectData(CreatePropertyRequest_SelectData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSelectData() => $_has(5);
  @$pb.TagNumber(9)
  void clearSelectData() => clearField(9);
  @$pb.TagNumber(9)
  CreatePropertyRequest_SelectData ensureSelectData() => $_ensure(5);
}

class CreatePropertyResponse extends $pb.GeneratedMessage {
  factory CreatePropertyResponse({
    $core.String? propertyId,
    $core.String? consistency,
  }) {
    final $result = create();
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  CreatePropertyResponse._() : super();
  factory CreatePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'propertyId')
    ..aOS(2, _omitFieldNames ? '' : 'consistency')
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
  $core.String get propertyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set propertyId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get consistency => $_getSZ(1);
  @$pb.TagNumber(2)
  set consistency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsistency() => clearField(2);
}

enum GetPropertyRequest_ViewSource_Value {
  global, 
  wardId, 
  notSet
}

class GetPropertyRequest_ViewSource extends $pb.GeneratedMessage {
  factory GetPropertyRequest_ViewSource({
    $core.bool? global,
    $core.String? wardId,
  }) {
    final $result = create();
    if (global != null) {
      $result.global = global;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetPropertyRequest_ViewSource._() : super();
  factory GetPropertyRequest_ViewSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyRequest_ViewSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetPropertyRequest_ViewSource_Value> _GetPropertyRequest_ViewSource_ValueByTag = {
    1 : GetPropertyRequest_ViewSource_Value.global,
    2 : GetPropertyRequest_ViewSource_Value.wardId,
    0 : GetPropertyRequest_ViewSource_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyRequest.ViewSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, _omitFieldNames ? '' : 'global')
    ..aOS(2, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyRequest_ViewSource clone() => GetPropertyRequest_ViewSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyRequest_ViewSource copyWith(void Function(GetPropertyRequest_ViewSource) updates) => super.copyWith((message) => updates(message as GetPropertyRequest_ViewSource)) as GetPropertyRequest_ViewSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyRequest_ViewSource create() => GetPropertyRequest_ViewSource._();
  GetPropertyRequest_ViewSource createEmptyInstance() => create();
  static $pb.PbList<GetPropertyRequest_ViewSource> createRepeated() => $pb.PbList<GetPropertyRequest_ViewSource>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyRequest_ViewSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyRequest_ViewSource>(create);
  static GetPropertyRequest_ViewSource? _defaultInstance;

  GetPropertyRequest_ViewSource_Value whichValue() => _GetPropertyRequest_ViewSource_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get global => $_getBF(0);
  @$pb.TagNumber(1)
  set global($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGlobal() => $_has(0);
  @$pb.TagNumber(1)
  void clearGlobal() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get wardId => $_getSZ(1);
  @$pb.TagNumber(2)
  set wardId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWardId() => clearField(2);
}

class GetPropertyRequest extends $pb.GeneratedMessage {
  factory GetPropertyRequest({
    $core.String? id,
    GetPropertyRequest_ViewSource? viewSource,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (viewSource != null) {
      $result.viewSource = viewSource;
    }
    return $result;
  }
  GetPropertyRequest._() : super();
  factory GetPropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<GetPropertyRequest_ViewSource>(2, _omitFieldNames ? '' : 'viewSource', subBuilder: GetPropertyRequest_ViewSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyRequest clone() => GetPropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyRequest copyWith(void Function(GetPropertyRequest) updates) => super.copyWith((message) => updates(message as GetPropertyRequest)) as GetPropertyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyRequest create() => GetPropertyRequest._();
  GetPropertyRequest createEmptyInstance() => create();
  static $pb.PbList<GetPropertyRequest> createRepeated() => $pb.PbList<GetPropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyRequest>(create);
  static GetPropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// describes from which View (global, ward, ...) the property is accessed from
  /// The attribute "always_include_for_current_context" depends on this ViewSource
  @$pb.TagNumber(2)
  GetPropertyRequest_ViewSource get viewSource => $_getN(1);
  @$pb.TagNumber(2)
  set viewSource(GetPropertyRequest_ViewSource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasViewSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewSource() => clearField(2);
  @$pb.TagNumber(2)
  GetPropertyRequest_ViewSource ensureViewSource() => $_ensure(1);
}

class GetPropertyResponse_SelectData_SelectOption extends $pb.GeneratedMessage {
  factory GetPropertyResponse_SelectData_SelectOption({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.bool? isCustom,
    $core.String? consistency,
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
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetPropertyResponse_SelectData_SelectOption._() : super();
  factory GetPropertyResponse_SelectData_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyResponse_SelectData_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOB(4, _omitFieldNames ? '' : 'isCustom')
    ..aOS(5, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyResponse_SelectData_SelectOption clone() => GetPropertyResponse_SelectData_SelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyResponse_SelectData_SelectOption copyWith(void Function(GetPropertyResponse_SelectData_SelectOption) updates) => super.copyWith((message) => updates(message as GetPropertyResponse_SelectData_SelectOption)) as GetPropertyResponse_SelectData_SelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyResponse_SelectData_SelectOption create() => GetPropertyResponse_SelectData_SelectOption._();
  GetPropertyResponse_SelectData_SelectOption createEmptyInstance() => create();
  static $pb.PbList<GetPropertyResponse_SelectData_SelectOption> createRepeated() => $pb.PbList<GetPropertyResponse_SelectData_SelectOption>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyResponse_SelectData_SelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyResponse_SelectData_SelectOption>(create);
  static GetPropertyResponse_SelectData_SelectOption? _defaultInstance;

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

  @$pb.TagNumber(5)
  $core.String get consistency => $_getSZ(4);
  @$pb.TagNumber(5)
  set consistency($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasConsistency() => $_has(4);
  @$pb.TagNumber(5)
  void clearConsistency() => clearField(5);
}

class GetPropertyResponse_SelectData extends $pb.GeneratedMessage {
  factory GetPropertyResponse_SelectData({
    $core.bool? allowFreetext,
    $core.Iterable<GetPropertyResponse_SelectData_SelectOption>? options,
  }) {
    final $result = create();
    if (allowFreetext != null) {
      $result.allowFreetext = allowFreetext;
    }
    if (options != null) {
      $result.options.addAll(options);
    }
    return $result;
  }
  GetPropertyResponse_SelectData._() : super();
  factory GetPropertyResponse_SelectData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyResponse_SelectData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'allowFreetext')
    ..pc<GetPropertyResponse_SelectData_SelectOption>(2, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: GetPropertyResponse_SelectData_SelectOption.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyResponse_SelectData clone() => GetPropertyResponse_SelectData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyResponse_SelectData copyWith(void Function(GetPropertyResponse_SelectData) updates) => super.copyWith((message) => updates(message as GetPropertyResponse_SelectData)) as GetPropertyResponse_SelectData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyResponse_SelectData create() => GetPropertyResponse_SelectData._();
  GetPropertyResponse_SelectData createEmptyInstance() => create();
  static $pb.PbList<GetPropertyResponse_SelectData> createRepeated() => $pb.PbList<GetPropertyResponse_SelectData>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyResponse_SelectData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyResponse_SelectData>(create);
  static GetPropertyResponse_SelectData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get allowFreetext => $_getBF(0);
  @$pb.TagNumber(1)
  set allowFreetext($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAllowFreetext() => $_has(0);
  @$pb.TagNumber(1)
  void clearAllowFreetext() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GetPropertyResponse_SelectData_SelectOption> get options => $_getList(1);
}

enum GetPropertyResponse_FieldTypeData {
  selectData, 
  notSet
}

class GetPropertyResponse extends $pb.GeneratedMessage {
  factory GetPropertyResponse({
    $core.String? id,
    $23.SubjectType? subjectType,
    $23.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.String? setId,
    GetPropertyResponse_SelectData? selectData,
    $core.bool? alwaysIncludeForViewSource,
    $core.String? consistency,
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
    if (description != null) {
      $result.description = description;
    }
    if (isArchived != null) {
      $result.isArchived = isArchived;
    }
    if (setId != null) {
      $result.setId = setId;
    }
    if (selectData != null) {
      $result.selectData = selectData;
    }
    if (alwaysIncludeForViewSource != null) {
      $result.alwaysIncludeForViewSource = alwaysIncludeForViewSource;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetPropertyResponse._() : super();
  factory GetPropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetPropertyResponse_FieldTypeData> _GetPropertyResponse_FieldTypeDataByTag = {
    10 : GetPropertyResponse_FieldTypeData.selectData,
    0 : GetPropertyResponse_FieldTypeData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [10])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$23.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $23.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $23.SubjectType.valueOf, enumValues: $23.SubjectType.values)
    ..e<$23.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $23.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $23.FieldType.valueOf, enumValues: $23.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..aOM<GetPropertyResponse_SelectData>(10, _omitFieldNames ? '' : 'selectData', subBuilder: GetPropertyResponse_SelectData.create)
    ..aOB(11, _omitFieldNames ? '' : 'alwaysIncludeForViewSource')
    ..aOS(12, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyResponse clone() => GetPropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyResponse copyWith(void Function(GetPropertyResponse) updates) => super.copyWith((message) => updates(message as GetPropertyResponse)) as GetPropertyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyResponse create() => GetPropertyResponse._();
  GetPropertyResponse createEmptyInstance() => create();
  static $pb.PbList<GetPropertyResponse> createRepeated() => $pb.PbList<GetPropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyResponse>(create);
  static GetPropertyResponse? _defaultInstance;

  GetPropertyResponse_FieldTypeData whichFieldTypeData() => _GetPropertyResponse_FieldTypeDataByTag[$_whichOneof(0)]!;
  void clearFieldTypeData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $23.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($23.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $23.FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($23.FieldType v) { setField(3, v); }
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

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isArchived => $_getBF(5);
  @$pb.TagNumber(6)
  set isArchived($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsArchived() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsArchived() => clearField(6);

  /// id of set this Property should belong to
  @$pb.TagNumber(8)
  $core.String get setId => $_getSZ(6);
  @$pb.TagNumber(8)
  set setId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasSetId() => $_has(6);
  @$pb.TagNumber(8)
  void clearSetId() => clearField(8);

  @$pb.TagNumber(10)
  GetPropertyResponse_SelectData get selectData => $_getN(7);
  @$pb.TagNumber(10)
  set selectData(GetPropertyResponse_SelectData v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSelectData() => $_has(7);
  @$pb.TagNumber(10)
  void clearSelectData() => clearField(10);
  @$pb.TagNumber(10)
  GetPropertyResponse_SelectData ensureSelectData() => $_ensure(7);

  @$pb.TagNumber(11)
  $core.bool get alwaysIncludeForViewSource => $_getBF(8);
  @$pb.TagNumber(11)
  set alwaysIncludeForViewSource($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(11)
  $core.bool hasAlwaysIncludeForViewSource() => $_has(8);
  @$pb.TagNumber(11)
  void clearAlwaysIncludeForViewSource() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get consistency => $_getSZ(9);
  @$pb.TagNumber(12)
  set consistency($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(12)
  $core.bool hasConsistency() => $_has(9);
  @$pb.TagNumber(12)
  void clearConsistency() => clearField(12);
}

class UpdatePropertyRequest_SelectData_SelectOption extends $pb.GeneratedMessage {
  factory UpdatePropertyRequest_SelectData_SelectOption({
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
  UpdatePropertyRequest_SelectData_SelectOption._() : super();
  factory UpdatePropertyRequest_SelectData_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyRequest_SelectData_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyRequest.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
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
  UpdatePropertyRequest_SelectData_SelectOption clone() => UpdatePropertyRequest_SelectData_SelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyRequest_SelectData_SelectOption copyWith(void Function(UpdatePropertyRequest_SelectData_SelectOption) updates) => super.copyWith((message) => updates(message as UpdatePropertyRequest_SelectData_SelectOption)) as UpdatePropertyRequest_SelectData_SelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest_SelectData_SelectOption create() => UpdatePropertyRequest_SelectData_SelectOption._();
  UpdatePropertyRequest_SelectData_SelectOption createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyRequest_SelectData_SelectOption> createRepeated() => $pb.PbList<UpdatePropertyRequest_SelectData_SelectOption>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest_SelectData_SelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyRequest_SelectData_SelectOption>(create);
  static UpdatePropertyRequest_SelectData_SelectOption? _defaultInstance;

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

class UpdatePropertyRequest_SelectData extends $pb.GeneratedMessage {
  factory UpdatePropertyRequest_SelectData({
    $core.bool? allowFreetext,
    $core.Iterable<$core.String>? removeOptions,
    $core.Iterable<UpdatePropertyRequest_SelectData_SelectOption>? upsertOptions,
  }) {
    final $result = create();
    if (allowFreetext != null) {
      $result.allowFreetext = allowFreetext;
    }
    if (removeOptions != null) {
      $result.removeOptions.addAll(removeOptions);
    }
    if (upsertOptions != null) {
      $result.upsertOptions.addAll(upsertOptions);
    }
    return $result;
  }
  UpdatePropertyRequest_SelectData._() : super();
  factory UpdatePropertyRequest_SelectData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyRequest_SelectData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyRequest.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'allowFreetext')
    ..pPS(2, _omitFieldNames ? '' : 'removeOptions')
    ..pc<UpdatePropertyRequest_SelectData_SelectOption>(3, _omitFieldNames ? '' : 'upsertOptions', $pb.PbFieldType.PM, subBuilder: UpdatePropertyRequest_SelectData_SelectOption.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyRequest_SelectData clone() => UpdatePropertyRequest_SelectData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyRequest_SelectData copyWith(void Function(UpdatePropertyRequest_SelectData) updates) => super.copyWith((message) => updates(message as UpdatePropertyRequest_SelectData)) as UpdatePropertyRequest_SelectData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest_SelectData create() => UpdatePropertyRequest_SelectData._();
  UpdatePropertyRequest_SelectData createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyRequest_SelectData> createRepeated() => $pb.PbList<UpdatePropertyRequest_SelectData>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest_SelectData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyRequest_SelectData>(create);
  static UpdatePropertyRequest_SelectData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get allowFreetext => $_getBF(0);
  @$pb.TagNumber(1)
  set allowFreetext($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAllowFreetext() => $_has(0);
  @$pb.TagNumber(1)
  void clearAllowFreetext() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get removeOptions => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<UpdatePropertyRequest_SelectData_SelectOption> get upsertOptions => $_getList(2);
}

enum UpdatePropertyRequest_FieldTypeData {
  selectData, 
  notSet
}

class UpdatePropertyRequest extends $pb.GeneratedMessage {
  factory UpdatePropertyRequest({
    $core.String? id,
    $23.SubjectType? subjectType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.String? setId,
    UpdatePropertyRequest_SelectData? selectData,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (subjectType != null) {
      $result.subjectType = subjectType;
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
    if (setId != null) {
      $result.setId = setId;
    }
    if (selectData != null) {
      $result.selectData = selectData;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  UpdatePropertyRequest._() : super();
  factory UpdatePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UpdatePropertyRequest_FieldTypeData> _UpdatePropertyRequest_FieldTypeDataByTag = {
    10 : UpdatePropertyRequest_FieldTypeData.selectData,
    0 : UpdatePropertyRequest_FieldTypeData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [10])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$23.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $23.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $23.SubjectType.valueOf, enumValues: $23.SubjectType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..aOM<UpdatePropertyRequest_SelectData>(10, _omitFieldNames ? '' : 'selectData', subBuilder: UpdatePropertyRequest_SelectData.create)
    ..aOS(11, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyRequest clone() => UpdatePropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyRequest copyWith(void Function(UpdatePropertyRequest) updates) => super.copyWith((message) => updates(message as UpdatePropertyRequest)) as UpdatePropertyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest create() => UpdatePropertyRequest._();
  UpdatePropertyRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyRequest> createRepeated() => $pb.PbList<UpdatePropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyRequest>(create);
  static UpdatePropertyRequest? _defaultInstance;

  UpdatePropertyRequest_FieldTypeData whichFieldTypeData() => _UpdatePropertyRequest_FieldTypeDataByTag[$_whichOneof(0)]!;
  void clearFieldTypeData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $23.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($23.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isArchived => $_getBF(4);
  @$pb.TagNumber(6)
  set isArchived($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsArchived() => $_has(4);
  @$pb.TagNumber(6)
  void clearIsArchived() => clearField(6);

  /// ID of set this Property should belong to
  @$pb.TagNumber(8)
  $core.String get setId => $_getSZ(5);
  @$pb.TagNumber(8)
  set setId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasSetId() => $_has(5);
  @$pb.TagNumber(8)
  void clearSetId() => clearField(8);

  @$pb.TagNumber(10)
  UpdatePropertyRequest_SelectData get selectData => $_getN(6);
  @$pb.TagNumber(10)
  set selectData(UpdatePropertyRequest_SelectData v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSelectData() => $_has(6);
  @$pb.TagNumber(10)
  void clearSelectData() => clearField(10);
  @$pb.TagNumber(10)
  UpdatePropertyRequest_SelectData ensureSelectData() => $_ensure(6);

  @$pb.TagNumber(11)
  $core.String get consistency => $_getSZ(7);
  @$pb.TagNumber(11)
  set consistency($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasConsistency() => $_has(7);
  @$pb.TagNumber(11)
  void clearConsistency() => clearField(11);
}

class UpdatePropertyResponse extends $pb.GeneratedMessage {
  factory UpdatePropertyResponse({
    $22.Conflict? conflict,
    $core.String? consistency,
  }) {
    final $result = create();
    if (conflict != null) {
      $result.conflict = conflict;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  UpdatePropertyResponse._() : super();
  factory UpdatePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOM<$22.Conflict>(1, _omitFieldNames ? '' : 'conflict', subBuilder: $22.Conflict.create)
    ..aOS(2, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyResponse clone() => UpdatePropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyResponse copyWith(void Function(UpdatePropertyResponse) updates) => super.copyWith((message) => updates(message as UpdatePropertyResponse)) as UpdatePropertyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyResponse create() => UpdatePropertyResponse._();
  UpdatePropertyResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyResponse> createRepeated() => $pb.PbList<UpdatePropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyResponse>(create);
  static UpdatePropertyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $22.Conflict get conflict => $_getN(0);
  @$pb.TagNumber(1)
  set conflict($22.Conflict v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConflict() => $_has(0);
  @$pb.TagNumber(1)
  void clearConflict() => clearField(1);
  @$pb.TagNumber(1)
  $22.Conflict ensureConflict() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get consistency => $_getSZ(1);
  @$pb.TagNumber(2)
  set consistency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsistency() => clearField(2);
}

class GetPropertiesRequest extends $pb.GeneratedMessage {
  factory GetPropertiesRequest({
    $23.SubjectType? subjectType,
  }) {
    final $result = create();
    if (subjectType != null) {
      $result.subjectType = subjectType;
    }
    return $result;
  }
  GetPropertiesRequest._() : super();
  factory GetPropertiesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..e<$23.SubjectType>(1, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $23.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $23.SubjectType.valueOf, enumValues: $23.SubjectType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertiesRequest clone() => GetPropertiesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertiesRequest copyWith(void Function(GetPropertiesRequest) updates) => super.copyWith((message) => updates(message as GetPropertiesRequest)) as GetPropertiesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertiesRequest create() => GetPropertiesRequest._();
  GetPropertiesRequest createEmptyInstance() => create();
  static $pb.PbList<GetPropertiesRequest> createRepeated() => $pb.PbList<GetPropertiesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPropertiesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertiesRequest>(create);
  static GetPropertiesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $23.SubjectType get subjectType => $_getN(0);
  @$pb.TagNumber(1)
  set subjectType($23.SubjectType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubjectType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubjectType() => clearField(1);
}

class GetPropertiesResponse_Property_SelectData_SelectOption extends $pb.GeneratedMessage {
  factory GetPropertiesResponse_Property_SelectData_SelectOption({
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
  GetPropertiesResponse_Property_SelectData_SelectOption._() : super();
  factory GetPropertiesResponse_Property_SelectData_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesResponse_Property_SelectData_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse.Property.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
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
  GetPropertiesResponse_Property_SelectData_SelectOption clone() => GetPropertiesResponse_Property_SelectData_SelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertiesResponse_Property_SelectData_SelectOption copyWith(void Function(GetPropertiesResponse_Property_SelectData_SelectOption) updates) => super.copyWith((message) => updates(message as GetPropertiesResponse_Property_SelectData_SelectOption)) as GetPropertiesResponse_Property_SelectData_SelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse_Property_SelectData_SelectOption create() => GetPropertiesResponse_Property_SelectData_SelectOption._();
  GetPropertiesResponse_Property_SelectData_SelectOption createEmptyInstance() => create();
  static $pb.PbList<GetPropertiesResponse_Property_SelectData_SelectOption> createRepeated() => $pb.PbList<GetPropertiesResponse_Property_SelectData_SelectOption>();
  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse_Property_SelectData_SelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertiesResponse_Property_SelectData_SelectOption>(create);
  static GetPropertiesResponse_Property_SelectData_SelectOption? _defaultInstance;

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

class GetPropertiesResponse_Property_SelectData extends $pb.GeneratedMessage {
  factory GetPropertiesResponse_Property_SelectData({
    $core.bool? allowFreetext,
    $core.Iterable<GetPropertiesResponse_Property_SelectData_SelectOption>? options,
  }) {
    final $result = create();
    if (allowFreetext != null) {
      $result.allowFreetext = allowFreetext;
    }
    if (options != null) {
      $result.options.addAll(options);
    }
    return $result;
  }
  GetPropertiesResponse_Property_SelectData._() : super();
  factory GetPropertiesResponse_Property_SelectData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesResponse_Property_SelectData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse.Property.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'allowFreetext')
    ..pc<GetPropertiesResponse_Property_SelectData_SelectOption>(2, _omitFieldNames ? '' : 'options', $pb.PbFieldType.PM, subBuilder: GetPropertiesResponse_Property_SelectData_SelectOption.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertiesResponse_Property_SelectData clone() => GetPropertiesResponse_Property_SelectData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertiesResponse_Property_SelectData copyWith(void Function(GetPropertiesResponse_Property_SelectData) updates) => super.copyWith((message) => updates(message as GetPropertiesResponse_Property_SelectData)) as GetPropertiesResponse_Property_SelectData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse_Property_SelectData create() => GetPropertiesResponse_Property_SelectData._();
  GetPropertiesResponse_Property_SelectData createEmptyInstance() => create();
  static $pb.PbList<GetPropertiesResponse_Property_SelectData> createRepeated() => $pb.PbList<GetPropertiesResponse_Property_SelectData>();
  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse_Property_SelectData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertiesResponse_Property_SelectData>(create);
  static GetPropertiesResponse_Property_SelectData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get allowFreetext => $_getBF(0);
  @$pb.TagNumber(1)
  set allowFreetext($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAllowFreetext() => $_has(0);
  @$pb.TagNumber(1)
  void clearAllowFreetext() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GetPropertiesResponse_Property_SelectData_SelectOption> get options => $_getList(1);
}

enum GetPropertiesResponse_Property_FieldTypeData {
  selectData, 
  notSet
}

class GetPropertiesResponse_Property extends $pb.GeneratedMessage {
  factory GetPropertiesResponse_Property({
    $core.String? id,
    $23.SubjectType? subjectType,
    $23.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.String? setId,
    $core.String? consistency,
    GetPropertiesResponse_Property_SelectData? selectData,
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
    if (description != null) {
      $result.description = description;
    }
    if (isArchived != null) {
      $result.isArchived = isArchived;
    }
    if (setId != null) {
      $result.setId = setId;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    if (selectData != null) {
      $result.selectData = selectData;
    }
    return $result;
  }
  GetPropertiesResponse_Property._() : super();
  factory GetPropertiesResponse_Property.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesResponse_Property.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetPropertiesResponse_Property_FieldTypeData> _GetPropertiesResponse_Property_FieldTypeDataByTag = {
    10 : GetPropertiesResponse_Property_FieldTypeData.selectData,
    0 : GetPropertiesResponse_Property_FieldTypeData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse.Property', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [10])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$23.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $23.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $23.SubjectType.valueOf, enumValues: $23.SubjectType.values)
    ..e<$23.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $23.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $23.FieldType.valueOf, enumValues: $23.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..aOS(9, _omitFieldNames ? '' : 'consistency')
    ..aOM<GetPropertiesResponse_Property_SelectData>(10, _omitFieldNames ? '' : 'selectData', subBuilder: GetPropertiesResponse_Property_SelectData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertiesResponse_Property clone() => GetPropertiesResponse_Property()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertiesResponse_Property copyWith(void Function(GetPropertiesResponse_Property) updates) => super.copyWith((message) => updates(message as GetPropertiesResponse_Property)) as GetPropertiesResponse_Property;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse_Property create() => GetPropertiesResponse_Property._();
  GetPropertiesResponse_Property createEmptyInstance() => create();
  static $pb.PbList<GetPropertiesResponse_Property> createRepeated() => $pb.PbList<GetPropertiesResponse_Property>();
  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse_Property getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertiesResponse_Property>(create);
  static GetPropertiesResponse_Property? _defaultInstance;

  GetPropertiesResponse_Property_FieldTypeData whichFieldTypeData() => _GetPropertiesResponse_Property_FieldTypeDataByTag[$_whichOneof(0)]!;
  void clearFieldTypeData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $23.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($23.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $23.FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($23.FieldType v) { setField(3, v); }
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

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isArchived => $_getBF(5);
  @$pb.TagNumber(6)
  set isArchived($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsArchived() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsArchived() => clearField(6);

  /// id of set this Property should belong to
  @$pb.TagNumber(8)
  $core.String get setId => $_getSZ(6);
  @$pb.TagNumber(8)
  set setId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasSetId() => $_has(6);
  @$pb.TagNumber(8)
  void clearSetId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get consistency => $_getSZ(7);
  @$pb.TagNumber(9)
  set consistency($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasConsistency() => $_has(7);
  @$pb.TagNumber(9)
  void clearConsistency() => clearField(9);

  @$pb.TagNumber(10)
  GetPropertiesResponse_Property_SelectData get selectData => $_getN(8);
  @$pb.TagNumber(10)
  set selectData(GetPropertiesResponse_Property_SelectData v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSelectData() => $_has(8);
  @$pb.TagNumber(10)
  void clearSelectData() => clearField(10);
  @$pb.TagNumber(10)
  GetPropertiesResponse_Property_SelectData ensureSelectData() => $_ensure(8);
}

class GetPropertiesResponse extends $pb.GeneratedMessage {
  factory GetPropertiesResponse({
    $core.Iterable<GetPropertiesResponse_Property>? properties,
  }) {
    final $result = create();
    if (properties != null) {
      $result.properties.addAll(properties);
    }
    return $result;
  }
  GetPropertiesResponse._() : super();
  factory GetPropertiesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..pc<GetPropertiesResponse_Property>(1, _omitFieldNames ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: GetPropertiesResponse_Property.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertiesResponse clone() => GetPropertiesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertiesResponse copyWith(void Function(GetPropertiesResponse) updates) => super.copyWith((message) => updates(message as GetPropertiesResponse)) as GetPropertiesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse create() => GetPropertiesResponse._();
  GetPropertiesResponse createEmptyInstance() => create();
  static $pb.PbList<GetPropertiesResponse> createRepeated() => $pb.PbList<GetPropertiesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertiesResponse>(create);
  static GetPropertiesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetPropertiesResponse_Property> get properties => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
