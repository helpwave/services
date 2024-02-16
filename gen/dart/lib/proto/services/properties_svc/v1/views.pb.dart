//
//  Generated code. Do not modify.
//  source: proto/services/properties_svc/v1/views.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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
