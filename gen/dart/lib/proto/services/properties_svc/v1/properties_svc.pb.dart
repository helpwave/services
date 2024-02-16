//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/properties_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'types.pbenum.dart' as $13;

class CreatePropertySetRequest extends $pb.GeneratedMessage {
  factory CreatePropertySetRequest({
    $core.String? name,
    $core.Iterable<$core.String>? properties,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (properties != null) {
      $result.properties.addAll(properties);
    }
    return $result;
  }
  CreatePropertySetRequest._() : super();
  factory CreatePropertySetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertySetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertySetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'properties')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertySetRequest clone() => CreatePropertySetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertySetRequest copyWith(void Function(CreatePropertySetRequest) updates) => super.copyWith((message) => updates(message as CreatePropertySetRequest)) as CreatePropertySetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePropertySetRequest create() => CreatePropertySetRequest._();
  CreatePropertySetRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePropertySetRequest> createRepeated() => $pb.PbList<CreatePropertySetRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertySetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertySetRequest>(create);
  static CreatePropertySetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get properties => $_getList(1);
}

class CreatePropertySetResponse extends $pb.GeneratedMessage {
  factory CreatePropertySetResponse({
    $core.String? propertySetId,
  }) {
    final $result = create();
    if (propertySetId != null) {
      $result.propertySetId = propertySetId;
    }
    return $result;
  }
  CreatePropertySetResponse._() : super();
  factory CreatePropertySetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertySetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertySetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'propertySetId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertySetResponse clone() => CreatePropertySetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertySetResponse copyWith(void Function(CreatePropertySetResponse) updates) => super.copyWith((message) => updates(message as CreatePropertySetResponse)) as CreatePropertySetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePropertySetResponse create() => CreatePropertySetResponse._();
  CreatePropertySetResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePropertySetResponse> createRepeated() => $pb.PbList<CreatePropertySetResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertySetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertySetResponse>(create);
  static CreatePropertySetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get propertySetId => $_getSZ(0);
  @$pb.TagNumber(1)
  set propertySetId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertySetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertySetId() => clearField(1);
}

class UpdatePropertySetRequest extends $pb.GeneratedMessage {
  factory UpdatePropertySetRequest({
    $core.String? setId,
    $core.String? name,
    $core.Iterable<$core.String>? addedProperties,
    $core.Iterable<$core.String>? removedProperties,
  }) {
    final $result = create();
    if (setId != null) {
      $result.setId = setId;
    }
    if (name != null) {
      $result.name = name;
    }
    if (addedProperties != null) {
      $result.addedProperties.addAll(addedProperties);
    }
    if (removedProperties != null) {
      $result.removedProperties.addAll(removedProperties);
    }
    return $result;
  }
  UpdatePropertySetRequest._() : super();
  factory UpdatePropertySetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertySetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertySetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'setId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'addedProperties')
    ..pPS(4, _omitFieldNames ? '' : 'removedProperties')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertySetRequest clone() => UpdatePropertySetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertySetRequest copyWith(void Function(UpdatePropertySetRequest) updates) => super.copyWith((message) => updates(message as UpdatePropertySetRequest)) as UpdatePropertySetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertySetRequest create() => UpdatePropertySetRequest._();
  UpdatePropertySetRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertySetRequest> createRepeated() => $pb.PbList<UpdatePropertySetRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertySetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertySetRequest>(create);
  static UpdatePropertySetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get setId => $_getSZ(0);
  @$pb.TagNumber(1)
  set setId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get addedProperties => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get removedProperties => $_getList(3);
}

class UpdatePropertySetResponse extends $pb.GeneratedMessage {
  factory UpdatePropertySetResponse() => create();
  UpdatePropertySetResponse._() : super();
  factory UpdatePropertySetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertySetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertySetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertySetResponse clone() => UpdatePropertySetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertySetResponse copyWith(void Function(UpdatePropertySetResponse) updates) => super.copyWith((message) => updates(message as UpdatePropertySetResponse)) as UpdatePropertySetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertySetResponse create() => UpdatePropertySetResponse._();
  UpdatePropertySetResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertySetResponse> createRepeated() => $pb.PbList<UpdatePropertySetResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertySetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertySetResponse>(create);
  static UpdatePropertySetResponse? _defaultInstance;
}

