//
//  Generated code. Do not modify.
//  source: services/task_svc/v1/room_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateRoomRequest extends $pb.GeneratedMessage {
  factory CreateRoomRequest({
    $core.String? name,
    $core.String? wardId,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  CreateRoomRequest._() : super();
  factory CreateRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRoomRequest clone() => CreateRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRoomRequest copyWith(void Function(CreateRoomRequest) updates) => super.copyWith((message) => updates(message as CreateRoomRequest)) as CreateRoomRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRoomRequest create() => CreateRoomRequest._();
  CreateRoomRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRoomRequest> createRepeated() => $pb.PbList<CreateRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRoomRequest>(create);
  static CreateRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get wardId => $_getSZ(1);
  @$pb.TagNumber(2)
  set wardId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWardId() => clearField(2);
}

class CreateRoomResponse extends $pb.GeneratedMessage {
  factory CreateRoomResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CreateRoomResponse._() : super();
  factory CreateRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRoomResponse clone() => CreateRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRoomResponse copyWith(void Function(CreateRoomResponse) updates) => super.copyWith((message) => updates(message as CreateRoomResponse)) as CreateRoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRoomResponse create() => CreateRoomResponse._();
  CreateRoomResponse createEmptyInstance() => create();
  static $pb.PbList<CreateRoomResponse> createRepeated() => $pb.PbList<CreateRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRoomResponse>(create);
  static CreateRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRoomRequest extends $pb.GeneratedMessage {
  factory GetRoomRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetRoomRequest._() : super();
  factory GetRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomRequest clone() => GetRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomRequest copyWith(void Function(GetRoomRequest) updates) => super.copyWith((message) => updates(message as GetRoomRequest)) as GetRoomRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomRequest create() => GetRoomRequest._();
  GetRoomRequest createEmptyInstance() => create();
  static $pb.PbList<GetRoomRequest> createRepeated() => $pb.PbList<GetRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomRequest>(create);
  static GetRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRoomResponse_Bed extends $pb.GeneratedMessage {
  factory GetRoomResponse_Bed({
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
  GetRoomResponse_Bed._() : super();
  factory GetRoomResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomResponse.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomResponse_Bed clone() => GetRoomResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomResponse_Bed copyWith(void Function(GetRoomResponse_Bed) updates) => super.copyWith((message) => updates(message as GetRoomResponse_Bed)) as GetRoomResponse_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomResponse_Bed create() => GetRoomResponse_Bed._();
  GetRoomResponse_Bed createEmptyInstance() => create();
  static $pb.PbList<GetRoomResponse_Bed> createRepeated() => $pb.PbList<GetRoomResponse_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetRoomResponse_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomResponse_Bed>(create);
  static GetRoomResponse_Bed? _defaultInstance;

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

class GetRoomResponse extends $pb.GeneratedMessage {
  factory GetRoomResponse({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomResponse_Bed>? beds,
    $core.String? organizationId,
    $core.String? wardId,
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
    if (organizationId != null) {
      $result.organizationId = organizationId;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetRoomResponse._() : super();
  factory GetRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GetRoomResponse_Bed>(3, _omitFieldNames ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomResponse_Bed.create)
    ..aOS(4, _omitFieldNames ? '' : 'organizationId')
    ..aOS(5, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomResponse clone() => GetRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomResponse copyWith(void Function(GetRoomResponse) updates) => super.copyWith((message) => updates(message as GetRoomResponse)) as GetRoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomResponse create() => GetRoomResponse._();
  GetRoomResponse createEmptyInstance() => create();
  static $pb.PbList<GetRoomResponse> createRepeated() => $pb.PbList<GetRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomResponse>(create);
  static GetRoomResponse? _defaultInstance;

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
  $core.List<GetRoomResponse_Bed> get beds => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get organizationId => $_getSZ(3);
  @$pb.TagNumber(4)
  set organizationId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrganizationId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrganizationId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get wardId => $_getSZ(4);
  @$pb.TagNumber(5)
  set wardId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWardId() => $_has(4);
  @$pb.TagNumber(5)
  void clearWardId() => clearField(5);
}

class GetRoomsRequest extends $pb.GeneratedMessage {
  factory GetRoomsRequest() => create();
  GetRoomsRequest._() : super();
  factory GetRoomsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsRequest clone() => GetRoomsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsRequest copyWith(void Function(GetRoomsRequest) updates) => super.copyWith((message) => updates(message as GetRoomsRequest)) as GetRoomsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomsRequest create() => GetRoomsRequest._();
  GetRoomsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRoomsRequest> createRepeated() => $pb.PbList<GetRoomsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsRequest>(create);
  static GetRoomsRequest? _defaultInstance;
}

class GetRoomsResponse_Room_Bed extends $pb.GeneratedMessage {
  factory GetRoomsResponse_Room_Bed({
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
  GetRoomsResponse_Room_Bed._() : super();
  factory GetRoomsResponse_Room_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsResponse_Room_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomsResponse.Room.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsResponse_Room_Bed clone() => GetRoomsResponse_Room_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsResponse_Room_Bed copyWith(void Function(GetRoomsResponse_Room_Bed) updates) => super.copyWith((message) => updates(message as GetRoomsResponse_Room_Bed)) as GetRoomsResponse_Room_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomsResponse_Room_Bed create() => GetRoomsResponse_Room_Bed._();
  GetRoomsResponse_Room_Bed createEmptyInstance() => create();
  static $pb.PbList<GetRoomsResponse_Room_Bed> createRepeated() => $pb.PbList<GetRoomsResponse_Room_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsResponse_Room_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsResponse_Room_Bed>(create);
  static GetRoomsResponse_Room_Bed? _defaultInstance;

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

class GetRoomsResponse_Room extends $pb.GeneratedMessage {
  factory GetRoomsResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomsResponse_Room_Bed>? beds,
    $core.String? organizationId,
    $core.String? wardId,
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
    if (organizationId != null) {
      $result.organizationId = organizationId;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetRoomsResponse_Room._() : super();
  factory GetRoomsResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomsResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GetRoomsResponse_Room_Bed>(3, _omitFieldNames ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomsResponse_Room_Bed.create)
    ..aOS(4, _omitFieldNames ? '' : 'organizationId')
    ..aOS(5, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsResponse_Room clone() => GetRoomsResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsResponse_Room copyWith(void Function(GetRoomsResponse_Room) updates) => super.copyWith((message) => updates(message as GetRoomsResponse_Room)) as GetRoomsResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomsResponse_Room create() => GetRoomsResponse_Room._();
  GetRoomsResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetRoomsResponse_Room> createRepeated() => $pb.PbList<GetRoomsResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsResponse_Room>(create);
  static GetRoomsResponse_Room? _defaultInstance;

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
  $core.List<GetRoomsResponse_Room_Bed> get beds => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get organizationId => $_getSZ(3);
  @$pb.TagNumber(4)
  set organizationId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrganizationId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrganizationId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get wardId => $_getSZ(4);
  @$pb.TagNumber(5)
  set wardId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWardId() => $_has(4);
  @$pb.TagNumber(5)
  void clearWardId() => clearField(5);
}

class GetRoomsResponse extends $pb.GeneratedMessage {
  factory GetRoomsResponse({
    $core.Iterable<GetRoomsResponse_Room>? rooms,
  }) {
    final $result = create();
    if (rooms != null) {
      $result.rooms.addAll(rooms);
    }
    return $result;
  }
  GetRoomsResponse._() : super();
  factory GetRoomsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetRoomsResponse_Room>(1, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: GetRoomsResponse_Room.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsResponse clone() => GetRoomsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsResponse copyWith(void Function(GetRoomsResponse) updates) => super.copyWith((message) => updates(message as GetRoomsResponse)) as GetRoomsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomsResponse create() => GetRoomsResponse._();
  GetRoomsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRoomsResponse> createRepeated() => $pb.PbList<GetRoomsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsResponse>(create);
  static GetRoomsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetRoomsResponse_Room> get rooms => $_getList(0);
}

class GetRoomsByWardRequest extends $pb.GeneratedMessage {
  factory GetRoomsByWardRequest({
    $core.String? wardId,
  }) {
    final $result = create();
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetRoomsByWardRequest._() : super();
  factory GetRoomsByWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomsByWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardRequest clone() => GetRoomsByWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardRequest copyWith(void Function(GetRoomsByWardRequest) updates) => super.copyWith((message) => updates(message as GetRoomsByWardRequest)) as GetRoomsByWardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardRequest create() => GetRoomsByWardRequest._();
  GetRoomsByWardRequest createEmptyInstance() => create();
  static $pb.PbList<GetRoomsByWardRequest> createRepeated() => $pb.PbList<GetRoomsByWardRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsByWardRequest>(create);
  static GetRoomsByWardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set wardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWardId() => clearField(1);
}

class GetRoomsByWardResponse_Room_Bed extends $pb.GeneratedMessage {
  factory GetRoomsByWardResponse_Room_Bed({
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
  GetRoomsByWardResponse_Room_Bed._() : super();
  factory GetRoomsByWardResponse_Room_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardResponse_Room_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomsByWardResponse.Room.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse_Room_Bed clone() => GetRoomsByWardResponse_Room_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse_Room_Bed copyWith(void Function(GetRoomsByWardResponse_Room_Bed) updates) => super.copyWith((message) => updates(message as GetRoomsByWardResponse_Room_Bed)) as GetRoomsByWardResponse_Room_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardResponse_Room_Bed create() => GetRoomsByWardResponse_Room_Bed._();
  GetRoomsByWardResponse_Room_Bed createEmptyInstance() => create();
  static $pb.PbList<GetRoomsByWardResponse_Room_Bed> createRepeated() => $pb.PbList<GetRoomsByWardResponse_Room_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardResponse_Room_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsByWardResponse_Room_Bed>(create);
  static GetRoomsByWardResponse_Room_Bed? _defaultInstance;

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

class GetRoomsByWardResponse_Room extends $pb.GeneratedMessage {
  factory GetRoomsByWardResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomsByWardResponse_Room_Bed>? beds,
    $core.String? organizationId,
    $core.String? wardId,
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
    if (organizationId != null) {
      $result.organizationId = organizationId;
    }
    if (wardId != null) {
      $result.wardId = wardId;
    }
    return $result;
  }
  GetRoomsByWardResponse_Room._() : super();
  factory GetRoomsByWardResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomsByWardResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GetRoomsByWardResponse_Room_Bed>(3, _omitFieldNames ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomsByWardResponse_Room_Bed.create)
    ..aOS(4, _omitFieldNames ? '' : 'organizationId')
    ..aOS(5, _omitFieldNames ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse_Room clone() => GetRoomsByWardResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse_Room copyWith(void Function(GetRoomsByWardResponse_Room) updates) => super.copyWith((message) => updates(message as GetRoomsByWardResponse_Room)) as GetRoomsByWardResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardResponse_Room create() => GetRoomsByWardResponse_Room._();
  GetRoomsByWardResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetRoomsByWardResponse_Room> createRepeated() => $pb.PbList<GetRoomsByWardResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsByWardResponse_Room>(create);
  static GetRoomsByWardResponse_Room? _defaultInstance;

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
  $core.List<GetRoomsByWardResponse_Room_Bed> get beds => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get organizationId => $_getSZ(3);
  @$pb.TagNumber(4)
  set organizationId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrganizationId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrganizationId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get wardId => $_getSZ(4);
  @$pb.TagNumber(5)
  set wardId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWardId() => $_has(4);
  @$pb.TagNumber(5)
  void clearWardId() => clearField(5);
}

class GetRoomsByWardResponse extends $pb.GeneratedMessage {
  factory GetRoomsByWardResponse({
    $core.Iterable<GetRoomsByWardResponse_Room>? rooms,
  }) {
    final $result = create();
    if (rooms != null) {
      $result.rooms.addAll(rooms);
    }
    return $result;
  }
  GetRoomsByWardResponse._() : super();
  factory GetRoomsByWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomsByWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetRoomsByWardResponse_Room>(1, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: GetRoomsByWardResponse_Room.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse clone() => GetRoomsByWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse copyWith(void Function(GetRoomsByWardResponse) updates) => super.copyWith((message) => updates(message as GetRoomsByWardResponse)) as GetRoomsByWardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardResponse create() => GetRoomsByWardResponse._();
  GetRoomsByWardResponse createEmptyInstance() => create();
  static $pb.PbList<GetRoomsByWardResponse> createRepeated() => $pb.PbList<GetRoomsByWardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsByWardResponse>(create);
  static GetRoomsByWardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetRoomsByWardResponse_Room> get rooms => $_getList(0);
}

class UpdateRoomRequest extends $pb.GeneratedMessage {
  factory UpdateRoomRequest({
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
  UpdateRoomRequest._() : super();
  factory UpdateRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRoomRequest clone() => UpdateRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRoomRequest copyWith(void Function(UpdateRoomRequest) updates) => super.copyWith((message) => updates(message as UpdateRoomRequest)) as UpdateRoomRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRoomRequest create() => UpdateRoomRequest._();
  UpdateRoomRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRoomRequest> createRepeated() => $pb.PbList<UpdateRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRoomRequest>(create);
  static UpdateRoomRequest? _defaultInstance;

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

class UpdateRoomResponse extends $pb.GeneratedMessage {
  factory UpdateRoomResponse() => create();
  UpdateRoomResponse._() : super();
  factory UpdateRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRoomResponse clone() => UpdateRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRoomResponse copyWith(void Function(UpdateRoomResponse) updates) => super.copyWith((message) => updates(message as UpdateRoomResponse)) as UpdateRoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRoomResponse create() => UpdateRoomResponse._();
  UpdateRoomResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateRoomResponse> createRepeated() => $pb.PbList<UpdateRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRoomResponse>(create);
  static UpdateRoomResponse? _defaultInstance;
}

class DeleteRoomRequest extends $pb.GeneratedMessage {
  factory DeleteRoomRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteRoomRequest._() : super();
  factory DeleteRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRoomRequest clone() => DeleteRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRoomRequest copyWith(void Function(DeleteRoomRequest) updates) => super.copyWith((message) => updates(message as DeleteRoomRequest)) as DeleteRoomRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRoomRequest create() => DeleteRoomRequest._();
  DeleteRoomRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRoomRequest> createRepeated() => $pb.PbList<DeleteRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRoomRequest>(create);
  static DeleteRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteRoomResponse extends $pb.GeneratedMessage {
  factory DeleteRoomResponse() => create();
  DeleteRoomResponse._() : super();
  factory DeleteRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRoomResponse clone() => DeleteRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRoomResponse copyWith(void Function(DeleteRoomResponse) updates) => super.copyWith((message) => updates(message as DeleteRoomResponse)) as DeleteRoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRoomResponse create() => DeleteRoomResponse._();
  DeleteRoomResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteRoomResponse> createRepeated() => $pb.PbList<DeleteRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRoomResponse>(create);
  static DeleteRoomResponse? _defaultInstance;
}

class GetRoomOverviewsByWardRequest extends $pb.GeneratedMessage {
  factory GetRoomOverviewsByWardRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetRoomOverviewsByWardRequest._() : super();
  factory GetRoomOverviewsByWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomOverviewsByWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomOverviewsByWardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardRequest clone() => GetRoomOverviewsByWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardRequest copyWith(void Function(GetRoomOverviewsByWardRequest) updates) => super.copyWith((message) => updates(message as GetRoomOverviewsByWardRequest)) as GetRoomOverviewsByWardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardRequest create() => GetRoomOverviewsByWardRequest._();
  GetRoomOverviewsByWardRequest createEmptyInstance() => create();
  static $pb.PbList<GetRoomOverviewsByWardRequest> createRepeated() => $pb.PbList<GetRoomOverviewsByWardRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomOverviewsByWardRequest>(create);
  static GetRoomOverviewsByWardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRoomOverviewsByWardResponse_Room_Bed_Patient extends $pb.GeneratedMessage {
  factory GetRoomOverviewsByWardResponse_Room_Bed_Patient({
    $core.String? id,
    $core.String? humanReadableIdentifier,
    $core.int? tasksUnscheduled,
    $core.int? tasksInProgress,
    $core.int? tasksDone,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (humanReadableIdentifier != null) {
      $result.humanReadableIdentifier = humanReadableIdentifier;
    }
    if (tasksUnscheduled != null) {
      $result.tasksUnscheduled = tasksUnscheduled;
    }
    if (tasksInProgress != null) {
      $result.tasksInProgress = tasksInProgress;
    }
    if (tasksDone != null) {
      $result.tasksDone = tasksDone;
    }
    return $result;
  }
  GetRoomOverviewsByWardResponse_Room_Bed_Patient._() : super();
  factory GetRoomOverviewsByWardResponse_Room_Bed_Patient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomOverviewsByWardResponse_Room_Bed_Patient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomOverviewsByWardResponse.Room.Bed.Patient', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'humanReadableIdentifier')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'tasksUnscheduled', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'tasksInProgress', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'tasksDone', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardResponse_Room_Bed_Patient clone() => GetRoomOverviewsByWardResponse_Room_Bed_Patient()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardResponse_Room_Bed_Patient copyWith(void Function(GetRoomOverviewsByWardResponse_Room_Bed_Patient) updates) => super.copyWith((message) => updates(message as GetRoomOverviewsByWardResponse_Room_Bed_Patient)) as GetRoomOverviewsByWardResponse_Room_Bed_Patient;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardResponse_Room_Bed_Patient create() => GetRoomOverviewsByWardResponse_Room_Bed_Patient._();
  GetRoomOverviewsByWardResponse_Room_Bed_Patient createEmptyInstance() => create();
  static $pb.PbList<GetRoomOverviewsByWardResponse_Room_Bed_Patient> createRepeated() => $pb.PbList<GetRoomOverviewsByWardResponse_Room_Bed_Patient>();
  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardResponse_Room_Bed_Patient getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomOverviewsByWardResponse_Room_Bed_Patient>(create);
  static GetRoomOverviewsByWardResponse_Room_Bed_Patient? _defaultInstance;

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
  $core.int get tasksUnscheduled => $_getIZ(2);
  @$pb.TagNumber(3)
  set tasksUnscheduled($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTasksUnscheduled() => $_has(2);
  @$pb.TagNumber(3)
  void clearTasksUnscheduled() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get tasksInProgress => $_getIZ(3);
  @$pb.TagNumber(4)
  set tasksInProgress($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTasksInProgress() => $_has(3);
  @$pb.TagNumber(4)
  void clearTasksInProgress() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get tasksDone => $_getIZ(4);
  @$pb.TagNumber(5)
  set tasksDone($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTasksDone() => $_has(4);
  @$pb.TagNumber(5)
  void clearTasksDone() => clearField(5);
}

class GetRoomOverviewsByWardResponse_Room_Bed extends $pb.GeneratedMessage {
  factory GetRoomOverviewsByWardResponse_Room_Bed({
    $core.String? id,
    GetRoomOverviewsByWardResponse_Room_Bed_Patient? patient,
    $core.String? name,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (patient != null) {
      $result.patient = patient;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GetRoomOverviewsByWardResponse_Room_Bed._() : super();
  factory GetRoomOverviewsByWardResponse_Room_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomOverviewsByWardResponse_Room_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomOverviewsByWardResponse.Room.Bed', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<GetRoomOverviewsByWardResponse_Room_Bed_Patient>(2, _omitFieldNames ? '' : 'patient', subBuilder: GetRoomOverviewsByWardResponse_Room_Bed_Patient.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardResponse_Room_Bed clone() => GetRoomOverviewsByWardResponse_Room_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardResponse_Room_Bed copyWith(void Function(GetRoomOverviewsByWardResponse_Room_Bed) updates) => super.copyWith((message) => updates(message as GetRoomOverviewsByWardResponse_Room_Bed)) as GetRoomOverviewsByWardResponse_Room_Bed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardResponse_Room_Bed create() => GetRoomOverviewsByWardResponse_Room_Bed._();
  GetRoomOverviewsByWardResponse_Room_Bed createEmptyInstance() => create();
  static $pb.PbList<GetRoomOverviewsByWardResponse_Room_Bed> createRepeated() => $pb.PbList<GetRoomOverviewsByWardResponse_Room_Bed>();
  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardResponse_Room_Bed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomOverviewsByWardResponse_Room_Bed>(create);
  static GetRoomOverviewsByWardResponse_Room_Bed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  GetRoomOverviewsByWardResponse_Room_Bed_Patient get patient => $_getN(1);
  @$pb.TagNumber(2)
  set patient(GetRoomOverviewsByWardResponse_Room_Bed_Patient v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPatient() => $_has(1);
  @$pb.TagNumber(2)
  void clearPatient() => clearField(2);
  @$pb.TagNumber(2)
  GetRoomOverviewsByWardResponse_Room_Bed_Patient ensurePatient() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class GetRoomOverviewsByWardResponse_Room extends $pb.GeneratedMessage {
  factory GetRoomOverviewsByWardResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomOverviewsByWardResponse_Room_Bed>? beds,
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
  GetRoomOverviewsByWardResponse_Room._() : super();
  factory GetRoomOverviewsByWardResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomOverviewsByWardResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomOverviewsByWardResponse.Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<GetRoomOverviewsByWardResponse_Room_Bed>(3, _omitFieldNames ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomOverviewsByWardResponse_Room_Bed.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardResponse_Room clone() => GetRoomOverviewsByWardResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardResponse_Room copyWith(void Function(GetRoomOverviewsByWardResponse_Room) updates) => super.copyWith((message) => updates(message as GetRoomOverviewsByWardResponse_Room)) as GetRoomOverviewsByWardResponse_Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardResponse_Room create() => GetRoomOverviewsByWardResponse_Room._();
  GetRoomOverviewsByWardResponse_Room createEmptyInstance() => create();
  static $pb.PbList<GetRoomOverviewsByWardResponse_Room> createRepeated() => $pb.PbList<GetRoomOverviewsByWardResponse_Room>();
  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardResponse_Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomOverviewsByWardResponse_Room>(create);
  static GetRoomOverviewsByWardResponse_Room? _defaultInstance;

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
  $core.List<GetRoomOverviewsByWardResponse_Room_Bed> get beds => $_getList(2);
}

class GetRoomOverviewsByWardResponse extends $pb.GeneratedMessage {
  factory GetRoomOverviewsByWardResponse({
    $core.Iterable<GetRoomOverviewsByWardResponse_Room>? rooms,
  }) {
    final $result = create();
    if (rooms != null) {
      $result.rooms.addAll(rooms);
    }
    return $result;
  }
  GetRoomOverviewsByWardResponse._() : super();
  factory GetRoomOverviewsByWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomOverviewsByWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetRoomOverviewsByWardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetRoomOverviewsByWardResponse_Room>(1, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: GetRoomOverviewsByWardResponse_Room.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardResponse clone() => GetRoomOverviewsByWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomOverviewsByWardResponse copyWith(void Function(GetRoomOverviewsByWardResponse) updates) => super.copyWith((message) => updates(message as GetRoomOverviewsByWardResponse)) as GetRoomOverviewsByWardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardResponse create() => GetRoomOverviewsByWardResponse._();
  GetRoomOverviewsByWardResponse createEmptyInstance() => create();
  static $pb.PbList<GetRoomOverviewsByWardResponse> createRepeated() => $pb.PbList<GetRoomOverviewsByWardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRoomOverviewsByWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomOverviewsByWardResponse>(create);
  static GetRoomOverviewsByWardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetRoomOverviewsByWardResponse_Room> get rooms => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
