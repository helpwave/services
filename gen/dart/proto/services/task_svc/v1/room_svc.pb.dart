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
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  CreateRoomRequest._() : super();
  factory CreateRoomRequest({
    $core.String? name,
    $core.String? wardId,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (wardId != null) {
      _result.wardId = wardId;
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
  $core.String get wardId => $_getSZ(1);
  @$pb.TagNumber(2)
  set wardId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWardId() => clearField(2);
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

class GetRoomResponse_Bed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomResponse.Bed', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRoomResponse_Bed._() : super();
  factory GetRoomResponse_Bed({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRoomResponse_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomResponse_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomResponse_Bed clone() => GetRoomResponse_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomResponse_Bed copyWith(void Function(GetRoomResponse_Bed) updates) => super.copyWith((message) => updates(message as GetRoomResponse_Bed)) as GetRoomResponse_Bed; // ignore: deprecated_member_use
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
}

class GetRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<GetRoomResponse_Bed>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomResponse_Bed.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  GetRoomResponse._() : super();
  factory GetRoomResponse({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomResponse_Bed>? beds,
    $core.String? organizationId,
    $core.String? wardId,
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
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    if (wardId != null) {
      _result.wardId = wardId;
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

class GetRoomsResponse_Room_Bed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsResponse.Room.Bed', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRoomsResponse_Room_Bed._() : super();
  factory GetRoomsResponse_Room_Bed({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRoomsResponse_Room_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsResponse_Room_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsResponse_Room_Bed clone() => GetRoomsResponse_Room_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsResponse_Room_Bed copyWith(void Function(GetRoomsResponse_Room_Bed) updates) => super.copyWith((message) => updates(message as GetRoomsResponse_Room_Bed)) as GetRoomsResponse_Room_Bed; // ignore: deprecated_member_use
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
}

class GetRoomsResponse_Room extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsResponse.Room', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<GetRoomsResponse_Room_Bed>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomsResponse_Room_Bed.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  GetRoomsResponse_Room._() : super();
  factory GetRoomsResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomsResponse_Room_Bed>? beds,
    $core.String? organizationId,
    $core.String? wardId,
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
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    if (wardId != null) {
      _result.wardId = wardId;
    }
    return _result;
  }
  factory GetRoomsResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsResponse_Room clone() => GetRoomsResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsResponse_Room copyWith(void Function(GetRoomsResponse_Room) updates) => super.copyWith((message) => updates(message as GetRoomsResponse_Room)) as GetRoomsResponse_Room; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetRoomsResponse_Room>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: GetRoomsResponse_Room.create)
    ..hasRequiredFields = false
  ;

  GetRoomsResponse._() : super();
  factory GetRoomsResponse({
    $core.Iterable<GetRoomsResponse_Room>? rooms,
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
  $core.List<GetRoomsResponse_Room> get rooms => $_getList(0);
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

class GetRoomsByWardResponse_Room_Bed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsByWardResponse.Room.Bed', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRoomsByWardResponse_Room_Bed._() : super();
  factory GetRoomsByWardResponse_Room_Bed({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRoomsByWardResponse_Room_Bed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardResponse_Room_Bed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse_Room_Bed clone() => GetRoomsByWardResponse_Room_Bed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse_Room_Bed copyWith(void Function(GetRoomsByWardResponse_Room_Bed) updates) => super.copyWith((message) => updates(message as GetRoomsByWardResponse_Room_Bed)) as GetRoomsByWardResponse_Room_Bed; // ignore: deprecated_member_use
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
}

class GetRoomsByWardResponse_Room extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsByWardResponse.Room', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<GetRoomsByWardResponse_Room_Bed>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beds', $pb.PbFieldType.PM, subBuilder: GetRoomsByWardResponse_Room_Bed.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wardId')
    ..hasRequiredFields = false
  ;

  GetRoomsByWardResponse_Room._() : super();
  factory GetRoomsByWardResponse_Room({
    $core.String? id,
    $core.String? name,
    $core.Iterable<GetRoomsByWardResponse_Room_Bed>? beds,
    $core.String? organizationId,
    $core.String? wardId,
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
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    if (wardId != null) {
      _result.wardId = wardId;
    }
    return _result;
  }
  factory GetRoomsByWardResponse_Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomsByWardResponse_Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse_Room clone() => GetRoomsByWardResponse_Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomsByWardResponse_Room copyWith(void Function(GetRoomsByWardResponse_Room) updates) => super.copyWith((message) => updates(message as GetRoomsByWardResponse_Room)) as GetRoomsByWardResponse_Room; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomsByWardResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..pc<GetRoomsByWardResponse_Room>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rooms', $pb.PbFieldType.PM, subBuilder: GetRoomsByWardResponse_Room.create)
    ..hasRequiredFields = false
  ;

  GetRoomsByWardResponse._() : super();
  factory GetRoomsByWardResponse({
    $core.Iterable<GetRoomsByWardResponse_Room>? rooms,
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
  $core.List<GetRoomsByWardResponse_Room> get rooms => $_getList(0);
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

class DeleteRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRoomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteRoomRequest._() : super();
  factory DeleteRoomRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRoomRequest clone() => DeleteRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRoomRequest copyWith(void Function(DeleteRoomRequest) updates) => super.copyWith((message) => updates(message as DeleteRoomRequest)) as DeleteRoomRequest; // ignore: deprecated_member_use
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto.services.task_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteRoomResponse._() : super();
  factory DeleteRoomResponse() => create();
  factory DeleteRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRoomResponse clone() => DeleteRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRoomResponse copyWith(void Function(DeleteRoomResponse) updates) => super.copyWith((message) => updates(message as DeleteRoomResponse)) as DeleteRoomResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRoomResponse create() => DeleteRoomResponse._();
  DeleteRoomResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteRoomResponse> createRepeated() => $pb.PbList<DeleteRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRoomResponse>(create);
  static DeleteRoomResponse? _defaultInstance;
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
  $async.Future<GetRoomsResponse> getRooms($pb.ClientContext? ctx, GetRoomsRequest request) {
    var emptyResponse = GetRoomsResponse();
    return _client.invoke<GetRoomsResponse>(ctx, 'RoomService', 'GetRooms', request, emptyResponse);
  }
  $async.Future<GetRoomsByWardResponse> getRoomsByWard($pb.ClientContext? ctx, GetRoomsByWardRequest request) {
    var emptyResponse = GetRoomsByWardResponse();
    return _client.invoke<GetRoomsByWardResponse>(ctx, 'RoomService', 'GetRoomsByWard', request, emptyResponse);
  }
  $async.Future<UpdateRoomResponse> updateRoom($pb.ClientContext? ctx, UpdateRoomRequest request) {
    var emptyResponse = UpdateRoomResponse();
    return _client.invoke<UpdateRoomResponse>(ctx, 'RoomService', 'UpdateRoom', request, emptyResponse);
  }
  $async.Future<DeleteRoomResponse> deleteRoom($pb.ClientContext? ctx, DeleteRoomRequest request) {
    var emptyResponse = DeleteRoomResponse();
    return _client.invoke<DeleteRoomResponse>(ctx, 'RoomService', 'DeleteRoom', request, emptyResponse);
  }
}

