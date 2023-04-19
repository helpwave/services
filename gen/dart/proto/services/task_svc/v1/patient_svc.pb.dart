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
    ..hasRequiredFields = false
  ;

  CreatePatientRequest._() : super();
  factory CreatePatientRequest({
    $core.String? humanReadableIdentifier,
  }) {
    final _result = create();
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
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
    ..hasRequiredFields = false
  ;

  GetPatientResponse._() : super();
  factory GetPatientResponse({
    $core.String? id,
    $core.String? humanReadableIdentifier,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
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
}

class GetPatientsPatient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientsPatient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'humanReadableIdentifier')
    ..hasRequiredFields = false
  ;

  GetPatientsPatient._() : super();
  factory GetPatientsPatient({
    $core.String? id,
    $core.String? humanReadableIdentifier,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
    }
    return _result;
  }
  factory GetPatientsPatient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsPatient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsPatient clone() => GetPatientsPatient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsPatient copyWith(void Function(GetPatientsPatient) updates) => super.copyWith((message) => updates(message as GetPatientsPatient)) as GetPatientsPatient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientsPatient create() => GetPatientsPatient._();
  GetPatientsPatient createEmptyInstance() => create();
  static $pb.PbList<GetPatientsPatient> createRepeated() => $pb.PbList<GetPatientsPatient>();
  @$core.pragma('dart2js:noInline')
  static GetPatientsPatient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientsPatient>(create);
  static GetPatientsPatient? _defaultInstance;

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
}

class GetPatientsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetPatientsRequest._() : super();
  factory GetPatientsRequest() => create();
  factory GetPatientsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsRequest clone() => GetPatientsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsRequest copyWith(void Function(GetPatientsRequest) updates) => super.copyWith((message) => updates(message as GetPatientsRequest)) as GetPatientsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientsRequest create() => GetPatientsRequest._();
  GetPatientsRequest createEmptyInstance() => create();
  static $pb.PbList<GetPatientsRequest> createRepeated() => $pb.PbList<GetPatientsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPatientsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientsRequest>(create);
  static GetPatientsRequest? _defaultInstance;
}

class GetPatientsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetPatientsPatient>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patients', $pb.PbFieldType.PM, subBuilder: GetPatientsPatient.create)
    ..hasRequiredFields = false
  ;

  GetPatientsResponse._() : super();
  factory GetPatientsResponse({
    $core.Iterable<GetPatientsPatient>? patients,
  }) {
    final _result = create();
    if (patients != null) {
      _result.patients.addAll(patients);
    }
    return _result;
  }
  factory GetPatientsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsResponse clone() => GetPatientsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsResponse copyWith(void Function(GetPatientsResponse) updates) => super.copyWith((message) => updates(message as GetPatientsResponse)) as GetPatientsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientsResponse create() => GetPatientsResponse._();
  GetPatientsResponse createEmptyInstance() => create();
  static $pb.PbList<GetPatientsResponse> createRepeated() => $pb.PbList<GetPatientsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPatientsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientsResponse>(create);
  static GetPatientsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetPatientsPatient> get patients => $_getList(0);
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
    ..hasRequiredFields = false
  ;

  GetPatientByBedResponse._() : super();
  factory GetPatientByBedResponse({
    $core.String? id,
    $core.String? humanReadableIdentifier,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
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
}

class GetPatientsByWardPatient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientsByWardPatient', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'humanReadableIdentifier')
    ..hasRequiredFields = false
  ;

  GetPatientsByWardPatient._() : super();
  factory GetPatientsByWardPatient({
    $core.String? id,
    $core.String? humanReadableIdentifier,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
    }
    return _result;
  }
  factory GetPatientsByWardPatient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsByWardPatient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsByWardPatient clone() => GetPatientsByWardPatient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsByWardPatient copyWith(void Function(GetPatientsByWardPatient) updates) => super.copyWith((message) => updates(message as GetPatientsByWardPatient)) as GetPatientsByWardPatient; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPatientsByWardPatient create() => GetPatientsByWardPatient._();
  GetPatientsByWardPatient createEmptyInstance() => create();
  static $pb.PbList<GetPatientsByWardPatient> createRepeated() => $pb.PbList<GetPatientsByWardPatient>();
  @$core.pragma('dart2js:noInline')
  static GetPatientsByWardPatient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientsByWardPatient>(create);
  static GetPatientsByWardPatient? _defaultInstance;

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

class GetPatientsByWardResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPatientsByWardResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetPatientsByWardPatient>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'patients', $pb.PbFieldType.PM, subBuilder: GetPatientsByWardPatient.create)
    ..hasRequiredFields = false
  ;

  GetPatientsByWardResponse._() : super();
  factory GetPatientsByWardResponse({
    $core.Iterable<GetPatientsByWardPatient>? patients,
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
  $core.List<GetPatientsByWardPatient> get patients => $_getList(0);
}

class UpdatePatientRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePatientRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'humanReadableIdentifier')
    ..hasRequiredFields = false
  ;

  UpdatePatientRequest._() : super();
  factory UpdatePatientRequest({
    $core.String? id,
    $core.String? humanReadableIdentifier,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (humanReadableIdentifier != null) {
      _result.humanReadableIdentifier = humanReadableIdentifier;
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
}

