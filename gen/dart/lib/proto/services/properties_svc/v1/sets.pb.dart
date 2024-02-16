//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/sets.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
