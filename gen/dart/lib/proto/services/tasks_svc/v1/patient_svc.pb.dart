//
//  Generated code. Do not modify.
//  source: proto/services/tasks_svc/v1/patient_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignBedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignBedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignBedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnassignBedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DischargePatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DischargePatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadmitPatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadmitPatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.tasks_svc.v1'), createEmptyInstance: create)
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