class DeletePropertySetRequest extends $pb.GeneratedMessage {
  factory DeletePropertySetRequest({
    $core.String? setId,
  }) {
    final $result = create();
    if (setId != null) {
      $result.setId = setId;
    }
    return $result;
  }
  DeletePropertySetRequest._() : super();
  factory DeletePropertySetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePropertySetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePropertySetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'setId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePropertySetRequest clone() => DeletePropertySetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePropertySetRequest copyWith(void Function(DeletePropertySetRequest) updates) => super.copyWith((message) => updates(message as DeletePropertySetRequest)) as DeletePropertySetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePropertySetRequest create() => DeletePropertySetRequest._();
  DeletePropertySetRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePropertySetRequest> createRepeated() => $pb.PbList<DeletePropertySetRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePropertySetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePropertySetRequest>(create);
  static DeletePropertySetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get setId => $_getSZ(0);
  @$pb.TagNumber(1)
  set setId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetId() => clearField(1);
}

class DeletePropertySetResponse extends $pb.GeneratedMessage {
  factory DeletePropertySetResponse() => create();
  DeletePropertySetResponse._() : super();
  factory DeletePropertySetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePropertySetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePropertySetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePropertySetResponse clone() => DeletePropertySetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePropertySetResponse copyWith(void Function(DeletePropertySetResponse) updates) => super.copyWith((message) => updates(message as DeletePropertySetResponse)) as DeletePropertySetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePropertySetResponse create() => DeletePropertySetResponse._();
  DeletePropertySetResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePropertySetResponse> createRepeated() => $pb.PbList<DeletePropertySetResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePropertySetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePropertySetResponse>(create);
  static DeletePropertySetResponse? _defaultInstance;
}

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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

