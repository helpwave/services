///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/patient_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreatePatientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePatientRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'humanReadableIdentifier')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notes')
    ..hasRequiredFields = false
  ;

  CreatePatientRequest._() : super();
  factory CreatePatientRequest({
    $core.String? humanReadableIdentifier,
    $core.String? notes,
  }) {
    final _result = create();
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      _result.notes = notes;
    }
    return _result;
  }
  factory CreatePatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePatientRequest clone() => CreatePatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePatientRequest copyWith(void Function(CreatePatientRequest) updates) => super.copyWith((message) => updates(message as CreatePatientRequest)) as CreatePatientRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePatientRequest create() => CreatePatientRequest._();
  CreatePatientRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePatientRequest> createRepeated() => $pb.PbList<CreatePatientRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePatientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePatientRequest>(create);
  static CreatePatientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get humanReadableIdentifier => $_getSZ(0);
  @$pb.TagNumber(1)
  set humanReadableIdentifier($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHumanReadableIdentifier() => $_has(0);
  @$pb.TagNumber(1)
  void clearHumanReadableIdentifier() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get notes => $_getSZ(1);
  @$pb.TagNumber(2)
  set notes($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotes() => clearField(2);
}

class CreatePatientResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePatientResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  CreatePatientResponse._() : super();
  factory CreatePatientResponse({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory CreatePatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePatientResponse clone() => CreatePatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePatientResponse copyWith(void Function(CreatePatientResponse) updates) => super.copyWith((message) => updates(message as CreatePatientResponse)) as CreatePatientResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePatientResponse create() => CreatePatientResponse._();
  CreatePatientResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePatientResponse> createRepeated() => $pb.PbList<CreatePatientResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePatientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePatientResponse>(create);
  static CreatePatientResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetPatientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetPatientRequest._() : super();
  factory GetPatientRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetPatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientRequest clone() => GetPatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientRequest copyWith(void Function(GetPatientRequest) updates) => super.copyWith((message) => updates(message as GetPatientRequest)) as GetPatientRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientRequest create() => GetPatientRequest._();
  GetPatientRequest createEmptyInstance() => create();
  static $pb.PbList<GetPatientRequest> createRepeated() => $pb.PbList<GetPatientRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPatientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientRequest>(create);
  static GetPatientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetPatientResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'humanReadableIdentifier')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notes')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bedId')
    ..hasRequiredFields = false
  ;

  GetPatientResponse._() : super();
  factory GetPatientResponse({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
    $core.String? bedId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      _result.notes = notes;
    }
    if (bedId != null) {
      _result.bedId = bedId;
    }
    return _result;
  }
  factory GetPatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientResponse clone() => GetPatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientResponse copyWith(void Function(GetPatientResponse) updates) => super.copyWith((message) => updates(message as GetPatientResponse)) as GetPatientResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientResponse create() => GetPatientResponse._();
  GetPatientResponse createEmptyInstance() => create();
  static $pb.PbList<GetPatientResponse> createRepeated() => $pb.PbList<GetPatientResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPatientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientResponse>(create);
  static GetPatientResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get humanReadableIdentifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set humanReadableIdentifier($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHumanReadableIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearHumanReadableIdentifier() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get notes => $_getSZ(2);
  @$pb.TagNumber(3)
  set notes($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotes() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotes() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bedId => $_getSZ(3);
  @$pb.TagNumber(4)
  set bedId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBedId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBedId() => clearField(4);
}

class GetPatientByBedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientByBedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bedId')
    ..hasRequiredFields = false
  ;

  GetPatientByBedRequest._() : super();
  factory GetPatientByBedRequest({
    $core.String? bedId,
  }) {
    final _result = create();
    if (bedId != null) {
      _result.bedId = bedId;
    }
    return _result;
  }
  factory GetPatientByBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientByBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientByBedRequest clone() => GetPatientByBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientByBedRequest copyWith(void Function(GetPatientByBedRequest) updates) => super.copyWith((message) => updates(message as GetPatientByBedRequest)) as GetPatientByBedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientByBedRequest create() => GetPatientByBedRequest._();
  GetPatientByBedRequest createEmptyInstance() => create();
  static $pb.PbList<GetPatientByBedRequest> createRepeated() => $pb.PbList<GetPatientByBedRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPatientByBedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientByBedRequest>(create);
  static GetPatientByBedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bedId => $_getSZ(0);
  @$pb.TagNumber(1)
  set bedId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBedId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBedId() => clearField(1);
}

class GetPatientByBedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientByBedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'humanReadableIdentifier')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notes')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bedId')
    ..hasRequiredFields = false
  ;

  GetPatientByBedResponse._() : super();
  factory GetPatientByBedResponse({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
    $core.String? bedId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      _result.notes = notes;
    }
    if (bedId != null) {
      _result.bedId = bedId;
    }
    return _result;
  }
  factory GetPatientByBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientByBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientByBedResponse clone() => GetPatientByBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientByBedResponse copyWith(void Function(GetPatientByBedResponse) updates) => super.copyWith((message) => updates(message as GetPatientByBedResponse)) as GetPatientByBedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientByBedResponse create() => GetPatientByBedResponse._();
  GetPatientByBedResponse createEmptyInstance() => create();
  static $pb.PbList<GetPatientByBedResponse> createRepeated() => $pb.PbList<GetPatientByBedResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPatientByBedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientByBedResponse>(create);
  static GetPatientByBedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get humanReadableIdentifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set humanReadableIdentifier($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHumanReadableIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearHumanReadableIdentifier() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get notes => $_getSZ(2);
  @$pb.TagNumber(3)
  set notes($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotes() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotes() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bedId => $_getSZ(3);
  @$pb.TagNumber(4)
  set bedId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBedId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBedId() => clearField(4);
}

class GetPatientsByWardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientsByWardRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  GetPatientsByWardRequest._() : super();
  factory GetPatientsByWardRequest({
    $core.String? wardId,
  }) {
    final _result = create();
    if (wardId != null) {
      _result.wardId = wardId;
    }
    return _result;
  }
  factory GetPatientsByWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsByWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsByWardRequest clone() => GetPatientsByWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsByWardRequest copyWith(void Function(GetPatientsByWardRequest) updates) => super.copyWith((message) => updates(message as GetPatientsByWardRequest)) as GetPatientsByWardRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientsByWardRequest create() => GetPatientsByWardRequest._();
  GetPatientsByWardRequest createEmptyInstance() => create();
  static $pb.PbList<GetPatientsByWardRequest> createRepeated() => $pb.PbList<GetPatientsByWardRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPatientsByWardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientsByWardRequest>(create);
  static GetPatientsByWardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set wardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWardId() => clearField(1);
}

