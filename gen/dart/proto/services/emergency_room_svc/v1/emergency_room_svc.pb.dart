//
//  Generated code. Do not modify.
//  source: proto/services/emergency_room_svc/v1/emergency_room_svc.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// TODO: move somewhere else
class Point extends $pb.GeneratedMessage {
  factory Point({
    $core.double? lat,
    $core.double? long,
  }) {
    final $result = create();
    if (lat != null) {
      $result.lat = lat;
    }
    if (long != null) {
      $result.long = long;
    }
    return $result;
  }
  Point._() : super();
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Point', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'lat', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'long', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Point clone() => Point()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point)) as Point;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  Point createEmptyInstance() => create();
  static $pb.PbList<Point> createRepeated() => $pb.PbList<Point>();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get long => $_getN(1);
  @$pb.TagNumber(2)
  set long($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLong() => $_has(1);
  @$pb.TagNumber(2)
  void clearLong() => clearField(2);
}

class CreateERRequest extends $pb.GeneratedMessage {
  factory CreateERRequest({
    $core.String? name,
    Point? location,
    $core.String? displayableAddress,
    $core.bool? open,
    $core.int? utilization,
    $core.Iterable<$core.String>? departments,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (location != null) {
      $result.location = location;
    }
    if (displayableAddress != null) {
      $result.displayableAddress = displayableAddress;
    }
    if (open != null) {
      $result.open = open;
    }
    if (utilization != null) {
      $result.utilization = utilization;
    }
    if (departments != null) {
      $result.departments.addAll(departments);
    }
    return $result;
  }
  CreateERRequest._() : super();
  factory CreateERRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateERRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateERRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Point>(2, _omitFieldNames ? '' : 'location', subBuilder: Point.create)
    ..aOS(3, _omitFieldNames ? '' : 'displayableAddress')
    ..aOB(4, _omitFieldNames ? '' : 'open')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'utilization', $pb.PbFieldType.O3)
    ..pPS(6, _omitFieldNames ? '' : 'departments')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateERRequest clone() => CreateERRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateERRequest copyWith(void Function(CreateERRequest) updates) => super.copyWith((message) => updates(message as CreateERRequest)) as CreateERRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateERRequest create() => CreateERRequest._();
  CreateERRequest createEmptyInstance() => create();
  static $pb.PbList<CreateERRequest> createRepeated() => $pb.PbList<CreateERRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateERRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateERRequest>(create);
  static CreateERRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  Point get location => $_getN(1);
  @$pb.TagNumber(2)
  set location(Point v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);
  @$pb.TagNumber(2)
  Point ensureLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get displayableAddress => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayableAddress($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplayableAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayableAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get open => $_getBF(3);
  @$pb.TagNumber(4)
  set open($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOpen() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpen() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get utilization => $_getIZ(4);
  @$pb.TagNumber(5)
  set utilization($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUtilization() => $_has(4);
  @$pb.TagNumber(5)
  void clearUtilization() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get departments => $_getList(5);
}

class CreateERResponse extends $pb.GeneratedMessage {
  factory CreateERResponse({
    $core.String? id,
    $core.String? name,
    Point? location,
    $core.String? displayableAddress,
    $core.bool? open,
    $core.int? utilization,
    $core.Iterable<DepartmentBase>? departments,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (location != null) {
      $result.location = location;
    }
    if (displayableAddress != null) {
      $result.displayableAddress = displayableAddress;
    }
    if (open != null) {
      $result.open = open;
    }
    if (utilization != null) {
      $result.utilization = utilization;
    }
    if (departments != null) {
      $result.departments.addAll(departments);
    }
    return $result;
  }
  CreateERResponse._() : super();
  factory CreateERResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateERResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateERResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<Point>(3, _omitFieldNames ? '' : 'location', subBuilder: Point.create)
    ..aOS(4, _omitFieldNames ? '' : 'displayableAddress')
    ..aOB(5, _omitFieldNames ? '' : 'open')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'utilization', $pb.PbFieldType.O3)
    ..pc<DepartmentBase>(7, _omitFieldNames ? '' : 'departments', $pb.PbFieldType.PM, subBuilder: DepartmentBase.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateERResponse clone() => CreateERResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateERResponse copyWith(void Function(CreateERResponse) updates) => super.copyWith((message) => updates(message as CreateERResponse)) as CreateERResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateERResponse create() => CreateERResponse._();
  CreateERResponse createEmptyInstance() => create();
  static $pb.PbList<CreateERResponse> createRepeated() => $pb.PbList<CreateERResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateERResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateERResponse>(create);
  static CreateERResponse? _defaultInstance;

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
  Point get location => $_getN(2);
  @$pb.TagNumber(3)
  set location(Point v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);
  @$pb.TagNumber(3)
  Point ensureLocation() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get displayableAddress => $_getSZ(3);
  @$pb.TagNumber(4)
  set displayableAddress($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDisplayableAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayableAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get open => $_getBF(4);
  @$pb.TagNumber(5)
  set open($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOpen() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpen() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get utilization => $_getIZ(5);
  @$pb.TagNumber(6)
  set utilization($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUtilization() => $_has(5);
  @$pb.TagNumber(6)
  void clearUtilization() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<DepartmentBase> get departments => $_getList(6);
}

class GetERRequest extends $pb.GeneratedMessage {
  factory GetERRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetERRequest._() : super();
  factory GetERRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetERRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetERRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetERRequest clone() => GetERRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetERRequest copyWith(void Function(GetERRequest) updates) => super.copyWith((message) => updates(message as GetERRequest)) as GetERRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetERRequest create() => GetERRequest._();
  GetERRequest createEmptyInstance() => create();
  static $pb.PbList<GetERRequest> createRepeated() => $pb.PbList<GetERRequest>();
  @$core.pragma('dart2js:noInline')
  static GetERRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetERRequest>(create);
  static GetERRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DepartmentBase extends $pb.GeneratedMessage {
  factory DepartmentBase({
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
  DepartmentBase._() : super();
  factory DepartmentBase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DepartmentBase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DepartmentBase', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DepartmentBase clone() => DepartmentBase()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DepartmentBase copyWith(void Function(DepartmentBase) updates) => super.copyWith((message) => updates(message as DepartmentBase)) as DepartmentBase;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DepartmentBase create() => DepartmentBase._();
  DepartmentBase createEmptyInstance() => create();
  static $pb.PbList<DepartmentBase> createRepeated() => $pb.PbList<DepartmentBase>();
  @$core.pragma('dart2js:noInline')
  static DepartmentBase getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DepartmentBase>(create);
  static DepartmentBase? _defaultInstance;

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

class GetERResponse extends $pb.GeneratedMessage {
  factory GetERResponse({
    $core.String? id,
    $core.String? name,
    Point? location,
    $core.String? displayableAddress,
    $core.bool? open,
    $core.int? utilization,
    $core.Iterable<DepartmentBase>? departments,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (location != null) {
      $result.location = location;
    }
    if (displayableAddress != null) {
      $result.displayableAddress = displayableAddress;
    }
    if (open != null) {
      $result.open = open;
    }
    if (utilization != null) {
      $result.utilization = utilization;
    }
    if (departments != null) {
      $result.departments.addAll(departments);
    }
    return $result;
  }
  GetERResponse._() : super();
  factory GetERResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetERResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetERResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<Point>(3, _omitFieldNames ? '' : 'location', subBuilder: Point.create)
    ..aOS(4, _omitFieldNames ? '' : 'displayableAddress')
    ..aOB(5, _omitFieldNames ? '' : 'open')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'utilization', $pb.PbFieldType.O3)
    ..pc<DepartmentBase>(7, _omitFieldNames ? '' : 'departments', $pb.PbFieldType.PM, subBuilder: DepartmentBase.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetERResponse clone() => GetERResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetERResponse copyWith(void Function(GetERResponse) updates) => super.copyWith((message) => updates(message as GetERResponse)) as GetERResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetERResponse create() => GetERResponse._();
  GetERResponse createEmptyInstance() => create();
  static $pb.PbList<GetERResponse> createRepeated() => $pb.PbList<GetERResponse>();
  @$core.pragma('dart2js:noInline')
  static GetERResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetERResponse>(create);
  static GetERResponse? _defaultInstance;

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
  Point get location => $_getN(2);
  @$pb.TagNumber(3)
  set location(Point v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);
  @$pb.TagNumber(3)
  Point ensureLocation() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get displayableAddress => $_getSZ(3);
  @$pb.TagNumber(4)
  set displayableAddress($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDisplayableAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayableAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get open => $_getBF(4);
  @$pb.TagNumber(5)
  set open($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOpen() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpen() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get utilization => $_getIZ(5);
  @$pb.TagNumber(6)
  set utilization($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUtilization() => $_has(5);
  @$pb.TagNumber(6)
  void clearUtilization() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<DepartmentBase> get departments => $_getList(6);
}

/// TODO: move somewhere else
class InclusiveIntInterval extends $pb.GeneratedMessage {
  factory InclusiveIntInterval({
    $core.int? min,
    $core.int? max,
  }) {
    final $result = create();
    if (min != null) {
      $result.min = min;
    }
    if (max != null) {
      $result.max = max;
    }
    return $result;
  }
  InclusiveIntInterval._() : super();
  factory InclusiveIntInterval.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InclusiveIntInterval.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InclusiveIntInterval', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'min', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'max', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InclusiveIntInterval clone() => InclusiveIntInterval()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InclusiveIntInterval copyWith(void Function(InclusiveIntInterval) updates) => super.copyWith((message) => updates(message as InclusiveIntInterval)) as InclusiveIntInterval;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InclusiveIntInterval create() => InclusiveIntInterval._();
  InclusiveIntInterval createEmptyInstance() => create();
  static $pb.PbList<InclusiveIntInterval> createRepeated() => $pb.PbList<InclusiveIntInterval>();
  @$core.pragma('dart2js:noInline')
  static InclusiveIntInterval getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InclusiveIntInterval>(create);
  static InclusiveIntInterval? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get min => $_getIZ(0);
  @$pb.TagNumber(1)
  set min($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get max => $_getIZ(1);
  @$pb.TagNumber(2)
  set max($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => clearField(2);
}

/// TODO: move to hwgorm
class PagedRequest extends $pb.GeneratedMessage {
  factory PagedRequest({
    $core.int? page,
    $core.int? pageSize,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    return $result;
  }
  PagedRequest._() : super();
  factory PagedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PagedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PagedRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PagedRequest clone() => PagedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PagedRequest copyWith(void Function(PagedRequest) updates) => super.copyWith((message) => updates(message as PagedRequest)) as PagedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PagedRequest create() => PagedRequest._();
  PagedRequest createEmptyInstance() => create();
  static $pb.PbList<PagedRequest> createRepeated() => $pb.PbList<PagedRequest>();
  @$core.pragma('dart2js:noInline')
  static PagedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PagedRequest>(create);
  static PagedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);
}

/// TODO: move to hwgorm
class PageInfo extends $pb.GeneratedMessage {
  factory PageInfo({
    $core.int? page,
    $core.int? pageSize,
    $fixnum.Int64? totalSize,
    $core.bool? lastPage,
  }) {
    final $result = create();
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (totalSize != null) {
      $result.totalSize = totalSize;
    }
    if (lastPage != null) {
      $result.lastPage = lastPage;
    }
    return $result;
  }
  PageInfo._() : super();
  factory PageInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PageInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PageInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'totalSize')
    ..aOB(4, _omitFieldNames ? '' : 'lastPage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PageInfo clone() => PageInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PageInfo copyWith(void Function(PageInfo) updates) => super.copyWith((message) => updates(message as PageInfo)) as PageInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PageInfo create() => PageInfo._();
  PageInfo createEmptyInstance() => create();
  static $pb.PbList<PageInfo> createRepeated() => $pb.PbList<PageInfo>();
  @$core.pragma('dart2js:noInline')
  static PageInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PageInfo>(create);
  static PageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get page => $_getIZ(0);
  @$pb.TagNumber(1)
  set page($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalSize => $_getI64(2);
  @$pb.TagNumber(3)
  set totalSize($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get lastPage => $_getBF(3);
  @$pb.TagNumber(4)
  set lastPage($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastPage() => clearField(4);
}

class GetERsRequest extends $pb.GeneratedMessage {
  factory GetERsRequest({
    PagedRequest? pagedRequest,
    $core.bool? open,
    InclusiveIntInterval? utilization,
    Point? location,
  }) {
    final $result = create();
    if (pagedRequest != null) {
      $result.pagedRequest = pagedRequest;
    }
    if (open != null) {
      $result.open = open;
    }
    if (utilization != null) {
      $result.utilization = utilization;
    }
    if (location != null) {
      $result.location = location;
    }
    return $result;
  }
  GetERsRequest._() : super();
  factory GetERsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetERsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetERsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOM<PagedRequest>(1, _omitFieldNames ? '' : 'pagedRequest', subBuilder: PagedRequest.create)
    ..aOB(2, _omitFieldNames ? '' : 'open')
    ..aOM<InclusiveIntInterval>(3, _omitFieldNames ? '' : 'utilization', subBuilder: InclusiveIntInterval.create)
    ..aOM<Point>(4, _omitFieldNames ? '' : 'location', subBuilder: Point.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetERsRequest clone() => GetERsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetERsRequest copyWith(void Function(GetERsRequest) updates) => super.copyWith((message) => updates(message as GetERsRequest)) as GetERsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetERsRequest create() => GetERsRequest._();
  GetERsRequest createEmptyInstance() => create();
  static $pb.PbList<GetERsRequest> createRepeated() => $pb.PbList<GetERsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetERsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetERsRequest>(create);
  static GetERsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  PagedRequest get pagedRequest => $_getN(0);
  @$pb.TagNumber(1)
  set pagedRequest(PagedRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagedRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagedRequest() => clearField(1);
  @$pb.TagNumber(1)
  PagedRequest ensurePagedRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get open => $_getBF(1);
  @$pb.TagNumber(2)
  set open($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOpen() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpen() => clearField(2);

  @$pb.TagNumber(3)
  InclusiveIntInterval get utilization => $_getN(2);
  @$pb.TagNumber(3)
  set utilization(InclusiveIntInterval v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUtilization() => $_has(2);
  @$pb.TagNumber(3)
  void clearUtilization() => clearField(3);
  @$pb.TagNumber(3)
  InclusiveIntInterval ensureUtilization() => $_ensure(2);

  @$pb.TagNumber(4)
  Point get location => $_getN(3);
  @$pb.TagNumber(4)
  set location(Point v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => clearField(4);
  @$pb.TagNumber(4)
  Point ensureLocation() => $_ensure(3);
}

class GetERsResponse extends $pb.GeneratedMessage {
  factory GetERsResponse({
    PageInfo? pageInfo,
    $core.Iterable<GetERResponse>? emergencyRooms,
  }) {
    final $result = create();
    if (pageInfo != null) {
      $result.pageInfo = pageInfo;
    }
    if (emergencyRooms != null) {
      $result.emergencyRooms.addAll(emergencyRooms);
    }
    return $result;
  }
  GetERsResponse._() : super();
  factory GetERsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetERsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetERsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOM<PageInfo>(1, _omitFieldNames ? '' : 'pageInfo', subBuilder: PageInfo.create)
    ..pc<GetERResponse>(2, _omitFieldNames ? '' : 'emergencyRooms', $pb.PbFieldType.PM, subBuilder: GetERResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetERsResponse clone() => GetERsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetERsResponse copyWith(void Function(GetERsResponse) updates) => super.copyWith((message) => updates(message as GetERsResponse)) as GetERsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetERsResponse create() => GetERsResponse._();
  GetERsResponse createEmptyInstance() => create();
  static $pb.PbList<GetERsResponse> createRepeated() => $pb.PbList<GetERsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetERsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetERsResponse>(create);
  static GetERsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PageInfo get pageInfo => $_getN(0);
  @$pb.TagNumber(1)
  set pageInfo(PageInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageInfo() => clearField(1);
  @$pb.TagNumber(1)
  PageInfo ensurePageInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<GetERResponse> get emergencyRooms => $_getList(1);
}

class UpdateERRequest extends $pb.GeneratedMessage {
  factory UpdateERRequest({
    $core.String? id,
    $core.String? name,
    Point? location,
    $core.String? displayableAddress,
    $core.bool? open,
    $core.int? utilization,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (location != null) {
      $result.location = location;
    }
    if (displayableAddress != null) {
      $result.displayableAddress = displayableAddress;
    }
    if (open != null) {
      $result.open = open;
    }
    if (utilization != null) {
      $result.utilization = utilization;
    }
    return $result;
  }
  UpdateERRequest._() : super();
  factory UpdateERRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateERRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateERRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<Point>(3, _omitFieldNames ? '' : 'location', subBuilder: Point.create)
    ..aOS(4, _omitFieldNames ? '' : 'displayableAddress')
    ..aOB(5, _omitFieldNames ? '' : 'open')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'utilization', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateERRequest clone() => UpdateERRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateERRequest copyWith(void Function(UpdateERRequest) updates) => super.copyWith((message) => updates(message as UpdateERRequest)) as UpdateERRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateERRequest create() => UpdateERRequest._();
  UpdateERRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateERRequest> createRepeated() => $pb.PbList<UpdateERRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateERRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateERRequest>(create);
  static UpdateERRequest? _defaultInstance;

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
  Point get location => $_getN(2);
  @$pb.TagNumber(3)
  set location(Point v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);
  @$pb.TagNumber(3)
  Point ensureLocation() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get displayableAddress => $_getSZ(3);
  @$pb.TagNumber(4)
  set displayableAddress($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDisplayableAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayableAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get open => $_getBF(4);
  @$pb.TagNumber(5)
  set open($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOpen() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpen() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get utilization => $_getIZ(5);
  @$pb.TagNumber(6)
  set utilization($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUtilization() => $_has(5);
  @$pb.TagNumber(6)
  void clearUtilization() => clearField(6);
}

class UpdateERResponse extends $pb.GeneratedMessage {
  factory UpdateERResponse() => create();
  UpdateERResponse._() : super();
  factory UpdateERResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateERResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateERResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateERResponse clone() => UpdateERResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateERResponse copyWith(void Function(UpdateERResponse) updates) => super.copyWith((message) => updates(message as UpdateERResponse)) as UpdateERResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateERResponse create() => UpdateERResponse._();
  UpdateERResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateERResponse> createRepeated() => $pb.PbList<UpdateERResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateERResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateERResponse>(create);
  static UpdateERResponse? _defaultInstance;
}

class AddDepartmentsToERRequest extends $pb.GeneratedMessage {
  factory AddDepartmentsToERRequest({
    $core.String? id,
    $core.Iterable<$core.String>? departments,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (departments != null) {
      $result.departments.addAll(departments);
    }
    return $result;
  }
  AddDepartmentsToERRequest._() : super();
  factory AddDepartmentsToERRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDepartmentsToERRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDepartmentsToERRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pPS(2, _omitFieldNames ? '' : 'departments')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDepartmentsToERRequest clone() => AddDepartmentsToERRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDepartmentsToERRequest copyWith(void Function(AddDepartmentsToERRequest) updates) => super.copyWith((message) => updates(message as AddDepartmentsToERRequest)) as AddDepartmentsToERRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDepartmentsToERRequest create() => AddDepartmentsToERRequest._();
  AddDepartmentsToERRequest createEmptyInstance() => create();
  static $pb.PbList<AddDepartmentsToERRequest> createRepeated() => $pb.PbList<AddDepartmentsToERRequest>();
  @$core.pragma('dart2js:noInline')
  static AddDepartmentsToERRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDepartmentsToERRequest>(create);
  static AddDepartmentsToERRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get departments => $_getList(1);
}

class AddDepartmentsToERResponse extends $pb.GeneratedMessage {
  factory AddDepartmentsToERResponse() => create();
  AddDepartmentsToERResponse._() : super();
  factory AddDepartmentsToERResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDepartmentsToERResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDepartmentsToERResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDepartmentsToERResponse clone() => AddDepartmentsToERResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDepartmentsToERResponse copyWith(void Function(AddDepartmentsToERResponse) updates) => super.copyWith((message) => updates(message as AddDepartmentsToERResponse)) as AddDepartmentsToERResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDepartmentsToERResponse create() => AddDepartmentsToERResponse._();
  AddDepartmentsToERResponse createEmptyInstance() => create();
  static $pb.PbList<AddDepartmentsToERResponse> createRepeated() => $pb.PbList<AddDepartmentsToERResponse>();
  @$core.pragma('dart2js:noInline')
  static AddDepartmentsToERResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDepartmentsToERResponse>(create);
  static AddDepartmentsToERResponse? _defaultInstance;
}

class RemoveDepartmentsFromERRequest extends $pb.GeneratedMessage {
  factory RemoveDepartmentsFromERRequest({
    $core.String? id,
    $core.Iterable<$core.String>? departments,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (departments != null) {
      $result.departments.addAll(departments);
    }
    return $result;
  }
  RemoveDepartmentsFromERRequest._() : super();
  factory RemoveDepartmentsFromERRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveDepartmentsFromERRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveDepartmentsFromERRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..pPS(2, _omitFieldNames ? '' : 'departments')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveDepartmentsFromERRequest clone() => RemoveDepartmentsFromERRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveDepartmentsFromERRequest copyWith(void Function(RemoveDepartmentsFromERRequest) updates) => super.copyWith((message) => updates(message as RemoveDepartmentsFromERRequest)) as RemoveDepartmentsFromERRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveDepartmentsFromERRequest create() => RemoveDepartmentsFromERRequest._();
  RemoveDepartmentsFromERRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveDepartmentsFromERRequest> createRepeated() => $pb.PbList<RemoveDepartmentsFromERRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveDepartmentsFromERRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveDepartmentsFromERRequest>(create);
  static RemoveDepartmentsFromERRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get departments => $_getList(1);
}

class RemoveDepartmentsFromERResponse extends $pb.GeneratedMessage {
  factory RemoveDepartmentsFromERResponse() => create();
  RemoveDepartmentsFromERResponse._() : super();
  factory RemoveDepartmentsFromERResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveDepartmentsFromERResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveDepartmentsFromERResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveDepartmentsFromERResponse clone() => RemoveDepartmentsFromERResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveDepartmentsFromERResponse copyWith(void Function(RemoveDepartmentsFromERResponse) updates) => super.copyWith((message) => updates(message as RemoveDepartmentsFromERResponse)) as RemoveDepartmentsFromERResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveDepartmentsFromERResponse create() => RemoveDepartmentsFromERResponse._();
  RemoveDepartmentsFromERResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveDepartmentsFromERResponse> createRepeated() => $pb.PbList<RemoveDepartmentsFromERResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveDepartmentsFromERResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveDepartmentsFromERResponse>(create);
  static RemoveDepartmentsFromERResponse? _defaultInstance;
}

class DeleteERRequest extends $pb.GeneratedMessage {
  factory DeleteERRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteERRequest._() : super();
  factory DeleteERRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteERRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteERRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteERRequest clone() => DeleteERRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteERRequest copyWith(void Function(DeleteERRequest) updates) => super.copyWith((message) => updates(message as DeleteERRequest)) as DeleteERRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteERRequest create() => DeleteERRequest._();
  DeleteERRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteERRequest> createRepeated() => $pb.PbList<DeleteERRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteERRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteERRequest>(create);
  static DeleteERRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteERResponse extends $pb.GeneratedMessage {
  factory DeleteERResponse() => create();
  DeleteERResponse._() : super();
  factory DeleteERResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteERResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteERResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.services.emergency_room_svc.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteERResponse clone() => DeleteERResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteERResponse copyWith(void Function(DeleteERResponse) updates) => super.copyWith((message) => updates(message as DeleteERResponse)) as DeleteERResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteERResponse create() => DeleteERResponse._();
  DeleteERResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteERResponse> createRepeated() => $pb.PbList<DeleteERResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteERResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteERResponse>(create);
  static DeleteERResponse? _defaultInstance;
}

class EmergencyRoomServiceApi {
  $pb.RpcClient _client;
  EmergencyRoomServiceApi(this._client);

  $async.Future<CreateERResponse> createER($pb.ClientContext? ctx, CreateERRequest request) =>
    _client.invoke<CreateERResponse>(ctx, 'EmergencyRoomService', 'CreateER', request, CreateERResponse())
  ;
  $async.Future<GetERResponse> getER($pb.ClientContext? ctx, GetERRequest request) =>
    _client.invoke<GetERResponse>(ctx, 'EmergencyRoomService', 'GetER', request, GetERResponse())
  ;
  $async.Future<GetERsResponse> getERs($pb.ClientContext? ctx, GetERsRequest request) =>
    _client.invoke<GetERsResponse>(ctx, 'EmergencyRoomService', 'GetERs', request, GetERsResponse())
  ;
  $async.Future<UpdateERResponse> updateER($pb.ClientContext? ctx, UpdateERRequest request) =>
    _client.invoke<UpdateERResponse>(ctx, 'EmergencyRoomService', 'UpdateER', request, UpdateERResponse())
  ;
  $async.Future<AddDepartmentsToERResponse> addDepartmentsToER($pb.ClientContext? ctx, AddDepartmentsToERRequest request) =>
    _client.invoke<AddDepartmentsToERResponse>(ctx, 'EmergencyRoomService', 'AddDepartmentsToER', request, AddDepartmentsToERResponse())
  ;
  $async.Future<RemoveDepartmentsFromERResponse> removeDepartmentsFromER($pb.ClientContext? ctx, RemoveDepartmentsFromERRequest request) =>
    _client.invoke<RemoveDepartmentsFromERResponse>(ctx, 'EmergencyRoomService', 'RemoveDepartmentsFromER', request, RemoveDepartmentsFromERResponse())
  ;
  $async.Future<DeleteERResponse> deleteER($pb.ClientContext? ctx, DeleteERRequest request) =>
    _client.invoke<DeleteERResponse>(ctx, 'EmergencyRoomService', 'DeleteER', request, DeleteERResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
