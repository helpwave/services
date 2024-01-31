//
//  Generated code. Do not modify.
//  source: proto/services/tasks_svc/v1/properties_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'properties_svc.pbenum.dart';

export 'properties_svc.pbenum.dart';

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertySetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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
  factory CreatePropertySetResponse() => create();
  CreatePropertySetResponse._() : super();
  factory CreatePropertySetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertySetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertySetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertySetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertySetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePropertySetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePropertySetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

class CreatePropertyRequest_SelectOption extends $pb.GeneratedMessage {
  factory CreatePropertyRequest_SelectOption({
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
  CreatePropertyRequest_SelectOption._() : super();
  factory CreatePropertyRequest_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyRequest_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest_SelectOption clone() => CreatePropertyRequest_SelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest_SelectOption copyWith(void Function(CreatePropertyRequest_SelectOption) updates) => super.copyWith((message) => updates(message as CreatePropertyRequest_SelectOption)) as CreatePropertyRequest_SelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest_SelectOption create() => CreatePropertyRequest_SelectOption._();
  CreatePropertyRequest_SelectOption createEmptyInstance() => create();
  static $pb.PbList<CreatePropertyRequest_SelectOption> createRepeated() => $pb.PbList<CreatePropertyRequest_SelectOption>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest_SelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertyRequest_SelectOption>(create);
  static CreatePropertyRequest_SelectOption? _defaultInstance;

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

class CreatePropertyRequest extends $pb.GeneratedMessage {
  factory CreatePropertyRequest({
    SubjectType? subjectType,
    FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isSoftRequired,
    $core.String? setId,
    $core.Iterable<CreatePropertyRequest_SelectOption>? selectOptions,
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
    if (isSoftRequired != null) {
      $result.isSoftRequired = isSoftRequired;
    }
    if (setId != null) {
      $result.setId = setId;
    }
    if (selectOptions != null) {
      $result.selectOptions.addAll(selectOptions);
    }
    return $result;
  }
  CreatePropertyRequest._() : super();
  factory CreatePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..e<SubjectType>(1, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: SubjectType.valueOf, enumValues: SubjectType.values)
    ..e<FieldType>(2, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: FieldType.valueOf, enumValues: FieldType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOB(5, _omitFieldNames ? '' : 'isSoftRequired')
    ..aOS(6, _omitFieldNames ? '' : 'setId')
    ..pc<CreatePropertyRequest_SelectOption>(7, _omitFieldNames ? '' : 'selectOptions', $pb.PbFieldType.PM, subBuilder: CreatePropertyRequest_SelectOption.create)
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
  SubjectType get subjectType => $_getN(0);
  @$pb.TagNumber(1)
  set subjectType(SubjectType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubjectType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubjectType() => clearField(1);

  @$pb.TagNumber(2)
  FieldType get fieldType => $_getN(1);
  @$pb.TagNumber(2)
  set fieldType(FieldType v) { setField(2, v); }
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
  $core.bool get isSoftRequired => $_getBF(4);
  @$pb.TagNumber(5)
  set isSoftRequired($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsSoftRequired() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsSoftRequired() => clearField(5);

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
  $core.List<CreatePropertyRequest_SelectOption> get selectOptions => $_getList(6);
}

class CreatePropertyResponse extends $pb.GeneratedMessage {
  factory CreatePropertyResponse() => create();
  CreatePropertyResponse._() : super();
  factory CreatePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

class GetPropertyResponse_SelectOption extends $pb.GeneratedMessage {
  factory GetPropertyResponse_SelectOption({
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
  GetPropertyResponse_SelectOption._() : super();
  factory GetPropertyResponse_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyResponse_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertyResponse_SelectOption clone() => GetPropertyResponse_SelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertyResponse_SelectOption copyWith(void Function(GetPropertyResponse_SelectOption) updates) => super.copyWith((message) => updates(message as GetPropertyResponse_SelectOption)) as GetPropertyResponse_SelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertyResponse_SelectOption create() => GetPropertyResponse_SelectOption._();
  GetPropertyResponse_SelectOption createEmptyInstance() => create();
  static $pb.PbList<GetPropertyResponse_SelectOption> createRepeated() => $pb.PbList<GetPropertyResponse_SelectOption>();
  @$core.pragma('dart2js:noInline')
  static GetPropertyResponse_SelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertyResponse_SelectOption>(create);
  static GetPropertyResponse_SelectOption? _defaultInstance;

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

class GetPropertyResponse extends $pb.GeneratedMessage {
  factory GetPropertyResponse({
    $core.String? id,
    SubjectType? subjectType,
    FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.bool? isSoftRequired,
    $core.String? setId,
    $core.Iterable<GetPropertyResponse_SelectOption>? selectOptions,
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
    if (isSoftRequired != null) {
      $result.isSoftRequired = isSoftRequired;
    }
    if (setId != null) {
      $result.setId = setId;
    }
    if (selectOptions != null) {
      $result.selectOptions.addAll(selectOptions);
    }
    return $result;
  }
  GetPropertyResponse._() : super();
  factory GetPropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: SubjectType.valueOf, enumValues: SubjectType.values)
    ..e<FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: FieldType.valueOf, enumValues: FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOB(7, _omitFieldNames ? '' : 'isSoftRequired')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..pc<GetPropertyResponse_SelectOption>(9, _omitFieldNames ? '' : 'selectOptions', $pb.PbFieldType.PM, subBuilder: GetPropertyResponse_SelectOption.create)
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
  SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType(SubjectType v) { setField(2, v); }
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

  @$pb.TagNumber(7)
  $core.bool get isSoftRequired => $_getBF(6);
  @$pb.TagNumber(7)
  set isSoftRequired($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsSoftRequired() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsSoftRequired() => clearField(7);

  /// ID of set this Property should belong to
  @$pb.TagNumber(8)
  $core.String get setId => $_getSZ(7);
  @$pb.TagNumber(8)
  set setId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSetId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSetId() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<GetPropertyResponse_SelectOption> get selectOptions => $_getList(8);
}

class GetPropertiesRequest extends $pb.GeneratedMessage {
  factory GetPropertiesRequest({
    $core.String? setId,
  }) {
    final $result = create();
    if (setId != null) {
      $result.setId = setId;
    }
    return $result;
  }
  GetPropertiesRequest._() : super();
  factory GetPropertiesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'setId')
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
}

class GetPropertiesResponse_Property_SelectOption extends $pb.GeneratedMessage {
  factory GetPropertiesResponse_Property_SelectOption({
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
  GetPropertiesResponse_Property_SelectOption._() : super();
  factory GetPropertiesResponse_Property_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesResponse_Property_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse.Property.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertiesResponse_Property_SelectOption clone() => GetPropertiesResponse_Property_SelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertiesResponse_Property_SelectOption copyWith(void Function(GetPropertiesResponse_Property_SelectOption) updates) => super.copyWith((message) => updates(message as GetPropertiesResponse_Property_SelectOption)) as GetPropertiesResponse_Property_SelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse_Property_SelectOption create() => GetPropertiesResponse_Property_SelectOption._();
  GetPropertiesResponse_Property_SelectOption createEmptyInstance() => create();
  static $pb.PbList<GetPropertiesResponse_Property_SelectOption> createRepeated() => $pb.PbList<GetPropertiesResponse_Property_SelectOption>();
  @$core.pragma('dart2js:noInline')
  static GetPropertiesResponse_Property_SelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertiesResponse_Property_SelectOption>(create);
  static GetPropertiesResponse_Property_SelectOption? _defaultInstance;

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

class GetPropertiesResponse_Property extends $pb.GeneratedMessage {
  factory GetPropertiesResponse_Property({
    $core.String? id,
    SubjectType? subjectType,
    FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.bool? isSoftRequired,
    $core.String? setId,
    $core.Iterable<GetPropertiesResponse_Property_SelectOption>? selectOptions,
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
    if (isSoftRequired != null) {
      $result.isSoftRequired = isSoftRequired;
    }
    if (setId != null) {
      $result.setId = setId;
    }
    if (selectOptions != null) {
      $result.selectOptions.addAll(selectOptions);
    }
    return $result;
  }
  GetPropertiesResponse_Property._() : super();
  factory GetPropertiesResponse_Property.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertiesResponse_Property.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse.Property', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: SubjectType.valueOf, enumValues: SubjectType.values)
    ..e<FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: FieldType.valueOf, enumValues: FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOB(7, _omitFieldNames ? '' : 'isSoftRequired')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..pc<GetPropertiesResponse_Property_SelectOption>(9, _omitFieldNames ? '' : 'selectOptions', $pb.PbFieldType.PM, subBuilder: GetPropertiesResponse_Property_SelectOption.create)
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

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType(SubjectType v) { setField(2, v); }
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

  @$pb.TagNumber(7)
  $core.bool get isSoftRequired => $_getBF(6);
  @$pb.TagNumber(7)
  set isSoftRequired($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsSoftRequired() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsSoftRequired() => clearField(7);

  /// ID of set this Property should belong to
  @$pb.TagNumber(8)
  $core.String get setId => $_getSZ(7);
  @$pb.TagNumber(8)
  set setId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSetId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSetId() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<GetPropertiesResponse_Property_SelectOption> get selectOptions => $_getList(8);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertiesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

class UpdatePropertyRequest_SelectOption extends $pb.GeneratedMessage {
  factory UpdatePropertyRequest_SelectOption({
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
  UpdatePropertyRequest_SelectOption._() : super();
  factory UpdatePropertyRequest_SelectOption.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyRequest_SelectOption.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyRequest.SelectOption', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePropertyRequest_SelectOption clone() => UpdatePropertyRequest_SelectOption()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePropertyRequest_SelectOption copyWith(void Function(UpdatePropertyRequest_SelectOption) updates) => super.copyWith((message) => updates(message as UpdatePropertyRequest_SelectOption)) as UpdatePropertyRequest_SelectOption;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest_SelectOption create() => UpdatePropertyRequest_SelectOption._();
  UpdatePropertyRequest_SelectOption createEmptyInstance() => create();
  static $pb.PbList<UpdatePropertyRequest_SelectOption> createRepeated() => $pb.PbList<UpdatePropertyRequest_SelectOption>();
  @$core.pragma('dart2js:noInline')
  static UpdatePropertyRequest_SelectOption getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePropertyRequest_SelectOption>(create);
  static UpdatePropertyRequest_SelectOption? _defaultInstance;

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

class UpdatePropertyRequest extends $pb.GeneratedMessage {
  factory UpdatePropertyRequest({
    $core.String? id,
    SubjectType? subjectType,
    FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.bool? isSoftRequired,
    $core.String? setId,
    $core.Iterable<UpdatePropertyRequest_SelectOption>? newOrUpdatedSelectOptions,
    $core.Iterable<$core.String>? removeSelectOptions,
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
    if (isSoftRequired != null) {
      $result.isSoftRequired = isSoftRequired;
    }
    if (setId != null) {
      $result.setId = setId;
    }
    if (newOrUpdatedSelectOptions != null) {
      $result.newOrUpdatedSelectOptions.addAll(newOrUpdatedSelectOptions);
    }
    if (removeSelectOptions != null) {
      $result.removeSelectOptions.addAll(removeSelectOptions);
    }
    return $result;
  }
  UpdatePropertyRequest._() : super();
  factory UpdatePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..e<SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: SubjectType.valueOf, enumValues: SubjectType.values)
    ..e<FieldType>(3, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: FieldType.valueOf, enumValues: FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOB(7, _omitFieldNames ? '' : 'isSoftRequired')
    ..aOS(8, _omitFieldNames ? '' : 'setId')
    ..pc<UpdatePropertyRequest_SelectOption>(9, _omitFieldNames ? '' : 'newOrUpdatedSelectOptions', $pb.PbFieldType.PM, subBuilder: UpdatePropertyRequest_SelectOption.create)
    ..pPS(10, _omitFieldNames ? '' : 'removeSelectOptions')
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

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType(SubjectType v) { setField(2, v); }
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

  @$pb.TagNumber(7)
  $core.bool get isSoftRequired => $_getBF(6);
  @$pb.TagNumber(7)
  set isSoftRequired($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsSoftRequired() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsSoftRequired() => clearField(7);

  /// ID of set this Property should belong to
  @$pb.TagNumber(8)
  $core.String get setId => $_getSZ(7);
  @$pb.TagNumber(8)
  set setId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSetId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSetId() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<UpdatePropertyRequest_SelectOption> get newOrUpdatedSelectOptions => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$core.String> get removeSelectOptions => $_getList(9);
}

class UpdatePropertyResponse extends $pb.GeneratedMessage {
  factory UpdatePropertyResponse() => create();
  UpdatePropertyResponse._() : super();
  factory UpdatePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePropertyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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
  textValue, 
  numberValue, 
  boolValue, 
  dateValue, 
  dateTimeValue, 
  selectValue, 
  notSet
}

class AttachPropertyValueRequest extends $pb.GeneratedMessage {
  factory AttachPropertyValueRequest({
    $core.String? subjectId,
    SubjectType? subjectType,
    $core.String? propertyId,
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachPropertyValueRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8, 9])
    ..aOS(1, _omitFieldNames ? '' : 'subjectId')
    ..e<SubjectType>(2, _omitFieldNames ? '' : 'subjectType', $pb.PbFieldType.OE, defaultOrMaker: SubjectType.SUBJECT_TYPE_UNSPECIFIED, valueOf: SubjectType.valueOf, enumValues: SubjectType.values)
    ..aOS(3, _omitFieldNames ? '' : 'propertyId')
    ..aOS(4, _omitFieldNames ? '' : 'textValue')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'numberValue', $pb.PbFieldType.OF)
    ..aOB(6, _omitFieldNames ? '' : 'boolValue')
    ..aOS(7, _omitFieldNames ? '' : 'dateValue')
    ..aOS(8, _omitFieldNames ? '' : 'dateTimeValue')
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
  SubjectType get subjectType => $_getN(1);
  @$pb.TagNumber(2)
  set subjectType(SubjectType v) { setField(2, v); }
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
  $core.String get textValue => $_getSZ(3);
  @$pb.TagNumber(4)
  set textValue($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTextValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearTextValue() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get numberValue => $_getN(4);
  @$pb.TagNumber(5)
  set numberValue($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumberValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumberValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get boolValue => $_getBF(5);
  @$pb.TagNumber(6)
  set boolValue($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBoolValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearBoolValue() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get dateValue => $_getSZ(6);
  @$pb.TagNumber(7)
  set dateValue($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDateValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearDateValue() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get dateTimeValue => $_getSZ(7);
  @$pb.TagNumber(8)
  set dateTimeValue($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDateTimeValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearDateTimeValue() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get selectValue => $_getSZ(8);
  @$pb.TagNumber(9)
  set selectValue($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSelectValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearSelectValue() => clearField(9);
}

class AttachPropertyValueResponse extends $pb.GeneratedMessage {
  factory AttachPropertyValueResponse() => create();
  AttachPropertyValueResponse._() : super();
  factory AttachPropertyValueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AttachPropertyValueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachPropertyValueResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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
}

class GetAttachedPropertyValuesRequest extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesRequest({
    $core.String? subjectId,
    $core.String? view,
  }) {
    final $result = create();
    if (subjectId != null) {
      $result.subjectId = subjectId;
    }
    if (view != null) {
      $result.view = view;
    }
    return $result;
  }
  GetAttachedPropertyValuesRequest._() : super();
  factory GetAttachedPropertyValuesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subjectId')
    ..aOS(2, _omitFieldNames ? '' : 'view')
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

  @$pb.TagNumber(2)
  $core.String get view => $_getSZ(1);
  @$pb.TagNumber(2)
  set view($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasView() => $_has(1);
  @$pb.TagNumber(2)
  void clearView() => clearField(2);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse.Value.Set', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

class GetAttachedPropertyValuesResponse_Value extends $pb.GeneratedMessage {
  factory GetAttachedPropertyValuesResponse_Value({
    $core.String? propertyId,
    FieldType? fieldType,
    $core.String? name,
    $core.String? description,
    $core.bool? isArchived,
    $core.bool? isSoftRequired,
    GetAttachedPropertyValuesResponse_Value_Set? set,
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
    if (isSoftRequired != null) {
      $result.isSoftRequired = isSoftRequired;
    }
    if (set != null) {
      $result.set = set;
    }
    return $result;
  }
  GetAttachedPropertyValuesResponse_Value._() : super();
  factory GetAttachedPropertyValuesResponse_Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAttachedPropertyValuesResponse_Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse.Value', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'propertyId')
    ..e<FieldType>(2, _omitFieldNames ? '' : 'fieldType', $pb.PbFieldType.OE, defaultOrMaker: FieldType.FIELD_TYPE_UNSPECIFIED, valueOf: FieldType.valueOf, enumValues: FieldType.values)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOB(6, _omitFieldNames ? '' : 'isArchived')
    ..aOB(7, _omitFieldNames ? '' : 'isSoftRequired')
    ..aOM<GetAttachedPropertyValuesResponse_Value_Set>(8, _omitFieldNames ? '' : 'set', subBuilder: GetAttachedPropertyValuesResponse_Value_Set.create)
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

  @$pb.TagNumber(1)
  $core.String get propertyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set propertyId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyId() => clearField(1);

  @$pb.TagNumber(2)
  FieldType get fieldType => $_getN(1);
  @$pb.TagNumber(2)
  set fieldType(FieldType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldType() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldType() => clearField(2);

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

  @$pb.TagNumber(7)
  $core.bool get isSoftRequired => $_getBF(5);
  @$pb.TagNumber(7)
  set isSoftRequired($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsSoftRequired() => $_has(5);
  @$pb.TagNumber(7)
  void clearIsSoftRequired() => clearField(7);

  @$pb.TagNumber(8)
  GetAttachedPropertyValuesResponse_Value_Set get set => $_getN(6);
  @$pb.TagNumber(8)
  set set(GetAttachedPropertyValuesResponse_Value_Set v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSet() => $_has(6);
  @$pb.TagNumber(8)
  void clearSet() => clearField(8);
  @$pb.TagNumber(8)
  GetAttachedPropertyValuesResponse_Value_Set ensureSet() => $_ensure(6);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAttachedPropertyValuesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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
