//
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/breadcrumb_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetBreadcrumbsRequest extends $pb.GeneratedMessage {
  factory GetBreadcrumbsRequest({
    $core.String? organizationId,
    $core.String? wardId,
    $core.String? roomId,
    $core.String? bedId,
    $core.String? patientId,
  }) {
    final $result = create();
    if (organizationId != null) {
      $result.organizationId = organizationId;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (bedId != null) {
      $result.bedId = bedId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    return $result;
  }
  GetBreadcrumbsRequest._() : super();
  factory GetBreadcrumbsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBreadcrumbsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBreadcrumbsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'organizationId')
    ..aOS(2, _omitFieldNames ? '' : 'wardId')
    ..aOS(3, _omitFieldNames ? '' : 'roomId')
    ..aOS(4, _omitFieldNames ? '' : 'bedId')
    ..aOS(5, _omitFieldNames ? '' : 'patientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsRequest clone() => GetBreadcrumbsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsRequest copyWith(void Function(GetBreadcrumbsRequest) updates) => super.copyWith((message) => updates(message as GetBreadcrumbsRequest)) as GetBreadcrumbsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsRequest create() => GetBreadcrumbsRequest._();
  GetBreadcrumbsRequest createEmptyInstance() => create();
  static $pb.PbList<GetBreadcrumbsRequest> createRepeated() => $pb.PbList<GetBreadcrumbsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBreadcrumbsRequest>(create);
  static GetBreadcrumbsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get wardId => $_getSZ(1);
  @$pb.TagNumber(2)
  set wardId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWardId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get roomId => $_getSZ(2);
  @$pb.TagNumber(3)
  set roomId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bedId => $_getSZ(3);
  @$pb.TagNumber(4)
  set bedId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBedId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBedId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get patientId => $_getSZ(4);
  @$pb.TagNumber(5)
  set patientId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPatientId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPatientId() => clearField(5);
}

class GetBreadcrumbsResponse_Organization extends $pb.GeneratedMessage {
  factory GetBreadcrumbsResponse_Organization({
    $core.String? id,
    $core.String? name,
    GetBreadcrumbsResponse_Ward? ward,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (ward != null) {
      $result.ward = ward;
    }
    return $result;
  }
  GetBreadcrumbsResponse_Organization._() : super();
  factory GetBreadcrumbsResponse_Organization.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBreadcrumbsResponse_Organization.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBreadcrumbsResponse.Organization', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<GetBreadcrumbsResponse_Ward>(3, _omitFieldNames ? '' : 'ward', subBuilder: GetBreadcrumbsResponse_Ward.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Organization clone() => GetBreadcrumbsResponse_Organization()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Organization copyWith(void Function(GetBreadcrumbsResponse_Organization) updates) => super.copyWith((message) => updates(message as GetBreadcrumbsResponse_Organization)) as GetBreadcrumbsResponse_Organization;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Organization create() => GetBreadcrumbsResponse_Organization._();
  GetBreadcrumbsResponse_Organization createEmptyInstance() => create();
  static $pb.PbList<GetBreadcrumbsResponse_Organization> createRepeated() => $pb.PbList<GetBreadcrumbsResponse_Organization>();
  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Organization getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBreadcrumbsResponse_Organization>(create);
  static GetBreadcrumbsResponse_Organization? _defaultInstance;

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
  GetBreadcrumbsResponse_Ward get ward => $_getN(2);
  @$pb.TagNumber(3)
  set ward(GetBreadcrumbsResponse_Ward v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWard() => $_has(2);
  @$pb.TagNumber(3)
  void clearWard() => clearField(3);
  @$pb.TagNumber(3)
  GetBreadcrumbsResponse_Ward ensureWard() => $_ensure(2);
}

class GetBreadcrumbsResponse_Ward extends $pb.GeneratedMessage {
  factory GetBreadcrumbsResponse_Ward({
    $core.String? id,
    $core.String? name,
    GetBreadcrumbsResponse_Room? room,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (room != null) {
      $result.room = room;
    }
    return $result;
  }
  GetBreadcrumbsResponse_Ward._() : super();
  factory GetBreadcrumbsResponse_Ward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBreadcrumbsResponse_Ward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBreadcrumbsResponse.Ward', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<GetBreadcrumbsResponse_Room>(3, _omitFieldNames ? '' : 'room', subBuilder: GetBreadcrumbsResponse_Room.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Ward clone() => GetBreadcrumbsResponse_Ward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Ward copyWith(void Function(GetBreadcrumbsResponse_Ward) updates) => super.copyWith((message) => updates(message as GetBreadcrumbsResponse_Ward)) as GetBreadcrumbsResponse_Ward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Ward create() => GetBreadcrumbsResponse_Ward._();
  GetBreadcrumbsResponse_Ward createEmptyInstance() => create();
  static $pb.PbList<GetBreadcrumbsResponse_Ward> createRepeated() => $pb.PbList<GetBreadcrumbsResponse_Ward>();
  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Ward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBreadcrumbsResponse_Ward>(create);
  static GetBreadcrumbsResponse_Ward? _defaultInstance;

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
  GetBreadcrumbsResponse_Room get room => $_getN(2);
  @$pb.TagNumber(3)
  set room(GetBreadcrumbsResponse_Room v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoom() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoom() => clearField(3);
  @$pb.TagNumber(3)
  GetBreadcrumbsResponse_Room ensureRoom() => $_ensure(2);
}

class GetBreadcrumbsResponse_Room extends $pb.GeneratedMessage {
  factory GetBreadcrumbsResponse_Room({
    $core.String? id,
    $core.String? name,
    GetBreadcrumbsResponse_Bed? bed,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (bed != null) {
      $result.bed = bed;
    }
    return $result;
  }
  GetBreadcrumbsResponse_Room._() : super();
  factory GetBreadcrumbsResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBreadcrumbsResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBreadcrumbsResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<GetBreadcrumbsResponse_Bed>(3, _omitFieldNames ? '' : 'bed', subBuilder: GetBreadcrumbsResponse_Bed.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Room clone() => GetBreadcrumbsResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Room copyWith(void Function(GetBreadcrumbsResponse_Room) updates) => super.copyWith((message) => updates(message as GetBreadcrumbsResponse_Room)) as GetBreadcrumbsResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Room create() => GetBreadcrumbsResponse_Room._();
  GetBreadcrumbsResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetBreadcrumbsResponse_Room> createRepeated() => $pb.PbList<GetBreadcrumbsResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBreadcrumbsResponse_Room>(create);
  static GetBreadcrumbsResponse_Room? _defaultInstance;

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
  GetBreadcrumbsResponse_Bed get bed => $_getN(2);
  @$pb.TagNumber(3)
  set bed(GetBreadcrumbsResponse_Bed v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBed() => $_has(2);
  @$pb.TagNumber(3)
  void clearBed() => clearField(3);
  @$pb.TagNumber(3)
  GetBreadcrumbsResponse_Bed ensureBed() => $_ensure(2);
}

class GetBreadcrumbsResponse_Bed extends $pb.GeneratedMessage {
  factory GetBreadcrumbsResponse_Bed({
    $core.String? id,
    $core.String? name,
    GetBreadcrumbsResponse_Patient? patient,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (patient != null) {
      $result.patient = patient;
    }
    return $result;
  }
  GetBreadcrumbsResponse_Bed._() : super();
  factory GetBreadcrumbsResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBreadcrumbsResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBreadcrumbsResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<GetBreadcrumbsResponse_Patient>(3, _omitFieldNames ? '' : 'patient', subBuilder: GetBreadcrumbsResponse_Patient.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Bed clone() => GetBreadcrumbsResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Bed copyWith(void Function(GetBreadcrumbsResponse_Bed) updates) => super.copyWith((message) => updates(message as GetBreadcrumbsResponse_Bed)) as GetBreadcrumbsResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Bed create() => GetBreadcrumbsResponse_Bed._();
  GetBreadcrumbsResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<GetBreadcrumbsResponse_Bed> createRepeated() => $pb.PbList<GetBreadcrumbsResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBreadcrumbsResponse_Bed>(create);
  static GetBreadcrumbsResponse_Bed? _defaultInstance;

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
  GetBreadcrumbsResponse_Patient get patient => $_getN(2);
  @$pb.TagNumber(3)
  set patient(GetBreadcrumbsResponse_Patient v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPatient() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatient() => clearField(3);
  @$pb.TagNumber(3)
  GetBreadcrumbsResponse_Patient ensurePatient() => $_ensure(2);
}

class GetBreadcrumbsResponse_Patient extends $pb.GeneratedMessage {
  factory GetBreadcrumbsResponse_Patient({
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
  GetBreadcrumbsResponse_Patient._() : super();
  factory GetBreadcrumbsResponse_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBreadcrumbsResponse_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBreadcrumbsResponse.Patient', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Patient clone() => GetBreadcrumbsResponse_Patient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse_Patient copyWith(void Function(GetBreadcrumbsResponse_Patient) updates) => super.copyWith((message) => updates(message as GetBreadcrumbsResponse_Patient)) as GetBreadcrumbsResponse_Patient;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Patient create() => GetBreadcrumbsResponse_Patient._();
  GetBreadcrumbsResponse_Patient createEmptyInstance() => create();
  static $pb.PbList<GetBreadcrumbsResponse_Patient> createRepeated() => $pb.PbList<GetBreadcrumbsResponse_Patient>();
  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse_Patient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBreadcrumbsResponse_Patient>(create);
  static GetBreadcrumbsResponse_Patient? _defaultInstance;

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

class GetBreadcrumbsResponse extends $pb.GeneratedMessage {
  factory GetBreadcrumbsResponse({
    GetBreadcrumbsResponse_Organization? organization,
  }) {
    final $result = create();
    if (organization != null) {
      $result.organization = organization;
    }
    return $result;
  }
  GetBreadcrumbsResponse._() : super();
  factory GetBreadcrumbsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBreadcrumbsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBreadcrumbsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOM<GetBreadcrumbsResponse_Organization>(1, _omitFieldNames ? '' : 'organization', subBuilder: GetBreadcrumbsResponse_Organization.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse clone() => GetBreadcrumbsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBreadcrumbsResponse copyWith(void Function(GetBreadcrumbsResponse) updates) => super.copyWith((message) => updates(message as GetBreadcrumbsResponse)) as GetBreadcrumbsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse create() => GetBreadcrumbsResponse._();
  GetBreadcrumbsResponse createEmptyInstance() => create();
  static $pb.PbList<GetBreadcrumbsResponse> createRepeated() => $pb.PbList<GetBreadcrumbsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBreadcrumbsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBreadcrumbsResponse>(create);
  static GetBreadcrumbsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  GetBreadcrumbsResponse_Organization get organization => $_getN(0);
  @$pb.TagNumber(1)
  set organization(GetBreadcrumbsResponse_Organization v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganization() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganization() => clearField(1);
  @$pb.TagNumber(1)
  GetBreadcrumbsResponse_Organization ensureOrganization() => $_ensure(0);
}

class BreadcrumbServiceApi {
  $pb.RpcClient _client;
  BreadcrumbServiceApi(this._client);

  $async.Future<GetBreadcrumbsResponse> getBreadcrumbs($pb.ClientContext? ctx, GetBreadcrumbsRequest request) =>
    _client.invoke<GetBreadcrumbsResponse>(ctx, 'BreadcrumbService', 'GetBreadcrumbs', request, GetBreadcrumbsResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
