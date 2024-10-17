//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/patient_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'patient_svc.pbenum.dart';

export 'patient_svc.pbenum.dart';

class CreatePatientRequest extends $pb.GeneratedMessage {
  factory CreatePatientRequest({
    $core.String? humanReadableIdentifier,
    $core.String? notes,
  }) {
    final $result = create();
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      $result.notes = notes;
    }
    return $result;
  }
  CreatePatientRequest._() : super();
  factory CreatePatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOS(2, _omitFieldNames ? '' : 'notes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePatientRequest clone() => CreatePatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePatientRequest copyWith(void Function(CreatePatientRequest) updates) => super.copyWith((message) => updates(message as CreatePatientRequest)) as CreatePatientRequest;

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
  factory CreatePatientResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreatePatientResponse._() : super();
  factory CreatePatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePatientResponse clone() => CreatePatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePatientResponse copyWith(void Function(CreatePatientResponse) updates) => super.copyWith((message) => updates(message as CreatePatientResponse)) as CreatePatientResponse;

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
  factory GetPatientRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetPatientRequest._() : super();
  factory GetPatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientRequest clone() => GetPatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientRequest copyWith(void Function(GetPatientRequest) updates) => super.copyWith((message) => updates(message as GetPatientRequest)) as GetPatientRequest;

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

class GetPatientResponse_Room extends $pb.GeneratedMessage {
  factory GetPatientResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.String? wardId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetPatientResponse_Room._() : super();
  factory GetPatientResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientResponse_Room clone() => GetPatientResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientResponse_Room copyWith(void Function(GetPatientResponse_Room) updates) => super.copyWith((message) => updates(message as GetPatientResponse_Room)) as GetPatientResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientResponse_Room create() => GetPatientResponse_Room._();
  GetPatientResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetPatientResponse_Room> createRepeated() => $pb.PbList<GetPatientResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetPatientResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientResponse_Room>(create);
  static GetPatientResponse_Room? _defaultInstance;

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
  $core.String get wardId => $_getSZ(2);
  @$pb.TagNumber(3)
  set wardId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWardId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWardId() => clearField(3);
}

class GetPatientResponse_Bed extends $pb.GeneratedMessage {
  factory GetPatientResponse_Bed({
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
  GetPatientResponse_Bed._() : super();
  factory GetPatientResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientResponse_Bed clone() => GetPatientResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientResponse_Bed copyWith(void Function(GetPatientResponse_Bed) updates) => super.copyWith((message) => updates(message as GetPatientResponse_Bed)) as GetPatientResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientResponse_Bed create() => GetPatientResponse_Bed._();
  GetPatientResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<GetPatientResponse_Bed> createRepeated() => $pb.PbList<GetPatientResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetPatientResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientResponse_Bed>(create);
  static GetPatientResponse_Bed? _defaultInstance;

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

class GetPatientResponse extends $pb.GeneratedMessage {
  factory GetPatientResponse({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
  @$core.Deprecated('This field is deprecated.')
    $core.String? bedId,
  @$core.Deprecated('This field is deprecated.')
    $core.String? wardId,
    GetPatientResponse_Room? room,
    GetPatientResponse_Bed? bed,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      $result.notes = notes;
    }
    if (bedId != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.bedId = bedId;
    }
    if (wardId != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.wardId = wardId;
    }
    if (room != null) {
      $result.room = room;
    }
    if (bed != null) {
      $result.bed = bed;
    }
    return $result;
  }
  GetPatientResponse._() : super();
  factory GetPatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOS(3, _omitFieldNames ? '' : 'notes')
    ..aOS(4, _omitFieldNames ? '' : 'bedId')
    ..aOS(5, _omitFieldNames ? '' : 'wardId')
    ..aOM<GetPatientResponse_Room>(7, _omitFieldNames ? '' : 'room', subBuilder: GetPatientResponse_Room.create)
    ..aOM<GetPatientResponse_Bed>(8, _omitFieldNames ? '' : 'bed', subBuilder: GetPatientResponse_Bed.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientResponse clone() => GetPatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientResponse copyWith(void Function(GetPatientResponse) updates) => super.copyWith((message) => updates(message as GetPatientResponse)) as GetPatientResponse;

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

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.String get bedId => $_getSZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set bedId($core.String v) { $_setString(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasBedId() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearBedId() => clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.String get wardId => $_getSZ(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set wardId($core.String v) { $_setString(4, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasWardId() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearWardId() => clearField(5);

  @$pb.TagNumber(7)
  GetPatientResponse_Room get room => $_getN(5);
  @$pb.TagNumber(7)
  set room(GetPatientResponse_Room v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRoom() => $_has(5);
  @$pb.TagNumber(7)
  void clearRoom() => clearField(7);
  @$pb.TagNumber(7)
  GetPatientResponse_Room ensureRoom() => $_ensure(5);

  @$pb.TagNumber(8)
  GetPatientResponse_Bed get bed => $_getN(6);
  @$pb.TagNumber(8)
  set bed(GetPatientResponse_Bed v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBed() => $_has(6);
  @$pb.TagNumber(8)
  void clearBed() => clearField(8);
  @$pb.TagNumber(8)
  GetPatientResponse_Bed ensureBed() => $_ensure(6);
}

///
///  DeletePatient
class DeletePatientRequest extends $pb.GeneratedMessage {
  factory DeletePatientRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeletePatientRequest._() : super();
  factory DeletePatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePatientRequest clone() => DeletePatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePatientRequest copyWith(void Function(DeletePatientRequest) updates) => super.copyWith((message) => updates(message as DeletePatientRequest)) as DeletePatientRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePatientRequest create() => DeletePatientRequest._();
  DeletePatientRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePatientRequest> createRepeated() => $pb.PbList<DeletePatientRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePatientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePatientRequest>(create);
  static DeletePatientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeletePatientResponse extends $pb.GeneratedMessage {
  factory DeletePatientResponse() => create();
  DeletePatientResponse._() : super();
  factory DeletePatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePatientResponse clone() => DeletePatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePatientResponse copyWith(void Function(DeletePatientResponse) updates) => super.copyWith((message) => updates(message as DeletePatientResponse)) as DeletePatientResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePatientResponse create() => DeletePatientResponse._();
  DeletePatientResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePatientResponse> createRepeated() => $pb.PbList<DeletePatientResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePatientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePatientResponse>(create);
  static DeletePatientResponse? _defaultInstance;
}

class GetPatientByBedRequest extends $pb.GeneratedMessage {
  factory GetPatientByBedRequest({
    $core.String? bedId,
  }) {
    final $result = create();
    if (bedId != null) {
      $result.bedId = bedId;
    }
    return $result;
  }
  GetPatientByBedRequest._() : super();
  factory GetPatientByBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientByBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientByBedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bedId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientByBedRequest clone() => GetPatientByBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientByBedRequest copyWith(void Function(GetPatientByBedRequest) updates) => super.copyWith((message) => updates(message as GetPatientByBedRequest)) as GetPatientByBedRequest;

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
  factory GetPatientByBedResponse({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
    $core.String? bedId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      $result.notes = notes;
    }
    if (bedId != null) {
      $result.bedId = bedId;
    }
    return $result;
  }
  GetPatientByBedResponse._() : super();
  factory GetPatientByBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientByBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientByBedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOS(3, _omitFieldNames ? '' : 'notes')
    ..aOS(4, _omitFieldNames ? '' : 'bedId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientByBedResponse clone() => GetPatientByBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientByBedResponse copyWith(void Function(GetPatientByBedResponse) updates) => super.copyWith((message) => updates(message as GetPatientByBedResponse)) as GetPatientByBedResponse;

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
  factory GetPatientsByWardRequest({
    $core.String? wardId,
  }) {
    final $result = create();
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetPatientsByWardRequest._() : super();
  factory GetPatientsByWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsByWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientsByWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsByWardRequest clone() => GetPatientsByWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsByWardRequest copyWith(void Function(GetPatientsByWardRequest) updates) => super.copyWith((message) => updates(message as GetPatientsByWardRequest)) as GetPatientsByWardRequest;

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
  factory GetPatientsByWardResponse_Patient({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
    $core.String? bedId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      $result.notes = notes;
    }
    if (bedId != null) {
      $result.bedId = bedId;
    }
    return $result;
  }
  GetPatientsByWardResponse_Patient._() : super();
  factory GetPatientsByWardResponse_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsByWardResponse_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientsByWardResponse.Patient', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOS(3, _omitFieldNames ? '' : 'notes')
    ..aOS(4, _omitFieldNames ? '' : 'bedId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsByWardResponse_Patient clone() => GetPatientsByWardResponse_Patient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsByWardResponse_Patient copyWith(void Function(GetPatientsByWardResponse_Patient) updates) => super.copyWith((message) => updates(message as GetPatientsByWardResponse_Patient)) as GetPatientsByWardResponse_Patient;

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
  factory GetPatientsByWardResponse({
    $core.Iterable<GetPatientsByWardResponse_Patient>? patients,
  }) {
    final $result = create();
    if (patients != null) {
      $result.patients.addAll(patients);
    }
    return $result;
  }
  GetPatientsByWardResponse._() : super();
  factory GetPatientsByWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientsByWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientsByWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetPatientsByWardResponse_Patient>(1, _omitFieldNames ? '' : 'patients', $pb.PbFieldType.PM, subBuilder: GetPatientsByWardResponse_Patient.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientsByWardResponse clone() => GetPatientsByWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientsByWardResponse copyWith(void Function(GetPatientsByWardResponse) updates) => super.copyWith((message) => updates(message as GetPatientsByWardResponse)) as GetPatientsByWardResponse;

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

class GetPatientAssignmentByWardRequest extends $pb.GeneratedMessage {
  factory GetPatientAssignmentByWardRequest({
    $core.String? wardId,
  }) {
    final $result = create();
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetPatientAssignmentByWardRequest._() : super();
  factory GetPatientAssignmentByWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientAssignmentByWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientAssignmentByWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardRequest clone() => GetPatientAssignmentByWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardRequest copyWith(void Function(GetPatientAssignmentByWardRequest) updates) => super.copyWith((message) => updates(message as GetPatientAssignmentByWardRequest)) as GetPatientAssignmentByWardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardRequest create() => GetPatientAssignmentByWardRequest._();
  GetPatientAssignmentByWardRequest createEmptyInstance() => create();
  static $pb.PbList<GetPatientAssignmentByWardRequest> createRepeated() => $pb.PbList<GetPatientAssignmentByWardRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientAssignmentByWardRequest>(create);
  static GetPatientAssignmentByWardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set wardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWardId() => clearField(1);
}

class GetPatientAssignmentByWardResponse_Room_Bed_Patient extends $pb.GeneratedMessage {
  factory GetPatientAssignmentByWardResponse_Room_Bed_Patient({
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
  GetPatientAssignmentByWardResponse_Room_Bed_Patient._() : super();
  factory GetPatientAssignmentByWardResponse_Room_Bed_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientAssignmentByWardResponse_Room_Bed_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientAssignmentByWardResponse.Room.Bed.Patient', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardResponse_Room_Bed_Patient clone() => GetPatientAssignmentByWardResponse_Room_Bed_Patient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardResponse_Room_Bed_Patient copyWith(void Function(GetPatientAssignmentByWardResponse_Room_Bed_Patient) updates) => super.copyWith((message) => updates(message as GetPatientAssignmentByWardResponse_Room_Bed_Patient)) as GetPatientAssignmentByWardResponse_Room_Bed_Patient;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardResponse_Room_Bed_Patient create() => GetPatientAssignmentByWardResponse_Room_Bed_Patient._();
  GetPatientAssignmentByWardResponse_Room_Bed_Patient createEmptyInstance() => create();
  static $pb.PbList<GetPatientAssignmentByWardResponse_Room_Bed_Patient> createRepeated() => $pb.PbList<GetPatientAssignmentByWardResponse_Room_Bed_Patient>();
  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardResponse_Room_Bed_Patient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientAssignmentByWardResponse_Room_Bed_Patient>(create);
  static GetPatientAssignmentByWardResponse_Room_Bed_Patient? _defaultInstance;

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

class GetPatientAssignmentByWardResponse_Room_Bed extends $pb.GeneratedMessage {
  factory GetPatientAssignmentByWardResponse_Room_Bed({
    $core.String? id,
    $core.String? name,
    GetPatientAssignmentByWardResponse_Room_Bed_Patient? patient,
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
  GetPatientAssignmentByWardResponse_Room_Bed._() : super();
  factory GetPatientAssignmentByWardResponse_Room_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientAssignmentByWardResponse_Room_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientAssignmentByWardResponse.Room.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<GetPatientAssignmentByWardResponse_Room_Bed_Patient>(3, _omitFieldNames ? '' : 'patient', subBuilder: GetPatientAssignmentByWardResponse_Room_Bed_Patient.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardResponse_Room_Bed clone() => GetPatientAssignmentByWardResponse_Room_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardResponse_Room_Bed copyWith(void Function(GetPatientAssignmentByWardResponse_Room_Bed) updates) => super.copyWith((message) => updates(message as GetPatientAssignmentByWardResponse_Room_Bed)) as GetPatientAssignmentByWardResponse_Room_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardResponse_Room_Bed create() => GetPatientAssignmentByWardResponse_Room_Bed._();
  GetPatientAssignmentByWardResponse_Room_Bed createEmptyInstance() => create();
  static $pb.PbList<GetPatientAssignmentByWardResponse_Room_Bed> createRepeated() => $pb.PbList<GetPatientAssignmentByWardResponse_Room_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardResponse_Room_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientAssignmentByWardResponse_Room_Bed>(create);
  static GetPatientAssignmentByWardResponse_Room_Bed? _defaultInstance;

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
  GetPatientAssignmentByWardResponse_Room_Bed_Patient get patient => $_getN(2);
  @$pb.TagNumber(3)
  set patient(GetPatientAssignmentByWardResponse_Room_Bed_Patient v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPatient() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatient() => clearField(3);
  @$pb.TagNumber(3)
  GetPatientAssignmentByWardResponse_Room_Bed_Patient ensurePatient() => $_ensure(2);
}

class GetPatientAssignmentByWardResponse_Room extends $pb.GeneratedMessage {
  factory GetPatientAssignmentByWardResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetPatientAssignmentByWardResponse_Room_Bed>? beds,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (beds != null) {
      $result.beds.addAll(beds);
    }
    return $result;
  }
  GetPatientAssignmentByWardResponse_Room._() : super();
  factory GetPatientAssignmentByWardResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientAssignmentByWardResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientAssignmentByWardResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GetPatientAssignmentByWardResponse_Room_Bed>(3, _omitFieldNames ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetPatientAssignmentByWardResponse_Room_Bed.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardResponse_Room clone() => GetPatientAssignmentByWardResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardResponse_Room copyWith(void Function(GetPatientAssignmentByWardResponse_Room) updates) => super.copyWith((message) => updates(message as GetPatientAssignmentByWardResponse_Room)) as GetPatientAssignmentByWardResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardResponse_Room create() => GetPatientAssignmentByWardResponse_Room._();
  GetPatientAssignmentByWardResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetPatientAssignmentByWardResponse_Room> createRepeated() => $pb.PbList<GetPatientAssignmentByWardResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientAssignmentByWardResponse_Room>(create);
  static GetPatientAssignmentByWardResponse_Room? _defaultInstance;

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
  $core.List<GetPatientAssignmentByWardResponse_Room_Bed> get beds => $_getList(2);
}

class GetPatientAssignmentByWardResponse extends $pb.GeneratedMessage {
  factory GetPatientAssignmentByWardResponse({
    $core.Iterable<GetPatientAssignmentByWardResponse_Room>? rooms,
  }) {
    final $result = create();
    if (rooms != null) {
      $result.rooms.addAll(rooms);
    }
    return $result;
  }
  GetPatientAssignmentByWardResponse._() : super();
  factory GetPatientAssignmentByWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientAssignmentByWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientAssignmentByWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetPatientAssignmentByWardResponse_Room>(1, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: GetPatientAssignmentByWardResponse_Room.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardResponse clone() => GetPatientAssignmentByWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientAssignmentByWardResponse copyWith(void Function(GetPatientAssignmentByWardResponse) updates) => super.copyWith((message) => updates(message as GetPatientAssignmentByWardResponse)) as GetPatientAssignmentByWardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardResponse create() => GetPatientAssignmentByWardResponse._();
  GetPatientAssignmentByWardResponse createEmptyInstance() => create();
  static $pb.PbList<GetPatientAssignmentByWardResponse> createRepeated() => $pb.PbList<GetPatientAssignmentByWardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPatientAssignmentByWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientAssignmentByWardResponse>(create);
  static GetPatientAssignmentByWardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetPatientAssignmentByWardResponse_Room> get rooms => $_getList(0);
}

class GetRecentPatientsRequest extends $pb.GeneratedMessage {
  factory GetRecentPatientsRequest() => create();
  GetRecentPatientsRequest._() : super();
  factory GetRecentPatientsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecentPatientsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRecentPatientsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecentPatientsRequest clone() => GetRecentPatientsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecentPatientsRequest copyWith(void Function(GetRecentPatientsRequest) updates) => super.copyWith((message) => updates(message as GetRecentPatientsRequest)) as GetRecentPatientsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsRequest create() => GetRecentPatientsRequest._();
  GetRecentPatientsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRecentPatientsRequest> createRepeated() => $pb.PbList<GetRecentPatientsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecentPatientsRequest>(create);
  static GetRecentPatientsRequest? _defaultInstance;
}

class GetRecentPatientsResponse_Bed extends $pb.GeneratedMessage {
  factory GetRecentPatientsResponse_Bed({
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
  GetRecentPatientsResponse_Bed._() : super();
  factory GetRecentPatientsResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecentPatientsResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRecentPatientsResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecentPatientsResponse_Bed clone() => GetRecentPatientsResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecentPatientsResponse_Bed copyWith(void Function(GetRecentPatientsResponse_Bed) updates) => super.copyWith((message) => updates(message as GetRecentPatientsResponse_Bed)) as GetRecentPatientsResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsResponse_Bed create() => GetRecentPatientsResponse_Bed._();
  GetRecentPatientsResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<GetRecentPatientsResponse_Bed> createRepeated() => $pb.PbList<GetRecentPatientsResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecentPatientsResponse_Bed>(create);
  static GetRecentPatientsResponse_Bed? _defaultInstance;

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

class GetRecentPatientsResponse_Room extends $pb.GeneratedMessage {
  factory GetRecentPatientsResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.String? wardId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetRecentPatientsResponse_Room._() : super();
  factory GetRecentPatientsResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecentPatientsResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRecentPatientsResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecentPatientsResponse_Room clone() => GetRecentPatientsResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecentPatientsResponse_Room copyWith(void Function(GetRecentPatientsResponse_Room) updates) => super.copyWith((message) => updates(message as GetRecentPatientsResponse_Room)) as GetRecentPatientsResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsResponse_Room create() => GetRecentPatientsResponse_Room._();
  GetRecentPatientsResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetRecentPatientsResponse_Room> createRepeated() => $pb.PbList<GetRecentPatientsResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecentPatientsResponse_Room>(create);
  static GetRecentPatientsResponse_Room? _defaultInstance;

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
  $core.String get wardId => $_getSZ(2);
  @$pb.TagNumber(3)
  set wardId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWardId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWardId() => clearField(3);
}

class GetRecentPatientsResponse_PatientWithRoomAndBed extends $pb.GeneratedMessage {
  factory GetRecentPatientsResponse_PatientWithRoomAndBed({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    GetRecentPatientsResponse_Room? room,
    GetRecentPatientsResponse_Bed? bed,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (room != null) {
      $result.room = room;
    }
    if (bed != null) {
      $result.bed = bed;
    }
    return $result;
  }
  GetRecentPatientsResponse_PatientWithRoomAndBed._() : super();
  factory GetRecentPatientsResponse_PatientWithRoomAndBed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecentPatientsResponse_PatientWithRoomAndBed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRecentPatientsResponse.PatientWithRoomAndBed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOM<GetRecentPatientsResponse_Room>(3, _omitFieldNames ? '' : 'room', subBuilder: GetRecentPatientsResponse_Room.create)
    ..aOM<GetRecentPatientsResponse_Bed>(4, _omitFieldNames ? '' : 'bed', subBuilder: GetRecentPatientsResponse_Bed.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecentPatientsResponse_PatientWithRoomAndBed clone() => GetRecentPatientsResponse_PatientWithRoomAndBed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecentPatientsResponse_PatientWithRoomAndBed copyWith(void Function(GetRecentPatientsResponse_PatientWithRoomAndBed) updates) => super.copyWith((message) => updates(message as GetRecentPatientsResponse_PatientWithRoomAndBed)) as GetRecentPatientsResponse_PatientWithRoomAndBed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsResponse_PatientWithRoomAndBed create() => GetRecentPatientsResponse_PatientWithRoomAndBed._();
  GetRecentPatientsResponse_PatientWithRoomAndBed createEmptyInstance() => create();
  static $pb.PbList<GetRecentPatientsResponse_PatientWithRoomAndBed> createRepeated() => $pb.PbList<GetRecentPatientsResponse_PatientWithRoomAndBed>();
  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsResponse_PatientWithRoomAndBed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecentPatientsResponse_PatientWithRoomAndBed>(create);
  static GetRecentPatientsResponse_PatientWithRoomAndBed? _defaultInstance;

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
  GetRecentPatientsResponse_Room get room => $_getN(2);
  @$pb.TagNumber(3)
  set room(GetRecentPatientsResponse_Room v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoom() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoom() => clearField(3);
  @$pb.TagNumber(3)
  GetRecentPatientsResponse_Room ensureRoom() => $_ensure(2);

  @$pb.TagNumber(4)
  GetRecentPatientsResponse_Bed get bed => $_getN(3);
  @$pb.TagNumber(4)
  set bed(GetRecentPatientsResponse_Bed v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBed() => $_has(3);
  @$pb.TagNumber(4)
  void clearBed() => clearField(4);
  @$pb.TagNumber(4)
  GetRecentPatientsResponse_Bed ensureBed() => $_ensure(3);
}

class GetRecentPatientsResponse extends $pb.GeneratedMessage {
  factory GetRecentPatientsResponse({
    $core.Iterable<GetRecentPatientsResponse_PatientWithRoomAndBed>? recentPatients,
  }) {
    final $result = create();
    if (recentPatients != null) {
      $result.recentPatients.addAll(recentPatients);
    }
    return $result;
  }
  GetRecentPatientsResponse._() : super();
  factory GetRecentPatientsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecentPatientsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRecentPatientsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetRecentPatientsResponse_PatientWithRoomAndBed>(1, _omitFieldNames ? '' : 'recentPatients', $pb.PbFieldType.PM, subBuilder: GetRecentPatientsResponse_PatientWithRoomAndBed.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecentPatientsResponse clone() => GetRecentPatientsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecentPatientsResponse copyWith(void Function(GetRecentPatientsResponse) updates) => super.copyWith((message) => updates(message as GetRecentPatientsResponse)) as GetRecentPatientsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsResponse create() => GetRecentPatientsResponse._();
  GetRecentPatientsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRecentPatientsResponse> createRepeated() => $pb.PbList<GetRecentPatientsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRecentPatientsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecentPatientsResponse>(create);
  static GetRecentPatientsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetRecentPatientsResponse_PatientWithRoomAndBed> get recentPatients => $_getList(0);
}

class UpdatePatientRequest extends $pb.GeneratedMessage {
  factory UpdatePatientRequest({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      $result.notes = notes;
    }
    return $result;
  }
  UpdatePatientRequest._() : super();
  factory UpdatePatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOS(3, _omitFieldNames ? '' : 'notes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePatientRequest clone() => UpdatePatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePatientRequest copyWith(void Function(UpdatePatientRequest) updates) => super.copyWith((message) => updates(message as UpdatePatientRequest)) as UpdatePatientRequest;

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
  factory UpdatePatientResponse() => create();
  UpdatePatientResponse._() : super();
  factory UpdatePatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePatientResponse clone() => UpdatePatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePatientResponse copyWith(void Function(UpdatePatientResponse) updates) => super.copyWith((message) => updates(message as UpdatePatientResponse)) as UpdatePatientResponse;

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
  factory AssignBedRequest({
    $core.String? id,
    $core.String? bedId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (bedId != null) {
      $result.bedId = bedId;
    }
    return $result;
  }
  AssignBedRequest._() : super();
  factory AssignBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignBedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'bedId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignBedRequest clone() => AssignBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignBedRequest copyWith(void Function(AssignBedRequest) updates) => super.copyWith((message) => updates(message as AssignBedRequest)) as AssignBedRequest;

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
  factory AssignBedResponse() => create();
  AssignBedResponse._() : super();
  factory AssignBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignBedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignBedResponse clone() => AssignBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignBedResponse copyWith(void Function(AssignBedResponse) updates) => super.copyWith((message) => updates(message as AssignBedResponse)) as AssignBedResponse;

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
  factory UnassignBedRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  UnassignBedRequest._() : super();
  factory UnassignBedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignBedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignBedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignBedRequest clone() => UnassignBedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignBedRequest copyWith(void Function(UnassignBedRequest) updates) => super.copyWith((message) => updates(message as UnassignBedRequest)) as UnassignBedRequest;

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
  factory UnassignBedResponse() => create();
  UnassignBedResponse._() : super();
  factory UnassignBedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnassignBedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignBedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnassignBedResponse clone() => UnassignBedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnassignBedResponse copyWith(void Function(UnassignBedResponse) updates) => super.copyWith((message) => updates(message as UnassignBedResponse)) as UnassignBedResponse;

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
  factory DischargePatientRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DischargePatientRequest._() : super();
  factory DischargePatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DischargePatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DischargePatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DischargePatientRequest clone() => DischargePatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DischargePatientRequest copyWith(void Function(DischargePatientRequest) updates) => super.copyWith((message) => updates(message as DischargePatientRequest)) as DischargePatientRequest;

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
  factory DischargePatientResponse() => create();
  DischargePatientResponse._() : super();
  factory DischargePatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DischargePatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DischargePatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DischargePatientResponse clone() => DischargePatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DischargePatientResponse copyWith(void Function(DischargePatientResponse) updates) => super.copyWith((message) => updates(message as DischargePatientResponse)) as DischargePatientResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DischargePatientResponse create() => DischargePatientResponse._();
  DischargePatientResponse createEmptyInstance() => create();
  static $pb.PbList<DischargePatientResponse> createRepeated() => $pb.PbList<DischargePatientResponse>();
  @$core.pragma('dart2js:noInline')
  static DischargePatientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DischargePatientResponse>(create);
  static DischargePatientResponse? _defaultInstance;
}

class GetPatientDetailsRequest extends $pb.GeneratedMessage {
  factory GetPatientDetailsRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetPatientDetailsRequest._() : super();
  factory GetPatientDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientDetailsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientDetailsRequest clone() => GetPatientDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientDetailsRequest copyWith(void Function(GetPatientDetailsRequest) updates) => super.copyWith((message) => updates(message as GetPatientDetailsRequest)) as GetPatientDetailsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsRequest create() => GetPatientDetailsRequest._();
  GetPatientDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<GetPatientDetailsRequest> createRepeated() => $pb.PbList<GetPatientDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientDetailsRequest>(create);
  static GetPatientDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetPatientDetailsResponse_Room extends $pb.GeneratedMessage {
  factory GetPatientDetailsResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.String? wardId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetPatientDetailsResponse_Room._() : super();
  factory GetPatientDetailsResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientDetailsResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientDetailsResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse_Room clone() => GetPatientDetailsResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse_Room copyWith(void Function(GetPatientDetailsResponse_Room) updates) => super.copyWith((message) => updates(message as GetPatientDetailsResponse_Room)) as GetPatientDetailsResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse_Room create() => GetPatientDetailsResponse_Room._();
  GetPatientDetailsResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetPatientDetailsResponse_Room> createRepeated() => $pb.PbList<GetPatientDetailsResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientDetailsResponse_Room>(create);
  static GetPatientDetailsResponse_Room? _defaultInstance;

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
  $core.String get wardId => $_getSZ(2);
  @$pb.TagNumber(3)
  set wardId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWardId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWardId() => clearField(3);
}

class GetPatientDetailsResponse_Bed extends $pb.GeneratedMessage {
  factory GetPatientDetailsResponse_Bed({
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
  GetPatientDetailsResponse_Bed._() : super();
  factory GetPatientDetailsResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientDetailsResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientDetailsResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse_Bed clone() => GetPatientDetailsResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse_Bed copyWith(void Function(GetPatientDetailsResponse_Bed) updates) => super.copyWith((message) => updates(message as GetPatientDetailsResponse_Bed)) as GetPatientDetailsResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse_Bed create() => GetPatientDetailsResponse_Bed._();
  GetPatientDetailsResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<GetPatientDetailsResponse_Bed> createRepeated() => $pb.PbList<GetPatientDetailsResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientDetailsResponse_Bed>(create);
  static GetPatientDetailsResponse_Bed? _defaultInstance;

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

class GetPatientDetailsResponse_Task_SubTask extends $pb.GeneratedMessage {
  factory GetPatientDetailsResponse_Task_SubTask({
    $core.String? id,
    $core.String? name,
    $core.bool? done,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  GetPatientDetailsResponse_Task_SubTask._() : super();
  factory GetPatientDetailsResponse_Task_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientDetailsResponse_Task_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientDetailsResponse.Task.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse_Task_SubTask clone() => GetPatientDetailsResponse_Task_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse_Task_SubTask copyWith(void Function(GetPatientDetailsResponse_Task_SubTask) updates) => super.copyWith((message) => updates(message as GetPatientDetailsResponse_Task_SubTask)) as GetPatientDetailsResponse_Task_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse_Task_SubTask create() => GetPatientDetailsResponse_Task_SubTask._();
  GetPatientDetailsResponse_Task_SubTask createEmptyInstance() => create();
  static $pb.PbList<GetPatientDetailsResponse_Task_SubTask> createRepeated() => $pb.PbList<GetPatientDetailsResponse_Task_SubTask>();
  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse_Task_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientDetailsResponse_Task_SubTask>(create);
  static GetPatientDetailsResponse_Task_SubTask? _defaultInstance;

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
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class GetPatientDetailsResponse_Task extends $pb.GeneratedMessage {
  factory GetPatientDetailsResponse_Task({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    GetPatientDetailsResponse_TaskStatus? status,
    $core.String? assignedUserId,
    $core.String? patientId,
    $core.bool? public,
    $core.Iterable<GetPatientDetailsResponse_Task_SubTask>? subtasks,
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
    if (status != null) {
      $result.status = status;
    }
    if (assignedUserId != null) {
      $result.assignedUserId = assignedUserId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (public != null) {
      $result.public = public;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    return $result;
  }
  GetPatientDetailsResponse_Task._() : super();
  factory GetPatientDetailsResponse_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientDetailsResponse_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientDetailsResponse.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..e<GetPatientDetailsResponse_TaskStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: GetPatientDetailsResponse_TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: GetPatientDetailsResponse_TaskStatus.valueOf, enumValues: GetPatientDetailsResponse_TaskStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'assignedUserId')
    ..aOS(6, _omitFieldNames ? '' : 'patientId')
    ..aOB(7, _omitFieldNames ? '' : 'public')
    ..pc<GetPatientDetailsResponse_Task_SubTask>(8, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetPatientDetailsResponse_Task_SubTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse_Task clone() => GetPatientDetailsResponse_Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse_Task copyWith(void Function(GetPatientDetailsResponse_Task) updates) => super.copyWith((message) => updates(message as GetPatientDetailsResponse_Task)) as GetPatientDetailsResponse_Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse_Task create() => GetPatientDetailsResponse_Task._();
  GetPatientDetailsResponse_Task createEmptyInstance() => create();
  static $pb.PbList<GetPatientDetailsResponse_Task> createRepeated() => $pb.PbList<GetPatientDetailsResponse_Task>();
  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse_Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientDetailsResponse_Task>(create);
  static GetPatientDetailsResponse_Task? _defaultInstance;

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
  GetPatientDetailsResponse_TaskStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(GetPatientDetailsResponse_TaskStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get assignedUserId => $_getSZ(4);
  @$pb.TagNumber(5)
  set assignedUserId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssignedUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssignedUserId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get patientId => $_getSZ(5);
  @$pb.TagNumber(6)
  set patientId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPatientId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPatientId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get public => $_getBF(6);
  @$pb.TagNumber(7)
  set public($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPublic() => $_has(6);
  @$pb.TagNumber(7)
  void clearPublic() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<GetPatientDetailsResponse_Task_SubTask> get subtasks => $_getList(7);
}

class GetPatientDetailsResponse extends $pb.GeneratedMessage {
  factory GetPatientDetailsResponse({
    $core.String? id,
    $core.String? name,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
    $core.Iterable<GetPatientDetailsResponse_Task>? tasks,
  @$core.Deprecated('This field is deprecated.')
    $core.String? wardId,
    GetPatientDetailsResponse_Room? room,
    GetPatientDetailsResponse_Bed? bed,
    $core.bool? isDischarged,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      $result.notes = notes;
    }
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    if (wardId != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.wardId = wardId;
    }
    if (room != null) {
      $result.room = room;
    }
    if (bed != null) {
      $result.bed = bed;
    }
    if (isDischarged != null) {
      $result.isDischarged = isDischarged;
    }
    return $result;
  }
  GetPatientDetailsResponse._() : super();
  factory GetPatientDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientDetailsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOS(4, _omitFieldNames ? '' : 'notes')
    ..pc<GetPatientDetailsResponse_Task>(5, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: GetPatientDetailsResponse_Task.create)
    ..aOS(6, _omitFieldNames ? '' : 'wardId')
    ..aOM<GetPatientDetailsResponse_Room>(7, _omitFieldNames ? '' : 'room', subBuilder: GetPatientDetailsResponse_Room.create)
    ..aOM<GetPatientDetailsResponse_Bed>(8, _omitFieldNames ? '' : 'bed', subBuilder: GetPatientDetailsResponse_Bed.create)
    ..aOB(9, _omitFieldNames ? '' : 'isDischarged')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse clone() => GetPatientDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientDetailsResponse copyWith(void Function(GetPatientDetailsResponse) updates) => super.copyWith((message) => updates(message as GetPatientDetailsResponse)) as GetPatientDetailsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse create() => GetPatientDetailsResponse._();
  GetPatientDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<GetPatientDetailsResponse> createRepeated() => $pb.PbList<GetPatientDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPatientDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientDetailsResponse>(create);
  static GetPatientDetailsResponse? _defaultInstance;

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
  $core.String get humanReadableIdentifier => $_getSZ(2);
  @$pb.TagNumber(3)
  set humanReadableIdentifier($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHumanReadableIdentifier() => $_has(2);
  @$pb.TagNumber(3)
  void clearHumanReadableIdentifier() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get notes => $_getSZ(3);
  @$pb.TagNumber(4)
  set notes($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNotes() => $_has(3);
  @$pb.TagNumber(4)
  void clearNotes() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<GetPatientDetailsResponse_Task> get tasks => $_getList(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.String get wardId => $_getSZ(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set wardId($core.String v) { $_setString(5, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasWardId() => $_has(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearWardId() => clearField(6);

  @$pb.TagNumber(7)
  GetPatientDetailsResponse_Room get room => $_getN(6);
  @$pb.TagNumber(7)
  set room(GetPatientDetailsResponse_Room v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasRoom() => $_has(6);
  @$pb.TagNumber(7)
  void clearRoom() => clearField(7);
  @$pb.TagNumber(7)
  GetPatientDetailsResponse_Room ensureRoom() => $_ensure(6);

  @$pb.TagNumber(8)
  GetPatientDetailsResponse_Bed get bed => $_getN(7);
  @$pb.TagNumber(8)
  set bed(GetPatientDetailsResponse_Bed v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBed() => $_has(7);
  @$pb.TagNumber(8)
  void clearBed() => clearField(8);
  @$pb.TagNumber(8)
  GetPatientDetailsResponse_Bed ensureBed() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.bool get isDischarged => $_getBF(8);
  @$pb.TagNumber(9)
  set isDischarged($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIsDischarged() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsDischarged() => clearField(9);
}

class GetPatientListRequest extends $pb.GeneratedMessage {
  factory GetPatientListRequest({
    $core.String? wardId,
  }) {
    final $result = create();
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetPatientListRequest._() : super();
  factory GetPatientListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientListRequest clone() => GetPatientListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientListRequest copyWith(void Function(GetPatientListRequest) updates) => super.copyWith((message) => updates(message as GetPatientListRequest)) as GetPatientListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientListRequest create() => GetPatientListRequest._();
  GetPatientListRequest createEmptyInstance() => create();
  static $pb.PbList<GetPatientListRequest> createRepeated() => $pb.PbList<GetPatientListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPatientListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientListRequest>(create);
  static GetPatientListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set wardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWardId() => clearField(1);
}

class GetPatientListResponse_Patient extends $pb.GeneratedMessage {
  factory GetPatientListResponse_Patient({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.String? notes,
    $core.Iterable<GetPatientListResponse_Task>? tasks,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (notes != null) {
      $result.notes = notes;
    }
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  GetPatientListResponse_Patient._() : super();
  factory GetPatientListResponse_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientListResponse_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientListResponse.Patient', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOS(3, _omitFieldNames ? '' : 'notes')
    ..pc<GetPatientListResponse_Task>(4, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: GetPatientListResponse_Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Patient clone() => GetPatientListResponse_Patient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Patient copyWith(void Function(GetPatientListResponse_Patient) updates) => super.copyWith((message) => updates(message as GetPatientListResponse_Patient)) as GetPatientListResponse_Patient;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Patient create() => GetPatientListResponse_Patient._();
  GetPatientListResponse_Patient createEmptyInstance() => create();
  static $pb.PbList<GetPatientListResponse_Patient> createRepeated() => $pb.PbList<GetPatientListResponse_Patient>();
  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Patient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientListResponse_Patient>(create);
  static GetPatientListResponse_Patient? _defaultInstance;

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
  $core.List<GetPatientListResponse_Task> get tasks => $_getList(3);
}

class GetPatientListResponse_Bed extends $pb.GeneratedMessage {
  factory GetPatientListResponse_Bed({
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
  GetPatientListResponse_Bed._() : super();
  factory GetPatientListResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientListResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientListResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Bed clone() => GetPatientListResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Bed copyWith(void Function(GetPatientListResponse_Bed) updates) => super.copyWith((message) => updates(message as GetPatientListResponse_Bed)) as GetPatientListResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Bed create() => GetPatientListResponse_Bed._();
  GetPatientListResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<GetPatientListResponse_Bed> createRepeated() => $pb.PbList<GetPatientListResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientListResponse_Bed>(create);
  static GetPatientListResponse_Bed? _defaultInstance;

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

class GetPatientListResponse_Room extends $pb.GeneratedMessage {
  factory GetPatientListResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.String? wardId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetPatientListResponse_Room._() : super();
  factory GetPatientListResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientListResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientListResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Room clone() => GetPatientListResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Room copyWith(void Function(GetPatientListResponse_Room) updates) => super.copyWith((message) => updates(message as GetPatientListResponse_Room)) as GetPatientListResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Room create() => GetPatientListResponse_Room._();
  GetPatientListResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetPatientListResponse_Room> createRepeated() => $pb.PbList<GetPatientListResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientListResponse_Room>(create);
  static GetPatientListResponse_Room? _defaultInstance;

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
  $core.String get wardId => $_getSZ(2);
  @$pb.TagNumber(3)
  set wardId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWardId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWardId() => clearField(3);
}

class GetPatientListResponse_PatientWithRoomAndBed extends $pb.GeneratedMessage {
  factory GetPatientListResponse_PatientWithRoomAndBed({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    GetPatientListResponse_Room? room,
    GetPatientListResponse_Bed? bed,
    $core.String? notes,
    $core.Iterable<GetPatientListResponse_Task>? tasks,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (room != null) {
      $result.room = room;
    }
    if (bed != null) {
      $result.bed = bed;
    }
    if (notes != null) {
      $result.notes = notes;
    }
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  GetPatientListResponse_PatientWithRoomAndBed._() : super();
  factory GetPatientListResponse_PatientWithRoomAndBed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientListResponse_PatientWithRoomAndBed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientListResponse.PatientWithRoomAndBed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..aOM<GetPatientListResponse_Room>(3, _omitFieldNames ? '' : 'room', subBuilder: GetPatientListResponse_Room.create)
    ..aOM<GetPatientListResponse_Bed>(4, _omitFieldNames ? '' : 'bed', subBuilder: GetPatientListResponse_Bed.create)
    ..aOS(5, _omitFieldNames ? '' : 'notes')
    ..pc<GetPatientListResponse_Task>(6, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: GetPatientListResponse_Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_PatientWithRoomAndBed clone() => GetPatientListResponse_PatientWithRoomAndBed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_PatientWithRoomAndBed copyWith(void Function(GetPatientListResponse_PatientWithRoomAndBed) updates) => super.copyWith((message) => updates(message as GetPatientListResponse_PatientWithRoomAndBed)) as GetPatientListResponse_PatientWithRoomAndBed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_PatientWithRoomAndBed create() => GetPatientListResponse_PatientWithRoomAndBed._();
  GetPatientListResponse_PatientWithRoomAndBed createEmptyInstance() => create();
  static $pb.PbList<GetPatientListResponse_PatientWithRoomAndBed> createRepeated() => $pb.PbList<GetPatientListResponse_PatientWithRoomAndBed>();
  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_PatientWithRoomAndBed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientListResponse_PatientWithRoomAndBed>(create);
  static GetPatientListResponse_PatientWithRoomAndBed? _defaultInstance;

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
  GetPatientListResponse_Room get room => $_getN(2);
  @$pb.TagNumber(3)
  set room(GetPatientListResponse_Room v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoom() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoom() => clearField(3);
  @$pb.TagNumber(3)
  GetPatientListResponse_Room ensureRoom() => $_ensure(2);

  @$pb.TagNumber(4)
  GetPatientListResponse_Bed get bed => $_getN(3);
  @$pb.TagNumber(4)
  set bed(GetPatientListResponse_Bed v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBed() => $_has(3);
  @$pb.TagNumber(4)
  void clearBed() => clearField(4);
  @$pb.TagNumber(4)
  GetPatientListResponse_Bed ensureBed() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get notes => $_getSZ(4);
  @$pb.TagNumber(5)
  set notes($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNotes() => $_has(4);
  @$pb.TagNumber(5)
  void clearNotes() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<GetPatientListResponse_Task> get tasks => $_getList(5);
}

class GetPatientListResponse_Task_SubTask extends $pb.GeneratedMessage {
  factory GetPatientListResponse_Task_SubTask({
    $core.String? id,
    $core.String? name,
    $core.bool? done,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  GetPatientListResponse_Task_SubTask._() : super();
  factory GetPatientListResponse_Task_SubTask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientListResponse_Task_SubTask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientListResponse.Task.SubTask', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Task_SubTask clone() => GetPatientListResponse_Task_SubTask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Task_SubTask copyWith(void Function(GetPatientListResponse_Task_SubTask) updates) => super.copyWith((message) => updates(message as GetPatientListResponse_Task_SubTask)) as GetPatientListResponse_Task_SubTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Task_SubTask create() => GetPatientListResponse_Task_SubTask._();
  GetPatientListResponse_Task_SubTask createEmptyInstance() => create();
  static $pb.PbList<GetPatientListResponse_Task_SubTask> createRepeated() => $pb.PbList<GetPatientListResponse_Task_SubTask>();
  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Task_SubTask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientListResponse_Task_SubTask>(create);
  static GetPatientListResponse_Task_SubTask? _defaultInstance;

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
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => clearField(3);
}

class GetPatientListResponse_Task extends $pb.GeneratedMessage {
  factory GetPatientListResponse_Task({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    GetPatientListResponse_TaskStatus? status,
    $core.String? assignedUserId,
    $core.String? patientId,
    $core.bool? public,
    $core.Iterable<GetPatientListResponse_Task_SubTask>? subtasks,
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
    if (status != null) {
      $result.status = status;
    }
    if (assignedUserId != null) {
      $result.assignedUserId = assignedUserId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (public != null) {
      $result.public = public;
    }
    if (subtasks != null) {
      $result.subtasks.addAll(subtasks);
    }
    return $result;
  }
  GetPatientListResponse_Task._() : super();
  factory GetPatientListResponse_Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientListResponse_Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientListResponse.Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..e<GetPatientListResponse_TaskStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: GetPatientListResponse_TaskStatus.TASK_STATUS_UNSPECIFIED, valueOf: GetPatientListResponse_TaskStatus.valueOf, enumValues: GetPatientListResponse_TaskStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'assignedUserId')
    ..aOS(6, _omitFieldNames ? '' : 'patientId')
    ..aOB(7, _omitFieldNames ? '' : 'public')
    ..pc<GetPatientListResponse_Task_SubTask>(8, _omitFieldNames ? '' : 'subtasks', $pb.PbFieldType.PM, subBuilder: GetPatientListResponse_Task_SubTask.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Task clone() => GetPatientListResponse_Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientListResponse_Task copyWith(void Function(GetPatientListResponse_Task) updates) => super.copyWith((message) => updates(message as GetPatientListResponse_Task)) as GetPatientListResponse_Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Task create() => GetPatientListResponse_Task._();
  GetPatientListResponse_Task createEmptyInstance() => create();
  static $pb.PbList<GetPatientListResponse_Task> createRepeated() => $pb.PbList<GetPatientListResponse_Task>();
  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse_Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientListResponse_Task>(create);
  static GetPatientListResponse_Task? _defaultInstance;

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
  GetPatientListResponse_TaskStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(GetPatientListResponse_TaskStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get assignedUserId => $_getSZ(4);
  @$pb.TagNumber(5)
  set assignedUserId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssignedUserId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssignedUserId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get patientId => $_getSZ(5);
  @$pb.TagNumber(6)
  set patientId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPatientId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPatientId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get public => $_getBF(6);
  @$pb.TagNumber(7)
  set public($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPublic() => $_has(6);
  @$pb.TagNumber(7)
  void clearPublic() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<GetPatientListResponse_Task_SubTask> get subtasks => $_getList(7);
}

class GetPatientListResponse extends $pb.GeneratedMessage {
  factory GetPatientListResponse({
    $core.Iterable<GetPatientListResponse_PatientWithRoomAndBed>? active,
    $core.Iterable<GetPatientListResponse_Patient>? unassignedPatients,
    $core.Iterable<GetPatientListResponse_Patient>? dischargedPatients,
  }) {
    final $result = create();
    if (active != null) {
      $result.active.addAll(active);
    }
    if (unassignedPatients != null) {
      $result.unassignedPatients.addAll(unassignedPatients);
    }
    if (dischargedPatients != null) {
      $result.dischargedPatients.addAll(dischargedPatients);
    }
    return $result;
  }
  GetPatientListResponse._() : super();
  factory GetPatientListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPatientListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetPatientListResponse_PatientWithRoomAndBed>(1, _omitFieldNames ? '' : 'active', $pb.PbFieldType.PM, subBuilder: GetPatientListResponse_PatientWithRoomAndBed.create)
    ..pc<GetPatientListResponse_Patient>(2, _omitFieldNames ? '' : 'unassignedPatients', $pb.PbFieldType.PM, subBuilder: GetPatientListResponse_Patient.create)
    ..pc<GetPatientListResponse_Patient>(3, _omitFieldNames ? '' : 'dischargedPatients', $pb.PbFieldType.PM, subBuilder: GetPatientListResponse_Patient.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPatientListResponse clone() => GetPatientListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPatientListResponse copyWith(void Function(GetPatientListResponse) updates) => super.copyWith((message) => updates(message as GetPatientListResponse)) as GetPatientListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse create() => GetPatientListResponse._();
  GetPatientListResponse createEmptyInstance() => create();
  static $pb.PbList<GetPatientListResponse> createRepeated() => $pb.PbList<GetPatientListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPatientListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPatientListResponse>(create);
  static GetPatientListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetPatientListResponse_PatientWithRoomAndBed> get active => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<GetPatientListResponse_Patient> get unassignedPatients => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<GetPatientListResponse_Patient> get dischargedPatients => $_getList(2);
}

class ReadmitPatientRequest extends $pb.GeneratedMessage {
  factory ReadmitPatientRequest({
    $core.String? patientId,
  }) {
    final $result = create();
    if (patientId != null) {
      $result.patientId = patientId;
    }
    return $result;
  }
  ReadmitPatientRequest._() : super();
  factory ReadmitPatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadmitPatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadmitPatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'patientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadmitPatientRequest clone() => ReadmitPatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadmitPatientRequest copyWith(void Function(ReadmitPatientRequest) updates) => super.copyWith((message) => updates(message as ReadmitPatientRequest)) as ReadmitPatientRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadmitPatientRequest create() => ReadmitPatientRequest._();
  ReadmitPatientRequest createEmptyInstance() => create();
  static $pb.PbList<ReadmitPatientRequest> createRepeated() => $pb.PbList<ReadmitPatientRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadmitPatientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadmitPatientRequest>(create);
  static ReadmitPatientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get patientId => $_getSZ(0);
  @$pb.TagNumber(1)
  set patientId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPatientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPatientId() => clearField(1);
}

class ReadmitPatientResponse extends $pb.GeneratedMessage {
  factory ReadmitPatientResponse() => create();
  ReadmitPatientResponse._() : super();
  factory ReadmitPatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadmitPatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadmitPatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadmitPatientResponse clone() => ReadmitPatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadmitPatientResponse copyWith(void Function(ReadmitPatientResponse) updates) => super.copyWith((message) => updates(message as ReadmitPatientResponse)) as ReadmitPatientResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadmitPatientResponse create() => ReadmitPatientResponse._();
  ReadmitPatientResponse createEmptyInstance() => create();
  static $pb.PbList<ReadmitPatientResponse> createRepeated() => $pb.PbList<ReadmitPatientResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadmitPatientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadmitPatientResponse>(create);
  static ReadmitPatientResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