class CreatePropertyRequest extends $pb.GeneratedMessage {
  factory CreatePropertyRequest({
    $13.ViewContext? context,
    $13.SubjectType? subjectType,
    $13.FieldType? fieldType,
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..oo(0, [8, 9])
    ..e<$13.ViewContext>(1, _omitFieldNames ? '' : 'context', $pb.PbFieldType.OE, defaultOrMaker: $13.ViewContext.VIEW_CONTEXT_UNSPECIFIED, valueOf: $13.ViewContext.valueOf, enumValues: $13.ViewContext.values)
    ..e<$13.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $13.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $13.SubjectType.valueOf, enumValues: $13.SubjectType.values)
    ..e<$13.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $13.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $13.FieldType.valueOf, enumValues: $13.FieldType.values)
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
  $13.ViewContext get context => $_getN(0);
  @$pb.TagNumber(1)
  set context($13.ViewContext v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasContext() => $_has(0);
  @$pb.TagNumber(1)
  void clearContext() => clearField(1);

  @$pb.TagNumber(2)
  $13.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($13.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $13.FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($13.FieldType v) { setField(3, v); }
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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
    $13.ViewContext? context,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (context != null) {
      $result.context = context;
    }
    return $result;
  }
  GetPropertyRequest._() : super();
  factory GetPropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$13.ViewContext>(2, _omitFieldNames ? '' : 'context', $pb.PbFieldType.OE, defaultOrMaker: $13.ViewContext.VIEW_CONTEXT_UNSPECIFIED, valueOf: $13.ViewContext.valueOf, enumValues: $13.ViewContext.values)
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

  @$pb.TagNumber(2)
  $13.ViewContext get context => $_getN(1);
  @$pb.TagNumber(2)
  set context($13.ViewContext v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearContext() => clearField(2);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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
    $13.SubjectType? subjectType,
    $13.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.String? setId,
    $core.bool? none,
    GetPropertyResponse_SelectData? selectData,
    $core.bool? alwaysIncludeForCurrentContext,
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
    if (alwaysIncludeForCurrentContext != null) {
      $result.alwaysIncludeForCurrentContext = alwaysIncludeForCurrentContext;
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..oo(0, [9, 10])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$13.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $13.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $13.SubjectType.valueOf, enumValues: $13.SubjectType.values)
    ..e<$13.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $13.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $13.FieldType.valueOf, enumValues: $13.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..aOB(9, _omitFieldNames ? '' : 'none')
    ..aOM<GetPropertyResponse_SelectData>(10, _omitFieldNames ? '' : 'selectData', subBuilder: GetPropertyResponse_SelectData.create)
    ..aOB(11, _omitFieldNames ? '' : 'alwaysIncludeForCurrentContext')
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
  $13.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($13.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $13.FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($13.FieldType v) { setField(3, v); }
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

  /// ID of set this Property should belong to
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
  $core.bool get alwaysIncludeForCurrentContext => $_getBF(9);
  @$pb.TagNumber(11)
  set alwaysIncludeForCurrentContext($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasAlwaysIncludeForCurrentContext() => $_has(9);
  @$pb.TagNumber(11)
  void clearAlwaysIncludeForCurrentContext() => clearField(11);
}

class GetPropertiesRequest extends $pb.GeneratedMessage {
  factory GetPropertiesRequest({
    $core.String? setId,
    $13.SubjectType? subjectType,
  }) {
    final $result = create();
    if (setId != null) {
      $result.setId = setId;
    }
    if (subjectType != null) {
      $result.subjectType = subjectType;
    }
    return $result;
  }
  GetPropertiesRequest._() : super();
  factory GetPropertiesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'setId')
    ..e<$13.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $13.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $13.SubjectType.valueOf, enumValues: $13.SubjectType.values)
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
  $core.String get setId => $_getSZ(0);
  @$pb.TagNumber(1)
  set setId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetId() => clearField(1);

  @$pb.TagNumber(2)
  $13.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($13.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);
}

class GetPropertiesResponse_Property_SelectData_SelectOption extends $pb.GeneratedMessage {
  factory GetPropertiesResponse_Property_SelectData_SelectOption({
    $core.String? name,
    $core.String? description,
    $core.bool? isCustom,
  }) {
    final $result = create();
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse.Property.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOB(3, _omitFieldNames ? '' : 'isCustom')
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

  @$pb.TagNumber(3)
  $core.bool get isCustom => $_getBF(2);
  @$pb.TagNumber(3)
  set isCustom($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsCustom() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsCustom() => clearField(3);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse.Property.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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
  none, 
  selectData, 
  notSet
}

class GetPropertiesResponse_Property extends $pb.GeneratedMessage {
  factory GetPropertiesResponse_Property({
    $core.String? id,
    $13.SubjectType? subjectType,
    $13.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.String? setId,
    $core.bool? none,
    GetPropertiesResponse_Property_SelectData? selectData,
    $core.bool? alwaysIncludeForCurrentContext,
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
    if (alwaysIncludeForCurrentContext != null) {
      $result.alwaysIncludeForCurrentContext = alwaysIncludeForCurrentContext;
    }
    return $result;
  }
  GetPropertiesResponse_Property._() : super();
  factory GetPropertiesResponse_Property.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesResponse_Property.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetPropertiesResponse_Property_FieldTypeData> _GetPropertiesResponse_Property_FieldTypeDataByTag = {
    9 : GetPropertiesResponse_Property_FieldTypeData.none,
    10 : GetPropertiesResponse_Property_FieldTypeData.selectData,
    0 : GetPropertiesResponse_Property_FieldTypeData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse.Property', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..oo(0, [9, 10])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$13.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $13.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $13.SubjectType.valueOf, enumValues: $13.SubjectType.values)
    ..e<$13.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $13.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $13.FieldType.valueOf, enumValues: $13.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..aOB(9, _omitFieldNames ? '' : 'none')
    ..aOM<GetPropertiesResponse_Property_SelectData>(10, _omitFieldNames ? '' : 'selectData', subBuilder: GetPropertiesResponse_Property_SelectData.create)
    ..aOB(11, _omitFieldNames ? '' : 'alwaysIncludeForCurrentContext')
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
  $13.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($13.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $13.FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($13.FieldType v) { setField(3, v); }
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

  /// ID of set this Property should belong to
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
  GetPropertiesResponse_Property_SelectData get selectData => $_getN(8);
  @$pb.TagNumber(10)
  set selectData(GetPropertiesResponse_Property_SelectData v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSelectData() => $_has(8);
  @$pb.TagNumber(10)
  void clearSelectData() => clearField(10);
  @$pb.TagNumber(10)
  GetPropertiesResponse_Property_SelectData ensureSelectData() => $_ensure(8);

  @$pb.TagNumber(11)
  $core.bool get alwaysIncludeForCurrentContext => $_getBF(9);
  @$pb.TagNumber(11)
  set alwaysIncludeForCurrentContext($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasAlwaysIncludeForCurrentContext() => $_has(9);
  @$pb.TagNumber(11)
  void clearAlwaysIncludeForCurrentContext() => clearField(11);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyRequest.SelectData.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyRequest.SelectData', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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
  none, 
  selectData, 
  notSet
}

class UpdatePropertyRequest extends $pb.GeneratedMessage {
  factory UpdatePropertyRequest({
    $core.String? id,
    $13.SubjectType? subjectType,
    $13.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.String? setId,
    $core.bool? none,
    UpdatePropertyRequest_SelectData? selectData,
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
    return $result;
  }
  UpdatePropertyRequest._() : super();
  factory UpdatePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UpdatePropertyRequest_FieldTypeData> _UpdatePropertyRequest_FieldTypeDataByTag = {
    9 : UpdatePropertyRequest_FieldTypeData.none,
    10 : UpdatePropertyRequest_FieldTypeData.selectData,
    0 : UpdatePropertyRequest_FieldTypeData.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..oo(0, [9, 10])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<$13.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $13.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $13.SubjectType.valueOf, enumValues: $13.SubjectType.values)
    ..e<$13.FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $13.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $13.FieldType.valueOf, enumValues: $13.FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..aOB(9, _omitFieldNames ? '' : 'none')
    ..aOM<UpdatePropertyRequest_SelectData>(10, _omitFieldNames ? '' : 'selectData', subBuilder: UpdatePropertyRequest_SelectData.create)
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
  $13.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($13.SubjectType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubjectType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubjectType() => clearField(2);

  @$pb.TagNumber(3)
  $13.FieldType get fieldType => $_getN(2);
  @$pb.TagNumber(3)
  set fieldType($13.FieldType v) { setField(3, v); }
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

  /// ID of set this Property should belong to
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
  UpdatePropertyRequest_SelectData get selectData => $_getN(8);
  @$pb.TagNumber(10)
  set selectData(UpdatePropertyRequest_SelectData v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSelectData() => $_has(8);
  @$pb.TagNumber(10)
  void clearSelectData() => clearField(10);
  @$pb.TagNumber(10)
  UpdatePropertyRequest_SelectData ensureSelectData() => $_ensure(8);
}

class UpdatePropertyResponse extends $pb.GeneratedMessage {
  factory UpdatePropertyResponse() => create();
  UpdatePropertyResponse._() : super();
  factory UpdatePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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
}

enum AttachPropertyValueRequest_Value {
  isUndefined, 
  textValue, 
  numberValue, 
  boolValue, 
  dateValue, 
  dateTimeValue, 
  selectValue, 
  notSet
}

/// attach the same property again to update
class AttachPropertyValueRequest extends $pb.GeneratedMessage {
  factory AttachPropertyValueRequest({
    $core.String? subjectId,
    $13.SubjectType? subjectType,
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
  AttachPropertyValueRequest._() : super();
  factory AttachPropertyValueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachPropertyValueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AttachPropertyValueRequest_Value> _AttachPropertyValueRequest_ValueByTag = {
    4 : AttachPropertyValueRequest_Value.isUndefined,
    5 : AttachPropertyValueRequest_Value.textValue,
    6 : AttachPropertyValueRequest_Value.numberValue,
    7 : AttachPropertyValueRequest_Value.boolValue,
    8 : AttachPropertyValueRequest_Value.dateValue,
    9 : AttachPropertyValueRequest_Value.dateTimeValue,
    10 : AttachPropertyValueRequest_Value.selectValue,
    0 : AttachPropertyValueRequest_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachPropertyValueRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8, 9, 10])
    ..aOS(1, _omitFieldNames ? '' : 'subjectId')
    ..e<$13.SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: $13.SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: $13.SubjectType.valueOf, enumValues: $13.SubjectType.values)
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
  $13.SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType($13.SubjectType v) { setField(2, v); }
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachPropertyValueResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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

class GetAttachedPropertyValuesResponse_Value_Set extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesResponse_Value_Set({
    $core.String? id,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetAttachedPropertyValuesResponse_Value_Set._() : super();
  factory GetAttachedPropertyValuesResponse_Value_Set.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesResponse_Value_Set.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse.Value.Set', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse_Value_Set clone() => GetAttachedPropertyValuesResponse_Value_Set()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAttachedPropertyValuesResponse_Value_Set copyWith(void Function(GetAttachedPropertyValuesResponse_Value_Set) updates) => super.copyWith((message) => updates(message as GetAttachedPropertyValuesResponse_Value_Set)) as GetAttachedPropertyValuesResponse_Value_Set;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse_Value_Set create() => GetAttachedPropertyValuesResponse_Value_Set._();
  GetAttachedPropertyValuesResponse_Value_Set createEmptyInstance() => create();
  static $pb.PbList<GetAttachedPropertyValuesResponse_Value_Set> createRepeated() => $pb.PbList<GetAttachedPropertyValuesResponse_Value_Set>();
  @$core.pragma('dart2js:noInline')
  static GetAttachedPropertyValuesResponse_Value_Set getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAttachedPropertyValuesResponse_Value_Set>(create);
  static GetAttachedPropertyValuesResponse_Value_Set? _defaultInstance;

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
}

enum GetAttachedPropertyValuesResponse_Value_Value {
  isUndefined, 
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
    $13.FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    GetAttachedPropertyValuesResponse_Value_Set? set,
    $core.bool? isUndefined,
    $core.String? textValue,
    $core.double? numberValue,
    $core.bool? boolValue,
    $core.String? dateValue,
    $core.String? dateTimeValue,
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
    if (set != null) {
      $result.set = set;
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
  GetAttachedPropertyValuesResponse_Value._() : super();
  factory GetAttachedPropertyValuesResponse_Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesResponse_Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetAttachedPropertyValuesResponse_Value_Value> _GetAttachedPropertyValuesResponse_Value_ValueByTag = {
    8 : GetAttachedPropertyValuesResponse_Value_Value.isUndefined,
    9 : GetAttachedPropertyValuesResponse_Value_Value.textValue,
    10 : GetAttachedPropertyValuesResponse_Value_Value.numberValue,
    11 : GetAttachedPropertyValuesResponse_Value_Value.boolValue,
    12 : GetAttachedPropertyValuesResponse_Value_Value.dateValue,
    13 : GetAttachedPropertyValuesResponse_Value_Value.dateTimeValue,
    14 : GetAttachedPropertyValuesResponse_Value_Value.selectValue,
    0 : GetAttachedPropertyValuesResponse_Value_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse.Value', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..oo(0, [8, 9, 10, 11, 12, 13, 14])
    ..aOS(1, _omitFieldNames ? '' : 'propertyId')
    ..e<$13.FieldType>(2, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: $13.FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: $13.FieldType.valueOf, enumValues: $13.FieldType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOB(5, _omitFieldNames ? '' : 'isArchived')
    ..aOM<GetAttachedPropertyValuesResponse_Value_Set>(7, _omitFieldNames ? '' : 'set', subBuilder: GetAttachedPropertyValuesResponse_Value_Set.create)
    ..aOB(8, _omitFieldNames ? '' : 'isUndefined')
    ..aOS(9, _omitFieldNames ? '' : 'textValue')
    ..a<$core.double>(10, _omitFieldNames ? '' : 'numberValue', $pb.PbFieldType.OF)
    ..aOB(11, _omitFieldNames ? '' : 'boolValue')
    ..aOS(12, _omitFieldNames ? '' : 'dateValue')
    ..aOS(13, _omitFieldNames ? '' : 'dateTimeValue')
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
  $13.FieldType get fieldType => $_getN(1);
  @$pb.TagNumber(2)
  set fieldType($13.FieldType v) { setField(2, v); }
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

  @$pb.TagNumber(7)
  GetAttachedPropertyValuesResponse_Value_Set get set => $_getN(5);
  @$pb.TagNumber(7)
  set set(GetAttachedPropertyValuesResponse_Value_Set v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSet() => $_has(5);
  @$pb.TagNumber(7)
  void clearSet() => clearField(7);
  @$pb.TagNumber(7)
  GetAttachedPropertyValuesResponse_Value_Set ensureSet() => $_ensure(5);

  @$pb.TagNumber(8)
  $core.bool get isUndefined => $_getBF(6);
  @$pb.TagNumber(8)
  set isUndefined($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsUndefined() => $_has(6);
  @$pb.TagNumber(8)
  void clearIsUndefined() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get textValue => $_getSZ(7);
  @$pb.TagNumber(9)
  set textValue($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasTextValue() => $_has(7);
  @$pb.TagNumber(9)
  void clearTextValue() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get numberValue => $_getN(8);
  @$pb.TagNumber(10)
  set numberValue($core.double v) { $_setFloat(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasNumberValue() => $_has(8);
  @$pb.TagNumber(10)
  void clearNumberValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get boolValue => $_getBF(9);
  @$pb.TagNumber(11)
  set boolValue($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasBoolValue() => $_has(9);
  @$pb.TagNumber(11)
  void clearBoolValue() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get dateValue => $_getSZ(10);
  @$pb.TagNumber(12)
  set dateValue($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasDateValue() => $_has(10);
  @$pb.TagNumber(12)
  void clearDateValue() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get dateTimeValue => $_getSZ(11);
  @$pb.TagNumber(13)
  set dateTimeValue($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasDateTimeValue() => $_has(11);
  @$pb.TagNumber(13)
  void clearDateTimeValue() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get selectValue => $_getSZ(12);
  @$pb.TagNumber(14)
  set selectValue($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasSelectValue() => $_has(12);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
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

enum UpdatePatientPropertyViewRuleRequest_SoftRequired {
  resetSoftRequired, 
  setSoftRequired, 
  notSet
}

class UpdatePatientPropertyViewRuleRequest extends $pb.GeneratedMessage {
  factory UpdatePatientPropertyViewRuleRequest({
    $core.String? wardId,
    $core.String? patientId,
    $core.bool? resetSoftRequired,
    $core.bool? setSoftRequired,
    $core.String? appendToAlwaysInclude,
    $core.String? removeFromAlwaysInclude,
    $core.String? appendToDontAlwaysInclude,
    $core.String? removeFromDontAlwaysInclude,
  }) {
    final $result = create();
    if (wardId != null) {
      $result.wardId = wardId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (resetSoftRequired != null) {
      $result.resetSoftRequired = resetSoftRequired;
    }
    if (setSoftRequired != null) {
      $result.setSoftRequired = setSoftRequired;
    }
    if (appendToAlwaysInclude != null) {
      $result.appendToAlwaysInclude = appendToAlwaysInclude;
    }
    if (removeFromAlwaysInclude != null) {
      $result.removeFromAlwaysInclude = removeFromAlwaysInclude;
    }
    if (appendToDontAlwaysInclude != null) {
      $result.appendToDontAlwaysInclude = appendToDontAlwaysInclude;
    }
    if (removeFromDontAlwaysInclude != null) {
      $result.removeFromDontAlwaysInclude = removeFromDontAlwaysInclude;
    }
    return $result;
  }
  UpdatePatientPropertyViewRuleRequest._() : super();
  factory UpdatePatientPropertyViewRuleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePatientPropertyViewRuleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UpdatePatientPropertyViewRuleRequest_SoftRequired> _UpdatePatientPropertyViewRuleRequest_SoftRequiredByTag = {
    3 : UpdatePatientPropertyViewRuleRequest_SoftRequired.resetSoftRequired,
    4 : UpdatePatientPropertyViewRuleRequest_SoftRequired.setSoftRequired,
    0 : UpdatePatientPropertyViewRuleRequest_SoftRequired.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePatientPropertyViewRuleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'wardId')
    ..aOS(2, _omitFieldNames ? '' : 'patientId')
    ..aOB(3, _omitFieldNames ? '' : 'resetSoftRequired')
    ..aOB(4, _omitFieldNames ? '' : 'setSoftRequired')
    ..aOS(5, _omitFieldNames ? '' : 'appendToAlwaysInclude')
    ..aOS(6, _omitFieldNames ? '' : 'removeFromAlwaysInclude')
    ..aOS(7, _omitFieldNames ? '' : 'appendToDontAlwaysInclude')
    ..aOS(8, _omitFieldNames ? '' : 'removeFromDontAlwaysInclude')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePatientPropertyViewRuleRequest clone() => UpdatePatientPropertyViewRuleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePatientPropertyViewRuleRequest copyWith(void Function(UpdatePatientPropertyViewRuleRequest) updates) => super.copyWith((message) => updates(message as UpdatePatientPropertyViewRuleRequest)) as UpdatePatientPropertyViewRuleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePatientPropertyViewRuleRequest create() => UpdatePatientPropertyViewRuleRequest._();
  UpdatePatientPropertyViewRuleRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePatientPropertyViewRuleRequest> createRepeated() => $pb.PbList<UpdatePatientPropertyViewRuleRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePatientPropertyViewRuleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePatientPropertyViewRuleRequest>(create);
  static UpdatePatientPropertyViewRuleRequest? _defaultInstance;

  UpdatePatientPropertyViewRuleRequest_SoftRequired whichSoftRequired() => _UpdatePatientPropertyViewRuleRequest_SoftRequiredByTag[$_whichOneof(0)]!;
  void clearSoftRequired() => clearField($_whichOneof(0));

  /// matchers
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

  @$pb.TagNumber(3)
  $core.bool get resetSoftRequired => $_getBF(2);
  @$pb.TagNumber(3)
  set resetSoftRequired($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResetSoftRequired() => $_has(2);
  @$pb.TagNumber(3)
  void clearResetSoftRequired() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get setSoftRequired => $_getBF(3);
  @$pb.TagNumber(4)
  set setSoftRequired($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSetSoftRequired() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetSoftRequired() => clearField(4);

  /// append property_id to the always_include list
  /// this means the property is shown, unless a more specific rule
  /// puts it in its dont_always_include list
  @$pb.TagNumber(5)
  $core.String get appendToAlwaysInclude => $_getSZ(4);
  @$pb.TagNumber(5)
  set appendToAlwaysInclude($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppendToAlwaysInclude() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppendToAlwaysInclude() => clearField(5);

  /// remove property_id to the always_include list, also see append_to_always_include
  @$pb.TagNumber(6)
  $core.String get removeFromAlwaysInclude => $_getSZ(5);
  @$pb.TagNumber(6)
  set removeFromAlwaysInclude($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemoveFromAlwaysInclude() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemoveFromAlwaysInclude() => clearField(6);

  /// append property_id to the dont_always_include list, also see append_to_always_include
  @$pb.TagNumber(7)
  $core.String get appendToDontAlwaysInclude => $_getSZ(6);
  @$pb.TagNumber(7)
  set appendToDontAlwaysInclude($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppendToDontAlwaysInclude() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppendToDontAlwaysInclude() => clearField(7);

  /// remove property_id to the dont_always_include list, also see append_to_always_include
  @$pb.TagNumber(8)
  $core.String get removeFromDontAlwaysInclude => $_getSZ(7);
  @$pb.TagNumber(8)
  set removeFromDontAlwaysInclude($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRemoveFromDontAlwaysInclude() => $_has(7);
  @$pb.TagNumber(8)
  void clearRemoveFromDontAlwaysInclude() => clearField(8);
}

class UpdatePatientPropertyViewRuleResponse extends $pb.GeneratedMessage {
  factory UpdatePatientPropertyViewRuleResponse() => create();
  UpdatePatientPropertyViewRuleResponse._() : super();
  factory UpdatePatientPropertyViewRuleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePatientPropertyViewRuleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePatientPropertyViewRuleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePatientPropertyViewRuleResponse clone() => UpdatePatientPropertyViewRuleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePatientPropertyViewRuleResponse copyWith(void Function(UpdatePatientPropertyViewRuleResponse) updates) => super.copyWith((message) => updates(message as UpdatePatientPropertyViewRuleResponse)) as UpdatePatientPropertyViewRuleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePatientPropertyViewRuleResponse create() => UpdatePatientPropertyViewRuleResponse._();
  UpdatePatientPropertyViewRuleResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePatientPropertyViewRuleResponse> createRepeated() => $pb.PbList<UpdatePatientPropertyViewRuleResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePatientPropertyViewRuleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePatientPropertyViewRuleResponse>(create);
  static UpdatePatientPropertyViewRuleResponse? _defaultInstance;
}

class UpdateOrderRequest extends $pb.GeneratedMessage {
  factory UpdateOrderRequest({
    $core.String? propertyId,
    $core.String? prevNeighbor,
  }) {
    final $result = create();
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    if (prevNeighbor != null) {
      $result.prevNeighbor = prevNeighbor;
    }
    return $result;
  }
  UpdateOrderRequest._() : super();
  factory UpdateOrderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOrderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateOrderRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'propertyId')
    ..aOS(2, _omitFieldNames ? '' : 'prevNeighbor')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOrderRequest clone() => UpdateOrderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOrderRequest copyWith(void Function(UpdateOrderRequest) updates) => super.copyWith((message) => updates(message as UpdateOrderRequest)) as UpdateOrderRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOrderRequest create() => UpdateOrderRequest._();
  UpdateOrderRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateOrderRequest> createRepeated() => $pb.PbList<UpdateOrderRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateOrderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOrderRequest>(create);
  static UpdateOrderRequest? _defaultInstance;

  /// id of the property that we "move"
  @$pb.TagNumber(1)
  $core.String get propertyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set propertyId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyId() => clearField(1);

  /// the id of the property with an id just before the property that you are moving
  /// when left blank this means it's moved to the very top
  @$pb.TagNumber(2)
  $core.String get prevNeighbor => $_getSZ(1);
  @$pb.TagNumber(2)
  set prevNeighbor($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrevNeighbor() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrevNeighbor() => clearField(2);
}

class UpdateOrderResponse extends $pb.GeneratedMessage {
  factory UpdateOrderResponse() => create();
  UpdateOrderResponse._() : super();
  factory UpdateOrderResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOrderResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateOrderResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.properties_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOrderResponse clone() => UpdateOrderResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOrderResponse copyWith(void Function(UpdateOrderResponse) updates) => super.copyWith((message) => updates(message as UpdateOrderResponse)) as UpdateOrderResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOrderResponse create() => UpdateOrderResponse._();
  UpdateOrderResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateOrderResponse> createRepeated() => $pb.PbList<UpdateOrderResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateOrderResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOrderResponse>(create);
  static UpdateOrderResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
