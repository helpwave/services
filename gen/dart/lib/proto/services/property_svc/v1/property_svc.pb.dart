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

import 'types.pbenum.dart' as $14;

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
    $14.ViewContext? context,
    $14.SubjectType? subjectType,
    $14.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.String? setId,
    $core.bool? alwaysIncludeForCurrentContext,
    $core.bool? none,
    CreatePropertyRequest_SelectData? selectData,
  }) {
    final $result = create();
    if (context != null) {
      $result.context = context;
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
    if (setId != null) {
      $result.setId = setId;
    }
    if (alwaysIncludeForCurrentContext != null) {
      $result.alwaysIncludeForCurrentContext = alwaysIncludeForCurrentContext;
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
    ..e<$14.ViewContext>(1, _omitFieldNames ? '' : 'context', $pb.PbFieldType.OE, defaultOrMaker: $14.ViewContext.VIEW_CONTEXT_UNSPECIFIED, valueOf: $14.ViewContext.valueOf, enumValues: $14.ViewContext.values)
    ..e<$14.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $14.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $14.SubjectType.valueOf, enumValues: $14.SubjectType.values)
    ..e<$14.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $14.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $14.FieldType.valueOf, enumValues: $14.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'setId')
    ..aOB(7, _omitFieldNames ? '' : 'alwaysIncludeForCurrentContext')
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

  @$pb.TagNumber(1)
  $14.ViewContext get context => $_getN(0);
  @$pb.TagNumber(1)
  set context($14.ViewContext v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasContext() => $_has(0);
  @$pb.TagNumber(1)
  void clearContext() => clearField(1);

  @$pb.TagNumber(2)
  $14.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($14.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $14.FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($14.FieldType v) { setField(3, v); }
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

  /// ID of set this Property should belong to
  @$pb.TagNumber(6)
  $core.String get setId => $_getSZ(5);
  @$pb.TagNumber(6)
  set setId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSetId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSetId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get alwaysIncludeForCurrentContext => $_getBF(6);
  @$pb.TagNumber(7)
  set alwaysIncludeForCurrentContext($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAlwaysIncludeForCurrentContext() => $_has(6);
  @$pb.TagNumber(7)
  void clearAlwaysIncludeForCurrentContext() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get none => $_getBF(7);
  @$pb.TagNumber(8)
  set none($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasNone() => $_has(7);
  @$pb.TagNumber(8)
  void clearNone() => clearField(8);

  @$pb.TagNumber(9)
  CreatePropertyRequest_SelectData get selectData => $_getN(8);
  @$pb.TagNumber(9)
  set selectData(CreatePropertyRequest_SelectData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSelectData() => $_has(8);
  @$pb.TagNumber(9)
  void clearSelectData() => clearField(9);
  @$pb.TagNumber(9)
  CreatePropertyRequest_SelectData ensureSelectData() => $_ensure(8);
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

class GetPropertyResponse extends $pb.GeneratedMessage {
  factory GetPropertyResponse({
    $core.String? id,
    $core.String? name,
    $core.String? subjectType,
    $core.String? subjectId,
    $14.FieldType? fieldType,
    $core.String? description,
    $core.bool? isArchived,
    $core.bool? isSoftRequired,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (subjectType != null) {
      $result.subjectType = subjectType;
    }
    if (subjectId != null) {
      $result.subjectId = subjectId;
    }
    if (fieldType != null) {
      $result.fieldType = fieldType;
    }
    if (description != null) {
      $result.description = description;
    }
    if (isArchived != null) {
      $result.isArchived = isArchived;
    }
    if (isSoftRequired != null) {
      $result.isSoftRequired = isSoftRequired;
    }
    return $result;
  }
  GetPropertyResponse._() : super();
  factory GetPropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'subjectType')
    ..aOS(4, _omitFieldNames ? '' : 'subjectId')
    ..e<$14.FieldType>(5, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $14.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $14.FieldType.valueOf, enumValues: $14.FieldType.values)
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..aOB(7, _omitFieldNames ? '' : 'isArchived')
    ..aOB(8, _omitFieldNames ? '' : 'isSoftRequired')
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
  $core.String get subjectType => $_getSZ(2);
  @$pb.TagNumber(3)
  set subjectType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubjectType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubjectType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get subjectId => $_getSZ(3);
  @$pb.TagNumber(4)
  set subjectId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubjectId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubjectId() => clearField(4);

  @$pb.TagNumber(5)
  $14.FieldType get fieldType => $_getN(4);
  @$pb.TagNumber(5)
  set fieldType($14.FieldType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFieldType() => $_has(4);
  @$pb.TagNumber(5)
  void clearFieldType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isArchived => $_getBF(6);
  @$pb.TagNumber(7)
  set isArchived($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsArchived() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsArchived() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isSoftRequired => $_getBF(7);
  @$pb.TagNumber(8)
  set isSoftRequired($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsSoftRequired() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsSoftRequired() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
