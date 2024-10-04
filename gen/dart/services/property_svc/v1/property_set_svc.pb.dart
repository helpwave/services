//
//  Generated code. Do not modify.
//  source: services/property_svc/v1/property_set_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

///
///  CreatePropertySet
class CreatePropertySetRequest extends $pb.GeneratedMessage {
  factory CreatePropertySetRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreatePropertySetRequest._() : super();
  factory CreatePropertySetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertySetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertySetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
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
}

class CreatePropertySetResponse extends $pb.GeneratedMessage {
  factory CreatePropertySetResponse({
    $core.String? id,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  CreatePropertySetResponse._() : super();
  factory CreatePropertySetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertySetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePropertySetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'consistency')
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
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get consistency => $_getSZ(1);
  @$pb.TagNumber(2)
  set consistency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConsistency() => $_has(1);
  @$pb.TagNumber(2)
  void clearConsistency() => clearField(2);
}

class GetPropertySetRequest extends $pb.GeneratedMessage {
  factory GetPropertySetRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetPropertySetRequest._() : super();
  factory GetPropertySetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertySetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertySetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertySetRequest clone() => GetPropertySetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertySetRequest copyWith(void Function(GetPropertySetRequest) updates) => super.copyWith((message) => updates(message as GetPropertySetRequest)) as GetPropertySetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertySetRequest create() => GetPropertySetRequest._();
  GetPropertySetRequest createEmptyInstance() => create();
  static $pb.PbList<GetPropertySetRequest> createRepeated() => $pb.PbList<GetPropertySetRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPropertySetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertySetRequest>(create);
  static GetPropertySetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetPropertySetResponse extends $pb.GeneratedMessage {
  factory GetPropertySetResponse({
    $core.String? id,
    $core.String? name,
    $core.String? consistency,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (consistency != null) {
      $result.consistency = consistency;
    }
    return $result;
  }
  GetPropertySetResponse._() : super();
  factory GetPropertySetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPropertySetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPropertySetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.property_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'consistency')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPropertySetResponse clone() => GetPropertySetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPropertySetResponse copyWith(void Function(GetPropertySetResponse) updates) => super.copyWith((message) => updates(message as GetPropertySetResponse)) as GetPropertySetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPropertySetResponse create() => GetPropertySetResponse._();
  GetPropertySetResponse createEmptyInstance() => create();
  static $pb.PbList<GetPropertySetResponse> createRepeated() => $pb.PbList<GetPropertySetResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPropertySetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPropertySetResponse>(create);
  static GetPropertySetResponse? _defaultInstance;

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
  $core.String get consistency => $_getSZ(2);
  @$pb.TagNumber(3)
  set consistency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConsistency() => $_has(2);
  @$pb.TagNumber(3)
  void clearConsistency() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
