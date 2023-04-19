///
//  Generated code. Do not modify.
//  source: proto/services/task_svc/v1/room_svc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateRoomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountOfBeds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  CreateRoomRequest._() : super();
  factory CreateRoomRequest({
    $core.String? name,
    $core.int? amountOfBeds,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (amountOfBeds != null) {
      _result.amountOfBeds = amountOfBeds;
    }
    return _result;
  }
  factory CreateRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRoomRequest clone() => CreateRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRoomRequest copyWith(void Function(CreateRoomRequest) updates) => super.copyWith((message) => updates(message as CreateRoomRequest)) as CreateRoomRequest; // ignore: deprecated_member_use
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
  $core.int get amountOfBeds => $_getIZ(1);
  @$pb.TagNumber(2)
  set amountOfBeds($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmountOfBeds() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmountOfBeds() => clearField(2);
}

class CreateRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  CreateRoomResponse._() : super();
  factory CreateRoomResponse({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory CreateRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRoomResponse clone() => CreateRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRoomResponse copyWith(void Function(CreateRoomResponse) updates) => super.copyWith((message) => updates(message as CreateRoomResponse)) as CreateRoomResponse; // ignore: deprecated_member_use
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

class GetRoomBedOfRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomBedOfRoom', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRoomBedOfRoom._() : super();
  factory GetRoomBedOfRoom({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRoomBedOfRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomBedOfRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomBedOfRoom clone() => GetRoomBedOfRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomBedOfRoom copyWith(void Function(GetRoomBedOfRoom) updates) => super.copyWith((message) => updates(message as GetRoomBedOfRoom)) as GetRoomBedOfRoom; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomBedOfRoom create() => GetRoomBedOfRoom._();
  GetRoomBedOfRoom createEmptyInstance() => create();
  static $pb.PbList<GetRoomBedOfRoom> createRepeated() => $pb.PbList<GetRoomBedOfRoom>();
  @$core.pragma('dart2js:noInline')
  static GetRoomBedOfRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomBedOfRoom>(create);
  static GetRoomBedOfRoom? _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRoomRequest._() : super();
  factory GetRoomRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomRequest clone() => GetRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomRequest copyWith(void Function(GetRoomRequest) updates) => super.copyWith((message) => updates(message as GetRoomRequest)) as GetRoomRequest; // ignore: deprecated_member_use
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

class GetRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<GetRoomBedOfRoom>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomBedOfRoom.create)
    ..hasRequiredFields = false
  ;

  GetRoomResponse._() : super();
  factory GetRoomResponse({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomBedOfRoom>? beds,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (beds != null) {
      _result.beds.addAll(beds);
    }
    return _result;
  }
  factory GetRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomResponse clone() => GetRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomResponse copyWith(void Function(GetRoomResponse) updates) => super.copyWith((message) => updates(message as GetRoomResponse)) as GetRoomResponse; // ignore: deprecated_member_use
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
  $core.List<GetRoomBedOfRoom> get beds => $_getList(2);
}

class GetRoomsBedOfRooms extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsBedOfRooms', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRoomsBedOfRooms._() : super();
  factory GetRoomsBedOfRooms({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRoomsBedOfRooms.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsBedOfRooms.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsBedOfRooms clone() => GetRoomsBedOfRooms()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsBedOfRooms copyWith(void Function(GetRoomsBedOfRooms) updates) => super.copyWith((message) => updates(message as GetRoomsBedOfRooms)) as GetRoomsBedOfRooms; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomsBedOfRooms create() => GetRoomsBedOfRooms._();
  GetRoomsBedOfRooms createEmptyInstance() => create();
  static $pb.PbList<GetRoomsBedOfRooms> createRepeated() => $pb.PbList<GetRoomsBedOfRooms>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsBedOfRooms getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsBedOfRooms>(create);
  static GetRoomsBedOfRooms? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRoomsRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsRoom', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<GetRoomsBedOfRooms>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomsBedOfRooms.create)
    ..hasRequiredFields = false
  ;

  GetRoomsRoom._() : super();
  factory GetRoomsRoom({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomsBedOfRooms>? beds,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (beds != null) {
      _result.beds.addAll(beds);
    }
    return _result;
  }
  factory GetRoomsRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsRoom clone() => GetRoomsRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsRoom copyWith(void Function(GetRoomsRoom) updates) => super.copyWith((message) => updates(message as GetRoomsRoom)) as GetRoomsRoom; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomsRoom create() => GetRoomsRoom._();
  GetRoomsRoom createEmptyInstance() => create();
  static $pb.PbList<GetRoomsRoom> createRepeated() => $pb.PbList<GetRoomsRoom>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsRoom>(create);
  static GetRoomsRoom? _defaultInstance;

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
  $core.List<GetRoomsBedOfRooms> get beds => $_getList(2);
}

class GetRoomsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetRoomsRequest._() : super();
  factory GetRoomsRequest() => create();
  factory GetRoomsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsRequest clone() => GetRoomsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsRequest copyWith(void Function(GetRoomsRequest) updates) => super.copyWith((message) => updates(message as GetRoomsRequest)) as GetRoomsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomsRequest create() => GetRoomsRequest._();
  GetRoomsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRoomsRequest> createRepeated() => $pb.PbList<GetRoomsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsRequest>(create);
  static GetRoomsRequest? _defaultInstance;
}

class GetRoomsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetRoomsRoom>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: GetRoomsRoom.create)
    ..hasRequiredFields = false
  ;

  GetRoomsResponse._() : super();
  factory GetRoomsResponse({
    $core.Iterable<GetRoomsRoom>? rooms,
  }) {
    final _result = create();
    if (rooms != null) {
      _result.rooms.addAll(rooms);
    }
    return _result;
  }
  factory GetRoomsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsResponse clone() => GetRoomsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsResponse copyWith(void Function(GetRoomsResponse) updates) => super.copyWith((message) => updates(message as GetRoomsResponse)) as GetRoomsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomsResponse create() => GetRoomsResponse._();
  GetRoomsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRoomsResponse> createRepeated() => $pb.PbList<GetRoomsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsResponse>(create);
  static GetRoomsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetRoomsRoom> get rooms => $_getList(0);
}

class GetRoomsByWardBedOfRooms extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsByWardBedOfRooms', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRoomsByWardBedOfRooms._() : super();
  factory GetRoomsByWardBedOfRooms({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRoomsByWardBedOfRooms.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardBedOfRooms.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardBedOfRooms clone() => GetRoomsByWardBedOfRooms()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardBedOfRooms copyWith(void Function(GetRoomsByWardBedOfRooms) updates) => super.copyWith((message) => updates(message as GetRoomsByWardBedOfRooms)) as GetRoomsByWardBedOfRooms; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardBedOfRooms create() => GetRoomsByWardBedOfRooms._();
  GetRoomsByWardBedOfRooms createEmptyInstance() => create();
  static $pb.PbList<GetRoomsByWardBedOfRooms> createRepeated() => $pb.PbList<GetRoomsByWardBedOfRooms>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardBedOfRooms getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsByWardBedOfRooms>(create);
  static GetRoomsByWardBedOfRooms? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRoomsByWardRoom extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsByWardRoom', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<GetRoomsBedOfRooms>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomsBedOfRooms.create)
    ..hasRequiredFields = false
  ;

  GetRoomsByWardRoom._() : super();
  factory GetRoomsByWardRoom({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomsBedOfRooms>? beds,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (beds != null) {
      _result.beds.addAll(beds);
    }
    return _result;
  }
  factory GetRoomsByWardRoom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardRoom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardRoom clone() => GetRoomsByWardRoom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardRoom copyWith(void Function(GetRoomsByWardRoom) updates) => super.copyWith((message) => updates(message as GetRoomsByWardRoom)) as GetRoomsByWardRoom; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardRoom create() => GetRoomsByWardRoom._();
  GetRoomsByWardRoom createEmptyInstance() => create();
  static $pb.PbList<GetRoomsByWardRoom> createRepeated() => $pb.PbList<GetRoomsByWardRoom>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardRoom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsByWardRoom>(create);
  static GetRoomsByWardRoom? _defaultInstance;

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
  $core.List<GetRoomsBedOfRooms> get beds => $_getList(2);
}

class GetRoomsByWardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsByWardRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  GetRoomsByWardRequest._() : super();
  factory GetRoomsByWardRequest({
    $core.String? wardId,
  }) {
    final _result = create();
    if (wardId != null) {
      _result.wardId = wardId;
    }
    return _result;
  }
  factory GetRoomsByWardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardRequest clone() => GetRoomsByWardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardRequest copyWith(void Function(GetRoomsByWardRequest) updates) => super.copyWith((message) => updates(message as GetRoomsByWardRequest)) as GetRoomsByWardRequest; // ignore: deprecated_member_use
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

class GetRoomsByWardResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsByWardResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetRoomsRoom>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: GetRoomsRoom.create)
    ..hasRequiredFields = false
  ;

  GetRoomsByWardResponse._() : super();
  factory GetRoomsByWardResponse({
    $core.Iterable<GetRoomsRoom>? rooms,
  }) {
    final _result = create();
    if (rooms != null) {
      _result.rooms.addAll(rooms);
    }
    return _result;
  }
  factory GetRoomsByWardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse clone() => GetRoomsByWardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse copyWith(void Function(GetRoomsByWardResponse) updates) => super.copyWith((message) => updates(message as GetRoomsByWardResponse)) as GetRoomsByWardResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardResponse create() => GetRoomsByWardResponse._();
  GetRoomsByWardResponse createEmptyInstance() => create();
  static $pb.PbList<GetRoomsByWardResponse> createRepeated() => $pb.PbList<GetRoomsByWardResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRoomsByWardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomsByWardResponse>(create);
  static GetRoomsByWardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetRoomsRoom> get rooms => $_getList(0);
}

class UpdateRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRoomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  UpdateRoomRequest._() : super();
  factory UpdateRoomRequest({
    $core.String? id,
    $core.String? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory UpdateRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRoomRequest clone() => UpdateRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRoomRequest copyWith(void Function(UpdateRoomRequest) updates) => super.copyWith((message) => updates(message as UpdateRoomRequest)) as UpdateRoomRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UpdateRoomResponse._() : super();
  factory UpdateRoomResponse() => create();
  factory UpdateRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRoomResponse clone() => UpdateRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRoomResponse copyWith(void Function(UpdateRoomResponse) updates) => super.copyWith((message) => updates(message as UpdateRoomResponse)) as UpdateRoomResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRoomResponse create() => UpdateRoomResponse._();
  UpdateRoomResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateRoomResponse> createRepeated() => $pb.PbList<UpdateRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRoomResponse>(create);
  static UpdateRoomResponse? _defaultInstance;
}

class AddBedsToRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddBedsToRoomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountOfBeds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AddBedsToRoomRequest._() : super();
  factory AddBedsToRoomRequest({
    $core.String? id,
    $core.int? amountOfBeds,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (amountOfBeds != null) {
      _result.amountOfBeds = amountOfBeds;
    }
    return _result;
  }
  factory AddBedsToRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddBedsToRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddBedsToRoomRequest clone() => AddBedsToRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddBedsToRoomRequest copyWith(void Function(AddBedsToRoomRequest) updates) => super.copyWith((message) => updates(message as AddBedsToRoomRequest)) as AddBedsToRoomRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddBedsToRoomRequest create() => AddBedsToRoomRequest._();
  AddBedsToRoomRequest createEmptyInstance() => create();
  static $pb.PbList<AddBedsToRoomRequest> createRepeated() => $pb.PbList<AddBedsToRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static AddBedsToRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddBedsToRoomRequest>(create);
  static AddBedsToRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  $core.int get amountOfBeds => $_getIZ(1);
  @$pb.TagNumber(3)
  set amountOfBeds($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmountOfBeds() => $_has(1);
  @$pb.TagNumber(3)
  void clearAmountOfBeds() => clearField(3);
}

class AddBedsToRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddBedsToRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AddBedsToRoomResponse._() : super();
  factory AddBedsToRoomResponse() => create();
  factory AddBedsToRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddBedsToRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddBedsToRoomResponse clone() => AddBedsToRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddBedsToRoomResponse copyWith(void Function(AddBedsToRoomResponse) updates) => super.copyWith((message) => updates(message as AddBedsToRoomResponse)) as AddBedsToRoomResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddBedsToRoomResponse create() => AddBedsToRoomResponse._();
  AddBedsToRoomResponse createEmptyInstance() => create();
  static $pb.PbList<AddBedsToRoomResponse> createRepeated() => $pb.PbList<AddBedsToRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static AddBedsToRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddBedsToRoomResponse>(create);
  static AddBedsToRoomResponse? _defaultInstance;
}

class RoomServiceApi {
  $pb.RpcClient _client;
  RoomServiceApi(this._client);

  $async.Future<CreateRoomResponse> createRoom($pb.ClientContext? ctx, CreateRoomRequest request) {
    var emptyResponse = CreateRoomResponse();
    return _client.invoke<CreateRoomResponse>(ctx, 'RoomService', 'CreateRoom', request, emptyResponse);
  }
  $async.Future<GetRoomResponse> getRoom($pb.ClientContext? ctx, GetRoomRequest request) {
    var emptyResponse = GetRoomResponse();
    return _client.invoke<GetRoomResponse>(ctx, 'RoomService', 'GetRoom', request, emptyResponse);
  }
  $async.Future<UpdateRoomResponse> updateRoom($pb.ClientContext? ctx, UpdateRoomRequest request) {
    var emptyResponse = UpdateRoomResponse();
    return _client.invoke<UpdateRoomResponse>(ctx, 'RoomService', 'UpdateRoom', request, emptyResponse);
  }
  $async.Future<AddBedsToRoomResponse> addBedsToRoom($pb.ClientContext? ctx, AddBedsToRoomRequest request) {
    var emptyResponse = AddBedsToRoomResponse();
    return _client.invoke<AddBedsToRoomResponse>(ctx, 'RoomService', 'AddBedsToRoom', request, emptyResponse);
  }
}