class GetPatientsByWardResponse_Patient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientsByWardResponse.Patient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'humanReadableIdentifier')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notes')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bedId')
    ..hasRequiredFields = false
  ;

  GetPatientsByWardResponse_Patient._() : super();
  factory GetPatientsByWardResponse_Patient({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
    $core.String? bedId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      _result.notes = notes;
    }
    if (bedId != null) {
      _result.bedId = bedId;
    }
    return _result;
  }
  factory GetPatientsByWardResponse_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsByWardResponse_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsByWardResponse_Patient clone() => GetPatientsByWardResponse_Patient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsByWardResponse_Patient copyWith(void Function(GetPatientsByWardResponse_Patient) updates) => super.copyWith((message) => updates(message as GetPatientsByWardResponse_Patient)) as GetPatientsByWardResponse_Patient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientsByWardResponse_Patient create() => GetPatientsByWardResponse_Patient._();
  GetPatientsByWardResponse_Patient createEmptyInstance() => create();
  static $pb.PbList<GetPatientsByWardResponse_Patient> createRepeated() => $pb.PbList<GetPatientsByWardResponse_Patient>();
  @$core.pragma('dart2js:noInline')
  static GetPatientsByWardResponse_Patient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientsByWardResponse_Patient>(create);
  static GetPatientsByWardResponse_Patient? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get humanReadableIdentifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set humanReadableIdentifier($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHumanReadableIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearHumanReadableIdentifier() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get notes => $_getSZ(2);
  @$pb.TagNumber(3)
  set notes($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotes() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotes() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bedId => $_getSZ(3);
  @$pb.TagNumber(4)
  set bedId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBedId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBedId() => clearField(4);
}

class GetPatientsByWardResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientsByWardResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetPatientsByWardResponse_Patient>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patients', $pb.PbFieldType.PM, subBuilder: GetPatientsByWardResponse_Patient.create)
    ..hasRequiredFields = false
  ;

  GetPatientsByWardResponse._() : super();
  factory GetPatientsByWardResponse({
    $core.Iterable<GetPatientsByWardResponse_Patient>? patients,
  }) {
    final _result = create();
    if (patients != null) {
      _result.patients.addAll(patients);
    }
    return _result;
  }
  factory GetPatientsByWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsByWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsByWardResponse clone() => GetPatientsByWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsByWardResponse copyWith(void Function(GetPatientsByWardResponse) updates) => super.copyWith((message) => updates(message as GetPatientsByWardResponse)) as GetPatientsByWardResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientsByWardResponse create() => GetPatientsByWardResponse._();
  GetPatientsByWardResponse createEmptyInstance() => create();
  static $pb.PbList<GetPatientsByWardResponse> createRepeated() => $pb.PbList<GetPatientsByWardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPatientsByWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientsByWardResponse>(create);
  static GetPatientsByWardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetPatientsByWardResponse_Patient> get patients => $_getList(0);
}

class UpdatePatientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePatientRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'humanReadableIdentifier')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notes')
    ..hasRequiredFields = false
  ;

  UpdatePatientRequest._() : super();
  factory UpdatePatientRequest({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      _result.notes = notes;
    }
    return _result;
  }
  factory UpdatePatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePatientRequest clone() => UpdatePatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePatientRequest copyWith(void Function(UpdatePatientRequest) updates) => super.copyWith((message) => updates(message as UpdatePatientRequest)) as UpdatePatientRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePatientRequest create() => UpdatePatientRequest._();
  UpdatePatientRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePatientRequest> createRepeated() => $pb.PbList<UpdatePatientRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePatientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePatientRequest>(create);
  static UpdatePatientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get humanReadableIdentifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set humanReadableIdentifier($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHumanReadableIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearHumanReadableIdentifier() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get notes => $_getSZ(2);
  @$pb.TagNumber(3)
  set notes($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNotes() => $_has(2);
  @$pb.TagNumber(3)
  void clearNotes() => clearField(3);
}

class UpdatePatientResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePatientResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdatePatientResponse._() : super();
  factory UpdatePatientResponse() => create();
  factory UpdatePatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePatientResponse clone() => UpdatePatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePatientResponse copyWith(void Function(UpdatePatientResponse) updates) => super.copyWith((message) => updates(message as UpdatePatientResponse)) as UpdatePatientResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePatientResponse create() => UpdatePatientResponse._();
  UpdatePatientResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePatientResponse> createRepeated() => $pb.PbList<UpdatePatientResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePatientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePatientResponse>(create);
  static UpdatePatientResponse? _defaultInstance;
}

class AssignBedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssignBedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bedId')
    ..hasRequiredFields = false
  ;

  AssignBedRequest._() : super();
  factory AssignBedRequest({
    $core.String? id,
    $core.String? bedId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (bedId != null) {
      _result.bedId = bedId;
    }
    return _result;
  }
  factory AssignBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignBedRequest clone() => AssignBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignBedRequest copyWith(void Function(AssignBedRequest) updates) => super.copyWith((message) => updates(message as AssignBedRequest)) as AssignBedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssignBedRequest create() => AssignBedRequest._();
  AssignBedRequest createEmptyInstance() => create();
  static $pb.PbList<AssignBedRequest> createRepeated() => $pb.PbList<AssignBedRequest>();
  @$core.pragma('dart2js:noInline')
  static AssignBedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignBedRequest>(create);
  static AssignBedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bedId => $_getSZ(1);
  @$pb.TagNumber(2)
  set bedId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBedId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBedId() => clearField(2);
}

class AssignBedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssignBedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AssignBedResponse._() : super();
  factory AssignBedResponse() => create();
  factory AssignBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignBedResponse clone() => AssignBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignBedResponse copyWith(void Function(AssignBedResponse) updates) => super.copyWith((message) => updates(message as AssignBedResponse)) as AssignBedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssignBedResponse create() => AssignBedResponse._();
  AssignBedResponse createEmptyInstance() => create();
  static $pb.PbList<AssignBedResponse> createRepeated() => $pb.PbList<AssignBedResponse>();
  @$core.pragma('dart2js:noInline')
  static AssignBedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignBedResponse>(create);
  static AssignBedResponse? _defaultInstance;
}

class UnassignBedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnassignBedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  UnassignBedRequest._() : super();
  factory UnassignBedRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory UnassignBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignBedRequest clone() => UnassignBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignBedRequest copyWith(void Function(UnassignBedRequest) updates) => super.copyWith((message) => updates(message as UnassignBedRequest)) as UnassignBedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnassignBedRequest create() => UnassignBedRequest._();
  UnassignBedRequest createEmptyInstance() => create();
  static $pb.PbList<UnassignBedRequest> createRepeated() => $pb.PbList<UnassignBedRequest>();
  @$core.pragma('dart2js:noInline')
  static UnassignBedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnassignBedRequest>(create);
  static UnassignBedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UnassignBedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnassignBedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UnassignBedResponse._() : super();
  factory UnassignBedResponse() => create();
  factory UnassignBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignBedResponse clone() => UnassignBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignBedResponse copyWith(void Function(UnassignBedResponse) updates) => super.copyWith((message) => updates(message as UnassignBedResponse)) as UnassignBedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnassignBedResponse create() => UnassignBedResponse._();
  UnassignBedResponse createEmptyInstance() => create();
  static $pb.PbList<UnassignBedResponse> createRepeated() => $pb.PbList<UnassignBedResponse>();
  @$core.pragma('dart2js:noInline')
  static UnassignBedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnassignBedResponse>(create);
  static UnassignBedResponse? _defaultInstance;
}

class DischargePatientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DischargePatientRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DischargePatientRequest._() : super();
  factory DischargePatientRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DischargePatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DischargePatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DischargePatientRequest clone() => DischargePatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DischargePatientRequest copyWith(void Function(DischargePatientRequest) updates) => super.copyWith((message) => updates(message as DischargePatientRequest)) as DischargePatientRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DischargePatientRequest create() => DischargePatientRequest._();
  DischargePatientRequest createEmptyInstance() => create();
  static $pb.PbList<DischargePatientRequest> createRepeated() => $pb.PbList<DischargePatientRequest>();
  @$core.pragma('dart2js:noInline')
  static DischargePatientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DischargePatientRequest>(create);
  static DischargePatientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DischargePatientResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DischargePatientResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DischargePatientResponse._() : super();
  factory DischargePatientResponse() => create();
  factory DischargePatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DischargePatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DischargePatientResponse clone() => DischargePatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DischargePatientResponse copyWith(void Function(DischargePatientResponse) updates) => super.copyWith((message) => updates(message as DischargePatientResponse)) as DischargePatientResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DischargePatientResponse create() => DischargePatientResponse._();
  DischargePatientResponse createEmptyInstance() => create();
  static $pb.PbList<DischargePatientResponse> createRepeated() => $pb.PbList<DischargePatientResponse>();
  @$core.pragma('dart2js:noInline')
  static DischargePatientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DischargePatientResponse>(create);
  static DischargePatientResponse? _defaultInstance;
}

class PatientServiceApi {
  $pb.RpcClient _client;
  PatientServiceApi(this._client);

  $async.Future<CreatePatientResponse> createPatient($pb.ClientContext? ctx, CreatePatientRequest request) {
    var emptyResponse = CreatePatientResponse();
    return _client.invoke<CreatePatientResponse>(ctx, 'PatientService', 'CreatePatient', request, emptyResponse);
  }
  $async.Future<GetPatientResponse> getPatient($pb.ClientContext? ctx, GetPatientRequest request) {
    var emptyResponse = GetPatientResponse();
    return _client.invoke<GetPatientResponse>(ctx, 'PatientService', 'GetPatient', request, emptyResponse);
  }
  $async.Future<GetPatientByBedResponse> getPatientByBed($pb.ClientContext? ctx, GetPatientByBedRequest request) {
    var emptyResponse = GetPatientByBedResponse();
    return _client.invoke<GetPatientByBedResponse>(ctx, 'PatientService', 'GetPatientByBed', request, emptyResponse);
  }
  $async.Future<GetPatientsByWardResponse> getPatientsByWard($pb.ClientContext? ctx, GetPatientsByWardRequest request) {
    var emptyResponse = GetPatientsByWardResponse();
    return _client.invoke<GetPatientsByWardResponse>(ctx, 'PatientService', 'GetPatientsByWard', request, emptyResponse);
  }
  $async.Future<UpdatePatientResponse> updatePatient($pb.ClientContext? ctx, UpdatePatientRequest request) {
    var emptyResponse = UpdatePatientResponse();
    return _client.invoke<UpdatePatientResponse>(ctx, 'PatientService', 'UpdatePatient', request, emptyResponse);
  }
  $async.Future<AssignBedResponse> assignBed($pb.ClientContext? ctx, AssignBedRequest request) {
    var emptyResponse = AssignBedResponse();
    return _client.invoke<AssignBedResponse>(ctx, 'PatientService', 'AssignBed', request, emptyResponse);
  }
  $async.Future<UnassignBedResponse> unassignBed($pb.ClientContext? ctx, UnassignBedRequest request) {
    var emptyResponse = UnassignBedResponse();
    return _client.invoke<UnassignBedResponse>(ctx, 'PatientService', 'UnassignBed', request, emptyResponse);
  }
  $async.Future<DischargePatientResponse> dischargePatient($pb.ClientContext? ctx, DischargePatientRequest request) {
    var emptyResponse = DischargePatientResponse();
    return _client.invoke<DischargePatientResponse>(ctx, 'PatientService', 'DischargePatient', request, emptyResponse);
  }
}

