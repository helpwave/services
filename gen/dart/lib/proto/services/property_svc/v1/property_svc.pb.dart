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

import 'types.pbenum.dart' as $15;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
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
  none, 
  selectData, 
  notSet
}

///
///  CreateProperty
class CreatePropertyRequest extends $pb.GeneratedMessage {
  factory CreatePropertyRequest({
    $15.SubjectType? subjectType,
    $15.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.String? setId,
    $core.bool? none,
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
    if (none != null) {
      $result.none = none;
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
    8 : CreatePropertyRequest_FieldTypeData.none,
    9 : CreatePropertyRequest_FieldTypeData.selectData,
    0 : CreatePropertyRequest_FieldTypeData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [8, 9])
    ..e<$15.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $15.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $15.SubjectType.valueOf, enumValues: $15.SubjectType.values)
    ..e<$15.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $15.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $15.FieldType.valueOf, enumValues: $15.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'setId')
    ..aOB(8, _omitFieldNames ? '' : 'none')
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
  $15.SubjectType get subjectType => $_getN(0);
  @$pb.TagNumber(2)
  set subjectType($15.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(0);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $15.FieldType get fieldType => $_getN(1);
  @$pb.TagNumber(3)
  set fieldType($15.FieldType v) { setField(3, v); }
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

  @$pb.TagNumber(8)
  $core.bool get none => $_getBF(5);
  @$pb.TagNumber(8)
  set none($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasNone() => $_has(5);
  @$pb.TagNumber(8)
  void clearNone() => clearField(8);

  @$pb.TagNumber(9)
  CreatePropertyRequest_SelectData get selectData => $_getN(6);
  @$pb.TagNumber(9)
  set selectData(CreatePropertyRequest_SelectData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSelectData() => $_has(6);
  @$pb.TagNumber(9)
  void clearSelectData() => clearField(9);
  @$pb.TagNumber(9)
  CreatePropertyRequest_SelectData ensureSelectData() => $_ensure(6);
}

class CreatePropertyResponse extends $pb.GeneratedMessage {
  factory CreatePropertyResponse({
    $core.String? propertyId,
  }) {
    final $result = create();
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    return $result;
  }
  CreatePropertyResponse._() : super();
  factory CreatePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'propertyId')
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
}

enum GetPropertyRequest_ViewSource_Value {
  global, 
  wardId, 
  notSet
}

/// describes from which View (global, ward, ...) the property is accessed from
/// The attribute "always_include_for_current_context" depends on this ViewSource
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyRequest.ViewSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
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
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetPropertyRequest._() : super();
  factory GetPropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
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
}

class GetPropertyResponse_SelectData_SelectOption extends $pb.GeneratedMessage {
  factory GetPropertyResponse_SelectData_SelectOption({
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
  GetPropertyResponse_SelectData_SelectOption._() : super();
  factory GetPropertyResponse_SelectData_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyResponse_SelectData_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
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
  none, 
  selectData, 
  notSet
}

class GetPropertyResponse extends $pb.GeneratedMessage {
  factory GetPropertyResponse({
    $core.String? id,
    $15.SubjectType? subjectType,
    $15.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.String? setId,
    $core.bool? none,
    GetPropertyResponse_SelectData? selectData,
    $core.bool? alwaysIncludeForViewSource,
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
    if (none != null) {
      $result.none = none;
    }
    if (selectData != null) {
      $result.selectData = selectData;
    }
    if (alwaysIncludeForViewSource != null) {
      $result.alwaysIncludeForViewSource = alwaysIncludeForViewSource;
    }
    return $result;
  }
  GetPropertyResponse._() : super();
  factory GetPropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetPropertyResponse_FieldTypeData> _GetPropertyResponse_FieldTypeDataByTag = {
    9 : GetPropertyResponse_FieldTypeData.none,
    10 : GetPropertyResponse_FieldTypeData.selectData,
    0 : GetPropertyResponse_FieldTypeData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..oo(0, [9, 10])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$15.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $15.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $15.SubjectType.valueOf, enumValues: $15.SubjectType.values)
    ..e<$15.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $15.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $15.FieldType.valueOf, enumValues: $15.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..aOB(9, _omitFieldNames ? '' : 'none')
    ..aOM<GetPropertyResponse_SelectData>(10, _omitFieldNames ? '' : 'selectData', subBuilder: GetPropertyResponse_SelectData.create)
    ..aOB(11, _omitFieldNames ? '' : 'alwaysIncludeForViewSource')
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
  $15.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($15.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $15.FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($15.FieldType v) { setField(3, v); }
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
  $core.bool get none => $_getBF(7);
  @$pb.TagNumber(9)
  set none($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasNone() => $_has(7);
  @$pb.TagNumber(9)
  void clearNone() => clearField(9);

  @$pb.TagNumber(10)
  GetPropertyResponse_SelectData get selectData => $_getN(8);
  @$pb.TagNumber(10)
  set selectData(GetPropertyResponse_SelectData v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSelectData() => $_has(8);
  @$pb.TagNumber(10)
  void clearSelectData() => clearField(10);
  @$pb.TagNumber(10)
  GetPropertyResponse_SelectData ensureSelectData() => $_ensure(8);

  @$pb.TagNumber(11)
  $core.bool get alwaysIncludeForViewSource => $_getBF(9);
  @$pb.TagNumber(11)
  set alwaysIncludeForViewSource($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasAlwaysIncludeForViewSource() => $_has(9);
  @$pb.TagNumber(11)
  void clearAlwaysIncludeForViewSource() => clearField(11);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
